package java.util.concurrent.locks;
/*
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
/**
* An implementation of {@link ReadWriteLock} supporting similar
* semantics to {@link ReentrantLock}.
* <p>This class has the following properties:
*
* <ul>
* <li><b>Acquisition order</b>
*
* <p> This class does not impose a reader or writer preference
* ordering for lock access.  However, it does support an optional
* <em>fairness</em> policy.
*
* <dl>
* <dt><b><i>Non-fair mode (default)</i></b>
* <dd>When constructed as non-fair (the default), the order of entry
* to the read and write lock is unspecified, subject to reentrancy
* constraints.  A nonfair lock that is continuously contended may
* indefinitely postpone one or more reader or writer threads, but
* will normally have higher throughput than a fair lock.
* <p>
*
* <dt><b><i>Fair mode</i></b>
* <dd> When constructed as fair, threads contend for entry using an
* approximately arrival-order policy. When the currently held lock
* is released either the longest-waiting single writer thread will
* be assigned the write lock, or if there is a group of reader threads
* waiting longer than all waiting writer threads, that group will be
* assigned the read lock.
*
* <p>A thread that tries to acquire a fair read lock (non-reentrantly)
* will block if either the write lock is held, or there is a waiting
* writer thread. The thread will not acquire the read lock until
* after the oldest currently waiting writer thread has acquired and
* released the write lock. Of course, if a waiting writer abandons
* its wait, leaving one or more reader threads as the longest waiters
* in the queue with the write lock free, then those readers will be
* assigned the read lock.
*
* <p>A thread that tries to acquire a fair write lock (non-reentrantly)
* will block unless both the read lock and write lock are free (which
* implies there are no waiting threads).  (Note that the non-blocking
* {@link ReadLock#tryLock()} and {@link WriteLock#tryLock()} methods
* do not honor this fair setting and will acquire the lock if it is
* possible, regardless of waiting threads.)
* <p>
* </dl>
*
* <li><b>Reentrancy</b>
*
* <p>This lock allows both readers and writers to reacquire read or
* write locks in the style of a {@link ReentrantLock}. Non-reentrant
* readers are not allowed until all write locks held by the writing
* thread have been released.
*
* <p>Additionally, a writer can acquire the read lock, but not
* vice-versa.  Among other applications, reentrancy can be useful
* when write locks are held during calls or callbacks to methods that
* perform reads under read locks.  If a reader tries to acquire the
* write lock it will never succeed.
*
* <li><b>Lock downgrading</b>
* <p>Reentrancy also allows downgrading from the write lock to a read lock,
* by acquiring the write lock, then the read lock and then releasing the
* write lock. However, upgrading from a read lock to the write lock is
* <b>not</b> possible.
*
* <li><b>Interruption of lock acquisition</b>
* <p>The read lock and write lock both support interruption during lock
* acquisition.
*
* <li><b>{@link Condition} support</b>
* <p>The write lock provides a {@link Condition} implementation that
* behaves in the same way, with respect to the write lock, as the
* {@link Condition} implementation provided by
* {@link ReentrantLock#newCondition} does for {@link ReentrantLock}.
* This {@link Condition} can, of course, only be used with the write lock.
*
* <p>The read lock does not support a {@link Condition} and
* {@code readLock().newCondition()} throws
* {@code UnsupportedOperationException}.
*
* <li><b>Instrumentation</b>
* <p>This class supports methods to determine whether locks
* are held or contended. These methods are designed for monitoring
* system state, not for synchronization control.
* </ul>
*
* <p>Serialization of this class behaves in the same way as built-in
* locks: a deserialized lock is in the unlocked state, regardless of
* its state when serialized.
*
* <p><b>Sample usages</b>. Here is a code sketch showing how to perform
* lock downgrading after updating a cache (exception handling is
* particularly tricky when handling multiple locks in a non-nested
* fashion):
*
* <pre> {@code
* class CachedData {
*   Object data;
*   volatile boolean cacheValid;
*   final ReentrantReadWriteLock rwl = new ReentrantReadWriteLock();
*
*   void processCachedData() {
*     rwl.readLock().lock();
*     if (!cacheValid) {
*        // Must release read lock before acquiring write lock
*        rwl.readLock().unlock();
*        rwl.writeLock().lock();
*        try {
*          // Recheck state because another thread might have
*          // acquired write lock and changed state before we did.
*          if (!cacheValid) {
*            data = ...
*            cacheValid = true;
*          }
*          // Downgrade by acquiring read lock before releasing write lock
*          rwl.readLock().lock();
*        } finally {
*          rwl.writeLock().unlock(); // Unlock write, still hold read
*        }
*     }
*
*     try {
*       use(data);
*     } finally {
*       rwl.readLock().unlock();
*     }
*   }
* }}</pre>
*
* ReentrantReadWriteLocks can be used to improve concurrency in some
* uses of some kinds of Collections. This is typically worthwhile
* only when the collections are expected to be large, accessed by
* more reader threads than writer threads, and entail operations with
* overhead that outweighs synchronization overhead. For example, here
* is a class using a TreeMap that is expected to be large and
* concurrently accessed.
*
* <pre>{@code
* class RWDictionary {
*    private final Map<String, Data> m = new TreeMap<String, Data>();
*    private final ReentrantReadWriteLock rwl = new ReentrantReadWriteLock();
*    private final Lock r = rwl.readLock();
*    private final Lock w = rwl.writeLock();
*
*    public Data get(String key) {
*        r.lock();
*        try { return m.get(key); }
*        finally { r.unlock(); }
*    }
*    public String[] allKeys() {
*        r.lock();
*        try { return m.keySet().toArray(); }
*        finally { r.unlock(); }
*    }
*    public Data put(String key, Data value) {
*        w.lock();
*        try { return m.put(key, value); }
*        finally { w.unlock(); }
*    }
*    public void clear() {
*        w.lock();
*        try { m.clear(); }
*        finally { w.unlock(); }
*    }
* }}</pre>
*
* <h3>Implementation Notes</h3>
*
* <p>This lock supports a maximum of 65535 recursive write locks
* and 65535 read locks. Attempts to exceed these limits result in
* {@link Error} throws from locking methods.
*
* @since 1.5
* @author Doug Lea
*
*/
@:require(java5) extern class ReentrantReadWriteLock implements java.util.concurrent.locks.ReadWriteLock implements java.io.Serializable
{
	/**
	* Creates a new {@code ReentrantReadWriteLock} with
	* default (nonfair) ordering properties.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new {@code ReentrantReadWriteLock} with
	* the given fairness policy.
	*
	* @param fair {@code true} if this lock should use a fair ordering policy
	*/
	@:overload public function new(fair : Bool) : Void;
	
	@:overload public function writeLock() : java.util.concurrent.locks.ReentrantReadWriteLock.ReentrantReadWriteLock_WriteLock;
	
	@:overload public function readLock() : java.util.concurrent.locks.ReentrantReadWriteLock.ReentrantReadWriteLock_ReadLock;
	
	/**
	* Returns {@code true} if this lock has fairness set true.
	*
	* @return {@code true} if this lock has fairness set true
	*/
	@:overload @:final public function isFair() : Bool;
	
	/**
	* Returns the thread that currently owns the write lock, or
	* {@code null} if not owned. When this method is called by a
	* thread that is not the owner, the return value reflects a
	* best-effort approximation of current lock status. For example,
	* the owner may be momentarily {@code null} even if there are
	* threads trying to acquire the lock but have not yet done so.
	* This method is designed to facilitate construction of
	* subclasses that provide more extensive lock monitoring
	* facilities.
	*
	* @return the owner, or {@code null} if not owned
	*/
	@:overload private function getOwner() : java.lang.Thread;
	
	/**
	* Queries the number of read locks held for this lock. This
	* method is designed for use in monitoring system state, not for
	* synchronization control.
	* @return the number of read locks held.
	*/
	@:overload public function getReadLockCount() : Int;
	
	/**
	* Queries if the write lock is held by any thread. This method is
	* designed for use in monitoring system state, not for
	* synchronization control.
	*
	* @return {@code true} if any thread holds the write lock and
	*         {@code false} otherwise
	*/
	@:overload public function isWriteLocked() : Bool;
	
	/**
	* Queries if the write lock is held by the current thread.
	*
	* @return {@code true} if the current thread holds the write lock and
	*         {@code false} otherwise
	*/
	@:overload public function isWriteLockedByCurrentThread() : Bool;
	
	/**
	* Queries the number of reentrant write holds on this lock by the
	* current thread.  A writer thread has a hold on a lock for
	* each lock action that is not matched by an unlock action.
	*
	* @return the number of holds on the write lock by the current thread,
	*         or zero if the write lock is not held by the current thread
	*/
	@:overload public function getWriteHoldCount() : Int;
	
	/**
	* Queries the number of reentrant read holds on this lock by the
	* current thread.  A reader thread has a hold on a lock for
	* each lock action that is not matched by an unlock action.
	*
	* @return the number of holds on the read lock by the current thread,
	*         or zero if the read lock is not held by the current thread
	* @since 1.6
	*/
	@:require(java6) @:overload public function getReadHoldCount() : Int;
	
	/**
	* Returns a collection containing threads that may be waiting to
	* acquire the write lock.  Because the actual set of threads may
	* change dynamically while constructing this result, the returned
	* collection is only a best-effort estimate.  The elements of the
	* returned collection are in no particular order.  This method is
	* designed to facilitate construction of subclasses that provide
	* more extensive lock monitoring facilities.
	*
	* @return the collection of threads
	*/
	@:overload private function getQueuedWriterThreads() : java.util.Collection<java.lang.Thread>;
	
	/**
	* Returns a collection containing threads that may be waiting to
	* acquire the read lock.  Because the actual set of threads may
	* change dynamically while constructing this result, the returned
	* collection is only a best-effort estimate.  The elements of the
	* returned collection are in no particular order.  This method is
	* designed to facilitate construction of subclasses that provide
	* more extensive lock monitoring facilities.
	*
	* @return the collection of threads
	*/
	@:overload private function getQueuedReaderThreads() : java.util.Collection<java.lang.Thread>;
	
	/**
	* Queries whether any threads are waiting to acquire the read or
	* write lock. Note that because cancellations may occur at any
	* time, a {@code true} return does not guarantee that any other
	* thread will ever acquire a lock.  This method is designed
	* primarily for use in monitoring of the system state.
	*
	* @return {@code true} if there may be other threads waiting to
	*         acquire the lock
	*/
	@:overload @:final public function hasQueuedThreads() : Bool;
	
	/**
	* Queries whether the given thread is waiting to acquire either
	* the read or write lock. Note that because cancellations may
	* occur at any time, a {@code true} return does not guarantee
	* that this thread will ever acquire a lock.  This method is
	* designed primarily for use in monitoring of the system state.
	*
	* @param thread the thread
	* @return {@code true} if the given thread is queued waiting for this lock
	* @throws NullPointerException if the thread is null
	*/
	@:overload @:final public function hasQueuedThread(thread : java.lang.Thread) : Bool;
	
	/**
	* Returns an estimate of the number of threads waiting to acquire
	* either the read or write lock.  The value is only an estimate
	* because the number of threads may change dynamically while this
	* method traverses internal data structures.  This method is
	* designed for use in monitoring of the system state, not for
	* synchronization control.
	*
	* @return the estimated number of threads waiting for this lock
	*/
	@:overload @:final public function getQueueLength() : Int;
	
	/**
	* Returns a collection containing threads that may be waiting to
	* acquire either the read or write lock.  Because the actual set
	* of threads may change dynamically while constructing this
	* result, the returned collection is only a best-effort estimate.
	* The elements of the returned collection are in no particular
	* order.  This method is designed to facilitate construction of
	* subclasses that provide more extensive monitoring facilities.
	*
	* @return the collection of threads
	*/
	@:overload private function getQueuedThreads() : java.util.Collection<java.lang.Thread>;
	
	/**
	* Queries whether any threads are waiting on the given condition
	* associated with the write lock. Note that because timeouts and
	* interrupts may occur at any time, a {@code true} return does
	* not guarantee that a future {@code signal} will awaken any
	* threads.  This method is designed primarily for use in
	* monitoring of the system state.
	*
	* @param condition the condition
	* @return {@code true} if there are any waiting threads
	* @throws IllegalMonitorStateException if this lock is not held
	* @throws IllegalArgumentException if the given condition is
	*         not associated with this lock
	* @throws NullPointerException if the condition is null
	*/
	@:overload public function hasWaiters(condition : java.util.concurrent.locks.Condition) : Bool;
	
	/**
	* Returns an estimate of the number of threads waiting on the
	* given condition associated with the write lock. Note that because
	* timeouts and interrupts may occur at any time, the estimate
	* serves only as an upper bound on the actual number of waiters.
	* This method is designed for use in monitoring of the system
	* state, not for synchronization control.
	*
	* @param condition the condition
	* @return the estimated number of waiting threads
	* @throws IllegalMonitorStateException if this lock is not held
	* @throws IllegalArgumentException if the given condition is
	*         not associated with this lock
	* @throws NullPointerException if the condition is null
	*/
	@:overload public function getWaitQueueLength(condition : java.util.concurrent.locks.Condition) : Int;
	
	/**
	* Returns a collection containing those threads that may be
	* waiting on the given condition associated with the write lock.
	* Because the actual set of threads may change dynamically while
	* constructing this result, the returned collection is only a
	* best-effort estimate. The elements of the returned collection
	* are in no particular order.  This method is designed to
	* facilitate construction of subclasses that provide more
	* extensive condition monitoring facilities.
	*
	* @param condition the condition
	* @return the collection of threads
	* @throws IllegalMonitorStateException if this lock is not held
	* @throws IllegalArgumentException if the given condition is
	*         not associated with this lock
	* @throws NullPointerException if the condition is null
	*/
	@:overload private function getWaitingThreads(condition : java.util.concurrent.locks.Condition) : java.util.Collection<java.lang.Thread>;
	
	/**
	* Returns a string identifying this lock, as well as its lock state.
	* The state, in brackets, includes the String {@code "Write locks ="}
	* followed by the number of reentrantly held write locks, and the
	* String {@code "Read locks ="} followed by the number of held
	* read locks.
	*
	* @return a string identifying this lock, as well as its lock state
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Synchronization implementation for ReentrantReadWriteLock.
* Subclassed into fair and nonfair versions.
*/
@:native('java$util$concurrent$locks$ReentrantReadWriteLock$Sync') @:internal extern class ReentrantReadWriteLock_Sync extends java.util.concurrent.locks.AbstractQueuedSynchronizer
{
	/*
	* Note that tryRelease and tryAcquire can be called by
	* Conditions. So it is possible that their arguments contain
	* both read and write holds that are all released during a
	* condition wait and re-established in tryAcquire.
	*/
	@:overload @:final private function tryRelease(releases : Int) : Bool;
	
	@:overload @:final private function tryAcquire(acquires : Int) : Bool;
	
	@:overload @:final private function tryReleaseShared(unused : Int) : Bool;
	
	@:overload @:final private function tryAcquireShared(unused : Int) : Int;
	
	@:overload @:final private function isHeldExclusively() : Bool;
	
	
}
/**
* A counter for per-thread read hold counts.
* Maintained as a ThreadLocal; cached in cachedHoldCounter
*/
@:native('java$util$concurrent$locks$ReentrantReadWriteLock$Sync$HoldCounter') @:internal extern class ReentrantReadWriteLock_Sync_HoldCounter
{
	
}
/**
* ThreadLocal subclass. Easiest to explicitly define for sake
* of deserialization mechanics.
*/
@:native('java$util$concurrent$locks$ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter') @:internal extern class ReentrantReadWriteLock_Sync_ThreadLocalHoldCounter extends java.lang.ThreadLocal<java.util.concurrent.locks.ReentrantReadWriteLock.ReentrantReadWriteLock_Sync_HoldCounter>
{
	@:overload override public function initialValue() : java.util.concurrent.locks.ReentrantReadWriteLock.ReentrantReadWriteLock_Sync_HoldCounter;
	
	
}
/**
* Nonfair version of Sync
*/
@:native('java$util$concurrent$locks$ReentrantReadWriteLock$NonfairSync') @:internal extern class ReentrantReadWriteLock_NonfairSync extends java.util.concurrent.locks.ReentrantReadWriteLock.ReentrantReadWriteLock_Sync
{
	
}
/**
* Fair version of Sync
*/
@:native('java$util$concurrent$locks$ReentrantReadWriteLock$FairSync') @:internal extern class ReentrantReadWriteLock_FairSync extends java.util.concurrent.locks.ReentrantReadWriteLock.ReentrantReadWriteLock_Sync
{
	
}
/**
* The lock returned by method {@link ReentrantReadWriteLock#readLock}.
*/
@:native('java$util$concurrent$locks$ReentrantReadWriteLock$ReadLock') extern class ReentrantReadWriteLock_ReadLock implements java.util.concurrent.locks.Lock implements java.io.Serializable
{
	/**
	* Constructor for use by subclasses
	*
	* @param lock the outer lock object
	* @throws NullPointerException if the lock is null
	*/
	@:overload private function new(lock : java.util.concurrent.locks.ReentrantReadWriteLock) : Void;
	
	/**
	* Acquires the read lock.
	*
	* <p>Acquires the read lock if the write lock is not held by
	* another thread and returns immediately.
	*
	* <p>If the write lock is held by another thread then
	* the current thread becomes disabled for thread scheduling
	* purposes and lies dormant until the read lock has been acquired.
	*/
	@:overload public function lock() : Void;
	
	/**
	* Acquires the read lock unless the current thread is
	* {@linkplain Thread#interrupt interrupted}.
	*
	* <p>Acquires the read lock if the write lock is not held
	* by another thread and returns immediately.
	*
	* <p>If the write lock is held by another thread then the
	* current thread becomes disabled for thread scheduling
	* purposes and lies dormant until one of two things happens:
	*
	* <ul>
	*
	* <li>The read lock is acquired by the current thread; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread.
	*
	* </ul>
	*
	* <p>If the current thread:
	*
	* <ul>
	*
	* <li>has its interrupted status set on entry to this method; or
	*
	* <li>is {@linkplain Thread#interrupt interrupted} while
	* acquiring the read lock,
	*
	* </ul>
	*
	* then {@link InterruptedException} is thrown and the current
	* thread's interrupted status is cleared.
	*
	* <p>In this implementation, as this method is an explicit
	* interruption point, preference is given to responding to
	* the interrupt over normal or reentrant acquisition of the
	* lock.
	*
	* @throws InterruptedException if the current thread is interrupted
	*/
	@:overload public function lockInterruptibly() : Void;
	
	/**
	* Acquires the read lock only if the write lock is not held by
	* another thread at the time of invocation.
	*
	* <p>Acquires the read lock if the write lock is not held by
	* another thread and returns immediately with the value
	* {@code true}. Even when this lock has been set to use a
	* fair ordering policy, a call to {@code tryLock()}
	* <em>will</em> immediately acquire the read lock if it is
	* available, whether or not other threads are currently
	* waiting for the read lock.  This &quot;barging&quot; behavior
	* can be useful in certain circumstances, even though it
	* breaks fairness. If you want to honor the fairness setting
	* for this lock, then use {@link #tryLock(long, TimeUnit)
	* tryLock(0, TimeUnit.SECONDS) } which is almost equivalent
	* (it also detects interruption).
	*
	* <p>If the write lock is held by another thread then
	* this method will return immediately with the value
	* {@code false}.
	*
	* @return {@code true} if the read lock was acquired
	*/
	@:overload public function tryLock() : Bool;
	
	/**
	* Acquires the read lock if the write lock is not held by
	* another thread within the given waiting time and the
	* current thread has not been {@linkplain Thread#interrupt
	* interrupted}.
	*
	* <p>Acquires the read lock if the write lock is not held by
	* another thread and returns immediately with the value
	* {@code true}. If this lock has been set to use a fair
	* ordering policy then an available lock <em>will not</em> be
	* acquired if any other threads are waiting for the
	* lock. This is in contrast to the {@link #tryLock()}
	* method. If you want a timed {@code tryLock} that does
	* permit barging on a fair lock then combine the timed and
	* un-timed forms together:
	*
	* <pre>if (lock.tryLock() || lock.tryLock(timeout, unit) ) { ... }
	* </pre>
	*
	* <p>If the write lock is held by another thread then the
	* current thread becomes disabled for thread scheduling
	* purposes and lies dormant until one of three things happens:
	*
	* <ul>
	*
	* <li>The read lock is acquired by the current thread; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	*
	* <li>The specified waiting time elapses.
	*
	* </ul>
	*
	* <p>If the read lock is acquired then the value {@code true} is
	* returned.
	*
	* <p>If the current thread:
	*
	* <ul>
	*
	* <li>has its interrupted status set on entry to this method; or
	*
	* <li>is {@linkplain Thread#interrupt interrupted} while
	* acquiring the read lock,
	*
	* </ul> then {@link InterruptedException} is thrown and the
	* current thread's interrupted status is cleared.
	*
	* <p>If the specified waiting time elapses then the value
	* {@code false} is returned.  If the time is less than or
	* equal to zero, the method will not wait at all.
	*
	* <p>In this implementation, as this method is an explicit
	* interruption point, preference is given to responding to
	* the interrupt over normal or reentrant acquisition of the
	* lock, and over reporting the elapse of the waiting time.
	*
	* @param timeout the time to wait for the read lock
	* @param unit the time unit of the timeout argument
	* @return {@code true} if the read lock was acquired
	* @throws InterruptedException if the current thread is interrupted
	* @throws NullPointerException if the time unit is null
	*
	*/
	@:overload public function tryLock(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Attempts to release this lock.
	*
	* <p> If the number of readers is now zero then the lock
	* is made available for write lock attempts.
	*/
	@:overload public function unlock() : Void;
	
	/**
	* Throws {@code UnsupportedOperationException} because
	* {@code ReadLocks} do not support conditions.
	*
	* @throws UnsupportedOperationException always
	*/
	@:overload public function newCondition() : java.util.concurrent.locks.Condition;
	
	/**
	* Returns a string identifying this lock, as well as its lock state.
	* The state, in brackets, includes the String {@code "Read locks ="}
	* followed by the number of held read locks.
	*
	* @return a string identifying this lock, as well as its lock state
	*/
	@:overload public function toString() : String;
	
	
}
/**
* The lock returned by method {@link ReentrantReadWriteLock#writeLock}.
*/
@:native('java$util$concurrent$locks$ReentrantReadWriteLock$WriteLock') extern class ReentrantReadWriteLock_WriteLock implements java.util.concurrent.locks.Lock implements java.io.Serializable
{
	/**
	* Constructor for use by subclasses
	*
	* @param lock the outer lock object
	* @throws NullPointerException if the lock is null
	*/
	@:overload private function new(lock : java.util.concurrent.locks.ReentrantReadWriteLock) : Void;
	
	/**
	* Acquires the write lock.
	*
	* <p>Acquires the write lock if neither the read nor write lock
	* are held by another thread
	* and returns immediately, setting the write lock hold count to
	* one.
	*
	* <p>If the current thread already holds the write lock then the
	* hold count is incremented by one and the method returns
	* immediately.
	*
	* <p>If the lock is held by another thread then the current
	* thread becomes disabled for thread scheduling purposes and
	* lies dormant until the write lock has been acquired, at which
	* time the write lock hold count is set to one.
	*/
	@:overload public function lock() : Void;
	
	/**
	* Acquires the write lock unless the current thread is
	* {@linkplain Thread#interrupt interrupted}.
	*
	* <p>Acquires the write lock if neither the read nor write lock
	* are held by another thread
	* and returns immediately, setting the write lock hold count to
	* one.
	*
	* <p>If the current thread already holds this lock then the
	* hold count is incremented by one and the method returns
	* immediately.
	*
	* <p>If the lock is held by another thread then the current
	* thread becomes disabled for thread scheduling purposes and
	* lies dormant until one of two things happens:
	*
	* <ul>
	*
	* <li>The write lock is acquired by the current thread; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread.
	*
	* </ul>
	*
	* <p>If the write lock is acquired by the current thread then the
	* lock hold count is set to one.
	*
	* <p>If the current thread:
	*
	* <ul>
	*
	* <li>has its interrupted status set on entry to this method;
	* or
	*
	* <li>is {@linkplain Thread#interrupt interrupted} while
	* acquiring the write lock,
	*
	* </ul>
	*
	* then {@link InterruptedException} is thrown and the current
	* thread's interrupted status is cleared.
	*
	* <p>In this implementation, as this method is an explicit
	* interruption point, preference is given to responding to
	* the interrupt over normal or reentrant acquisition of the
	* lock.
	*
	* @throws InterruptedException if the current thread is interrupted
	*/
	@:overload public function lockInterruptibly() : Void;
	
	/**
	* Acquires the write lock only if it is not held by another thread
	* at the time of invocation.
	*
	* <p>Acquires the write lock if neither the read nor write lock
	* are held by another thread
	* and returns immediately with the value {@code true},
	* setting the write lock hold count to one. Even when this lock has
	* been set to use a fair ordering policy, a call to
	* {@code tryLock()} <em>will</em> immediately acquire the
	* lock if it is available, whether or not other threads are
	* currently waiting for the write lock.  This &quot;barging&quot;
	* behavior can be useful in certain circumstances, even
	* though it breaks fairness. If you want to honor the
	* fairness setting for this lock, then use {@link
	* #tryLock(long, TimeUnit) tryLock(0, TimeUnit.SECONDS) }
	* which is almost equivalent (it also detects interruption).
	*
	* <p> If the current thread already holds this lock then the
	* hold count is incremented by one and the method returns
	* {@code true}.
	*
	* <p>If the lock is held by another thread then this method
	* will return immediately with the value {@code false}.
	*
	* @return {@code true} if the lock was free and was acquired
	* by the current thread, or the write lock was already held
	* by the current thread; and {@code false} otherwise.
	*/
	@:overload public function tryLock() : Bool;
	
	/**
	* Acquires the write lock if it is not held by another thread
	* within the given waiting time and the current thread has
	* not been {@linkplain Thread#interrupt interrupted}.
	*
	* <p>Acquires the write lock if neither the read nor write lock
	* are held by another thread
	* and returns immediately with the value {@code true},
	* setting the write lock hold count to one. If this lock has been
	* set to use a fair ordering policy then an available lock
	* <em>will not</em> be acquired if any other threads are
	* waiting for the write lock. This is in contrast to the {@link
	* #tryLock()} method. If you want a timed {@code tryLock}
	* that does permit barging on a fair lock then combine the
	* timed and un-timed forms together:
	*
	* <pre>if (lock.tryLock() || lock.tryLock(timeout, unit) ) { ... }
	* </pre>
	*
	* <p>If the current thread already holds this lock then the
	* hold count is incremented by one and the method returns
	* {@code true}.
	*
	* <p>If the lock is held by another thread then the current
	* thread becomes disabled for thread scheduling purposes and
	* lies dormant until one of three things happens:
	*
	* <ul>
	*
	* <li>The write lock is acquired by the current thread; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	*
	* <li>The specified waiting time elapses
	*
	* </ul>
	*
	* <p>If the write lock is acquired then the value {@code true} is
	* returned and the write lock hold count is set to one.
	*
	* <p>If the current thread:
	*
	* <ul>
	*
	* <li>has its interrupted status set on entry to this method;
	* or
	*
	* <li>is {@linkplain Thread#interrupt interrupted} while
	* acquiring the write lock,
	*
	* </ul>
	*
	* then {@link InterruptedException} is thrown and the current
	* thread's interrupted status is cleared.
	*
	* <p>If the specified waiting time elapses then the value
	* {@code false} is returned.  If the time is less than or
	* equal to zero, the method will not wait at all.
	*
	* <p>In this implementation, as this method is an explicit
	* interruption point, preference is given to responding to
	* the interrupt over normal or reentrant acquisition of the
	* lock, and over reporting the elapse of the waiting time.
	*
	* @param timeout the time to wait for the write lock
	* @param unit the time unit of the timeout argument
	*
	* @return {@code true} if the lock was free and was acquired
	* by the current thread, or the write lock was already held by the
	* current thread; and {@code false} if the waiting time
	* elapsed before the lock could be acquired.
	*
	* @throws InterruptedException if the current thread is interrupted
	* @throws NullPointerException if the time unit is null
	*
	*/
	@:overload public function tryLock(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Attempts to release this lock.
	*
	* <p>If the current thread is the holder of this lock then
	* the hold count is decremented. If the hold count is now
	* zero then the lock is released.  If the current thread is
	* not the holder of this lock then {@link
	* IllegalMonitorStateException} is thrown.
	*
	* @throws IllegalMonitorStateException if the current thread does not
	* hold this lock.
	*/
	@:overload public function unlock() : Void;
	
	/**
	* Returns a {@link Condition} instance for use with this
	* {@link Lock} instance.
	* <p>The returned {@link Condition} instance supports the same
	* usages as do the {@link Object} monitor methods ({@link
	* Object#wait() wait}, {@link Object#notify notify}, and {@link
	* Object#notifyAll notifyAll}) when used with the built-in
	* monitor lock.
	*
	* <ul>
	*
	* <li>If this write lock is not held when any {@link
	* Condition} method is called then an {@link
	* IllegalMonitorStateException} is thrown.  (Read locks are
	* held independently of write locks, so are not checked or
	* affected. However it is essentially always an error to
	* invoke a condition waiting method when the current thread
	* has also acquired read locks, since other threads that
	* could unblock it will not be able to acquire the write
	* lock.)
	*
	* <li>When the condition {@linkplain Condition#await() waiting}
	* methods are called the write lock is released and, before
	* they return, the write lock is reacquired and the lock hold
	* count restored to what it was when the method was called.
	*
	* <li>If a thread is {@linkplain Thread#interrupt interrupted} while
	* waiting then the wait will terminate, an {@link
	* InterruptedException} will be thrown, and the thread's
	* interrupted status will be cleared.
	*
	* <li> Waiting threads are signalled in FIFO order.
	*
	* <li>The ordering of lock reacquisition for threads returning
	* from waiting methods is the same as for threads initially
	* acquiring the lock, which is in the default case not specified,
	* but for <em>fair</em> locks favors those threads that have been
	* waiting the longest.
	*
	* </ul>
	*
	* @return the Condition object
	*/
	@:overload public function newCondition() : java.util.concurrent.locks.Condition;
	
	/**
	* Returns a string identifying this lock, as well as its lock
	* state.  The state, in brackets includes either the String
	* {@code "Unlocked"} or the String {@code "Locked by"}
	* followed by the {@linkplain Thread#getName name} of the owning thread.
	*
	* @return a string identifying this lock, as well as its lock state
	*/
	@:overload public function toString() : String;
	
	/**
	* Queries if this write lock is held by the current thread.
	* Identical in effect to {@link
	* ReentrantReadWriteLock#isWriteLockedByCurrentThread}.
	*
	* @return {@code true} if the current thread holds this lock and
	*         {@code false} otherwise
	* @since 1.6
	*/
	@:require(java6) @:overload public function isHeldByCurrentThread() : Bool;
	
	/**
	* Queries the number of holds on this write lock by the current
	* thread.  A thread has a hold on a lock for each lock action
	* that is not matched by an unlock action.  Identical in effect
	* to {@link ReentrantReadWriteLock#getWriteHoldCount}.
	*
	* @return the number of holds on this lock by the current thread,
	*         or zero if this lock is not held by the current thread
	* @since 1.6
	*/
	@:require(java6) @:overload public function getHoldCount() : Int;
	
	
}
