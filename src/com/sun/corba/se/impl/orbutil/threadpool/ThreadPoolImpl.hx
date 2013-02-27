package com.sun.corba.se.impl.orbutil.threadpool;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ThreadPoolImpl implements com.sun.corba.se.spi.orbutil.threadpool.ThreadPool
{
	/**
	* This constructor is used to create an unbounded threadpool
	*/
	@:overload public function new(tg : java.lang.ThreadGroup, threadpoolName : String) : Void;
	
	/**
	* This constructor is used to create an unbounded threadpool
	* in the ThreadGroup of the current thread
	*/
	@:overload public function new(threadpoolName : String) : Void;
	
	/**
	* This constructor is used to create bounded threadpool
	*/
	@:overload public function new(minSize : Int, maxSize : Int, timeout : haxe.Int64, threadpoolName : String) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getAnyWorkQueue() : com.sun.corba.se.spi.orbutil.threadpool.WorkQueue;
	
	@:overload public function getWorkQueue(queueId : Int) : com.sun.corba.se.spi.orbutil.threadpool.WorkQueue;
	
	@:overload public function minimumNumberOfThreads() : Int;
	
	@:overload public function maximumNumberOfThreads() : Int;
	
	@:overload public function idleTimeoutForThreads() : haxe.Int64;
	
	@:overload public function currentNumberOfThreads() : Int;
	
	@:overload public function numberOfAvailableThreads() : Int;
	
	@:overload public function numberOfBusyThreads() : Int;
	
	@:overload public function averageWorkCompletionTime() : haxe.Int64;
	
	@:overload public function currentProcessedCount() : haxe.Int64;
	
	@:overload public function getName() : String;
	
	/**
	* This method will return the number of WorkQueues serviced by the threadpool.
	*/
	@:overload public function numberOfWorkQueues() : Int;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$threadpool$ThreadPoolImpl$WorkerThread') @:internal extern class ThreadPoolImpl_WorkerThread extends java.lang.Thread implements java.io.Closeable
{
	@:overload @:synchronized public function close() : Void;
	
	@:overload override public function run() : Void;
	
	
}
