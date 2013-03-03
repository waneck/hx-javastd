package java.util.concurrent;
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
extern class ForkJoinPool extends java.util.concurrent.AbstractExecutorService
{
	/**
	* Creates a new ForkJoinWorkerThread. This factory is used unless
	* overridden in ForkJoinPool constructors.
	*/
	@:public @:static @:final public static var defaultForkJoinWorkerThreadFactory(default, null) : java.util.concurrent.ForkJoinPool.ForkJoinPool_ForkJoinWorkerThreadFactory;
	
	/**
	* Creates a {@code ForkJoinPool} with parallelism equal to {@link
	* java.lang.Runtime#availableProcessors}, using the {@linkplain
	* #defaultForkJoinWorkerThreadFactory default thread factory},
	* no UncaughtExceptionHandler, and non-async LIFO processing mode.
	*
	* @throws SecurityException if a security manager exists and
	*         the caller is not permitted to modify threads
	*         because it does not hold {@link
	*         java.lang.RuntimePermission}{@code ("modifyThread")}
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a {@code ForkJoinPool} with the indicated parallelism
	* level, the {@linkplain
	* #defaultForkJoinWorkerThreadFactory default thread factory},
	* no UncaughtExceptionHandler, and non-async LIFO processing mode.
	*
	* @param parallelism the parallelism level
	* @throws IllegalArgumentException if parallelism less than or
	*         equal to zero, or greater than implementation limit
	* @throws SecurityException if a security manager exists and
	*         the caller is not permitted to modify threads
	*         because it does not hold {@link
	*         java.lang.RuntimePermission}{@code ("modifyThread")}
	*/
	@:overload @:public public function new(parallelism : Int) : Void;
	
	/**
	* Creates a {@code ForkJoinPool} with the given parameters.
	*
	* @param parallelism the parallelism level. For default value,
	* use {@link java.lang.Runtime#availableProcessors}.
	* @param factory the factory for creating new threads. For default value,
	* use {@link #defaultForkJoinWorkerThreadFactory}.
	* @param handler the handler for internal worker threads that
	* terminate due to unrecoverable errors encountered while executing
	* tasks. For default value, use {@code null}.
	* @param asyncMode if true,
	* establishes local first-in-first-out scheduling mode for forked
	* tasks that are never joined. This mode may be more appropriate
	* than default locally stack-based mode in applications in which
	* worker threads only process event-style asynchronous tasks.
	* For default value, use {@code false}.
	* @throws IllegalArgumentException if parallelism less than or
	*         equal to zero, or greater than implementation limit
	* @throws NullPointerException if the factory is null
	* @throws SecurityException if a security manager exists and
	*         the caller is not permitted to modify threads
	*         because it does not hold {@link
	*         java.lang.RuntimePermission}{@code ("modifyThread")}
	*/
	@:overload @:public public function new(parallelism : Int, factory : java.util.concurrent.ForkJoinPool.ForkJoinPool_ForkJoinWorkerThreadFactory, handler : java.lang.Thread.Thread_UncaughtExceptionHandler, asyncMode : Bool) : Void;
	
	/**
	* Performs the given task, returning its result upon completion.
	* If the computation encounters an unchecked Exception or Error,
	* it is rethrown as the outcome of this invocation.  Rethrown
	* exceptions behave in the same way as regular exceptions, but,
	* when possible, contain stack traces (as displayed for example
	* using {@code ex.printStackTrace()}) of both the current thread
	* as well as the thread actually encountering the exception;
	* minimally only the latter.
	*
	* @param task the task
	* @return the task's result
	* @throws NullPointerException if the task is null
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	*/
	@:overload @:public public function invoke<T>(task : java.util.concurrent.ForkJoinTask<T>) : T;
	
	/**
	* Arranges for (asynchronous) execution of the given task.
	*
	* @param task the task
	* @throws NullPointerException if the task is null
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	*/
	@:overload @:public public function execute(task : java.util.concurrent.ForkJoinTask<Dynamic>) : Void;
	
	/**
	* @throws NullPointerException if the task is null
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	*/
	@:overload @:public override public function execute(task : java.lang.Runnable) : Void;
	
	/**
	* Submits a ForkJoinTask for execution.
	*
	* @param task the task to submit
	* @return the task
	* @throws NullPointerException if the task is null
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	*/
	@:overload @:public public function submit<T>(task : java.util.concurrent.ForkJoinTask<T>) : java.util.concurrent.ForkJoinTask<T>;
	
	/**
	* @throws NullPointerException if the task is null
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	*/
	@:overload @:public override public function submit<T>(task : java.util.concurrent.Callable<T>) : java.util.concurrent.ForkJoinTask<T>;
	
	/**
	* @throws NullPointerException if the task is null
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	*/
	@:overload @:public override public function submit<T>(task : java.lang.Runnable, result : T) : java.util.concurrent.ForkJoinTask<T>;
	
	/**
	* @throws NullPointerException if the task is null
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	*/
	@:overload @:public override public function submit(task : java.lang.Runnable) : java.util.concurrent.ForkJoinTask<Dynamic>;
	
	/**
	* @throws NullPointerException       {@inheritDoc}
	* @throws RejectedExecutionException {@inheritDoc}
	*/
	@:overload @:public override public function invokeAll<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>) : java.util.List<java.util.concurrent.Future<T>>;
	
	/**
	* Returns the factory used for constructing new workers.
	*
	* @return the factory used for constructing new workers
	*/
	@:overload @:public public function getFactory() : java.util.concurrent.ForkJoinPool.ForkJoinPool_ForkJoinWorkerThreadFactory;
	
	/**
	* Returns the handler for internal worker threads that terminate
	* due to unrecoverable errors encountered while executing tasks.
	*
	* @return the handler, or {@code null} if none
	*/
	@:overload @:public public function getUncaughtExceptionHandler() : java.lang.Thread.Thread_UncaughtExceptionHandler;
	
	/**
	* Returns the targeted parallelism level of this pool.
	*
	* @return the targeted parallelism level of this pool
	*/
	@:overload @:public public function getParallelism() : Int;
	
	/**
	* Returns the number of worker threads that have started but not
	* yet terminated.  The result returned by this method may differ
	* from {@link #getParallelism} when threads are created to
	* maintain parallelism when others are cooperatively blocked.
	*
	* @return the number of worker threads
	*/
	@:overload @:public public function getPoolSize() : Int;
	
	/**
	* Returns {@code true} if this pool uses local first-in-first-out
	* scheduling mode for forked tasks that are never joined.
	*
	* @return {@code true} if this pool uses async mode
	*/
	@:overload @:public public function getAsyncMode() : Bool;
	
	/**
	* Returns an estimate of the number of worker threads that are
	* not blocked waiting to join tasks or for other managed
	* synchronization. This method may overestimate the
	* number of running threads.
	*
	* @return the number of worker threads
	*/
	@:overload @:public public function getRunningThreadCount() : Int;
	
	/**
	* Returns an estimate of the number of threads that are currently
	* stealing or executing tasks. This method may overestimate the
	* number of active threads.
	*
	* @return the number of active threads
	*/
	@:overload @:public public function getActiveThreadCount() : Int;
	
	/**
	* Returns {@code true} if all worker threads are currently idle.
	* An idle worker is one that cannot obtain a task to execute
	* because none are available to steal from other threads, and
	* there are no pending submissions to the pool. This method is
	* conservative; it might not return {@code true} immediately upon
	* idleness of all threads, but will eventually become true if
	* threads remain inactive.
	*
	* @return {@code true} if all threads are currently idle
	*/
	@:overload @:public public function isQuiescent() : Bool;
	
	/**
	* Returns an estimate of the total number of tasks stolen from
	* one thread's work queue by another. The reported value
	* underestimates the actual total number of steals when the pool
	* is not quiescent. This value may be useful for monitoring and
	* tuning fork/join programs: in general, steal counts should be
	* high enough to keep threads busy, but low enough to avoid
	* overhead and contention across threads.
	*
	* @return the number of steals
	*/
	@:overload @:public public function getStealCount() : haxe.Int64;
	
	/**
	* Returns an estimate of the total number of tasks currently held
	* in queues by worker threads (but not including tasks submitted
	* to the pool that have not begun executing). This value is only
	* an approximation, obtained by iterating across all threads in
	* the pool. This method may be useful for tuning task
	* granularities.
	*
	* @return the number of queued tasks
	*/
	@:overload @:public public function getQueuedTaskCount() : haxe.Int64;
	
	/**
	* Returns an estimate of the number of tasks submitted to this
	* pool that have not yet begun executing.  This method may take
	* time proportional to the number of submissions.
	*
	* @return the number of queued submissions
	*/
	@:overload @:public public function getQueuedSubmissionCount() : Int;
	
	/**
	* Returns {@code true} if there are any tasks submitted to this
	* pool that have not yet begun executing.
	*
	* @return {@code true} if there are any queued submissions
	*/
	@:overload @:public public function hasQueuedSubmissions() : Bool;
	
	/**
	* Removes and returns the next unexecuted submission if one is
	* available.  This method may be useful in extensions to this
	* class that re-assign work in systems with multiple pools.
	*
	* @return the next submission, or {@code null} if none
	*/
	@:overload @:protected private function pollSubmission() : java.util.concurrent.ForkJoinTask<Dynamic>;
	
	/**
	* Removes all available unexecuted submitted and forked tasks
	* from scheduling queues and adds them to the given collection,
	* without altering their execution status. These may include
	* artificially generated or wrapped tasks. This method is
	* designed to be invoked only when the pool is known to be
	* quiescent. Invocations at other times may not remove all
	* tasks. A failure encountered while attempting to add elements
	* to collection {@code c} may result in elements being in
	* neither, either or both collections when the associated
	* exception is thrown.  The behavior of this operation is
	* undefined if the specified collection is modified while the
	* operation is in progress.
	*
	* @param c the collection to transfer elements into
	* @return the number of elements transferred
	*/
	@:overload @:protected private function drainTasksTo(c : java.util.Collection<java.util.concurrent.ForkJoinTask<Dynamic>>) : Int;
	
	/**
	* Returns a string identifying this pool, as well as its state,
	* including indications of run state, parallelism level, and
	* worker and task counts.
	*
	* @return a string identifying this pool, as well as its state
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Initiates an orderly shutdown in which previously submitted
	* tasks are executed, but no new tasks will be accepted.
	* Invocation has no additional effect if already shut down.
	* Tasks that are in the process of being submitted concurrently
	* during the course of this method may or may not be rejected.
	*
	* @throws SecurityException if a security manager exists and
	*         the caller is not permitted to modify threads
	*         because it does not hold {@link
	*         java.lang.RuntimePermission}{@code ("modifyThread")}
	*/
	@:overload @:public override public function shutdown() : Void;
	
	/**
	* Attempts to cancel and/or stop all tasks, and reject all
	* subsequently submitted tasks.  Tasks that are in the process of
	* being submitted or executed concurrently during the course of
	* this method may or may not be rejected. This method cancels
	* both existing and unexecuted tasks, in order to permit
	* termination in the presence of task dependencies. So the method
	* always returns an empty list (unlike the case for some other
	* Executors).
	*
	* @return an empty list
	* @throws SecurityException if a security manager exists and
	*         the caller is not permitted to modify threads
	*         because it does not hold {@link
	*         java.lang.RuntimePermission}{@code ("modifyThread")}
	*/
	@:overload @:public override public function shutdownNow() : java.util.List<java.lang.Runnable>;
	
	/**
	* Returns {@code true} if all tasks have completed following shut down.
	*
	* @return {@code true} if all tasks have completed following shut down
	*/
	@:overload @:public override public function isTerminated() : Bool;
	
	/**
	* Returns {@code true} if the process of termination has
	* commenced but not yet completed.  This method may be useful for
	* debugging. A return of {@code true} reported a sufficient
	* period after shutdown may indicate that submitted tasks have
	* ignored or suppressed interruption, or are waiting for IO,
	* causing this executor not to properly terminate. (See the
	* advisory notes for class {@link ForkJoinTask} stating that
	* tasks should not normally entail blocking operations.  But if
	* they do, they must abort them on interrupt.)
	*
	* @return {@code true} if terminating but not yet terminated
	*/
	@:overload @:public public function isTerminating() : Bool;
	
	/**
	* Returns {@code true} if this pool has been shut down.
	*
	* @return {@code true} if this pool has been shut down
	*/
	@:overload @:public override public function isShutdown() : Bool;
	
	/**
	* Blocks until all tasks have completed execution after a shutdown
	* request, or the timeout occurs, or the current thread is
	* interrupted, whichever happens first.
	*
	* @param timeout the maximum time to wait
	* @param unit the time unit of the timeout argument
	* @return {@code true} if this executor terminated and
	*         {@code false} if the timeout elapsed before termination
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload @:public override public function awaitTermination(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Blocks in accord with the given blocker.  If the current thread
	* is a {@link ForkJoinWorkerThread}, this method possibly
	* arranges for a spare thread to be activated if necessary to
	* ensure sufficient parallelism while the current thread is blocked.
	*
	* <p>If the caller is not a {@link ForkJoinTask}, this method is
	* behaviorally equivalent to
	*  <pre> {@code
	* while (!blocker.isReleasable())
	*   if (blocker.block())
	*     return;
	* }</pre>
	*
	* If the caller is a {@code ForkJoinTask}, then the pool may
	* first be expanded to ensure parallelism, and later adjusted.
	*
	* @param blocker the blocker
	* @throws InterruptedException if blocker.block did so
	*/
	@:overload @:public @:static public static function managedBlock(blocker : java.util.concurrent.ForkJoinPool.ForkJoinPool_ManagedBlocker) : Void;
	
	@:overload @:protected override private function newTaskFor<T>(runnable : java.lang.Runnable, value : T) : java.util.concurrent.RunnableFuture<T>;
	
	@:overload @:protected override private function newTaskFor<T>(callable : java.util.concurrent.Callable<T>) : java.util.concurrent.RunnableFuture<T>;
	
	
}
/**
* Factory for creating new {@link ForkJoinWorkerThread}s.
* A {@code ForkJoinWorkerThreadFactory} must be defined and used
* for {@code ForkJoinWorkerThread} subclasses that extend base
* functionality or initialize threads with different contexts.
*/
@:native('java$util$concurrent$ForkJoinPool$ForkJoinWorkerThreadFactory') extern interface ForkJoinPool_ForkJoinWorkerThreadFactory
{
	/**
	* Returns a new worker thread operating in the given pool.
	*
	* @param pool the pool this thread works in
	* @throws NullPointerException if the pool is null
	*/
	@:overload @:public public function newThread(pool : java.util.concurrent.ForkJoinPool) : java.util.concurrent.ForkJoinWorkerThread;
	
	
}
/**
* Default ForkJoinWorkerThreadFactory implementation; creates a
* new ForkJoinWorkerThread.
*/
@:native('java$util$concurrent$ForkJoinPool$DefaultForkJoinWorkerThreadFactory') @:internal extern class ForkJoinPool_DefaultForkJoinWorkerThreadFactory implements java.util.concurrent.ForkJoinPool.ForkJoinPool_ForkJoinWorkerThreadFactory
{
	@:overload @:public public function newThread(pool : java.util.concurrent.ForkJoinPool) : java.util.concurrent.ForkJoinWorkerThread;
	
	
}
@:native('java$util$concurrent$ForkJoinPool$InvokeAll') @:internal extern class ForkJoinPool_InvokeAll<T> extends java.util.concurrent.RecursiveAction
{
	@:overload @:public override public function compute() : Void;
	
	
}
/**
* Interface for extending managed parallelism for tasks running
* in {@link ForkJoinPool}s.
*
* <p>A {@code ManagedBlocker} provides two methods.  Method
* {@code isReleasable} must return {@code true} if blocking is
* not necessary. Method {@code block} blocks the current thread
* if necessary (perhaps internally invoking {@code isReleasable}
* before actually blocking). These actions are performed by any
* thread invoking {@link ForkJoinPool#managedBlock}.  The
* unusual methods in this API accommodate synchronizers that may,
* but don't usually, block for long periods. Similarly, they
* allow more efficient internal handling of cases in which
* additional workers may be, but usually are not, needed to
* ensure sufficient parallelism.  Toward this end,
* implementations of method {@code isReleasable} must be amenable
* to repeated invocation.
*
* <p>For example, here is a ManagedBlocker based on a
* ReentrantLock:
*  <pre> {@code
* class ManagedLocker implements ManagedBlocker {
*   final ReentrantLock lock;
*   boolean hasLock = false;
*   ManagedLocker(ReentrantLock lock) { this.lock = lock; }
*   public boolean block() {
*     if (!hasLock)
*       lock.lock();
*     return true;
*   }
*   public boolean isReleasable() {
*     return hasLock || (hasLock = lock.tryLock());
*   }
* }}</pre>
*
* <p>Here is a class that possibly blocks waiting for an
* item on a given queue:
*  <pre> {@code
* class QueueTaker<E> implements ManagedBlocker {
*   final BlockingQueue<E> queue;
*   volatile E item = null;
*   QueueTaker(BlockingQueue<E> q) { this.queue = q; }
*   public boolean block() throws InterruptedException {
*     if (item == null)
*       item = queue.take();
*     return true;
*   }
*   public boolean isReleasable() {
*     return item != null || (item = queue.poll()) != null;
*   }
*   public E getItem() { // call after pool.managedBlock completes
*     return item;
*   }
* }}</pre>
*/
@:native('java$util$concurrent$ForkJoinPool$ManagedBlocker') extern interface ForkJoinPool_ManagedBlocker
{
	/**
	* Possibly blocks the current thread, for example waiting for
	* a lock or condition.
	*
	* @return {@code true} if no additional blocking is necessary
	* (i.e., if isReleasable would return true)
	* @throws InterruptedException if interrupted while waiting
	* (the method is not required to do so, but is allowed to)
	*/
	@:overload public function block() : Bool;
	
	/**
	* Returns {@code true} if blocking is unnecessary.
	*/
	@:overload public function isReleasable() : Bool;
	
	
}
