package com.sun.xml.internal.ws.api.pipe;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Engine
{
	@:public @:final public var id(default, null) : String;
	
	@:overload @:public public function new(id : String, threadPool : java.util.concurrent.Executor) : Void;
	
	@:overload @:public public function new(id : String) : Void;
	
	@:overload @:public public function setExecutor(threadPool : java.util.concurrent.Executor) : Void;
	
	/**
	* Creates a new fiber in a suspended state.
	*
	* <p>
	* To start the returned fiber, call {@link Fiber#start(Tube,Packet,Fiber.CompletionCallback)}.
	* It will start executing the given {@link Tube} with the given {@link Packet}.
	*
	* @return new Fiber
	*/
	@:overload @:public public function createFiber() : com.sun.xml.internal.ws.api.pipe.Fiber;
	
	
}
@:native('com$sun$xml$internal$ws$api$pipe$Engine$DaemonThreadFactory') @:internal extern class Engine_DaemonThreadFactory implements java.util.concurrent.ThreadFactory
{
	@:overload @:public public function newThread(r : java.lang.Runnable) : java.lang.Thread;
	
	
}
