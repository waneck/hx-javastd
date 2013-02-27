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
extern class ThreadPoolManagerImpl implements com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager
{
	@:overload public function new() : Void;
	
	@:overload public function close() : Void;
	
	/**
	* This method will return an instance of the threadpool given a threadpoolId,
	* that can be used by any component in the app. server.
	*
	* @throws NoSuchThreadPoolException thrown when invalid threadpoolId is passed
	* as a parameter
	*/
	@:overload public function getThreadPool(threadpoolId : String) : com.sun.corba.se.spi.orbutil.threadpool.ThreadPool;
	
	/**
	* This method will return an instance of the threadpool given a numeric threadpoolId.
	* This method will be used by the ORB to support the functionality of
	* dedicated threadpool for EJB beans
	*
	* @throws NoSuchThreadPoolException thrown when invalidnumericIdForThreadpool is passed
	* as a parameter
	*/
	@:overload public function getThreadPool(numericIdForThreadpool : Int) : com.sun.corba.se.spi.orbutil.threadpool.ThreadPool;
	
	/**
	* This method is used to return the numeric id of the threadpool, given a String
	* threadpoolId. This is used by the POA interceptors to add the numeric threadpool
	* Id, as a tagged component in the IOR. This is used to provide the functionality of
	* dedicated threadpool for EJB beans
	*/
	@:overload public function getThreadPoolNumericId(threadpoolId : String) : Int;
	
	/**
	* Return a String Id for a numericId of a threadpool managed by the threadpool
	* manager
	*/
	@:overload public function getThreadPoolStringId(numericIdForThreadpool : Int) : String;
	
	/**
	* Returns the first instance of ThreadPool in the ThreadPoolManager
	*/
	@:overload public function getDefaultThreadPool() : com.sun.corba.se.spi.orbutil.threadpool.ThreadPool;
	
	/**
	* Return an instance of ThreadPoolChooser based on the componentId that was
	* passed as argument
	*/
	@:overload public function getThreadPoolChooser(componentId : String) : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolChooser;
	
	/**
	* Return an instance of ThreadPoolChooser based on the componentIndex that was
	* passed as argument. This is added for improved performance so that the caller
	* does not have to pay the cost of computing hashcode for the componentId
	*/
	@:overload public function getThreadPoolChooser(componentIndex : Int) : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolChooser;
	
	/**
	* Sets a ThreadPoolChooser for a particular componentId in the ThreadPoolManager. This
	* would enable any component to add a ThreadPoolChooser for their specific use
	*/
	@:overload public function setThreadPoolChooser(componentId : String, aThreadPoolChooser : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolChooser) : Void;
	
	/**
	* Gets the numeric index associated with the componentId specified for a
	* ThreadPoolChooser. This method would help the component call the more
	* efficient implementation i.e. getThreadPoolChooser(int componentIndex)
	*/
	@:overload public function getThreadPoolChooserNumericId(componentId : String) : Int;
	
	
}
