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
* A cancellable asynchronous computation.  This class provides a base
* implementation of {@link Future}, with methods to start and cancel
* a computation, query to see if the computation is complete, and
* retrieve the result of the computation.  The result can only be
* retrieved when the computation has completed; the <tt>get</tt>
* method will block if the computation has not yet completed.  Once
* the computation has completed, the computation cannot be restarted
* or cancelled.
*
* <p>A <tt>FutureTask</tt> can be used to wrap a {@link Callable} or
* {@link java.lang.Runnable} object.  Because <tt>FutureTask</tt>
* implements <tt>Runnable</tt>, a <tt>FutureTask</tt> can be
* submitted to an {@link Executor} for execution.
*
* <p>In addition to serving as a standalone class, this class provides
* <tt>protected</tt> functionality that may be useful when creating
* customized task classes.
*
* @since 1.5
* @author Doug Lea
* @param <V> The result type returned by this FutureTask's <tt>get</tt> method
*/
@:require(java5) extern class FutureTask<V> implements java.util.concurrent.RunnableFuture<V>
{
	/**
	* Creates a <tt>FutureTask</tt> that will, upon running, execute the
	* given <tt>Callable</tt>.
	*
	* @param  callable the callable task
	* @throws NullPointerException if callable is null
	*/
	@:overload @:public public function new(callable : java.util.concurrent.Callable<V>) : Void;
	
	/**
	* Creates a <tt>FutureTask</tt> that will, upon running, execute the
	* given <tt>Runnable</tt>, and arrange that <tt>get</tt> will return the
	* given result on successful completion.
	*
	* @param runnable the runnable task
	* @param result the result to return on successful completion. If
	* you don't need a particular result, consider using
	* constructions of the form:
	* {@code Future<?> f = new FutureTask<Void>(runnable, null)}
	* @throws NullPointerException if runnable is null
	*/
	@:overload @:public public function new(runnable : java.lang.Runnable, result : V) : Void;
	
	@:overload @:public public function isCancelled() : Bool;
	
	@:overload @:public public function isDone() : Bool;
	
	@:overload @:public public function cancel(mayInterruptIfRunning : Bool) : Bool;
	
	/**
	* @throws CancellationException {@inheritDoc}
	*/
	@:overload @:public public function get() : V;
	
	/**
	* @throws CancellationException {@inheritDoc}
	*/
	@:overload @:public public function get(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : V;
	
	/**
	* Protected method invoked when this task transitions to state
	* <tt>isDone</tt> (whether normally or via cancellation). The
	* default implementation does nothing.  Subclasses may override
	* this method to invoke completion callbacks or perform
	* bookkeeping. Note that you can query status inside the
	* implementation of this method to determine whether this task
	* has been cancelled.
	*/
	@:overload @:protected private function done() : Void;
	
	/**
	* Sets the result of this Future to the given value unless
	* this future has already been set or has been cancelled.
	* This method is invoked internally by the <tt>run</tt> method
	* upon successful completion of the computation.
	* @param v the value
	*/
	@:overload @:protected private function set(v : V) : Void;
	
	/**
	* Causes this future to report an <tt>ExecutionException</tt>
	* with the given throwable as its cause, unless this Future has
	* already been set or has been cancelled.
	* This method is invoked internally by the <tt>run</tt> method
	* upon failure of the computation.
	* @param t the cause of failure
	*/
	@:overload @:protected private function setException(t : java.lang.Throwable) : Void;
	
	/**
	* Sets this Future to the result of its computation
	* unless it has been cancelled.
	*/
	@:overload @:public public function run() : Void;
	
	/**
	* Executes the computation without setting its result, and then
	* resets this Future to initial state, failing to do so if the
	* computation encounters an exception or is cancelled.  This is
	* designed for use with tasks that intrinsically execute more
	* than once.
	* @return true if successfully run and reset
	*/
	@:overload @:protected private function runAndReset() : Bool;
	
	
}
/**
* Synchronization control for FutureTask. Note that this must be
* a non-static inner class in order to invoke the protected
* <tt>done</tt> method. For clarity, all inner class support
* methods are same as outer, prefixed with "inner".
*
* Uses AQS sync state to represent run status
*/
@:native('java$util$concurrent$FutureTask$Sync') @:internal extern class FutureTask_Sync extends java.util.concurrent.locks.AbstractQueuedSynchronizer
{
	/**
	* Implements AQS base acquire to succeed if ran or cancelled
	*/
	@:overload @:protected override private function tryAcquireShared(ignore : Int) : Int;
	
	/**
	* Implements AQS base release to always signal after setting
	* final done status by nulling runner thread.
	*/
	@:overload @:protected override private function tryReleaseShared(ignore : Int) : Bool;
	
	
}
