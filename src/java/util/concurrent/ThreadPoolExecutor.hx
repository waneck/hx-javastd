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
/**
* An {@link ExecutorService} that executes each submitted task using
* one of possibly several pooled threads, normally configured
* using {@link Executors} factory methods.
*
* <p>Thread pools address two different problems: they usually
* provide improved performance when executing large numbers of
* asynchronous tasks, due to reduced per-task invocation overhead,
* and they provide a means of bounding and managing the resources,
* including threads, consumed when executing a collection of tasks.
* Each {@code ThreadPoolExecutor} also maintains some basic
* statistics, such as the number of completed tasks.
*
* <p>To be useful across a wide range of contexts, this class
* provides many adjustable parameters and extensibility
* hooks. However, programmers are urged to use the more convenient
* {@link Executors} factory methods {@link
* Executors#newCachedThreadPool} (unbounded thread pool, with
* automatic thread reclamation), {@link Executors#newFixedThreadPool}
* (fixed size thread pool) and {@link
* Executors#newSingleThreadExecutor} (single background thread), that
* preconfigure settings for the most common usage
* scenarios. Otherwise, use the following guide when manually
* configuring and tuning this class:
*
* <dl>
*
* <dt>Core and maximum pool sizes</dt>
*
* <dd>A {@code ThreadPoolExecutor} will automatically adjust the
* pool size (see {@link #getPoolSize})
* according to the bounds set by
* corePoolSize (see {@link #getCorePoolSize}) and
* maximumPoolSize (see {@link #getMaximumPoolSize}).
*
* When a new task is submitted in method {@link #execute}, and fewer
* than corePoolSize threads are running, a new thread is created to
* handle the request, even if other worker threads are idle.  If
* there are more than corePoolSize but less than maximumPoolSize
* threads running, a new thread will be created only if the queue is
* full.  By setting corePoolSize and maximumPoolSize the same, you
* create a fixed-size thread pool. By setting maximumPoolSize to an
* essentially unbounded value such as {@code Integer.MAX_VALUE}, you
* allow the pool to accommodate an arbitrary number of concurrent
* tasks. Most typically, core and maximum pool sizes are set only
* upon construction, but they may also be changed dynamically using
* {@link #setCorePoolSize} and {@link #setMaximumPoolSize}. </dd>
*
* <dt>On-demand construction</dt>
*
* <dd> By default, even core threads are initially created and
* started only when new tasks arrive, but this can be overridden
* dynamically using method {@link #prestartCoreThread} or {@link
* #prestartAllCoreThreads}.  You probably want to prestart threads if
* you construct the pool with a non-empty queue. </dd>
*
* <dt>Creating new threads</dt>
*
* <dd>New threads are created using a {@link ThreadFactory}.  If not
* otherwise specified, a {@link Executors#defaultThreadFactory} is
* used, that creates threads to all be in the same {@link
* ThreadGroup} and with the same {@code NORM_PRIORITY} priority and
* non-daemon status. By supplying a different ThreadFactory, you can
* alter the thread's name, thread group, priority, daemon status,
* etc. If a {@code ThreadFactory} fails to create a thread when asked
* by returning null from {@code newThread}, the executor will
* continue, but might not be able to execute any tasks. Threads
* should possess the "modifyThread" {@code RuntimePermission}. If
* worker threads or other threads using the pool do not possess this
* permission, service may be degraded: configuration changes may not
* take effect in a timely manner, and a shutdown pool may remain in a
* state in which termination is possible but not completed.</dd>
*
* <dt>Keep-alive times</dt>
*
* <dd>If the pool currently has more than corePoolSize threads,
* excess threads will be terminated if they have been idle for more
* than the keepAliveTime (see {@link #getKeepAliveTime}). This
* provides a means of reducing resource consumption when the pool is
* not being actively used. If the pool becomes more active later, new
* threads will be constructed. This parameter can also be changed
* dynamically using method {@link #setKeepAliveTime}. Using a value
* of {@code Long.MAX_VALUE} {@link TimeUnit#NANOSECONDS} effectively
* disables idle threads from ever terminating prior to shut down. By
* default, the keep-alive policy applies only when there are more
* than corePoolSizeThreads. But method {@link
* #allowCoreThreadTimeOut(boolean)} can be used to apply this
* time-out policy to core threads as well, so long as the
* keepAliveTime value is non-zero. </dd>
*
* <dt>Queuing</dt>
*
* <dd>Any {@link BlockingQueue} may be used to transfer and hold
* submitted tasks.  The use of this queue interacts with pool sizing:
*
* <ul>
*
* <li> If fewer than corePoolSize threads are running, the Executor
* always prefers adding a new thread
* rather than queuing.</li>
*
* <li> If corePoolSize or more threads are running, the Executor
* always prefers queuing a request rather than adding a new
* thread.</li>
*
* <li> If a request cannot be queued, a new thread is created unless
* this would exceed maximumPoolSize, in which case, the task will be
* rejected.</li>
*
* </ul>
*
* There are three general strategies for queuing:
* <ol>
*
* <li> <em> Direct handoffs.</em> A good default choice for a work
* queue is a {@link SynchronousQueue} that hands off tasks to threads
* without otherwise holding them. Here, an attempt to queue a task
* will fail if no threads are immediately available to run it, so a
* new thread will be constructed. This policy avoids lockups when
* handling sets of requests that might have internal dependencies.
* Direct handoffs generally require unbounded maximumPoolSizes to
* avoid rejection of new submitted tasks. This in turn admits the
* possibility of unbounded thread growth when commands continue to
* arrive on average faster than they can be processed.  </li>
*
* <li><em> Unbounded queues.</em> Using an unbounded queue (for
* example a {@link LinkedBlockingQueue} without a predefined
* capacity) will cause new tasks to wait in the queue when all
* corePoolSize threads are busy. Thus, no more than corePoolSize
* threads will ever be created. (And the value of the maximumPoolSize
* therefore doesn't have any effect.)  This may be appropriate when
* each task is completely independent of others, so tasks cannot
* affect each others execution; for example, in a web page server.
* While this style of queuing can be useful in smoothing out
* transient bursts of requests, it admits the possibility of
* unbounded work queue growth when commands continue to arrive on
* average faster than they can be processed.  </li>
*
* <li><em>Bounded queues.</em> A bounded queue (for example, an
* {@link ArrayBlockingQueue}) helps prevent resource exhaustion when
* used with finite maximumPoolSizes, but can be more difficult to
* tune and control.  Queue sizes and maximum pool sizes may be traded
* off for each other: Using large queues and small pools minimizes
* CPU usage, OS resources, and context-switching overhead, but can
* lead to artificially low throughput.  If tasks frequently block (for
* example if they are I/O bound), a system may be able to schedule
* time for more threads than you otherwise allow. Use of small queues
* generally requires larger pool sizes, which keeps CPUs busier but
* may encounter unacceptable scheduling overhead, which also
* decreases throughput.  </li>
*
* </ol>
*
* </dd>
*
* <dt>Rejected tasks</dt>
*
* <dd> New tasks submitted in method {@link #execute} will be
* <em>rejected</em> when the Executor has been shut down, and also
* when the Executor uses finite bounds for both maximum threads and
* work queue capacity, and is saturated.  In either case, the {@code
* execute} method invokes the {@link
* RejectedExecutionHandler#rejectedExecution} method of its {@link
* RejectedExecutionHandler}.  Four predefined handler policies are
* provided:
*
* <ol>
*
* <li> In the default {@link ThreadPoolExecutor.AbortPolicy}, the
* handler throws a runtime {@link RejectedExecutionException} upon
* rejection. </li>
*
* <li> In {@link ThreadPoolExecutor.CallerRunsPolicy}, the thread
* that invokes {@code execute} itself runs the task. This provides a
* simple feedback control mechanism that will slow down the rate that
* new tasks are submitted. </li>
*
* <li> In {@link ThreadPoolExecutor.DiscardPolicy}, a task that
* cannot be executed is simply dropped.  </li>
*
* <li>In {@link ThreadPoolExecutor.DiscardOldestPolicy}, if the
* executor is not shut down, the task at the head of the work queue
* is dropped, and then execution is retried (which can fail again,
* causing this to be repeated.) </li>
*
* </ol>
*
* It is possible to define and use other kinds of {@link
* RejectedExecutionHandler} classes. Doing so requires some care
* especially when policies are designed to work only under particular
* capacity or queuing policies. </dd>
*
* <dt>Hook methods</dt>
*
* <dd>This class provides {@code protected} overridable {@link
* #beforeExecute} and {@link #afterExecute} methods that are called
* before and after execution of each task.  These can be used to
* manipulate the execution environment; for example, reinitializing
* ThreadLocals, gathering statistics, or adding log
* entries. Additionally, method {@link #terminated} can be overridden
* to perform any special processing that needs to be done once the
* Executor has fully terminated.
*
* <p>If hook or callback methods throw exceptions, internal worker
* threads may in turn fail and abruptly terminate.</dd>
*
* <dt>Queue maintenance</dt>
*
* <dd> Method {@link #getQueue} allows access to the work queue for
* purposes of monitoring and debugging.  Use of this method for any
* other purpose is strongly discouraged.  Two supplied methods,
* {@link #remove} and {@link #purge} are available to assist in
* storage reclamation when large numbers of queued tasks become
* cancelled.</dd>
*
* <dt>Finalization</dt>
*
* <dd> A pool that is no longer referenced in a program <em>AND</em>
* has no remaining threads will be {@code shutdown} automatically. If
* you would like to ensure that unreferenced pools are reclaimed even
* if users forget to call {@link #shutdown}, then you must arrange
* that unused threads eventually die, by setting appropriate
* keep-alive times, using a lower bound of zero core threads and/or
* setting {@link #allowCoreThreadTimeOut(boolean)}.  </dd>
*
* </dl>
*
* <p> <b>Extension example</b>. Most extensions of this class
* override one or more of the protected hook methods. For example,
* here is a subclass that adds a simple pause/resume feature:
*
*  <pre> {@code
* class PausableThreadPoolExecutor extends ThreadPoolExecutor {
*   private boolean isPaused;
*   private ReentrantLock pauseLock = new ReentrantLock();
*   private Condition unpaused = pauseLock.newCondition();
*
*   public PausableThreadPoolExecutor(...) { super(...); }
*
*   protected void beforeExecute(Thread t, Runnable r) {
*     super.beforeExecute(t, r);
*     pauseLock.lock();
*     try {
*       while (isPaused) unpaused.await();
*     } catch (InterruptedException ie) {
*       t.interrupt();
*     } finally {
*       pauseLock.unlock();
*     }
*   }
*
*   public void pause() {
*     pauseLock.lock();
*     try {
*       isPaused = true;
*     } finally {
*       pauseLock.unlock();
*     }
*   }
*
*   public void resume() {
*     pauseLock.lock();
*     try {
*       isPaused = false;
*       unpaused.signalAll();
*     } finally {
*       pauseLock.unlock();
*     }
*   }
* }}</pre>
*
* @since 1.5
* @author Doug Lea
*/
@:require(java5) extern class ThreadPoolExecutor extends java.util.concurrent.AbstractExecutorService
{
	/**
	* Creates a new {@code ThreadPoolExecutor} with the given initial
	* parameters and default thread factory and rejected execution handler.
	* It may be more convenient to use one of the {@link Executors} factory
	* methods instead of this general purpose constructor.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @param maximumPoolSize the maximum number of threads to allow in the
	*        pool
	* @param keepAliveTime when the number of threads is greater than
	*        the core, this is the maximum time that excess idle threads
	*        will wait for new tasks before terminating.
	* @param unit the time unit for the {@code keepAliveTime} argument
	* @param workQueue the queue to use for holding tasks before they are
	*        executed.  This queue will hold only the {@code Runnable}
	*        tasks submitted by the {@code execute} method.
	* @throws IllegalArgumentException if one of the following holds:<br>
	*         {@code corePoolSize < 0}<br>
	*         {@code keepAliveTime < 0}<br>
	*         {@code maximumPoolSize <= 0}<br>
	*         {@code maximumPoolSize < corePoolSize}
	* @throws NullPointerException if {@code workQueue} is null
	*/
	@:overload public function new(corePoolSize : Int, maximumPoolSize : Int, keepAliveTime : haxe.Int64, unit : java.util.concurrent.TimeUnit, workQueue : java.util.concurrent.BlockingQueue<java.lang.Runnable>) : Void;
	
	/**
	* Creates a new {@code ThreadPoolExecutor} with the given initial
	* parameters and default rejected execution handler.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @param maximumPoolSize the maximum number of threads to allow in the
	*        pool
	* @param keepAliveTime when the number of threads is greater than
	*        the core, this is the maximum time that excess idle threads
	*        will wait for new tasks before terminating.
	* @param unit the time unit for the {@code keepAliveTime} argument
	* @param workQueue the queue to use for holding tasks before they are
	*        executed.  This queue will hold only the {@code Runnable}
	*        tasks submitted by the {@code execute} method.
	* @param threadFactory the factory to use when the executor
	*        creates a new thread
	* @throws IllegalArgumentException if one of the following holds:<br>
	*         {@code corePoolSize < 0}<br>
	*         {@code keepAliveTime < 0}<br>
	*         {@code maximumPoolSize <= 0}<br>
	*         {@code maximumPoolSize < corePoolSize}
	* @throws NullPointerException if {@code workQueue}
	*         or {@code threadFactory} is null
	*/
	@:overload public function new(corePoolSize : Int, maximumPoolSize : Int, keepAliveTime : haxe.Int64, unit : java.util.concurrent.TimeUnit, workQueue : java.util.concurrent.BlockingQueue<java.lang.Runnable>, threadFactory : java.util.concurrent.ThreadFactory) : Void;
	
	/**
	* Creates a new {@code ThreadPoolExecutor} with the given initial
	* parameters and default thread factory.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @param maximumPoolSize the maximum number of threads to allow in the
	*        pool
	* @param keepAliveTime when the number of threads is greater than
	*        the core, this is the maximum time that excess idle threads
	*        will wait for new tasks before terminating.
	* @param unit the time unit for the {@code keepAliveTime} argument
	* @param workQueue the queue to use for holding tasks before they are
	*        executed.  This queue will hold only the {@code Runnable}
	*        tasks submitted by the {@code execute} method.
	* @param handler the handler to use when execution is blocked
	*        because the thread bounds and queue capacities are reached
	* @throws IllegalArgumentException if one of the following holds:<br>
	*         {@code corePoolSize < 0}<br>
	*         {@code keepAliveTime < 0}<br>
	*         {@code maximumPoolSize <= 0}<br>
	*         {@code maximumPoolSize < corePoolSize}
	* @throws NullPointerException if {@code workQueue}
	*         or {@code handler} is null
	*/
	@:overload public function new(corePoolSize : Int, maximumPoolSize : Int, keepAliveTime : haxe.Int64, unit : java.util.concurrent.TimeUnit, workQueue : java.util.concurrent.BlockingQueue<java.lang.Runnable>, handler : java.util.concurrent.RejectedExecutionHandler) : Void;
	
	/**
	* Creates a new {@code ThreadPoolExecutor} with the given initial
	* parameters.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @param maximumPoolSize the maximum number of threads to allow in the
	*        pool
	* @param keepAliveTime when the number of threads is greater than
	*        the core, this is the maximum time that excess idle threads
	*        will wait for new tasks before terminating.
	* @param unit the time unit for the {@code keepAliveTime} argument
	* @param workQueue the queue to use for holding tasks before they are
	*        executed.  This queue will hold only the {@code Runnable}
	*        tasks submitted by the {@code execute} method.
	* @param threadFactory the factory to use when the executor
	*        creates a new thread
	* @param handler the handler to use when execution is blocked
	*        because the thread bounds and queue capacities are reached
	* @throws IllegalArgumentException if one of the following holds:<br>
	*         {@code corePoolSize < 0}<br>
	*         {@code keepAliveTime < 0}<br>
	*         {@code maximumPoolSize <= 0}<br>
	*         {@code maximumPoolSize < corePoolSize}
	* @throws NullPointerException if {@code workQueue}
	*         or {@code threadFactory} or {@code handler} is null
	*/
	@:overload public function new(corePoolSize : Int, maximumPoolSize : Int, keepAliveTime : haxe.Int64, unit : java.util.concurrent.TimeUnit, workQueue : java.util.concurrent.BlockingQueue<java.lang.Runnable>, threadFactory : java.util.concurrent.ThreadFactory, handler : java.util.concurrent.RejectedExecutionHandler) : Void;
	
	/**
	* Executes the given task sometime in the future.  The task
	* may execute in a new thread or in an existing pooled thread.
	*
	* If the task cannot be submitted for execution, either because this
	* executor has been shutdown or because its capacity has been reached,
	* the task is handled by the current {@code RejectedExecutionHandler}.
	*
	* @param command the task to execute
	* @throws RejectedExecutionException at discretion of
	*         {@code RejectedExecutionHandler}, if the task
	*         cannot be accepted for execution
	* @throws NullPointerException if {@code command} is null
	*/
	@:overload public function execute(command : java.lang.Runnable) : Void;
	
	/**
	* Initiates an orderly shutdown in which previously submitted
	* tasks are executed, but no new tasks will be accepted.
	* Invocation has no additional effect if already shut down.
	*
	* <p>This method does not wait for previously submitted tasks to
	* complete execution.  Use {@link #awaitTermination awaitTermination}
	* to do that.
	*
	* @throws SecurityException {@inheritDoc}
	*/
	@:overload public function shutdown() : Void;
	
	/**
	* Attempts to stop all actively executing tasks, halts the
	* processing of waiting tasks, and returns a list of the tasks
	* that were awaiting execution. These tasks are drained (removed)
	* from the task queue upon return from this method.
	*
	* <p>This method does not wait for actively executing tasks to
	* terminate.  Use {@link #awaitTermination awaitTermination} to
	* do that.
	*
	* <p>There are no guarantees beyond best-effort attempts to stop
	* processing actively executing tasks.  This implementation
	* cancels tasks via {@link Thread#interrupt}, so any task that
	* fails to respond to interrupts may never terminate.
	*
	* @throws SecurityException {@inheritDoc}
	*/
	@:overload public function shutdownNow() : java.util.List<java.lang.Runnable>;
	
	@:overload public function isShutdown() : Bool;
	
	/**
	* Returns true if this executor is in the process of terminating
	* after {@link #shutdown} or {@link #shutdownNow} but has not
	* completely terminated.  This method may be useful for
	* debugging. A return of {@code true} reported a sufficient
	* period after shutdown may indicate that submitted tasks have
	* ignored or suppressed interruption, causing this executor not
	* to properly terminate.
	*
	* @return true if terminating but not yet terminated
	*/
	@:overload public function isTerminating() : Bool;
	
	@:overload public function isTerminated() : Bool;
	
	@:overload public function awaitTermination(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Invokes {@code shutdown} when this executor is no longer
	* referenced and it has no threads.
	*/
	@:overload private function finalize() : Void;
	
	/**
	* Sets the thread factory used to create new threads.
	*
	* @param threadFactory the new thread factory
	* @throws NullPointerException if threadFactory is null
	* @see #getThreadFactory
	*/
	@:overload public function setThreadFactory(threadFactory : java.util.concurrent.ThreadFactory) : Void;
	
	/**
	* Returns the thread factory used to create new threads.
	*
	* @return the current thread factory
	* @see #setThreadFactory
	*/
	@:overload public function getThreadFactory() : java.util.concurrent.ThreadFactory;
	
	/**
	* Sets a new handler for unexecutable tasks.
	*
	* @param handler the new handler
	* @throws NullPointerException if handler is null
	* @see #getRejectedExecutionHandler
	*/
	@:overload public function setRejectedExecutionHandler(handler : java.util.concurrent.RejectedExecutionHandler) : Void;
	
	/**
	* Returns the current handler for unexecutable tasks.
	*
	* @return the current handler
	* @see #setRejectedExecutionHandler
	*/
	@:overload public function getRejectedExecutionHandler() : java.util.concurrent.RejectedExecutionHandler;
	
	/**
	* Sets the core number of threads.  This overrides any value set
	* in the constructor.  If the new value is smaller than the
	* current value, excess existing threads will be terminated when
	* they next become idle.  If larger, new threads will, if needed,
	* be started to execute any queued tasks.
	*
	* @param corePoolSize the new core size
	* @throws IllegalArgumentException if {@code corePoolSize < 0}
	* @see #getCorePoolSize
	*/
	@:overload public function setCorePoolSize(corePoolSize : Int) : Void;
	
	/**
	* Returns the core number of threads.
	*
	* @return the core number of threads
	* @see #setCorePoolSize
	*/
	@:overload public function getCorePoolSize() : Int;
	
	/**
	* Starts a core thread, causing it to idly wait for work. This
	* overrides the default policy of starting core threads only when
	* new tasks are executed. This method will return {@code false}
	* if all core threads have already been started.
	*
	* @return {@code true} if a thread was started
	*/
	@:overload public function prestartCoreThread() : Bool;
	
	/**
	* Starts all core threads, causing them to idly wait for work. This
	* overrides the default policy of starting core threads only when
	* new tasks are executed.
	*
	* @return the number of threads started
	*/
	@:overload public function prestartAllCoreThreads() : Int;
	
	/**
	* Returns true if this pool allows core threads to time out and
	* terminate if no tasks arrive within the keepAlive time, being
	* replaced if needed when new tasks arrive. When true, the same
	* keep-alive policy applying to non-core threads applies also to
	* core threads. When false (the default), core threads are never
	* terminated due to lack of incoming tasks.
	*
	* @return {@code true} if core threads are allowed to time out,
	*         else {@code false}
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function allowsCoreThreadTimeOut() : Bool;
	
	/**
	* Sets the policy governing whether core threads may time out and
	* terminate if no tasks arrive within the keep-alive time, being
	* replaced if needed when new tasks arrive. When false, core
	* threads are never terminated due to lack of incoming
	* tasks. When true, the same keep-alive policy applying to
	* non-core threads applies also to core threads. To avoid
	* continual thread replacement, the keep-alive time must be
	* greater than zero when setting {@code true}. This method
	* should in general be called before the pool is actively used.
	*
	* @param value {@code true} if should time out, else {@code false}
	* @throws IllegalArgumentException if value is {@code true}
	*         and the current keep-alive time is not greater than zero
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function allowCoreThreadTimeOut(value : Bool) : Void;
	
	/**
	* Sets the maximum allowed number of threads. This overrides any
	* value set in the constructor. If the new value is smaller than
	* the current value, excess existing threads will be
	* terminated when they next become idle.
	*
	* @param maximumPoolSize the new maximum
	* @throws IllegalArgumentException if the new maximum is
	*         less than or equal to zero, or
	*         less than the {@linkplain #getCorePoolSize core pool size}
	* @see #getMaximumPoolSize
	*/
	@:overload public function setMaximumPoolSize(maximumPoolSize : Int) : Void;
	
	/**
	* Returns the maximum allowed number of threads.
	*
	* @return the maximum allowed number of threads
	* @see #setMaximumPoolSize
	*/
	@:overload public function getMaximumPoolSize() : Int;
	
	/**
	* Sets the time limit for which threads may remain idle before
	* being terminated.  If there are more than the core number of
	* threads currently in the pool, after waiting this amount of
	* time without processing a task, excess threads will be
	* terminated.  This overrides any value set in the constructor.
	*
	* @param time the time to wait.  A time value of zero will cause
	*        excess threads to terminate immediately after executing tasks.
	* @param unit the time unit of the {@code time} argument
	* @throws IllegalArgumentException if {@code time} less than zero or
	*         if {@code time} is zero and {@code allowsCoreThreadTimeOut}
	* @see #getKeepAliveTime
	*/
	@:overload public function setKeepAliveTime(time : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Void;
	
	/**
	* Returns the thread keep-alive time, which is the amount of time
	* that threads in excess of the core pool size may remain
	* idle before being terminated.
	*
	* @param unit the desired time unit of the result
	* @return the time limit
	* @see #setKeepAliveTime
	*/
	@:overload public function getKeepAliveTime(unit : java.util.concurrent.TimeUnit) : haxe.Int64;
	
	/**
	* Returns the task queue used by this executor. Access to the
	* task queue is intended primarily for debugging and monitoring.
	* This queue may be in active use.  Retrieving the task queue
	* does not prevent queued tasks from executing.
	*
	* @return the task queue
	*/
	@:overload public function getQueue() : java.util.concurrent.BlockingQueue<java.lang.Runnable>;
	
	/**
	* Removes this task from the executor's internal queue if it is
	* present, thus causing it not to be run if it has not already
	* started.
	*
	* <p> This method may be useful as one part of a cancellation
	* scheme.  It may fail to remove tasks that have been converted
	* into other forms before being placed on the internal queue. For
	* example, a task entered using {@code submit} might be
	* converted into a form that maintains {@code Future} status.
	* However, in such cases, method {@link #purge} may be used to
	* remove those Futures that have been cancelled.
	*
	* @param task the task to remove
	* @return true if the task was removed
	*/
	@:overload public function remove(task : java.lang.Runnable) : Bool;
	
	/**
	* Tries to remove from the work queue all {@link Future}
	* tasks that have been cancelled. This method can be useful as a
	* storage reclamation operation, that has no other impact on
	* functionality. Cancelled tasks are never executed, but may
	* accumulate in work queues until worker threads can actively
	* remove them. Invoking this method instead tries to remove them now.
	* However, this method may fail to remove tasks in
	* the presence of interference by other threads.
	*/
	@:overload public function purge() : Void;
	
	/**
	* Returns the current number of threads in the pool.
	*
	* @return the number of threads
	*/
	@:overload public function getPoolSize() : Int;
	
	/**
	* Returns the approximate number of threads that are actively
	* executing tasks.
	*
	* @return the number of threads
	*/
	@:overload public function getActiveCount() : Int;
	
	/**
	* Returns the largest number of threads that have ever
	* simultaneously been in the pool.
	*
	* @return the number of threads
	*/
	@:overload public function getLargestPoolSize() : Int;
	
	/**
	* Returns the approximate total number of tasks that have ever been
	* scheduled for execution. Because the states of tasks and
	* threads may change dynamically during computation, the returned
	* value is only an approximation.
	*
	* @return the number of tasks
	*/
	@:overload public function getTaskCount() : haxe.Int64;
	
	/**
	* Returns the approximate total number of tasks that have
	* completed execution. Because the states of tasks and threads
	* may change dynamically during computation, the returned value
	* is only an approximation, but one that does not ever decrease
	* across successive calls.
	*
	* @return the number of tasks
	*/
	@:overload public function getCompletedTaskCount() : haxe.Int64;
	
	/**
	* Returns a string identifying this pool, as well as its state,
	* including indications of run state and estimated worker and
	* task counts.
	*
	* @return a string identifying this pool, as well as its state
	*/
	@:overload public function toString() : String;
	
	/**
	* Method invoked prior to executing the given Runnable in the
	* given thread.  This method is invoked by thread {@code t} that
	* will execute task {@code r}, and may be used to re-initialize
	* ThreadLocals, or to perform logging.
	*
	* <p>This implementation does nothing, but may be customized in
	* subclasses. Note: To properly nest multiple overridings, subclasses
	* should generally invoke {@code super.beforeExecute} at the end of
	* this method.
	*
	* @param t the thread that will run task {@code r}
	* @param r the task that will be executed
	*/
	@:overload private function beforeExecute(t : java.lang.Thread, r : java.lang.Runnable) : Void;
	
	/**
	* Method invoked upon completion of execution of the given Runnable.
	* This method is invoked by the thread that executed the task. If
	* non-null, the Throwable is the uncaught {@code RuntimeException}
	* or {@code Error} that caused execution to terminate abruptly.
	*
	* <p>This implementation does nothing, but may be customized in
	* subclasses. Note: To properly nest multiple overridings, subclasses
	* should generally invoke {@code super.afterExecute} at the
	* beginning of this method.
	*
	* <p><b>Note:</b> When actions are enclosed in tasks (such as
	* {@link FutureTask}) either explicitly or via methods such as
	* {@code submit}, these task objects catch and maintain
	* computational exceptions, and so they do not cause abrupt
	* termination, and the internal exceptions are <em>not</em>
	* passed to this method. If you would like to trap both kinds of
	* failures in this method, you can further probe for such cases,
	* as in this sample subclass that prints either the direct cause
	* or the underlying exception if a task has been aborted:
	*
	*  <pre> {@code
	* class ExtendedExecutor extends ThreadPoolExecutor {
	*   // ...
	*   protected void afterExecute(Runnable r, Throwable t) {
	*     super.afterExecute(r, t);
	*     if (t == null && r instanceof Future<?>) {
	*       try {
	*         Object result = ((Future<?>) r).get();
	*       } catch (CancellationException ce) {
	*           t = ce;
	*       } catch (ExecutionException ee) {
	*           t = ee.getCause();
	*       } catch (InterruptedException ie) {
	*           Thread.currentThread().interrupt(); // ignore/reset
	*       }
	*     }
	*     if (t != null)
	*       System.out.println(t);
	*   }
	* }}</pre>
	*
	* @param r the runnable that has completed
	* @param t the exception that caused termination, or null if
	* execution completed normally
	*/
	@:overload private function afterExecute(r : java.lang.Runnable, t : java.lang.Throwable) : Void;
	
	/**
	* Method invoked when the Executor has terminated.  Default
	* implementation does nothing. Note: To properly nest multiple
	* overridings, subclasses should generally invoke
	* {@code super.terminated} within this method.
	*/
	@:overload private function terminated() : Void;
	
	
}
/**
* Class Worker mainly maintains interrupt control state for
* threads running tasks, along with other minor bookkeeping.
* This class opportunistically extends AbstractQueuedSynchronizer
* to simplify acquiring and releasing a lock surrounding each
* task execution.  This protects against interrupts that are
* intended to wake up a worker thread waiting for a task from
* instead interrupting a task being run.  We implement a simple
* non-reentrant mutual exclusion lock rather than use
* ReentrantLock because we do not want worker tasks to be able to
* reacquire the lock when they invoke pool control methods like
* setCorePoolSize.  Additionally, to suppress interrupts until
* the thread actually starts running tasks, we initialize lock
* state to a negative value, and clear it upon start (in
* runWorker).
*/
@:native('java$util$concurrent$ThreadPoolExecutor$Worker') @:internal extern class ThreadPoolExecutor_Worker extends java.util.concurrent.locks.AbstractQueuedSynchronizer implements java.lang.Runnable
{
	/** Delegates main run loop to outer runWorker  */
	@:overload public function run() : Void;
	
	@:overload override private function isHeldExclusively() : Bool;
	
	@:overload override private function tryAcquire(unused : Int) : Bool;
	
	@:overload override private function tryRelease(unused : Int) : Bool;
	
	@:overload public function lock() : Void;
	
	@:overload public function tryLock() : Bool;
	
	@:overload public function unlock() : Void;
	
	@:overload public function isLocked() : Bool;
	
	
}
/**
* A handler for rejected tasks that runs the rejected task
* directly in the calling thread of the {@code execute} method,
* unless the executor has been shut down, in which case the task
* is discarded.
*/
@:native('java$util$concurrent$ThreadPoolExecutor$CallerRunsPolicy') extern class ThreadPoolExecutor_CallerRunsPolicy implements java.util.concurrent.RejectedExecutionHandler
{
	/**
	* Creates a {@code CallerRunsPolicy}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Executes task r in the caller's thread, unless the executor
	* has been shut down, in which case the task is discarded.
	*
	* @param r the runnable task requested to be executed
	* @param e the executor attempting to execute this task
	*/
	@:overload public function rejectedExecution(r : java.lang.Runnable, e : java.util.concurrent.ThreadPoolExecutor) : Void;
	
	
}
/**
* A handler for rejected tasks that throws a
* {@code RejectedExecutionException}.
*/
@:native('java$util$concurrent$ThreadPoolExecutor$AbortPolicy') extern class ThreadPoolExecutor_AbortPolicy implements java.util.concurrent.RejectedExecutionHandler
{
	/**
	* Creates an {@code AbortPolicy}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Always throws RejectedExecutionException.
	*
	* @param r the runnable task requested to be executed
	* @param e the executor attempting to execute this task
	* @throws RejectedExecutionException always.
	*/
	@:overload public function rejectedExecution(r : java.lang.Runnable, e : java.util.concurrent.ThreadPoolExecutor) : Void;
	
	
}
/**
* A handler for rejected tasks that silently discards the
* rejected task.
*/
@:native('java$util$concurrent$ThreadPoolExecutor$DiscardPolicy') extern class ThreadPoolExecutor_DiscardPolicy implements java.util.concurrent.RejectedExecutionHandler
{
	/**
	* Creates a {@code DiscardPolicy}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Does nothing, which has the effect of discarding task r.
	*
	* @param r the runnable task requested to be executed
	* @param e the executor attempting to execute this task
	*/
	@:overload public function rejectedExecution(r : java.lang.Runnable, e : java.util.concurrent.ThreadPoolExecutor) : Void;
	
	
}
/**
* A handler for rejected tasks that discards the oldest unhandled
* request and then retries {@code execute}, unless the executor
* is shut down, in which case the task is discarded.
*/
@:native('java$util$concurrent$ThreadPoolExecutor$DiscardOldestPolicy') extern class ThreadPoolExecutor_DiscardOldestPolicy implements java.util.concurrent.RejectedExecutionHandler
{
	/**
	* Creates a {@code DiscardOldestPolicy} for the given executor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Obtains and ignores the next task that the executor
	* would otherwise execute, if one is immediately available,
	* and then retries execution of task r, unless the executor
	* is shut down, in which case task r is instead discarded.
	*
	* @param r the runnable task requested to be executed
	* @param e the executor attempting to execute this task
	*/
	@:overload public function rejectedExecution(r : java.lang.Runnable, e : java.util.concurrent.ThreadPoolExecutor) : Void;
	
	
}
