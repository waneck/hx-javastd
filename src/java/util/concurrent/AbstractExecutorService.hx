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
* Provides default implementations of {@link ExecutorService}
* execution methods. This class implements the <tt>submit</tt>,
* <tt>invokeAny</tt> and <tt>invokeAll</tt> methods using a
* {@link RunnableFuture} returned by <tt>newTaskFor</tt>, which defaults
* to the {@link FutureTask} class provided in this package.  For example,
* the implementation of <tt>submit(Runnable)</tt> creates an
* associated <tt>RunnableFuture</tt> that is executed and
* returned. Subclasses may override the <tt>newTaskFor</tt> methods
* to return <tt>RunnableFuture</tt> implementations other than
* <tt>FutureTask</tt>.
*
* <p> <b>Extension example</b>. Here is a sketch of a class
* that customizes {@link ThreadPoolExecutor} to use
* a <tt>CustomTask</tt> class instead of the default <tt>FutureTask</tt>:
*  <pre> {@code
* public class CustomThreadPoolExecutor extends ThreadPoolExecutor {
*
*   static class CustomTask<V> implements RunnableFuture<V> {...}
*
*   protected <V> RunnableFuture<V> newTaskFor(Callable<V> c) {
*       return new CustomTask<V>(c);
*   }
*   protected <V> RunnableFuture<V> newTaskFor(Runnable r, V v) {
*       return new CustomTask<V>(r, v);
*   }
*   // ... add constructors, etc.
* }}</pre>
*
* @since 1.5
* @author Doug Lea
*/
@:require(java5) extern class AbstractExecutorService implements java.util.concurrent.ExecutorService
{
	/**
	* Returns a <tt>RunnableFuture</tt> for the given runnable and default
	* value.
	*
	* @param runnable the runnable task being wrapped
	* @param value the default value for the returned future
	* @return a <tt>RunnableFuture</tt> which when run will run the
	* underlying runnable and which, as a <tt>Future</tt>, will yield
	* the given value as its result and provide for cancellation of
	* the underlying task.
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function newTaskFor<T>(runnable : java.lang.Runnable, value : T) : java.util.concurrent.RunnableFuture<T>;
	
	/**
	* Returns a <tt>RunnableFuture</tt> for the given callable task.
	*
	* @param callable the callable task being wrapped
	* @return a <tt>RunnableFuture</tt> which when run will call the
	* underlying callable and which, as a <tt>Future</tt>, will yield
	* the callable's result as its result and provide for
	* cancellation of the underlying task.
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function newTaskFor<T>(callable : java.util.concurrent.Callable<T>) : java.util.concurrent.RunnableFuture<T>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload @:public public function submit(task : java.lang.Runnable) : java.util.concurrent.Future<Dynamic>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload @:public public function submit<T>(task : java.lang.Runnable, result : T) : java.util.concurrent.Future<T>;
	
	/**
	* @throws RejectedExecutionException {@inheritDoc}
	* @throws NullPointerException       {@inheritDoc}
	*/
	@:overload @:public public function submit<T>(task : java.util.concurrent.Callable<T>) : java.util.concurrent.Future<T>;
	
	@:overload @:public public function invokeAny<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>) : T;
	
	@:overload @:public public function invokeAny<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : T;
	
	@:overload @:public public function invokeAll<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>) : java.util.List<java.util.concurrent.Future<T>>;
	
	@:overload @:public public function invokeAll<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.List<java.util.concurrent.Future<T>>;
	
	/**
	* Executes the given command at some time in the future.  The command
	* may execute in a new thread, in a pooled thread, or in the calling
	* thread, at the discretion of the <tt>Executor</tt> implementation.
	*
	* @param command the runnable task
	* @throws RejectedExecutionException if this task cannot be
	* accepted for execution.
	* @throws NullPointerException if command is null
	*/
	@:overload @:public public function execute(command : java.lang.Runnable) : Void;
	
	/**
	* Returns <tt>true</tt> if this executor has been shut down.
	*
	* @return <tt>true</tt> if this executor has been shut down
	*/
	@:overload @:public public function isShutdown() : Bool;
	
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
	* Returns <tt>true</tt> if all tasks have completed following shut down.
	* Note that <tt>isTerminated</tt> is never <tt>true</tt> unless
	* either <tt>shutdown</tt> or <tt>shutdownNow</tt> was called first.
	*
	* @return <tt>true</tt> if all tasks have completed following shut down
	*/
	@:overload @:public public function isTerminated() : Bool;
	
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
	
	
}
