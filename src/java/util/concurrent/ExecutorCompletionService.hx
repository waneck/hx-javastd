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
* A {@link CompletionService} that uses a supplied {@link Executor}
* to execute tasks.  This class arranges that submitted tasks are,
* upon completion, placed on a queue accessible using {@code take}.
* The class is lightweight enough to be suitable for transient use
* when processing groups of tasks.
*
* <p>
*
* <b>Usage Examples.</b>
*
* Suppose you have a set of solvers for a certain problem, each
* returning a value of some type {@code Result}, and would like to
* run them concurrently, processing the results of each of them that
* return a non-null value, in some method {@code use(Result r)}. You
* could write this as:
*
* <pre> {@code
* void solve(Executor e,
*            Collection<Callable<Result>> solvers)
*     throws InterruptedException, ExecutionException {
*     CompletionService<Result> ecs
*         = new ExecutorCompletionService<Result>(e);
*     for (Callable<Result> s : solvers)
*         ecs.submit(s);
*     int n = solvers.size();
*     for (int i = 0; i < n; ++i) {
*         Result r = ecs.take().get();
*         if (r != null)
*             use(r);
*     }
* }}</pre>
*
* Suppose instead that you would like to use the first non-null result
* of the set of tasks, ignoring any that encounter exceptions,
* and cancelling all other tasks when the first one is ready:
*
* <pre> {@code
* void solve(Executor e,
*            Collection<Callable<Result>> solvers)
*     throws InterruptedException {
*     CompletionService<Result> ecs
*         = new ExecutorCompletionService<Result>(e);
*     int n = solvers.size();
*     List<Future<Result>> futures
*         = new ArrayList<Future<Result>>(n);
*     Result result = null;
*     try {
*         for (Callable<Result> s : solvers)
*             futures.add(ecs.submit(s));
*         for (int i = 0; i < n; ++i) {
*             try {
*                 Result r = ecs.take().get();
*                 if (r != null) {
*                     result = r;
*                     break;
*                 }
*             } catch (ExecutionException ignore) {}
*         }
*     }
*     finally {
*         for (Future<Result> f : futures)
*             f.cancel(true);
*     }
*
*     if (result != null)
*         use(result);
* }}</pre>
*/
extern class ExecutorCompletionService<V> implements java.util.concurrent.CompletionService<V>
{
	/**
	* Creates an ExecutorCompletionService using the supplied
	* executor for base task execution and a
	* {@link LinkedBlockingQueue} as a completion queue.
	*
	* @param executor the executor to use
	* @throws NullPointerException if executor is {@code null}
	*/
	@:overload @:public public function new(executor : java.util.concurrent.Executor) : Void;
	
	/**
	* Creates an ExecutorCompletionService using the supplied
	* executor for base task execution and the supplied queue as its
	* completion queue.
	*
	* @param executor the executor to use
	* @param completionQueue the queue to use as the completion queue
	*        normally one dedicated for use by this service. This
	*        queue is treated as unbounded -- failed attempted
	*        {@code Queue.add} operations for completed taskes cause
	*        them not to be retrievable.
	* @throws NullPointerException if executor or completionQueue are {@code null}
	*/
	@:overload @:public public function new(executor : java.util.concurrent.Executor, completionQueue : java.util.concurrent.BlockingQueue<java.util.concurrent.Future<V>>) : Void;
	
	@:overload @:public public function submit(task : java.util.concurrent.Callable<V>) : java.util.concurrent.Future<V>;
	
	@:overload @:public public function submit(task : java.lang.Runnable, result : V) : java.util.concurrent.Future<V>;
	
	@:overload @:public public function take() : java.util.concurrent.Future<V>;
	
	@:overload @:public public function poll() : java.util.concurrent.Future<V>;
	
	@:overload @:public public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.util.concurrent.Future<V>;
	
	
}
/**
* FutureTask extension to enqueue upon completion
*/
@:native('java$util$concurrent$ExecutorCompletionService$QueueingFuture') @:internal extern class ExecutorCompletionService_QueueingFuture extends java.util.concurrent.FutureTask<java.lang.Void>
{
	@:overload @:protected override private function done() : Void;
	
	
}
