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
* A {@link ThreadPoolExecutor} that can additionally schedule
* commands to run after a given delay, or to execute
* periodically. This class is preferable to {@link java.util.Timer}
* when multiple worker threads are needed, or when the additional
* flexibility or capabilities of {@link ThreadPoolExecutor} (which
* this class extends) are required.
*
* <p>Delayed tasks execute no sooner than they are enabled, but
* without any real-time guarantees about when, after they are
* enabled, they will commence. Tasks scheduled for exactly the same
* execution time are enabled in first-in-first-out (FIFO) order of
* submission.
*
* <p>When a submitted task is cancelled before it is run, execution
* is suppressed. By default, such a cancelled task is not
* automatically removed from the work queue until its delay
* elapses. While this enables further inspection and monitoring, it
* may also cause unbounded retention of cancelled tasks. To avoid
* this, set {@link #setRemoveOnCancelPolicy} to {@code true}, which
* causes tasks to be immediately removed from the work queue at
* time of cancellation.
*
* <p>Successive executions of a task scheduled via
* {@code scheduleAtFixedRate} or
* {@code scheduleWithFixedDelay} do not overlap. While different
* executions may be performed by different threads, the effects of
* prior executions <a
* href="package-summary.html#MemoryVisibility"><i>happen-before</i></a>
* those of subsequent ones.
*
* <p>While this class inherits from {@link ThreadPoolExecutor}, a few
* of the inherited tuning methods are not useful for it. In
* particular, because it acts as a fixed-sized pool using
* {@code corePoolSize} threads and an unbounded queue, adjustments
* to {@code maximumPoolSize} have no useful effect. Additionally, it
* is almost never a good idea to set {@code corePoolSize} to zero or
* use {@code allowCoreThreadTimeOut} because this may leave the pool
* without threads to handle tasks once they become eligible to run.
*
* <p><b>Extension notes:</b> This class overrides the
* {@link ThreadPoolExecutor#execute execute} and
* {@link AbstractExecutorService#submit(Runnable) submit}
* methods to generate internal {@link ScheduledFuture} objects to
* control per-task delays and scheduling.  To preserve
* functionality, any further overrides of these methods in
* subclasses must invoke superclass versions, which effectively
* disables additional task customization.  However, this class
* provides alternative protected extension method
* {@code decorateTask} (one version each for {@code Runnable} and
* {@code Callable}) that can be used to customize the concrete task
* types used to execute commands entered via {@code execute},
* {@code submit}, {@code schedule}, {@code scheduleAtFixedRate},
* and {@code scheduleWithFixedDelay}.  By default, a
* {@code ScheduledThreadPoolExecutor} uses a task type extending
* {@link FutureTask}. However, this may be modified or replaced using
* subclasses of the form:
*
*  <pre> {@code
* public class CustomScheduledExecutor extends ScheduledThreadPoolExecutor {
*
*   static class CustomTask<V> implements RunnableScheduledFuture<V> { ... }
*
*   protected <V> RunnableScheduledFuture<V> decorateTask(
*                Runnable r, RunnableScheduledFuture<V> task) {
*       return new CustomTask<V>(r, task);
*   }
*
*   protected <V> RunnableScheduledFuture<V> decorateTask(
*                Callable<V> c, RunnableScheduledFuture<V> task) {
*       return new CustomTask<V>(c, task);
*   }
*   // ... add constructors, etc.
* }}</pre>
*
* @since 1.5
* @author Doug Lea
*/
@:require(java5) extern class ScheduledThreadPoolExecutor extends java.util.concurrent.ThreadPoolExecutor implements java.util.concurrent.ScheduledExecutorService
{
	/**
	* Modifies or replaces the task used to execute a runnable.
	* This method can be used to override the concrete
	* class used for managing internal tasks.
	* The default implementation simply returns the given task.
	*
	* @param runnable the submitted Runnable
	* @param task the task created to execute the runnable
	* @return a task that can execute the runnable
	* @since 1.6
	*/
	@:require(java6) @:overload private function decorateTask<V>(runnable : java.lang.Runnable, task : java.util.concurrent.RunnableScheduledFuture<V>) : java.util.concurrent.RunnableScheduledFuture<V>;
	
	/**
	* Modifies or replaces the task used to execute a callable.
	* This method can be used to override the concrete
	* class used for managing internal tasks.
	* The default implementation simply returns the given task.
	*
	* @param callable the submitted Callable
	* @param task the task created to execute the callable
	* @return a task that can execute the callable
	* @since 1.6
	*/
	@:require(java6) @:overload private function decorateTask<V>(callable : java.util.concurrent.Callable<V>, task : java.util.concurrent.RunnableScheduledFuture<V>) : java.util.concurrent.RunnableScheduledFuture<V>;
	
	/**
	* Creates a new {@code ScheduledThreadPoolExecutor} with the
	* given core pool size.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @throws IllegalArgumentException if {@code corePoolSize < 0}
	*/
	@:overload public function new(corePoolSize : Int) : Void;
	
	/**
	* Creates a new {@code ScheduledThreadPoolExecutor} with the
	* given initial parameters.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @param threadFactory the factory to use when the executor
	*        creates a new thread
	* @throws IllegalArgumentException if {@code corePoolSize < 0}
	* @throws NullPointerException if {@code threadFactory} is null
	*/
	@:overload public function new(corePoolSize : Int, threadFactory : java.util.concurrent.ThreadFactory) : Void;
	
	/**
	* Creates a new ScheduledThreadPoolExecutor with the given
	* initial parameters.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @param handler the handler to use when execution is blocked
	*        because the thread bounds and queue capacities are reached
	* @throws IllegalArgumentException if {@code corePoolSize < 0}
	* @throws NullPointerException if {@code handler} is null
	*/
	@:overload public function new(corePoolSize : Int, handler : java.util.concurrent.RejectedExecutionHandler) : Void;
	
	/**
	* Creates a new ScheduledThreadPoolExecutor with the given
	* initial parameters.
	*
	* @param corePoolSize the number of threads to keep in the pool, even
	*        if they are idle, unless {@code allowCoreThreadTimeOut} is set
	* @param threadFactory the factory to use when the executor
	*        creates a new thread
	* @param handler the handler to use when execution is blocked
	*        because the thread bounds and queue capacities are reached
	* @throws IllegalArgumentException if {@code corePoolSize < 0}
	* @throws NullPointerException if {@code threadFactory} or
	*         {@code handler} is null
	*/
	@:overload public function new(corePoolSize : Int, threadFactory : java.util.concurrent.ThreadFactory, handler : java.util.concurrent.RejectedExecutionHandler) : Void;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload public function schedule(command : java.lang.Runnable, delay : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<Dynamic>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload public function schedule<V>(callable : java.util.concurrent.Callable<V>, delay : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<V>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	* @throws IllegalArgumentException   {@inheritDoc}
	*/
	@:overload public function scheduleAtFixedRate(command : java.lang.Runnable, initialDelay : haxe.Int64, period : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<Dynamic>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	* @throws IllegalArgumentException   {@inheritDoc}
	*/
	@:overload public function scheduleWithFixedDelay(command : java.lang.Runnable, initialDelay : haxe.Int64, delay : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<Dynamic>;
	
	/**
	* Executes {@code command} with zero required delay.
	* This has effect equivalent to
	* {@link #schedule(Runnable,long,TimeUnit) schedule(command, 0, anyUnit)}.
	* Note that inspections of the queue and of the list returned by
	* {@code shutdownNow} will access the zero-delayed
	* {@link ScheduledFuture}, not the {@code command} itself.
	*
	* <p>A consequence of the use of {@code ScheduledFuture} objects is
	* that {@link ThreadPoolExecutor#afterExecute afterExecute} is always
	* called with a null second {@code Throwable} argument, even if the
	* {@code command} terminated abruptly.  Instead, the {@code Throwable}
	* thrown by such a task can be obtained via {@link Future#get}.
	*
	* @throws RejectedExecutionException at discretion of
	*         {@code RejectedExecutionHandler}, if the task
	*         cannot be accepted for execution because the
	*         executor has been shut down
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function execute(command : java.lang.Runnable) : Void;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload public function submit(task : java.lang.Runnable) : java.util.concurrent.Future<Dynamic>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload public function submit<T>(task : java.lang.Runnable, result : T) : java.util.concurrent.Future<T>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload public function submit<T>(task : java.util.concurrent.Callable<T>) : java.util.concurrent.Future<T>;
	
	/**
	* Sets the policy on whether to continue executing existing
	* periodic tasks even when this executor has been {@code shutdown}.
	* In this case, these tasks will only terminate upon
	* {@code shutdownNow} or after setting the policy to
	* {@code false} when already shutdown.
	* This value is by default {@code false}.
	*
	* @param value if {@code true}, continue after shutdown, else don't.
	* @see #getContinueExistingPeriodicTasksAfterShutdownPolicy
	*/
	@:overload public function setContinueExistingPeriodicTasksAfterShutdownPolicy(value : Bool) : Void;
	
	/**
	* Gets the policy on whether to continue executing existing
	* periodic tasks even when this executor has been {@code shutdown}.
	* In this case, these tasks will only terminate upon
	* {@code shutdownNow} or after setting the policy to
	* {@code false} when already shutdown.
	* This value is by default {@code false}.
	*
	* @return {@code true} if will continue after shutdown
	* @see #setContinueExistingPeriodicTasksAfterShutdownPolicy
	*/
	@:overload public function getContinueExistingPeriodicTasksAfterShutdownPolicy() : Bool;
	
	/**
	* Sets the policy on whether to execute existing delayed
	* tasks even when this executor has been {@code shutdown}.
	* In this case, these tasks will only terminate upon
	* {@code shutdownNow}, or after setting the policy to
	* {@code false} when already shutdown.
	* This value is by default {@code true}.
	*
	* @param value if {@code true}, execute after shutdown, else don't.
	* @see #getExecuteExistingDelayedTasksAfterShutdownPolicy
	*/
	@:overload public function setExecuteExistingDelayedTasksAfterShutdownPolicy(value : Bool) : Void;
	
	/**
	* Gets the policy on whether to execute existing delayed
	* tasks even when this executor has been {@code shutdown}.
	* In this case, these tasks will only terminate upon
	* {@code shutdownNow}, or after setting the policy to
	* {@code false} when already shutdown.
	* This value is by default {@code true}.
	*
	* @return {@code true} if will execute after shutdown
	* @see #setExecuteExistingDelayedTasksAfterShutdownPolicy
	*/
	@:overload public function getExecuteExistingDelayedTasksAfterShutdownPolicy() : Bool;
	
	/**
	* Sets the policy on whether cancelled tasks should be immediately
	* removed from the work queue at time of cancellation.  This value is
	* by default {@code false}.
	*
	* @param value if {@code true}, remove on cancellation, else don't
	* @see #getRemoveOnCancelPolicy
	* @since 1.7
	*/
	@:require(java7) @:overload public function setRemoveOnCancelPolicy(value : Bool) : Void;
	
	/**
	* Gets the policy on whether cancelled tasks should be immediately
	* removed from the work queue at time of cancellation.  This value is
	* by default {@code false}.
	*
	* @return {@code true} if cancelled tasks are immediately removed
	*         from the queue
	* @see #setRemoveOnCancelPolicy
	* @since 1.7
	*/
	@:require(java7) @:overload public function getRemoveOnCancelPolicy() : Bool;
	
	/**
	* Initiates an orderly shutdown in which previously submitted
	* tasks are executed, but no new tasks will be accepted.
	* Invocation has no additional effect if already shut down.
	*
	* <p>This method does not wait for previously submitted tasks to
	* complete execution.  Use {@link #awaitTermination awaitTermination}
	* to do that.
	*
	* <p>If the {@code ExecuteExistingDelayedTasksAfterShutdownPolicy}
	* has been set {@code false}, existing delayed tasks whose delays
	* have not yet elapsed are cancelled.  And unless the {@code
	* ContinueExistingPeriodicTasksAfterShutdownPolicy} has been set
	* {@code true}, future executions of existing periodic tasks will
	* be cancelled.
	*
	* @throws SecurityException {@inheritDoc}
	*/
	@:overload public function shutdown() : Void;
	
	/**
	* Attempts to stop all actively executing tasks, halts the
	* processing of waiting tasks, and returns a list of the tasks
	* that were awaiting execution.
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
	* @return list of tasks that never commenced execution.
	*         Each element of this list is a {@link ScheduledFuture},
	*         including those tasks submitted using {@code execute},
	*         which are for scheduling purposes used as the basis of a
	*         zero-delay {@code ScheduledFuture}.
	* @throws SecurityException {@inheritDoc}
	*/
	@:overload public function shutdownNow() : java.util.List<java.lang.Runnable>;
	
	/**
	* Returns the task queue used by this executor.  Each element of
	* this queue is a {@link ScheduledFuture}, including those
	* tasks submitted using {@code execute} which are for scheduling
	* purposes used as the basis of a zero-delay
	* {@code ScheduledFuture}.  Iteration over this queue is
	* <em>not</em> guaranteed to traverse tasks in the order in
	* which they will execute.
	*
	* @return the task queue
	*/
	@:overload public function getQueue() : java.util.concurrent.BlockingQueue<java.lang.Runnable>;
	
	
}
@:native('java$util$concurrent$ScheduledThreadPoolExecutor$ScheduledFutureTask') @:internal extern class ScheduledThreadPoolExecutor_ScheduledFutureTask<V> extends java.util.concurrent.FutureTask<V> implements java.util.concurrent.RunnableScheduledFuture<V>
{
	@:overload public function getDelay(unit : java.util.concurrent.TimeUnit) : haxe.Int64;
	
	@:overload public function compareTo(other : java.util.concurrent.Delayed) : Int;
	
	/**
	* Returns true if this is a periodic (not a one-shot) action.
	*
	* @return true if periodic
	*/
	@:overload public function isPeriodic() : Bool;
	
	@:overload public function cancel(mayInterruptIfRunning : Bool) : Bool;
	
	/**
	* Overrides FutureTask version so as to reset/requeue if periodic.
	*/
	@:overload public function run() : Void;
	
	
}
/**
* Specialized delay queue. To mesh with TPE declarations, this
* class must be declared as a BlockingQueue<Runnable> even though
* it can only hold RunnableScheduledFutures.
*/
@:native('java$util$concurrent$ScheduledThreadPoolExecutor$DelayedWorkQueue') @:internal extern class ScheduledThreadPoolExecutor_DelayedWorkQueue extends java.util.AbstractQueue<java.lang.Runnable> implements java.util.concurrent.BlockingQueue<java.lang.Runnable>
{
	@:overload public function contains(x : Dynamic) : Bool;
	
	@:overload public function remove(x : Dynamic) : Bool;
	
	@:overload public function size() : Int;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function remainingCapacity() : Int;
	
	@:overload public function peek() : java.util.concurrent.RunnableScheduledFuture<Dynamic>;
	
	@:overload public function offer(x : java.lang.Runnable) : Bool;
	
	@:overload public function put(e : java.lang.Runnable) : Void;
	
	@:overload public function add(e : java.lang.Runnable) : Bool;
	
	@:overload public function offer(e : java.lang.Runnable, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	@:overload public function poll() : java.util.concurrent.RunnableScheduledFuture<Dynamic>;
	
	@:overload public function take() : java.util.concurrent.RunnableScheduledFuture<Dynamic>;
	
	@:overload public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.RunnableScheduledFuture<Dynamic>;
	
	@:overload public function clear() : Void;
	
	@:overload public function drainTo(c : java.util.Collection<java.lang.Runnable>) : Int;
	
	@:overload public function drainTo(c : java.util.Collection<java.lang.Runnable>, maxElements : Int) : Int;
	
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload public function iterator() : java.util.Iterator<java.lang.Runnable>;
	
	
}
/**
* Snapshot iterator that works off copy of underlying q array.
*/
@:native('java$util$concurrent$ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr') @:internal extern class ScheduledThreadPoolExecutor_DelayedWorkQueue_Itr implements java.util.Iterator<java.lang.Runnable>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : java.lang.Runnable;
	
	@:overload public function remove() : Void;
	
	
}
