package com.sun.jmx.snmp.tasks;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class implements a {@link com.sun.jmx.snmp.tasks.TaskServer} over
* a thread pool.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
**/
extern class ThreadService implements com.sun.jmx.snmp.tasks.TaskServer.TaskServer
{
	@:overload public function new(threadNumber : Int) : Void;
	
	/**
	* Submit a task to be executed.
	* Once a task is submitted, it is guaranteed that either
	* {@link com.sun.jmx.snmp.tasks.Task#run() task.run()} or
	* {@link com.sun.jmx.snmp.tasks.Task#cancel() task.cancel()} will be called.
	* This implementation of TaskServer uses a thread pool to execute
	* the submitted tasks.
	* @param task The task to be executed.
	* @exception IllegalArgumentException if the submitted task is null.
	**/
	@:overload public function submitTask(task : com.sun.jmx.snmp.tasks.Task.Task) : Void;
	
	/**
	* Submit a task to be executed.
	* This implementation of TaskServer uses a thread pool to execute
	* the submitted tasks.
	* @param task The task to be executed.
	* @exception IllegalArgumentException if the submitted task is null.
	**/
	@:overload public function submitTask(task : java.lang.Runnable.Runnable) : Void;
	
	@:overload public function removeTask(task : java.lang.Runnable.Runnable) : java.lang.Runnable.Runnable;
	
	@:overload public function removeAll() : Void;
	
	@:overload public function terminate() : Void;
	
	
}
@:native('com$sun$jmx$snmp$tasks$ThreadService$ExecutorThread') @:internal extern class ThreadService_ExecutorThread extends java.lang.Thread.Thread
{
	@:overload public function new() : Void;
	
	@:overload override public function run() : Void;
	
	
}
