package com.sun.xml.internal.ws.api.server;
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
extern class Invoker
{
	/**
	* Called by {@link WSEndpoint} when it's set up.
	*
	* <p>
	* This is an opportunity for {@link Invoker}
	* to do a endpoint-specific initialization process.
	*
	* @param wsc
	*      The {@link WebServiceContext} instance that can be injected
	*      to the user instances.
	* @param endpoint
	*/
	@:overload public function start(wsc : com.sun.xml.internal.ws.api.server.WSWebServiceContext, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	/**
	* @deprecated
	*      Use {@link #start(WSWebServiceContext,WSEndpoint)}
	*/
	@:overload public function start(wsc : javax.xml.ws.WebServiceContext) : Void;
	
	/**
	* Called by {@link WSEndpoint}
	* when {@link WSEndpoint#dispose()} is called.
	*
	* This allows {@link InstanceResolver} to do final clean up.
	*
	* <p>
	* This method is guaranteed to be only called once by {@link WSEndpoint}.
	*/
	@:overload public function dispose() : Void;
	
	/**
	*
	*/
	@:overload @:abstract public function invoke(p : com.sun.xml.internal.ws.api.message.Packet, m : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	/**
	* Invokes {@link Provider#invoke(Object)}
	*/
	@:overload public function invokeProvider<T>(p : com.sun.xml.internal.ws.api.message.Packet, arg : T) : T;
	
	/**
	* Invokes {@link AsyncProvider#invoke(Object, AsyncProviderCallback, WebServiceContext)}
	*/
	@:overload public function invokeAsyncProvider<T>(p : com.sun.xml.internal.ws.api.message.Packet, arg : T, cbak : com.sun.xml.internal.ws.api.server.AsyncProviderCallback<Dynamic>, ctxt : javax.xml.ws.WebServiceContext) : Void;
	
	
}
