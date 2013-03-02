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
extern class AbstractQueuedLongSynchronizer extends java.util.concurrent.locks.AbstractOwnableSynchronizer implements java.io.Serializable
{
	/**
	* Creates a new <tt>AbstractQueuedLongSynchronizer</tt> instance
	* with initial synchronization state of zero.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the current value of synchronization state.
	* This operation has memory semantics of a <tt>volatile</tt> read.
	* @return current state value
	*/
	@:overload @:final private function getState() : haxe.Int64;
	
	/**
	* Sets the value of synchronization state.
	* This operation has memory semantics of a <tt>volatile</tt> write.
	* @param newState the new state value
	*/
	@:overload @:final private function setState(newState : haxe.Int64) : Void;
	
	/**
	* Atomically sets synchronization state to the given updated
	* value if the current state value equals the expected value.
	* This operation has memory semantics of a <tt>volatile</tt> read
	* and write.
	*
	* @param expect the expected value
	* @param update the new value
	* @return true if successful. False return indicates that the actual
	*         value was not equal to the expected value.
	*/
	@:overload @:final private function compareAndSetState(expect : haxe.Int64, update : haxe.Int64) : Bool;
	
	/**
	* Attempts to acquire in exclusive mode. This method should query
	* if the state of the object permits it to be acquired in the
	* exclusive mode, and if so to acquire it.
	*
	* <p>This method is always invoked by the thread performing
	* acquire.  If this method reports failure, the acquire method
	* may queue the thread, if it is not already queued, until it is
	* signalled by a release from some other thread. This can be used
	* to implement method {@link Lock#tryLock()}.
	*
	* <p>The default
	* implementation throws {@link UnsupportedOperationException}.
	*
	* @param arg the acquire argument. This value is always the one
	*        passed to an acquire method, or is the value saved on entry
	*        to a condition wait.  The value is otherwise uninterpreted
	*        and can represent anything you like.
	* @return {@code true} if successful. Upon success, this object has
	*         been acquired.
	* @throws IllegalMonitorStateException if acquiring would place this
	*         synchronizer in an illegal state. This exception must be
	*         thrown in a consistent fashion for synchronization to work
	*         correctly.
	* @throws UnsupportedOperationException if exclusive mode is not supported
	*/
	@:overload private function tryAcquire(arg : haxe.Int64) : Bool;
	
	/**
	* Attempts to set the state to reflect a release in exclusive
	* mode.
	*
	* <p>This method is always invoked by the thread performing release.
	*
	* <p>The default implementation throws
	* {@link UnsupportedOperationException}.
	*
	* @param arg the release argument. This value is always the one
	*        passed to a release method, or the current state value upon
	*        entry to a condition wait.  The value is otherwise
	*        uninterpreted and can represent anything you like.
	* @return {@code true} if this object is now in a fully released
	*         state, so that any waiting threads may attempt to acquire;
	*         and {@code false} otherwise.
	* @throws IllegalMonitorStateException if releasing would place this
	*         synchronizer in an illegal state. This exception must be
	*         thrown in a consistent fashion for synchronization to work
	*         correctly.
	* @throws UnsupportedOperationException if exclusive mode is not supported
	*/
	@:overload private function tryRelease(arg : haxe.Int64) : Bool;
	
	/**
	* Attempts to acquire in shared mode. This method should query if
	* the state of the object permits it to be acquired in the shared
	* mode, and if so to acquire it.
	*
	* <p>This method is always invoked by the thread performing
	* acquire.  If this method reports failure, the acquire method
	* may queue the thread, if it is not already queued, until it is
	* signalled by a release from some other thread.
	*
	* <p>The default implementation throws {@link
	* UnsupportedOperationException}.
	*
	* @param arg the acquire argument. This value is always the one
	*        passed to an acquire method, or is the value saved on entry
	*        to a condition wait.  The value is otherwise uninterpreted
	*        and can represent anything you like.
	* @return a negative value on failure; zero if acquisition in shared
	*         mode succeeded but no subsequent shared-mode acquire can
	*         succeed; and a positive value if acquisition in shared
	*         mode succeeded and subsequent shared-mode acquires might
	*         also succeed, in which case a subsequent waiting thread
	*         must check availability. (Support for three different
	*         return values enables this method to be used in contexts
	*         where acquires only sometimes act exclusively.)  Upon
	*         success, this object has been acquired.
	* @throws IllegalMonitorStateException if acquiring would place this
	*         synchronizer in an illegal state. This exception must be
	*         thrown in a consistent fashion for synchronization to work
	*         correctly.
	* @throws UnsupportedOperationException if shared mode is not supported
	*/
	@:overload private function tryAcquireShared(arg : haxe.Int64) : haxe.Int64;
	
	/**
	* Attempts to set the state to reflect a release in shared mode.
	*
	* <p>This method is always invoked by the thread performing release.
	*
	* <p>The default implementation throws
	* {@link UnsupportedOperationException}.
	*
	* @param arg the release argument. This value is always the one
	*        passed to a release method, or the current state value upon
	*        entry to a condition wait.  The value is otherwise
	*        uninterpreted and can represent anything you like.
	* @return {@code true} if this release of shared mode may permit a
	*         waiting acquire (shared or exclusive) to succeed; and
	*         {@code false} otherwise
	* @throws IllegalMonitorStateException if releasing would place this
	*         synchronizer in an illegal state. This exception must be
	*         thrown in a consistent fashion for synchronization to work
	*         correctly.
	* @throws UnsupportedOperationException if shared mode is not supported
	*/
	@:overload private function tryReleaseShared(arg : haxe.Int64) : Bool;
	
	/**
	* Returns {@code true} if synchronization is held exclusively with
	* respect to the current (calling) thread.  This method is invoked
	* upon each call to a non-waiting {@link ConditionObject} method.
	* (Waiting methods instead invoke {@link #release}.)
	*
	* <p>The default implementation throws {@link
	* UnsupportedOperationException}. This method is invoked
	* internally only within {@link ConditionObject} methods, so need
	* not be defined if conditions are not used.
	*
	* @return {@code true} if synchronization is held exclusively;
	*         {@code false} otherwise
	* @throws UnsupportedOperationException if conditions are not supported
	*/
	@:overload private function isHeldExclusively() : Bool;
	
	/**
	* Acquires in exclusive mode, ignoring interrupts.  Implemented
	* by invoking at least once {@link #tryAcquire},
	* returning on success.  Otherwise the thread is queued, possibly
	* repeatedly blocking and unblocking, invoking {@link
	* #tryAcquire} until success.  This method can be used
	* to implement method {@link Lock#lock}.
	*
	* @param arg the acquire argument.  This value is conveyed to
	*        {@link #tryAcquire} but is otherwise uninterpreted and
	*        can represent anything you like.
	*/
	@:overload @:final public function acquire(arg : haxe.Int64) : Void;
	
	/**
	* Acquires in exclusive mode, aborting if interrupted.
	* Implemented by first checking interrupt status, then invoking
	* at least once {@link #tryAcquire}, returning on
	* success.  Otherwise the thread is queued, possibly repeatedly
	* blocking and unblocking, invoking {@link #tryAcquire}
	* until success or the thread is interrupted.  This method can be
	* used to implement method {@link Lock#lockInterruptibly}.
	*
	* @param arg the acquire argument.  This value is conveyed to
	*        {@link #tryAcquire} but is otherwise uninterpreted and
	*        can represent anything you like.
	* @throws InterruptedException if the current thread is interrupted
	*/
	@:overload @:final public function acquireInterruptibly(arg : haxe.Int64) : Void;
	
	/**
	* Attempts to acquire in exclusive mode, aborting if interrupted,
	* and failing if the given timeout elapses.  Implemented by first
	* checking interrupt status, then invoking at least once {@link
	* #tryAcquire}, returning on success.  Otherwise, the thread is
	* queued, possibly repeatedly blocking and unblocking, invoking
	* {@link #tryAcquire} until success or the thread is interrupted
	* or the timeout elapses.  This method can be used to implement
	* method {@link Lock#tryLock(long, TimeUnit)}.
	*
	* @param arg the acquire argument.  This value is conveyed to
	*        {@link #tryAcquire} but is otherwise uninterpreted and
	*        can represent anything you like.
	* @param nanosTimeout the maximum number of nanoseconds to wait
	* @return {@code true} if acquired; {@code false} if timed out
	* @throws InterruptedException if the current thread is interrupted
	*/
	@:overload @:final public function tryAcquireNanos(arg : haxe.Int64, nanosTimeout : haxe.Int64) : Bool;
	
	/**
	* Releases in exclusive mode.  Implemented by unblocking one or
	* more threads if {@link #tryRelease} returns true.
	* This method can be used to implement method {@link Lock#unlock}.
	*
	* @param arg the release argument.  This value is conveyed to
	*        {@link #tryRelease} but is otherwise uninterpreted and
	*        can represent anything you like.
	* @return the value returned from {@link #tryRelease}
	*/
	@:overload @:final public function release(arg : haxe.Int64) : Bool;
	
	/**
	* Acquires in shared mode, ignoring interrupts.  Implemented by
	* first invoking at least once {@link #tryAcquireShared},
	* returning on success.  Otherwise the thread is queued, possibly
	* repeatedly blocking and unblocking, invoking {@link
	* #tryAcquireShared} until success.
	*
	* @param arg the acquire argument.  This value is conveyed to
	*        {@link #tryAcquireShared} but is otherwise uninterpreted
	*        and can represent anything you like.
	*/
	@:overload @:final public function acquireShared(arg : haxe.Int64) : Void;
	
	/**
	* Acquires in shared mode, aborting if interrupted.  Implemented
	* by first checking interrupt status, then invoking at least once
	* {@link #tryAcquireShared}, returning on success.  Otherwise the
	* thread is queued, possibly repeatedly blocking and unblocking,
	* invoking {@link #tryAcquireShared} until success or the thread
	* is interrupted.
	* @param arg the acquire argument
	* This value is conveyed to {@link #tryAcquireShared} but is
	* otherwise uninterpreted and can represent anything
	* you like.
	* @throws InterruptedException if the current thread is interrupted
	*/
	@:overload @:final public function acquireSharedInterruptibly(arg : haxe.Int64) : Void;
	
	/**
	* Attempts to acquire in shared mode, aborting if interrupted, and
	* failing if the given timeout elapses.  Implemented by first
	* checking interrupt status, then invoking at least once {@link
	* #tryAcquireShared}, returning on success.  Otherwise, the
	* thread is queued, possibly repeatedly blocking and unblocking,
	* invoking {@link #tryAcquireShared} until success or the thread
	* is interrupted or the timeout elapses.
	*
	* @param arg the acquire argument.  This value is conveyed to
	*        {@link #tryAcquireShared} but is otherwise uninterpreted
	*        and can represent anything you like.
	* @param nanosTimeout the maximum number of nanoseconds to wait
	* @return {@code true} if acquired; {@code false} if timed out
	* @throws InterruptedException if the current thread is interrupted
	*/
	@:overload @:final public function tryAcquireSharedNanos(arg : haxe.Int64, nanosTimeout : haxe.Int64) : Bool;
	
	/**
	* Releases in shared mode.  Implemented by unblocking one or more
	* threads if {@link #tryReleaseShared} returns true.
	*
	* @param arg the release argument.  This value is conveyed to
	*        {@link #tryReleaseShared} but is otherwise uninterpreted
	*        and can represent anything you like.
	* @return the value returned from {@link #tryReleaseShared}
	*/
	@:overload @:final public function releaseShared(arg : haxe.Int64) : Bool;
	
	/**
	* Queries whether any threads are waiting to acquire. Note that
	* because cancellations due to interrupts and timeouts may occur
	* at any time, a {@code true} return does not guarantee that any
	* other thread will ever acquire.
	*
	* <p>In this implementation, this operation returns in
	* constant time.
	*
	* @return {@code true} if there may be other threads waiting to acquire
	*/
	@:overload @:final public function hasQueuedThreads() : Bool;
	
	/**
	* Queries whether any threads have ever contended to acquire this
	* synchronizer; that is if an acquire method has ever blocked.
	*
	* <p>In this implementation, this operation returns in
	* constant time.
	*
	* @return {@code true} if there has ever been contention
	*/
	@:overload @:final public function hasContended() : Bool;
	
	/**
	* Returns the first (longest-waiting) thread in the queue, or
	* {@code null} if no threads are currently queued.
	*
	* <p>In this implementation, this operation normally returns in
	* constant time, but may iterate upon contention if other threads are
	* concurrently modifying the queue.
	*
	* @return the first (longest-waiting) thread in the queue, or
	*         {@code null} if no threads are currently queued
	*/
	@:overload @:final public function getFirstQueuedThread() : java.lang.Thread;
	
	/**
	* Returns true if the given thread is currently queued.
	*
	* <p>This implementation traverses the queue to determine
	* presence of the given thread.
	*
	* @param thread the thread
	* @return {@code true} if the given thread is on the queue
	* @throws NullPointerException if the thread is null
	*/
	@:overload @:final public function isQueued(thread : java.lang.Thread) : Bool;
	
	/**
	* Queries whether any threads have been waiting to acquire longer
	* than the current thread.
	*
	* <p>An invocation of this method is equivalent to (but may be
	* more efficient than):
	*  <pre> {@code
	* getFirstQueuedThread() != Thread.currentThread() &&
	* hasQueuedThreads()}</pre>
	*
	* <p>Note that because cancellations due to interrupts and
	* timeouts may occur at any time, a {@code true} return does not
	* guarantee that some other thread will acquire before the current
	* thread.  Likewise, it is possible for another thread to win a
	* race to enqueue after this method has returned {@code false},
	* due to the queue being empty.
	*
	* <p>This method is designed to be used by a fair synchronizer to
	* avoid <a href="AbstractQueuedSynchronizer#barging">barging</a>.
	* Such a synchronizer's {@link #tryAcquire} method should return
	* {@code false}, and its {@link #tryAcquireShared} method should
	* return a negative value, if this method returns {@code true}
	* (unless this is a reentrant acquire).  For example, the {@code
	* tryAcquire} method for a fair, reentrant, exclusive mode
	* synchronizer might look like this:
	*
	*  <pre> {@code
	* protected boolean tryAcquire(int arg) {
	*   if (isHeldExclusively()) {
	*     // A reentrant acquire; increment hold count
	*     return true;
	*   } else if (hasQueuedPredecessors()) {
	*     return false;
	*   } else {
	*     // try to acquire normally
	*   }
	* }}</pre>
	*
	* @return {@code true} if there is a queued thread preceding the
	*         current thread, and {@code false} if the current thread
	*         is at the head of the queue or the queue is empty
	* @since 1.7
	*/
	@:require(java7) @:overload @:final public function hasQueuedPredecessors() : Bool;
	
	/**
	* Returns an estimate of the number of threads waiting to
	* acquire.  The value is only an estimate because the number of
	* threads may change dynamically while this method traverses
	* internal data structures.  This method is designed for use in
	* monitoring system state, not for synchronization
	* control.
	*
	* @return the estimated number of threads waiting to acquire
	*/
	@:overload @:final public function getQueueLength() : Int;
	
	/**
	* Returns a collection containing threads that may be waiting to
	* acquire.  Because the actual set of threads may change
	* dynamically while constructing this result, the returned
	* collection is only a best-effort estimate.  The elements of the
	* returned collection are in no particular order.  This method is
	* designed to facilitate construction of subclasses that provide
	* more extensive monitoring facilities.
	*
	* @return the collection of threads
	*/
	@:overload @:final public function getQueuedThreads() : java.util.Collection<java.lang.Thread>;
	
	/**
	* Returns a collection containing threads that may be waiting to
	* acquire in exclusive mode. This has the same properties
	* as {@link #getQueuedThreads} except that it only returns
	* those threads waiting due to an exclusive acquire.
	*
	* @return the collection of threads
	*/
	@:overload @:final public function getExclusiveQueuedThreads() : java.util.Collection<java.lang.Thread>;
	
	/**
	* Returns a collection containing threads that may be waiting to
	* acquire in shared mode. This has the same properties
	* as {@link #getQueuedThreads} except that it only returns
	* those threads waiting due to a shared acquire.
	*
	* @return the collection of threads
	*/
	@:overload @:final public function getSharedQueuedThreads() : java.util.Collection<java.lang.Thread>;
	
	/**
	* Returns a string identifying this synchronizer, as well as its state.
	* The state, in brackets, includes the String {@code "State ="}
	* followed by the current value of {@link #getState}, and either
	* {@code "nonempty"} or {@code "empty"} depending on whether the
	* queue is empty.
	*
	* @return a string identifying this synchronizer, as well as its state
	*/
	@:overload public function toString() : String;
	
	/**
	* Queries whether the given ConditionObject
	* uses this synchronizer as its lock.
	*
	* @param condition the condition
	* @return <tt>true</tt> if owned
	* @throws NullPointerException if the condition is null
	*/
	@:overload @:final public function owns(condition : java.util.concurrent.locks.AbstractQueuedLongSynchronizer.AbstractQueuedLongSynchronizer_ConditionObject) : Bool;
	
	/**
	* Queries whether any threads are waiting on the given condition
	* associated with this synchronizer. Note that because timeouts
	* and interrupts may occur at any time, a <tt>true</tt> return
	* does not guarantee that a future <tt>signal</tt> will awaken
	* any threads.  This method is designed primarily for use in
	* monitoring of the system state.
	*
	* @param condition the condition
	* @return <tt>true</tt> if there are any waiting threads
	* @throws IllegalMonitorStateException if exclusive synchronization
	*         is not held
	* @throws IllegalArgumentException if the given condition is
	*         not associated with this synchronizer
	* @throws NullPointerException if the condition is null
	*/
	@:overload @:final public function hasWaiters(condition : java.util.concurrent.locks.AbstractQueuedLongSynchronizer.AbstractQueuedLongSynchronizer_ConditionObject) : Bool;
	
	/**
	* Returns an estimate of the number of threads waiting on the
	* given condition associated with this synchronizer. Note that
	* because timeouts and interrupts may occur at any time, the
	* estimate serves only as an upper bound on the actual number of
	* waiters.  This method is designed for use in monitoring of the
	* system state, not for synchronization control.
	*
	* @param condition the condition
	* @return the estimated number of waiting threads
	* @throws IllegalMonitorStateException if exclusive synchronization
	*         is not held
	* @throws IllegalArgumentException if the given condition is
	*         not associated with this synchronizer
	* @throws NullPointerException if the condition is null
	*/
	@:overload @:final public function getWaitQueueLength(condition : java.util.concurrent.locks.AbstractQueuedLongSynchronizer.AbstractQueuedLongSynchronizer_ConditionObject) : Int;
	
	/**
	* Returns a collection containing those threads that may be
	* waiting on the given condition associated with this
	* synchronizer.  Because the actual set of threads may change
	* dynamically while constructing this result, the returned
	* collection is only a best-effort estimate. The elements of the
	* returned collection are in no particular order.
	*
	* @param condition the condition
	* @return the collection of threads
	* @throws IllegalMonitorStateException if exclusive synchronization
	*         is not held
	* @throws IllegalArgumentException if the given condition is
	*         not associated with this synchronizer
	* @throws NullPointerException if the condition is null
	*/
	@:overload @:final public function getWaitingThreads(condition : java.util.concurrent.locks.AbstractQueuedLongSynchronizer.AbstractQueuedLongSynchronizer_ConditionObject) : java.util.Collection<java.lang.Thread>;
	
	
}
/**
* Wait queue node class.
*
* <p>The wait queue is a variant of a "CLH" (Craig, Landin, and
* Hagersten) lock queue. CLH locks are normally used for
* spinlocks.  We instead use them for blocking synchronizers, but
* use the same basic tactic of holding some of the control
* information about a thread in the predecessor of its node.  A
* "status" field in each node keeps track of whether a thread
* should block.  A node is signalled when its predecessor
* releases.  Each node of the queue otherwise serves as a
* specific-notification-style monitor holding a single waiting
* thread. The status field does NOT control whether threads are
* granted locks etc though.  A thread may try to acquire if it is
* first in the queue. But being first does not guarantee success;
* it only gives the right to contend.  So the currently released
* contender thread may need to rewait.
*
* <p>To enqueue into a CLH lock, you atomically splice it in as new
* tail. To dequeue, you just set the head field.
* <pre>
*      +------+  prev +-----+       +-----+
* head |      | <---- |     | <---- |     |  tail
*      +------+       +-----+       +-----+
* </pre>
*
* <p>Insertion into a CLH queue requires only a single atomic
* operation on "tail", so there is a simple atomic point of
* demarcation from unqueued to queued. Similarly, dequeing
* involves only updating the "head". However, it takes a bit
* more work for nodes to determine who their successors are,
* in part to deal with possible cancellation due to timeouts
* and interrupts.
*
* <p>The "prev" links (not used in original CLH locks), are mainly
* needed to handle cancellation. If a node is cancelled, its
* successor is (normally) relinked to a non-cancelled
* predecessor. For explanation of similar mechanics in the case
* of spin locks, see the papers by Scott and Scherer at
* http://www.cs.rochester.edu/u/scott/synchronization/
*
* <p>We also use "next" links to implement blocking mechanics.
* The thread id for each node is kept in its own node, so a
* predecessor signals the next node to wake up by traversing
* next link to determine which thread it is.  Determination of
* successor must avoid races with newly queued nodes to set
* the "next" fields of their predecessors.  This is solved
* when necessary by checking backwards from the atomically
* updated "tail" when a node's successor appears to be null.
* (Or, said differently, the next-links are an optimization
* so that we don't usually need a backward scan.)
*
* <p>Cancellation introduces some conservatism to the basic
* algorithms.  Since we must poll for cancellation of other
* nodes, we can miss noticing whether a cancelled node is
* ahead or behind us. This is dealt with by always unparking
* successors upon cancellation, allowing them to stabilize on
* a new predecessor, unless we can identify an uncancelled
* predecessor who will carry this responsibility.
*
* <p>CLH queues need a dummy header node to get started. But
* we don't create them on construction, because it would be wasted
* effort if there is never contention. Instead, the node
* is constructed and head and tail pointers are set upon first
* contention.
*
* <p>Threads waiting on Conditions use the same nodes, but
* use an additional link. Conditions only need to link nodes
* in simple (non-concurrent) linked queues because they are
* only accessed when exclusively held.  Upon await, a node is
* inserted into a condition queue.  Upon signal, the node is
* transferred to the main queue.  A special value of status
* field is used to mark which queue a node is on.
*
* <p>Thanks go to Dave Dice, Mark Moir, Victor Luchangco, Bill
* Scherer and Michael Scott, along with members of JSR-166
* expert group, for helpful ideas, discussions, and critiques
* on the design of this class.
*/
@:native('java$util$concurrent$locks$AbstractQueuedLongSynchronizer$Node') @:internal extern class AbstractQueuedLongSynchronizer_Node
{
	
}
/**
* Condition implementation for a {@link
* AbstractQueuedLongSynchronizer} serving as the basis of a {@link
* Lock} implementation.
*
* <p>Method documentation for this class describes mechanics,
* not behavioral specifications from the point of view of Lock
* and Condition users. Exported versions of this class will in
* general need to be accompanied by documentation describing
* condition semantics that rely on those of the associated
* <tt>AbstractQueuedLongSynchronizer</tt>.
*
* <p>This class is Serializable, but all fields are transient,
* so deserialized conditions have no waiters.
*
* @since 1.6
*/
@:require(java6) @:native('java$util$concurrent$locks$AbstractQueuedLongSynchronizer$ConditionObject') extern class AbstractQueuedLongSynchronizer_ConditionObject implements java.util.concurrent.locks.Condition implements java.io.Serializable
{
	/**
	* Creates a new <tt>ConditionObject</tt> instance.
	*/
	@:overload public function new() : Void;
	
	/**
	* Moves the longest-waiting thread, if one exists, from the
	* wait queue for this condition to the wait queue for the
	* owning lock.
	*
	* @throws IllegalMonitorStateException if {@link #isHeldExclusively}
	*         returns {@code false}
	*/
	@:overload @:final public function signal() : Void;
	
	/**
	* Moves all threads from the wait queue for this condition to
	* the wait queue for the owning lock.
	*
	* @throws IllegalMonitorStateException if {@link #isHeldExclusively}
	*         returns {@code false}
	*/
	@:overload @:final public function signalAll() : Void;
	
	/**
	* Implements uninterruptible condition wait.
	* <ol>
	* <li> Save lock state returned by {@link #getState}.
	* <li> Invoke {@link #release} with
	*      saved state as argument, throwing
	*      IllegalMonitorStateException if it fails.
	* <li> Block until signalled.
	* <li> Reacquire by invoking specialized version of
	*      {@link #acquire} with saved state as argument.
	* </ol>
	*/
	@:overload @:final public function awaitUninterruptibly() : Void;
	
	/**
	* Implements interruptible condition wait.
	* <ol>
	* <li> If current thread is interrupted, throw InterruptedException.
	* <li> Save lock state returned by {@link #getState}.
	* <li> Invoke {@link #release} with
	*      saved state as argument, throwing
	*      IllegalMonitorStateException if it fails.
	* <li> Block until signalled or interrupted.
	* <li> Reacquire by invoking specialized version of
	*      {@link #acquire} with saved state as argument.
	* <li> If interrupted while blocked in step 4, throw InterruptedException.
	* </ol>
	*/
	@:overload @:final public function await() : Void;
	
	/**
	* Implements timed condition wait.
	* <ol>
	* <li> If current thread is interrupted, throw InterruptedException.
	* <li> Save lock state returned by {@link #getState}.
	* <li> Invoke {@link #release} with
	*      saved state as argument, throwing
	*      IllegalMonitorStateException if it fails.
	* <li> Block until signalled, interrupted, or timed out.
	* <li> Reacquire by invoking specialized version of
	*      {@link #acquire} with saved state as argument.
	* <li> If interrupted while blocked in step 4, throw InterruptedException.
	* </ol>
	*/
	@:overload @:final public function awaitNanos(nanosTimeout : haxe.Int64) : haxe.Int64;
	
	/**
	* Implements absolute timed condition wait.
	* <ol>
	* <li> If current thread is interrupted, throw InterruptedException.
	* <li> Save lock state returned by {@link #getState}.
	* <li> Invoke {@link #release} with
	*      saved state as argument, throwing
	*      IllegalMonitorStateException if it fails.
	* <li> Block until signalled, interrupted, or timed out.
	* <li> Reacquire by invoking specialized version of
	*      {@link #acquire} with saved state as argument.
	* <li> If interrupted while blocked in step 4, throw InterruptedException.
	* <li> If timed out while blocked in step 4, return false, else true.
	* </ol>
	*/
	@:overload @:final public function awaitUntil(deadline : java.util.Date) : Bool;
	
	/**
	* Implements timed condition wait.
	* <ol>
	* <li> If current thread is interrupted, throw InterruptedException.
	* <li> Save lock state returned by {@link #getState}.
	* <li> Invoke {@link #release} with
	*      saved state as argument, throwing
	*      IllegalMonitorStateException if it fails.
	* <li> Block until signalled, interrupted, or timed out.
	* <li> Reacquire by invoking specialized version of
	*      {@link #acquire} with saved state as argument.
	* <li> If interrupted while blocked in step 4, throw InterruptedException.
	* <li> If timed out while blocked in step 4, return false, else true.
	* </ol>
	*/
	@:overload @:final public function await(time : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Queries whether any threads are waiting on this condition.
	* Implements {@link AbstractQueuedLongSynchronizer#hasWaiters}.
	*
	* @return {@code true} if there are any waiting threads
	* @throws IllegalMonitorStateException if {@link #isHeldExclusively}
	*         returns {@code false}
	*/
	@:overload @:final private function hasWaiters() : Bool;
	
	/**
	* Returns an estimate of the number of threads waiting on
	* this condition.
	* Implements {@link AbstractQueuedLongSynchronizer#getWaitQueueLength}.
	*
	* @return the estimated number of waiting threads
	* @throws IllegalMonitorStateException if {@link #isHeldExclusively}
	*         returns {@code false}
	*/
	@:overload @:final private function getWaitQueueLength() : Int;
	
	/**
	* Returns a collection containing those threads that may be
	* waiting on this Condition.
	* Implements {@link AbstractQueuedLongSynchronizer#getWaitingThreads}.
	*
	* @return the collection of threads
	* @throws IllegalMonitorStateException if {@link #isHeldExclusively}
	*         returns {@code false}
	*/
	@:overload @:final private function getWaitingThreads() : java.util.Collection<java.lang.Thread>;
	
	
}
