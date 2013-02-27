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
extern class ForkJoinWorkerThread extends java.lang.Thread
{
	/**
	* Creates a ForkJoinWorkerThread operating in the given pool.
	*
	* @param pool the pool this thread works in
	* @throws NullPointerException if pool is null
	*/
	@:overload private function new(pool : java.util.concurrent.ForkJoinPool) : Void;
	
	/**
	* Returns the pool hosting this thread.
	*
	* @return the pool
	*/
	@:overload public function getPool() : java.util.concurrent.ForkJoinPool;
	
	/**
	* Returns the index number of this thread in its pool.  The
	* returned value ranges from zero to the maximum number of
	* threads (minus one) that have ever been created in the pool.
	* This method may be useful for applications that track status or
	* collect results per-worker rather than per-task.
	*
	* @return the index number
	*/
	@:overload public function getPoolIndex() : Int;
	
	/**
	* Initializes internal state after construction but before
	* processing any tasks. If you override this method, you must
	* invoke {@code super.onStart()} at the beginning of the method.
	* Initialization requires care: Most fields must have legal
	* default values, to ensure that attempted accesses from other
	* threads work correctly even before this thread starts
	* processing tasks.
	*/
	@:overload private function onStart() : Void;
	
	/**
	* Performs cleanup associated with termination of this worker
	* thread.  If you override this method, you must invoke
	* {@code super.onTermination} at the end of the overridden method.
	*
	* @param exception the exception causing this thread to abort due
	* to an unrecoverable error, or {@code null} if completed normally
	*/
	@:overload private function onTermination(exception : java.lang.Throwable) : Void;
	
	/**
	* This method is required to be public, but should never be
	* called explicitly. It performs the main run loop to execute
	* {@link ForkJoinTask}s.
	*/
	@:overload override public function run() : Void;
	
	
}
