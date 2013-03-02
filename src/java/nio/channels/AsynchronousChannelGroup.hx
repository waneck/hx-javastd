package java.nio.channels;
/*
* Copyright (c) 2007, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class AsynchronousChannelGroup
{
	/**
	* Initialize a new instance of this class.
	*
	* @param   provider
	*          The asynchronous channel provider for this group
	*/
	@:overload private function new(provider : java.nio.channels.spi.AsynchronousChannelProvider) : Void;
	
	/**
	* Returns the provider that created this channel group.
	*
	* @return  The provider that created this channel group
	*/
	@:overload @:final public function provider() : java.nio.channels.spi.AsynchronousChannelProvider;
	
	/**
	* Creates an asynchronous channel group with a fixed thread pool.
	*
	* <p> The resulting asynchronous channel group reuses a fixed number of
	* threads. At any point, at most {@code nThreads} threads will be active
	* processing tasks that are submitted to handle I/O events and dispatch
	* completion results for operations initiated on asynchronous channels in
	* the group.
	*
	* <p> The group is created by invoking the {@link
	* AsynchronousChannelProvider#openAsynchronousChannelGroup(int,ThreadFactory)
	* openAsynchronousChannelGroup(int,ThreadFactory)} method of the system-wide
	* default {@link AsynchronousChannelProvider} object.
	*
	* @param   nThreads
	*          The number of threads in the pool
	* @param   threadFactory
	*          The factory to use when creating new threads
	*
	* @return  A new asynchronous channel group
	*
	* @throws  IllegalArgumentException
	*          If {@code nThreads <= 0}
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public static function withFixedThreadPool(nThreads : Int, threadFactory : java.util.concurrent.ThreadFactory) : java.nio.channels.AsynchronousChannelGroup;
	
	/**
	* Creates an asynchronous channel group with a given thread pool that
	* creates new threads as needed.
	*
	* <p> The {@code executor} parameter is an {@code ExecutorService} that
	* creates new threads as needed to execute tasks that are submitted to
	* handle I/O events and dispatch completion results for operations initiated
	* on asynchronous channels in the group. It may reuse previously constructed
	* threads when they are available.
	*
	* <p> The {@code initialSize} parameter may be used by the implementation
	* as a <em>hint</em> as to the initial number of tasks it may submit. For
	* example, it may be used to indictae the initial number of threads that
	* wait on I/O events.
	*
	* <p> The executor is intended to be used exclusively by the resulting
	* asynchronous channel group. Termination of the group results in the
	* orderly  {@link ExecutorService#shutdown shutdown} of the executor
	* service. Shutting down the executor service by other means results in
	* unspecified behavior.
	*
	* <p> The group is created by invoking the {@link
	* AsynchronousChannelProvider#openAsynchronousChannelGroup(ExecutorService,int)
	* openAsynchronousChannelGroup(ExecutorService,int)} method of the system-wide
	* default {@link AsynchronousChannelProvider} object.
	*
	* @param   executor
	*          The thread pool for the resulting group
	* @param   initialSize
	*          A value {@code >=0} or a negative value for implementation
	*          specific default
	*
	* @return  A new asynchronous channel group
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see java.util.concurrent.Executors#newCachedThreadPool
	*/
	@:overload public static function withCachedThreadPool(executor : java.util.concurrent.ExecutorService, initialSize : Int) : java.nio.channels.AsynchronousChannelGroup;
	
	/**
	* Creates an asynchronous channel group with a given thread pool.
	*
	* <p> The {@code executor} parameter is an {@code ExecutorService} that
	* executes tasks submitted to dispatch completion results for operations
	* initiated on asynchronous channels in the group.
	*
	* <p> Care should be taken when configuring the executor service. It
	* should support <em>direct handoff</em> or <em>unbounded queuing</em> of
	* submitted tasks, and the thread that invokes the {@link
	* ExecutorService#execute execute} method should never invoke the task
	* directly. An implementation may mandate additional constraints.
	*
	* <p> The executor is intended to be used exclusively by the resulting
	* asynchronous channel group. Termination of the group results in the
	* orderly  {@link ExecutorService#shutdown shutdown} of the executor
	* service. Shutting down the executor service by other means results in
	* unspecified behavior.
	*
	* <p> The group is created by invoking the {@link
	* AsynchronousChannelProvider#openAsynchronousChannelGroup(ExecutorService,int)
	* openAsynchronousChannelGroup(ExecutorService,int)} method of the system-wide
	* default {@link AsynchronousChannelProvider} object with an {@code
	* initialSize} of {@code 0}.
	*
	* @param   executor
	*          The thread pool for the resulting group
	*
	* @return  A new asynchronous channel group
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public static function withThreadPool(executor : java.util.concurrent.ExecutorService) : java.nio.channels.AsynchronousChannelGroup;
	
	/**
	* Tells whether or not this asynchronous channel group is shutdown.
	*
	* @return  {@code true} if this asynchronous channel group is shutdown or
	*          has been marked for shutdown.
	*/
	@:overload @:abstract public function isShutdown() : Bool;
	
	/**
	* Tells whether or not this group has terminated.
	*
	* <p> Where this method returns {@code true}, then the associated thread
	* pool has also {@link ExecutorService#isTerminated terminated}.
	*
	* @return  {@code true} if this group has terminated
	*/
	@:overload @:abstract public function isTerminated() : Bool;
	
	/**
	* Initiates an orderly shutdown of the group.
	*
	* <p> This method marks the group as shutdown. Further attempts to construct
	* channel that binds to this group will throw {@link ShutdownChannelGroupException}.
	* The group terminates when all asynchronous channels in the group are
	* closed, all actively executing completion handlers have run to completion,
	* and all resources have been released. This method has no effect if the
	* group is already shutdown.
	*/
	@:overload @:abstract public function shutdown() : Void;
	
	/**
	* Shuts down the group and closes all open channels in the group.
	*
	* <p> In addition to the actions performed by the {@link #shutdown() shutdown}
	* method, this method invokes the {@link AsynchronousChannel#close close}
	* method on all open channels in the group. This method does not attempt to
	* stop or interrupt threads that are executing completion handlers. The
	* group terminates when all actively executing completion handlers have run
	* to completion and all resources have been released. This method may be
	* invoked at any time. If some other thread has already invoked it, then
	* another invocation will block until the first invocation is complete,
	* after which it will return without effect.
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:abstract public function shutdownNow() : Void;
	
	/**
	* Awaits termination of the group.

	* <p> This method blocks until the group has terminated, or the timeout
	* occurs, or the current thread is interrupted, whichever happens first.
	*
	* @param   timeout
	*          The maximum time to wait, or zero or less to not wait
	* @param   unit
	*          The time unit of the timeout argument
	*
	* @return  {@code true} if the group has terminated; {@code false} if the
	*          timeout elapsed before termination
	*
	* @throws  InterruptedException
	*          If interrupted while waiting
	*/
	@:overload @:abstract public function awaitTermination(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	
}
