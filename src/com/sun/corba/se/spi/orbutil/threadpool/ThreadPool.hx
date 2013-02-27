package com.sun.corba.se.spi.orbutil.threadpool;
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
extern interface ThreadPool extends java.io.Closeable
{
	/**
	* This method will return any instance of the WorkQueue. If the ThreadPool
	* instance only services one WorkQueue then that WorkQueue instance will
	* be returned. If there are more than one WorkQueues serviced by this
	* ThreadPool, then this method would return a WorkQueue based on the
	* implementation of the class that implements this interface. For PE 8.0 we
	* would return a WorkQueue in a roundrobin fashion everytime this method
	* is called. In the future we could allow pluggability of  Policy objects for this.
	*/
	@:overload public function getAnyWorkQueue() : com.sun.corba.se.spi.orbutil.threadpool.WorkQueue;
	
	/**
	* This method will return an instance of the of the WorkQueue given a queueId.
	* This will be useful in situations where there are more than one WorkQueues
	* managed by the ThreadPool and the user of the ThreadPool wants to always use
	* the same WorkQueue for doing the Work.
	* If the number of WorkQueues in the ThreadPool are 10, then queueIds will go
	* from 0-9
	*
	* @throws NoSuchWorkQueueException thrown when queueId passed is invalid
	*/
	@:overload public function getWorkQueue(queueId : Int) : com.sun.corba.se.spi.orbutil.threadpool.WorkQueue;
	
	/**
	* This method will return the number of WorkQueues serviced by the threadpool.
	*/
	@:overload public function numberOfWorkQueues() : Int;
	
	/**
	* This method will return the minimum number of threads maintained by the threadpool.
	*/
	@:overload public function minimumNumberOfThreads() : Int;
	
	/**
	* This method will return the maximum number of threads in the threadpool at any
	* point in time, for the life of the threadpool
	*/
	@:overload public function maximumNumberOfThreads() : Int;
	
	/**
	* This method will return the time in milliseconds when idle threads in the threadpool are
	* removed.
	*/
	@:overload public function idleTimeoutForThreads() : haxe.Int64;
	
	/**
	* This method will return the current number of threads in the threadpool. This method
	* returns a value which is not synchronized.
	*/
	@:overload public function currentNumberOfThreads() : Int;
	
	/**
	* This method will return the number of available threads in the threadpool which are
	* waiting for work. This method returns a value which is not synchronized.
	*/
	@:overload public function numberOfAvailableThreads() : Int;
	
	/**
	* This method will return the number of busy threads in the threadpool
	* This method returns a value which is not synchronized.
	*/
	@:overload public function numberOfBusyThreads() : Int;
	
	/**
	* This method returns the number of Work items processed by the threadpool
	*/
	@:overload public function currentProcessedCount() : haxe.Int64;
	
	/**
	* This method returns the average elapsed time taken to complete a Work
	* item.
	*/
	@:overload public function averageWorkCompletionTime() : haxe.Int64;
	
	/**
	* This method will return the name of the threadpool.
	*/
	@:overload public function getName() : String;
	
	
}
