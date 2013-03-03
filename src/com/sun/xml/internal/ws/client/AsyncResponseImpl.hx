package com.sun.xml.internal.ws.client;
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
extern class AsyncResponseImpl<T> extends java.util.concurrent.FutureTask<T> implements javax.xml.ws.Response<T> implements com.sun.xml.internal.ws.client.ResponseContextReceiver
{
	/**
	*
	* @param runnable
	*      This {@link Runnable} is executed asynchronously.
	* @param handler
	*      Optional {@link AsyncHandler} to invoke at the end
	*      of the processing. Can be null.
	*/
	@:overload @:public public function new(runnable : java.lang.Runnable, handler : javax.xml.ws.AsyncHandler<T>) : Void;
	
	@:overload @:public override public function run() : Void;
	
	@:overload @:public public function getContext() : com.sun.xml.internal.ws.client.ResponseContext;
	
	@:overload @:public public function setResponseContext(rc : com.sun.xml.internal.ws.client.ResponseContext) : Void;
	
	@:overload @:public public function set(v : T, t : java.lang.Throwable) : Void;
	
	
}
