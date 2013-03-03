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
extern interface ExecutorService extends java.util.concurrent.Executor
{
	/**
	* Initiates an orderly shutdown in which previously submitted
	* tasks are executed, but no new tasks will be accepted.
	* Invocation has no additional effect if already shut down.
	*
	* <p>This method does not wait for previously submitted tasks to
	* complete execution.  Use {@link #awaitTermination awaitTermination}
	* to do that.
	*
	* @throws SecurityException if a security manager exists and
	*         shutting down this ExecutorService may manipulate
	*         threads that the caller is not permitted to modify
	*         because it does not hold {@link
	*         java.lang.RuntimePermission}<tt>("modifyThread")</tt>,
	*         or the security manager's <tt>checkAccess</tt> method
	*         denies access.
	*/
	@:overload @:public public function shutdown() : Void;
	
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
	* processing actively executing tasks.  For example, typical
	* implementations will cancel via {@link Thread#interrupt}, so any
	* task that fails to respond to interrupts may never terminate.
	*
	* @return list of tasks that never commenced execution
	* @throws SecurityException if a security manager exists and
	*         shutting down this ExecutorService may manipulate
	*         threads that the caller is not permitted to modify
	*         because it does not hold {@link
	*         java.lang.RuntimePermission}<tt>("modifyThread")</tt>,
	*         or the security manager's <tt>checkAccess</tt> method
	*         denies access.
	*/
	@:overload @:public public function shutdownNow() : java.util.List<java.lang.Runnable>;
	
	/**
	* Returns <tt>true</tt> if this executor has been shut down.
	*
	* @return <tt>true</tt> if this executor has been shut down
	*/
	@:overload @:public public function isShutdown() : Bool;
	
	/**
	* Returns <tt>true</tt> if all tasks have completed following shut down.
	* Note that <tt>isTerminated</tt> is never <tt>true</tt> unless
	* either <tt>shutdown</tt> or <tt>shutdownNow</tt> was called first.
	*
	* @return <tt>true</tt> if all tasks have completed following shut down
	*/
	@:overload @:public public function isTerminated() : Bool;
	
	/**
	* Blocks until all tasks have completed execution after a shutdown
	* request, or the timeout occurs, or the current thread is
	* interrupted, whichever happens first.
	*
	* @param timeout the maximum time to wait
	* @param unit the time unit of the timeout argument
	* @return <tt>true</tt> if this executor terminated and
	*         <tt>false</tt> if the timeout elapsed before termination
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload @:public public function awaitTermination(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Submits a value-returning task for execution and returns a
	* Future representing the pending results of the task. The
	* Future's <tt>get</tt> method will return the task's result upon
	* successful completion.
	*
	* <p>
	* If you would like to immediately block waiting
	* for a task, you can use constructions of the form
	* <tt>result = exec.submit(aCallable).get();</tt>
	*
	* <p> Note: The {@link Executors} class includes a set of methods
	* that can convert some other common closure-like objects,
	* for example, {@link java.security.PrivilegedAction} to
	* {@link Callable} form so they can be submitted.
	*
	* @param task the task to submit
	* @return a Future representing pending completion of the task
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	* @throws NullPointerException if the task is null
	*/
	@:overload public function submit<T>(task : java.util.concurrent.Callable<T>) : java.util.concurrent.Future<T>;
	
	/**
	* Submits a Runnable task for execution and returns a Future
	* representing that task. The Future's <tt>get</tt> method will
	* return the given result upon successful completion.
	*
	* @param task the task to submit
	* @param result the result to return
	* @return a Future representing pending completion of the task
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	* @throws NullPointerException if the task is null
	*/
	@:overload public function submit<T>(task : java.lang.Runnable, result : T) : java.util.concurrent.Future<T>;
	
	/**
	* Submits a Runnable task for execution and returns a Future
	* representing that task. The Future's <tt>get</tt> method will
	* return <tt>null</tt> upon <em>successful</em> completion.
	*
	* @param task the task to submit
	* @return a Future representing pending completion of the task
	* @throws RejectedExecutionException if the task cannot be
	*         scheduled for execution
	* @throws NullPointerException if the task is null
	*/
	@:overload public function submit(task : java.lang.Runnable) : java.util.concurrent.Future<Dynamic>;
	
	/**
	* Executes the given tasks, returning a list of Futures holding
	* their status and results when all complete.
	* {@link Future#isDone} is <tt>true</tt> for each
	* element of the returned list.
	* Note that a <em>completed</em> task could have
	* terminated either normally or by throwing an exception.
	* The results of this method are undefined if the given
	* collection is modified while this operation is in progress.
	*
	* @param tasks the collection of tasks
	* @return A list of Futures representing the tasks, in the same
	*         sequential order as produced by the iterator for the
	*         given task list, each of which has completed.
	* @throws InterruptedException if interrupted while waiting, in
	*         which case unfinished tasks are cancelled.
	* @throws NullPointerException if tasks or any of its elements are <tt>null</tt>
	* @throws RejectedExecutionException if any task cannot be
	*         scheduled for execution
	*/
	@:overload public function invokeAll<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>) : java.util.List<java.util.concurrent.Future<T>>;
	
	/**
	* Executes the given tasks, returning a list of Futures holding
	* their status and results
	* when all complete or the timeout expires, whichever happens first.
	* {@link Future#isDone} is <tt>true</tt> for each
	* element of the returned list.
	* Upon return, tasks that have not completed are cancelled.
	* Note that a <em>completed</em> task could have
	* terminated either normally or by throwing an exception.
	* The results of this method are undefined if the given
	* collection is modified while this operation is in progress.
	*
	* @param tasks the collection of tasks
	* @param timeout the maximum time to wait
	* @param unit the time unit of the timeout argument
	* @return a list of Futures representing the tasks, in the same
	*         sequential order as produced by the iterator for the
	*         given task list. If the operation did not time out,
	*         each task will have completed. If it did time out, some
	*         of these tasks will not have completed.
	* @throws InterruptedException if interrupted while waiting, in
	*         which case unfinished tasks are cancelled
	* @throws NullPointerException if tasks, any of its elements, or
	*         unit are <tt>null</tt>
	* @throws RejectedExecutionException if any task cannot be scheduled
	*         for execution
	*/
	@:overload public function invokeAll<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.List<java.util.concurrent.Future<T>>;
	
	/**
	* Executes the given tasks, returning the result
	* of one that has completed successfully (i.e., without throwing
	* an exception), if any do. Upon normal or exceptional return,
	* tasks that have not completed are cancelled.
	* The results of this method are undefined if the given
	* collection is modified while this operation is in progress.
	*
	* @param tasks the collection of tasks
	* @return the result returned by one of the tasks
	* @throws InterruptedException if interrupted while waiting
	* @throws NullPointerException if tasks or any element task
	*         subject to execution is <tt>null</tt>
	* @throws IllegalArgumentException if tasks is empty
	* @throws ExecutionException if no task successfully completes
	* @throws RejectedExecutionException if tasks cannot be scheduled
	*         for execution
	*/
	@:overload public function invokeAny<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>) : T;
	
	/**
	* Executes the given tasks, returning the result
	* of one that has completed successfully (i.e., without throwing
	* an exception), if any do before the given timeout elapses.
	* Upon normal or exceptional return, tasks that have not
	* completed are cancelled.
	* The results of this method are undefined if the given
	* collection is modified while this operation is in progress.
	*
	* @param tasks the collection of tasks
	* @param timeout the maximum time to wait
	* @param unit the time unit of the timeout argument
	* @return the result returned by one of the tasks.
	* @throws InterruptedException if interrupted while waiting
	* @throws NullPointerException if tasks, or unit, or any element
	*         task subject to execution is <tt>null</tt>
	* @throws TimeoutException if the given timeout elapses before
	*         any task successfully completes
	* @throws ExecutionException if no task successfully completes
	* @throws RejectedExecutionException if tasks cannot be scheduled
	*         for execution
	*/
	@:overload public function invokeAny<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : T;
	
	
}
