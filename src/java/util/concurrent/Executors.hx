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
extern class Executors
{
	/**
	* Creates a thread pool that reuses a fixed number of threads
	* operating off a shared unbounded queue.  At any point, at most
	* <tt>nThreads</tt> threads will be active processing tasks.
	* If additional tasks are submitted when all threads are active,
	* they will wait in the queue until a thread is available.
	* If any thread terminates due to a failure during execution
	* prior to shutdown, a new one will take its place if needed to
	* execute subsequent tasks.  The threads in the pool will exist
	* until it is explicitly {@link ExecutorService#shutdown shutdown}.
	*
	* @param nThreads the number of threads in the pool
	* @return the newly created thread pool
	* @throws IllegalArgumentException if {@code nThreads <= 0}
	*/
	@:overload public static function newFixedThreadPool(nThreads : Int) : java.util.concurrent.ExecutorService;
	
	/**
	* Creates a thread pool that reuses a fixed number of threads
	* operating off a shared unbounded queue, using the provided
	* ThreadFactory to create new threads when needed.  At any point,
	* at most <tt>nThreads</tt> threads will be active processing
	* tasks.  If additional tasks are submitted when all threads are
	* active, they will wait in the queue until a thread is
	* available.  If any thread terminates due to a failure during
	* execution prior to shutdown, a new one will take its place if
	* needed to execute subsequent tasks.  The threads in the pool will
	* exist until it is explicitly {@link ExecutorService#shutdown
	* shutdown}.
	*
	* @param nThreads the number of threads in the pool
	* @param threadFactory the factory to use when creating new threads
	* @return the newly created thread pool
	* @throws NullPointerException if threadFactory is null
	* @throws IllegalArgumentException if {@code nThreads <= 0}
	*/
	@:overload public static function newFixedThreadPool(nThreads : Int, threadFactory : java.util.concurrent.ThreadFactory) : java.util.concurrent.ExecutorService;
	
	/**
	* Creates an Executor that uses a single worker thread operating
	* off an unbounded queue. (Note however that if this single
	* thread terminates due to a failure during execution prior to
	* shutdown, a new one will take its place if needed to execute
	* subsequent tasks.)  Tasks are guaranteed to execute
	* sequentially, and no more than one task will be active at any
	* given time. Unlike the otherwise equivalent
	* <tt>newFixedThreadPool(1)</tt> the returned executor is
	* guaranteed not to be reconfigurable to use additional threads.
	*
	* @return the newly created single-threaded Executor
	*/
	@:overload public static function newSingleThreadExecutor() : java.util.concurrent.ExecutorService;
	
	/**
	* Creates an Executor that uses a single worker thread operating
	* off an unbounded queue, and uses the provided ThreadFactory to
	* create a new thread when needed. Unlike the otherwise
	* equivalent <tt>newFixedThreadPool(1, threadFactory)</tt> the
	* returned executor is guaranteed not to be reconfigurable to use
	* additional threads.
	*
	* @param threadFactory the factory to use when creating new
	* threads
	*
	* @return the newly created single-threaded Executor
	* @throws NullPointerException if threadFactory is null
	*/
	@:overload public static function newSingleThreadExecutor(threadFactory : java.util.concurrent.ThreadFactory) : java.util.concurrent.ExecutorService;
	
	/**
	* Creates a thread pool that creates new threads as needed, but
	* will reuse previously constructed threads when they are
	* available.  These pools will typically improve the performance
	* of programs that execute many short-lived asynchronous tasks.
	* Calls to <tt>execute</tt> will reuse previously constructed
	* threads if available. If no existing thread is available, a new
	* thread will be created and added to the pool. Threads that have
	* not been used for sixty seconds are terminated and removed from
	* the cache. Thus, a pool that remains idle for long enough will
	* not consume any resources. Note that pools with similar
	* properties but different details (for example, timeout parameters)
	* may be created using {@link ThreadPoolExecutor} constructors.
	*
	* @return the newly created thread pool
	*/
	@:overload public static function newCachedThreadPool() : java.util.concurrent.ExecutorService;
	
	/**
	* Creates a thread pool that creates new threads as needed, but
	* will reuse previously constructed threads when they are
	* available, and uses the provided
	* ThreadFactory to create new threads when needed.
	* @param threadFactory the factory to use when creating new threads
	* @return the newly created thread pool
	* @throws NullPointerException if threadFactory is null
	*/
	@:overload public static function newCachedThreadPool(threadFactory : java.util.concurrent.ThreadFactory) : java.util.concurrent.ExecutorService;
	
	/**
	* Creates a single-threaded executor that can schedule commands
	* to run after a given delay, or to execute periodically.
	* (Note however that if this single
	* thread terminates due to a failure during execution prior to
	* shutdown, a new one will take its place if needed to execute
	* subsequent tasks.)  Tasks are guaranteed to execute
	* sequentially, and no more than one task will be active at any
	* given time. Unlike the otherwise equivalent
	* <tt>newScheduledThreadPool(1)</tt> the returned executor is
	* guaranteed not to be reconfigurable to use additional threads.
	* @return the newly created scheduled executor
	*/
	@:overload public static function newSingleThreadScheduledExecutor() : java.util.concurrent.ScheduledExecutorService;
	
	/**
	* Creates a single-threaded executor that can schedule commands
	* to run after a given delay, or to execute periodically.  (Note
	* however that if this single thread terminates due to a failure
	* during execution prior to shutdown, a new one will take its
	* place if needed to execute subsequent tasks.)  Tasks are
	* guaranteed to execute sequentially, and no more than one task
	* will be active at any given time. Unlike the otherwise
	* equivalent <tt>newScheduledThreadPool(1, threadFactory)</tt>
	* the returned executor is guaranteed not to be reconfigurable to
	* use additional threads.
	* @param threadFactory the factory to use when creating new
	* threads
	* @return a newly created scheduled executor
	* @throws NullPointerException if threadFactory is null
	*/
	@:overload public static function newSingleThreadScheduledExecutor(threadFactory : java.util.concurrent.ThreadFactory) : java.util.concurrent.ScheduledExecutorService;
	
	/**
	* Creates a thread pool that can schedule commands to run after a
	* given delay, or to execute periodically.
	* @param corePoolSize the number of threads to keep in the pool,
	* even if they are idle.
	* @return a newly created scheduled thread pool
	* @throws IllegalArgumentException if {@code corePoolSize < 0}
	*/
	@:overload public static function newScheduledThreadPool(corePoolSize : Int) : java.util.concurrent.ScheduledExecutorService;
	
	/**
	* Creates a thread pool that can schedule commands to run after a
	* given delay, or to execute periodically.
	* @param corePoolSize the number of threads to keep in the pool,
	* even if they are idle.
	* @param threadFactory the factory to use when the executor
	* creates a new thread.
	* @return a newly created scheduled thread pool
	* @throws IllegalArgumentException if {@code corePoolSize < 0}
	* @throws NullPointerException if threadFactory is null
	*/
	@:overload public static function newScheduledThreadPool(corePoolSize : Int, threadFactory : java.util.concurrent.ThreadFactory) : java.util.concurrent.ScheduledExecutorService;
	
	/**
	* Returns an object that delegates all defined {@link
	* ExecutorService} methods to the given executor, but not any
	* other methods that might otherwise be accessible using
	* casts. This provides a way to safely "freeze" configuration and
	* disallow tuning of a given concrete implementation.
	* @param executor the underlying implementation
	* @return an <tt>ExecutorService</tt> instance
	* @throws NullPointerException if executor null
	*/
	@:overload public static function unconfigurableExecutorService(executor : java.util.concurrent.ExecutorService) : java.util.concurrent.ExecutorService;
	
	/**
	* Returns an object that delegates all defined {@link
	* ScheduledExecutorService} methods to the given executor, but
	* not any other methods that might otherwise be accessible using
	* casts. This provides a way to safely "freeze" configuration and
	* disallow tuning of a given concrete implementation.
	* @param executor the underlying implementation
	* @return a <tt>ScheduledExecutorService</tt> instance
	* @throws NullPointerException if executor null
	*/
	@:overload public static function unconfigurableScheduledExecutorService(executor : java.util.concurrent.ScheduledExecutorService) : java.util.concurrent.ScheduledExecutorService;
	
	/**
	* Returns a default thread factory used to create new threads.
	* This factory creates all new threads used by an Executor in the
	* same {@link ThreadGroup}. If there is a {@link
	* java.lang.SecurityManager}, it uses the group of {@link
	* System#getSecurityManager}, else the group of the thread
	* invoking this <tt>defaultThreadFactory</tt> method. Each new
	* thread is created as a non-daemon thread with priority set to
	* the smaller of <tt>Thread.NORM_PRIORITY</tt> and the maximum
	* priority permitted in the thread group.  New threads have names
	* accessible via {@link Thread#getName} of
	* <em>pool-N-thread-M</em>, where <em>N</em> is the sequence
	* number of this factory, and <em>M</em> is the sequence number
	* of the thread created by this factory.
	* @return a thread factory
	*/
	@:overload public static function defaultThreadFactory() : java.util.concurrent.ThreadFactory;
	
	/**
	* Returns a thread factory used to create new threads that
	* have the same permissions as the current thread.
	* This factory creates threads with the same settings as {@link
	* Executors#defaultThreadFactory}, additionally setting the
	* AccessControlContext and contextClassLoader of new threads to
	* be the same as the thread invoking this
	* <tt>privilegedThreadFactory</tt> method.  A new
	* <tt>privilegedThreadFactory</tt> can be created within an
	* {@link AccessController#doPrivileged} action setting the
	* current thread's access control context to create threads with
	* the selected permission settings holding within that action.
	*
	* <p> Note that while tasks running within such threads will have
	* the same access control and class loader settings as the
	* current thread, they need not have the same {@link
	* java.lang.ThreadLocal} or {@link
	* java.lang.InheritableThreadLocal} values. If necessary,
	* particular values of thread locals can be set or reset before
	* any task runs in {@link ThreadPoolExecutor} subclasses using
	* {@link ThreadPoolExecutor#beforeExecute}. Also, if it is
	* necessary to initialize worker threads to have the same
	* InheritableThreadLocal settings as some other designated
	* thread, you can create a custom ThreadFactory in which that
	* thread waits for and services requests to create others that
	* will inherit its values.
	*
	* @return a thread factory
	* @throws AccessControlException if the current access control
	* context does not have permission to both get and set context
	* class loader.
	*/
	@:overload public static function privilegedThreadFactory() : java.util.concurrent.ThreadFactory;
	
	/**
	* Returns a {@link Callable} object that, when
	* called, runs the given task and returns the given result.  This
	* can be useful when applying methods requiring a
	* <tt>Callable</tt> to an otherwise resultless action.
	* @param task the task to run
	* @param result the result to return
	* @return a callable object
	* @throws NullPointerException if task null
	*/
	@:overload public static function callable<T>(task : java.lang.Runnable, result : T) : java.util.concurrent.Callable<T>;
	
	/**
	* Returns a {@link Callable} object that, when
	* called, runs the given task and returns <tt>null</tt>.
	* @param task the task to run
	* @return a callable object
	* @throws NullPointerException if task null
	*/
	@:overload public static function callable(task : java.lang.Runnable) : java.util.concurrent.Callable<Dynamic>;
	
	/**
	* Returns a {@link Callable} object that, when
	* called, runs the given privileged action and returns its result.
	* @param action the privileged action to run
	* @return a callable object
	* @throws NullPointerException if action null
	*/
	@:overload public static function callable(action : java.security.PrivilegedAction<Dynamic>) : java.util.concurrent.Callable<Dynamic>;
	
	/**
	* Returns a {@link Callable} object that, when
	* called, runs the given privileged exception action and returns
	* its result.
	* @param action the privileged exception action to run
	* @return a callable object
	* @throws NullPointerException if action null
	*/
	@:overload public static function callable(action : java.security.PrivilegedExceptionAction<Dynamic>) : java.util.concurrent.Callable<Dynamic>;
	
	/**
	* Returns a {@link Callable} object that will, when
	* called, execute the given <tt>callable</tt> under the current
	* access control context. This method should normally be
	* invoked within an {@link AccessController#doPrivileged} action
	* to create callables that will, if possible, execute under the
	* selected permission settings holding within that action; or if
	* not possible, throw an associated {@link
	* AccessControlException}.
	* @param callable the underlying task
	* @return a callable object
	* @throws NullPointerException if callable null
	*
	*/
	@:overload public static function privilegedCallable<T>(callable : java.util.concurrent.Callable<T>) : java.util.concurrent.Callable<T>;
	
	/**
	* Returns a {@link Callable} object that will, when
	* called, execute the given <tt>callable</tt> under the current
	* access control context, with the current context class loader
	* as the context class loader. This method should normally be
	* invoked within an {@link AccessController#doPrivileged} action
	* to create callables that will, if possible, execute under the
	* selected permission settings holding within that action; or if
	* not possible, throw an associated {@link
	* AccessControlException}.
	* @param callable the underlying task
	*
	* @return a callable object
	* @throws NullPointerException if callable null
	* @throws AccessControlException if the current access control
	* context does not have permission to both set and get context
	* class loader.
	*/
	@:overload public static function privilegedCallableUsingCurrentClassLoader<T>(callable : java.util.concurrent.Callable<T>) : java.util.concurrent.Callable<T>;
	
	
}
/**
* A callable that runs given task and returns given result
*/
@:native('java$util$concurrent$Executors$RunnableAdapter') @:internal extern class Executors_RunnableAdapter<T> implements java.util.concurrent.Callable<T>
{
	@:overload public function call() : T;
	
	
}
/**
* A callable that runs under established access control settings
*/
@:native('java$util$concurrent$Executors$PrivilegedCallable') @:internal extern class Executors_PrivilegedCallable<T> implements java.util.concurrent.Callable<T>
{
	@:overload public function call() : T;
	
	
}
/**
* A callable that runs under established access control settings and
* current ClassLoader
*/
@:native('java$util$concurrent$Executors$PrivilegedCallableUsingCurrentClassLoader') @:internal extern class Executors_PrivilegedCallableUsingCurrentClassLoader<T> implements java.util.concurrent.Callable<T>
{
	@:overload public function call() : T;
	
	
}
/**
* The default thread factory
*/
@:native('java$util$concurrent$Executors$DefaultThreadFactory') @:internal extern class Executors_DefaultThreadFactory implements java.util.concurrent.ThreadFactory
{
	@:overload public function newThread(r : java.lang.Runnable) : java.lang.Thread;
	
	
}
/**
* Thread factory capturing access control context and class loader
*/
@:native('java$util$concurrent$Executors$PrivilegedThreadFactory') @:internal extern class Executors_PrivilegedThreadFactory extends java.util.concurrent.Executors.Executors_DefaultThreadFactory
{
	@:overload override public function newThread(r : java.lang.Runnable) : java.lang.Thread;
	
	
}
/**
* A wrapper class that exposes only the ExecutorService methods
* of an ExecutorService implementation.
*/
@:native('java$util$concurrent$Executors$DelegatedExecutorService') @:internal extern class Executors_DelegatedExecutorService extends java.util.concurrent.AbstractExecutorService
{
	@:overload public function execute(command : java.lang.Runnable) : Void;
	
	@:overload public function shutdown() : Void;
	
	@:overload public function shutdownNow() : java.util.List<java.lang.Runnable>;
	
	@:overload public function isShutdown() : Bool;
	
	@:overload public function isTerminated() : Bool;
	
	@:overload public function awaitTermination(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	@:overload public function submit(task : java.lang.Runnable) : java.util.concurrent.Future<Dynamic>;
	
	@:overload public function submit<T>(task : java.util.concurrent.Callable<T>) : java.util.concurrent.Future<T>;
	
	@:overload public function submit<T>(task : java.lang.Runnable, result : T) : java.util.concurrent.Future<T>;
	
	@:overload public function invokeAll<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>) : java.util.List<java.util.concurrent.Future<T>>;
	
	@:overload public function invokeAll<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.List<java.util.concurrent.Future<T>>;
	
	@:overload public function invokeAny<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>) : T;
	
	@:overload public function invokeAny<T>(tasks : java.util.Collection<java.util.concurrent.Callable<T>>, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : T;
	
	
}
@:native('java$util$concurrent$Executors$FinalizableDelegatedExecutorService') @:internal extern class Executors_FinalizableDelegatedExecutorService extends java.util.concurrent.Executors.Executors_DelegatedExecutorService
{
	@:overload private function finalize() : Void;
	
	
}
/**
* A wrapper class that exposes only the ScheduledExecutorService
* methods of a ScheduledExecutorService implementation.
*/
@:native('java$util$concurrent$Executors$DelegatedScheduledExecutorService') @:internal extern class Executors_DelegatedScheduledExecutorService extends java.util.concurrent.Executors.Executors_DelegatedExecutorService implements java.util.concurrent.ScheduledExecutorService
{
	@:overload public function schedule(command : java.lang.Runnable, delay : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<Dynamic>;
	
	@:overload public function schedule<V>(callable : java.util.concurrent.Callable<V>, delay : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<V>;
	
	@:overload public function scheduleAtFixedRate(command : java.lang.Runnable, initialDelay : haxe.Int64, period : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<Dynamic>;
	
	@:overload public function scheduleWithFixedDelay(command : java.lang.Runnable, initialDelay : haxe.Int64, delay : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.ScheduledFuture<Dynamic>;
	
	
}
