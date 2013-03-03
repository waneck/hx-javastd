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
extern class ForkJoinTask<V> implements java.util.concurrent.Future<V> implements java.io.Serializable
{
	/**
	* Arranges to asynchronously execute this task.  While it is not
	* necessarily enforced, it is a usage error to fork a task more
	* than once unless it has completed and been reinitialized.
	* Subsequent modifications to the state of this task or any data
	* it operates on are not necessarily consistently observable by
	* any thread other than the one executing it unless preceded by a
	* call to {@link #join} or related methods, or a call to {@link
	* #isDone} returning {@code true}.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @return {@code this}, to simplify usage
	*/
	@:overload @:public @:final public function fork() : java.util.concurrent.ForkJoinTask<V>;
	
	/**
	* Returns the result of the computation when it {@link #isDone is
	* done}.  This method differs from {@link #get()} in that
	* abnormal completion results in {@code RuntimeException} or
	* {@code Error}, not {@code ExecutionException}, and that
	* interrupts of the calling thread do <em>not</em> cause the
	* method to abruptly return by throwing {@code
	* InterruptedException}.
	*
	* @return the computed result
	*/
	@:overload @:public @:final public function join() : V;
	
	/**
	* Commences performing this task, awaits its completion if
	* necessary, and returns its result, or throws an (unchecked)
	* {@code RuntimeException} or {@code Error} if the underlying
	* computation did so.
	*
	* @return the computed result
	*/
	@:overload @:public @:final public function invoke() : V;
	
	/**
	* Forks the given tasks, returning when {@code isDone} holds for
	* each task or an (unchecked) exception is encountered, in which
	* case the exception is rethrown. If more than one task
	* encounters an exception, then this method throws any one of
	* these exceptions. If any task encounters an exception, the
	* other may be cancelled. However, the execution status of
	* individual tasks is not guaranteed upon exceptional return. The
	* status of each task may be obtained using {@link
	* #getException()} and related methods to check if they have been
	* cancelled, completed normally or exceptionally, or left
	* unprocessed.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @param t1 the first task
	* @param t2 the second task
	* @throws NullPointerException if any task is null
	*/
	@:overload @:public @:static public static function invokeAll(t1 : java.util.concurrent.ForkJoinTask<Dynamic>, t2 : java.util.concurrent.ForkJoinTask<Dynamic>) : Void;
	
	/**
	* Forks the given tasks, returning when {@code isDone} holds for
	* each task or an (unchecked) exception is encountered, in which
	* case the exception is rethrown. If more than one task
	* encounters an exception, then this method throws any one of
	* these exceptions. If any task encounters an exception, others
	* may be cancelled. However, the execution status of individual
	* tasks is not guaranteed upon exceptional return. The status of
	* each task may be obtained using {@link #getException()} and
	* related methods to check if they have been cancelled, completed
	* normally or exceptionally, or left unprocessed.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @param tasks the tasks
	* @throws NullPointerException if any task is null
	*/
	@:overload @:public @:static public static function invokeAll(tasks : java.NativeArray<java.util.concurrent.ForkJoinTask<Dynamic>>) : Void;
	
	/**
	* Forks all tasks in the specified collection, returning when
	* {@code isDone} holds for each task or an (unchecked) exception
	* is encountered, in which case the exception is rethrown. If
	* more than one task encounters an exception, then this method
	* throws any one of these exceptions. If any task encounters an
	* exception, others may be cancelled. However, the execution
	* status of individual tasks is not guaranteed upon exceptional
	* return. The status of each task may be obtained using {@link
	* #getException()} and related methods to check if they have been
	* cancelled, completed normally or exceptionally, or left
	* unprocessed.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @param tasks the collection of tasks
	* @return the tasks argument, to simplify usage
	* @throws NullPointerException if tasks or any element are null
	*/
	@:overload @:public @:static public static function invokeAll<T : java.util.concurrent.ForkJoinTask<Dynamic>>(tasks : java.util.Collection<T>) : java.util.Collection<T>;
	
	/**
	* Attempts to cancel execution of this task. This attempt will
	* fail if the task has already completed or could not be
	* cancelled for some other reason. If successful, and this task
	* has not started when {@code cancel} is called, execution of
	* this task is suppressed. After this method returns
	* successfully, unless there is an intervening call to {@link
	* #reinitialize}, subsequent calls to {@link #isCancelled},
	* {@link #isDone}, and {@code cancel} will return {@code true}
	* and calls to {@link #join} and related methods will result in
	* {@code CancellationException}.
	*
	* <p>This method may be overridden in subclasses, but if so, must
	* still ensure that these properties hold. In particular, the
	* {@code cancel} method itself must not throw exceptions.
	*
	* <p>This method is designed to be invoked by <em>other</em>
	* tasks. To terminate the current task, you can just return or
	* throw an unchecked exception from its computation method, or
	* invoke {@link #completeExceptionally}.
	*
	* @param mayInterruptIfRunning this value has no effect in the
	* default implementation because interrupts are not used to
	* control cancellation.
	*
	* @return {@code true} if this task is now cancelled
	*/
	@:overload @:public public function cancel(mayInterruptIfRunning : Bool) : Bool;
	
	@:overload @:public @:final public function isDone() : Bool;
	
	@:overload @:public @:final public function isCancelled() : Bool;
	
	/**
	* Returns {@code true} if this task threw an exception or was cancelled.
	*
	* @return {@code true} if this task threw an exception or was cancelled
	*/
	@:overload @:public @:final public function isCompletedAbnormally() : Bool;
	
	/**
	* Returns {@code true} if this task completed without throwing an
	* exception and was not cancelled.
	*
	* @return {@code true} if this task completed without throwing an
	* exception and was not cancelled
	*/
	@:overload @:public @:final public function isCompletedNormally() : Bool;
	
	/**
	* Returns the exception thrown by the base computation, or a
	* {@code CancellationException} if cancelled, or {@code null} if
	* none or if the method has not yet completed.
	*
	* @return the exception, or {@code null} if none
	*/
	@:overload @:public @:final public function getException() : java.lang.Throwable;
	
	/**
	* Completes this task abnormally, and if not already aborted or
	* cancelled, causes it to throw the given exception upon
	* {@code join} and related operations. This method may be used
	* to induce exceptions in asynchronous tasks, or to force
	* completion of tasks that would not otherwise complete.  Its use
	* in other situations is discouraged.  This method is
	* overridable, but overridden versions must invoke {@code super}
	* implementation to maintain guarantees.
	*
	* @param ex the exception to throw. If this exception is not a
	* {@code RuntimeException} or {@code Error}, the actual exception
	* thrown will be a {@code RuntimeException} with cause {@code ex}.
	*/
	@:overload @:public public function completeExceptionally(ex : java.lang.Throwable) : Void;
	
	/**
	* Completes this task, and if not already aborted or cancelled,
	* returning the given value as the result of subsequent
	* invocations of {@code join} and related operations. This method
	* may be used to provide results for asynchronous tasks, or to
	* provide alternative handling for tasks that would not otherwise
	* complete normally. Its use in other situations is
	* discouraged. This method is overridable, but overridden
	* versions must invoke {@code super} implementation to maintain
	* guarantees.
	*
	* @param value the result value for this task
	*/
	@:overload @:public public function complete(value : V) : Void;
	
	/**
	* Waits if necessary for the computation to complete, and then
	* retrieves its result.
	*
	* @return the computed result
	* @throws CancellationException if the computation was cancelled
	* @throws ExecutionException if the computation threw an
	* exception
	* @throws InterruptedException if the current thread is not a
	* member of a ForkJoinPool and was interrupted while waiting
	*/
	@:overload @:public @:final public function get() : V;
	
	/**
	* Waits if necessary for at most the given time for the computation
	* to complete, and then retrieves its result, if available.
	*
	* @param timeout the maximum time to wait
	* @param unit the time unit of the timeout argument
	* @return the computed result
	* @throws CancellationException if the computation was cancelled
	* @throws ExecutionException if the computation threw an
	* exception
	* @throws InterruptedException if the current thread is not a
	* member of a ForkJoinPool and was interrupted while waiting
	* @throws TimeoutException if the wait timed out
	*/
	@:overload @:public @:final public function get(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : V;
	
	/**
	* Joins this task, without returning its result or throwing its
	* exception. This method may be useful when processing
	* collections of tasks when some have been cancelled or otherwise
	* known to have aborted.
	*/
	@:overload @:public @:final public function quietlyJoin() : Void;
	
	/**
	* Commences performing this task and awaits its completion if
	* necessary, without returning its result or throwing its
	* exception.
	*/
	@:overload @:public @:final public function quietlyInvoke() : Void;
	
	/**
	* Possibly executes tasks until the pool hosting the current task
	* {@link ForkJoinPool#isQuiescent is quiescent}. This method may
	* be of use in designs in which many tasks are forked, but none
	* are explicitly joined, instead executing them until all are
	* processed.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*/
	@:overload @:public @:static public static function helpQuiesce() : Void;
	
	/**
	* Resets the internal bookkeeping state of this task, allowing a
	* subsequent {@code fork}. This method allows repeated reuse of
	* this task, but only if reuse occurs when this task has either
	* never been forked, or has been forked, then completed and all
	* outstanding joins of this task have also completed. Effects
	* under any other usage conditions are not guaranteed.
	* This method may be useful when executing
	* pre-constructed trees of subtasks in loops.
	*
	* <p>Upon completion of this method, {@code isDone()} reports
	* {@code false}, and {@code getException()} reports {@code
	* null}. However, the value returned by {@code getRawResult} is
	* unaffected. To clear this value, you can invoke {@code
	* setRawResult(null)}.
	*/
	@:overload @:public public function reinitialize() : Void;
	
	/**
	* Returns the pool hosting the current task execution, or null
	* if this task is executing outside of any ForkJoinPool.
	*
	* @see #inForkJoinPool
	* @return the pool, or {@code null} if none
	*/
	@:overload @:public @:static public static function getPool() : java.util.concurrent.ForkJoinPool;
	
	/**
	* Returns {@code true} if the current thread is a {@link
	* ForkJoinWorkerThread} executing as a ForkJoinPool computation.
	*
	* @return {@code true} if the current thread is a {@link
	* ForkJoinWorkerThread} executing as a ForkJoinPool computation,
	* or {@code false} otherwise
	*/
	@:overload @:public @:static public static function inForkJoinPool() : Bool;
	
	/**
	* Tries to unschedule this task for execution. This method will
	* typically succeed if this task is the most recently forked task
	* by the current thread, and has not commenced executing in
	* another thread.  This method may be useful when arranging
	* alternative local processing of tasks that could have been, but
	* were not, stolen.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @return {@code true} if unforked
	*/
	@:overload @:public public function tryUnfork() : Bool;
	
	/**
	* Returns an estimate of the number of tasks that have been
	* forked by the current worker thread but not yet executed. This
	* value may be useful for heuristic decisions about whether to
	* fork other tasks.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @return the number of tasks
	*/
	@:overload @:public @:static public static function getQueuedTaskCount() : Int;
	
	/**
	* Returns an estimate of how many more locally queued tasks are
	* held by the current worker thread than there are other worker
	* threads that might steal them.  This value may be useful for
	* heuristic decisions about whether to fork other tasks. In many
	* usages of ForkJoinTasks, at steady state, each worker should
	* aim to maintain a small constant surplus (for example, 3) of
	* tasks, and to process computations locally if this threshold is
	* exceeded.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @return the surplus number of tasks, which may be negative
	*/
	@:overload @:public @:static public static function getSurplusQueuedTaskCount() : Int;
	
	/**
	* Returns the result that would be returned by {@link #join}, even
	* if this task completed abnormally, or {@code null} if this task
	* is not known to have been completed.  This method is designed
	* to aid debugging, as well as to support extensions. Its use in
	* any other context is discouraged.
	*
	* @return the result, or {@code null} if not completed
	*/
	@:overload @:public @:abstract public function getRawResult() : V;
	
	/**
	* Forces the given value to be returned as a result.  This method
	* is designed to support extensions, and should not in general be
	* called otherwise.
	*
	* @param value the value
	*/
	@:overload @:protected @:abstract private function setRawResult(value : V) : Void;
	
	/**
	* Immediately performs the base action of this task.  This method
	* is designed to support extensions, and should not in general be
	* called otherwise. The return value controls whether this task
	* is considered to be done normally. It may return false in
	* asynchronous actions that require explicit invocations of
	* {@link #complete} to become joinable. It may also throw an
	* (unchecked) exception to indicate abnormal exit.
	*
	* @return {@code true} if completed normally
	*/
	@:overload @:protected @:abstract private function exec() : Bool;
	
	/**
	* Returns, but does not unschedule or execute, a task queued by
	* the current thread but not yet executed, if one is immediately
	* available. There is no guarantee that this task will actually
	* be polled or executed next. Conversely, this method may return
	* null even if a task exists but cannot be accessed without
	* contention with other threads.  This method is designed
	* primarily to support extensions, and is unlikely to be useful
	* otherwise.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @return the next task, or {@code null} if none are available
	*/
	@:overload @:protected @:static private static function peekNextLocalTask() : java.util.concurrent.ForkJoinTask<Dynamic>;
	
	/**
	* Unschedules and returns, without executing, the next task
	* queued by the current thread but not yet executed.  This method
	* is designed primarily to support extensions, and is unlikely to
	* be useful otherwise.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @return the next task, or {@code null} if none are available
	*/
	@:overload @:protected @:static private static function pollNextLocalTask() : java.util.concurrent.ForkJoinTask<Dynamic>;
	
	/**
	* Unschedules and returns, without executing, the next task
	* queued by the current thread but not yet executed, if one is
	* available, or if not available, a task that was forked by some
	* other thread, if available. Availability may be transient, so a
	* {@code null} result does not necessarily imply quiescence
	* of the pool this task is operating in.  This method is designed
	* primarily to support extensions, and is unlikely to be useful
	* otherwise.
	*
	* <p>This method may be invoked only from within {@code
	* ForkJoinPool} computations (as may be determined using method
	* {@link #inForkJoinPool}).  Attempts to invoke in other contexts
	* result in exceptions or errors, possibly including {@code
	* ClassCastException}.
	*
	* @return a task, or {@code null} if none are available
	*/
	@:overload @:protected @:static private static function pollTask() : java.util.concurrent.ForkJoinTask<Dynamic>;
	
	/**
	* Returns a new {@code ForkJoinTask} that performs the {@code run}
	* method of the given {@code Runnable} as its action, and returns
	* a null result upon {@link #join}.
	*
	* @param runnable the runnable action
	* @return the task
	*/
	@:overload @:public @:static public static function adapt(runnable : java.lang.Runnable) : java.util.concurrent.ForkJoinTask<Dynamic>;
	
	/**
	* Returns a new {@code ForkJoinTask} that performs the {@code run}
	* method of the given {@code Runnable} as its action, and returns
	* the given result upon {@link #join}.
	*
	* @param runnable the runnable action
	* @param result the result upon completion
	* @return the task
	*/
	@:overload @:public @:static public static function adapt<T>(runnable : java.lang.Runnable, result : T) : java.util.concurrent.ForkJoinTask<T>;
	
	/**
	* Returns a new {@code ForkJoinTask} that performs the {@code call}
	* method of the given {@code Callable} as its action, and returns
	* its result upon {@link #join}, translating any checked exceptions
	* encountered into {@code RuntimeException}.
	*
	* @param callable the callable action
	* @return the task
	*/
	@:overload @:public @:static public static function adapt<T>(callable : java.util.concurrent.Callable<T>) : java.util.concurrent.ForkJoinTask<T>;
	
	
}
/**
* Key-value nodes for exception table.  The chained hash table
* uses identity comparisons, full locking, and weak references
* for keys. The table has a fixed capacity because it only
* maintains task exceptions long enough for joiners to access
* them, so should never become very large for sustained
* periods. However, since we do not know when the last joiner
* completes, we must use weak references and expunge them. We do
* so on each operation (hence full locking). Also, some thread in
* any ForkJoinPool will call helpExpungeStaleExceptions when its
* pool becomes isQuiescent.
*/
@:native('java$util$concurrent$ForkJoinTask$ExceptionNode') @:internal extern class ForkJoinTask_ExceptionNode extends java.lang.ref.WeakReference<java.util.concurrent.ForkJoinTask<Dynamic>>
{
	
}
/**
* Adaptor for Runnables. This implements RunnableFuture
* to be compliant with AbstractExecutorService constraints
* when used in ForkJoinPool.
*/
@:native('java$util$concurrent$ForkJoinTask$AdaptedRunnable') @:internal extern class ForkJoinTask_AdaptedRunnable<T> extends java.util.concurrent.ForkJoinTask<T> implements java.util.concurrent.RunnableFuture<T>
{
	@:overload @:public override public function getRawResult() : T;
	
	@:overload @:public override public function setRawResult(v : T) : Void;
	
	@:overload @:public override public function exec() : Bool;
	
	@:overload @:public public function run() : Void;
	
	
}
/**
* Adaptor for Callables
*/
@:native('java$util$concurrent$ForkJoinTask$AdaptedCallable') @:internal extern class ForkJoinTask_AdaptedCallable<T> extends java.util.concurrent.ForkJoinTask<T> implements java.util.concurrent.RunnableFuture<T>
{
	@:overload @:public override public function getRawResult() : T;
	
	@:overload @:public override public function setRawResult(v : T) : Void;
	
	@:overload @:public override public function exec() : Bool;
	
	@:overload @:public public function run() : Void;
	
	
}
