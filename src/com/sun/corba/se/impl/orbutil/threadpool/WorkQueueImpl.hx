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
extern class WorkQueueImpl implements com.sun.corba.se.spi.orbutil.threadpool.WorkQueue
{
	@:overload public function new() : Void;
	
	@:overload public function new(workerThreadPool : com.sun.corba.se.spi.orbutil.threadpool.ThreadPool) : Void;
	
	@:overload public function new(workerThreadPool : com.sun.corba.se.spi.orbutil.threadpool.ThreadPool, name : String) : Void;
	
	@:overload @:synchronized public function addWork(work : com.sun.corba.se.spi.orbutil.threadpool.Work) : Void;
	
	@:overload public function setThreadPool(workerThreadPool : com.sun.corba.se.spi.orbutil.threadpool.ThreadPool) : Void;
	
	@:overload public function getThreadPool() : com.sun.corba.se.spi.orbutil.threadpool.ThreadPool;
	
	/**
	* Returns the total number of Work items added to the Queue.
	* This method is unsynchronized and only gives a snapshot of the
	* state when it is called
	*/
	@:overload public function totalWorkItemsAdded() : haxe.Int64;
	
	/**
	* Returns the total number of Work items in the Queue to be processed
	* This method is unsynchronized and only gives a snapshot of the
	* state when it is called
	*/
	@:overload public function workItemsInQueue() : Int;
	
	@:overload @:synchronized public function averageTimeInQueue() : haxe.Int64;
	
	@:overload public function getName() : String;
	
	
}
