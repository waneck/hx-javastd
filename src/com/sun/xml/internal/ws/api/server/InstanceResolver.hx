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
extern class InstanceResolver<T>
{
	/**
	* Decides which instance of 'T' serves the given request message.
	*
	* <p>
	* This method is called concurrently by multiple threads.
	* It is also on a criticail path that affects the performance.
	* A good implementation should try to avoid any synchronization,
	* and should minimize the amount of work as much as possible.
	*
	* @param request
	*      Always non-null. Represents the request message to be served.
	*      The caller may not consume the {@link Message}.
	*/
	@:overload @:abstract public function resolve(request : com.sun.xml.internal.ws.api.message.Packet) : T;
	
	/**
	* Called by the default {@link Invoker} after the method call is done.
	* This gives {@link InstanceResolver} a chance to do clean up.
	*
	* <p>
	* Alternatively, one could override {@link #createInvoker()} to
	* create a custom invoker to do this in more flexible way.
	*
	* <p>
	* The default implementation is a no-op.
	*
	* @param request
	*      The same request packet given to {@link #resolve(Packet)} method.
	* @param servant
	*      The object returned from the {@link #resolve(Packet)} method.
	* @since 2.1.2
	*/
	@:require(java1) @:overload public function postInvoke(request : com.sun.xml.internal.ws.api.message.Packet, servant : T) : Void;
	
	/**
	* Called by {@link WSEndpoint} when it's set up.
	*
	* <p>
	* This is an opportunity for {@link InstanceResolver}
	* to do a endpoint-specific initialization process.
	*
	* @param wsc
	*      The {@link WebServiceContext} instance to be injected
	*      to the user instances (assuming {@link InstanceResolver}
	*/
	@:overload public function start(wsc : com.sun.xml.internal.ws.api.server.WSWebServiceContext, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	/**
	* @deprecated
	*      Use {@link #start(WSWebServiceContext,WSEndpoint)}.
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
	* Creates a {@link InstanceResolver} implementation that always
	* returns the specified singleton instance.
	*/
	@:overload public static function createSingleton<T>(singleton : T) : com.sun.xml.internal.ws.api.server.InstanceResolver<T>;
	
	/**
	* @deprecated
	*      This is added here because a Glassfish integration happened
	*      with this signature. Please do not use this. Will be removed
	*      after the next GF integration.
	*/
	@:overload public static function createDefault<T>(clazz : Class<T>, bool : Bool) : com.sun.xml.internal.ws.api.server.InstanceResolver<T>;
	
	/**
	* Creates a default {@link InstanceResolver} that serves the given class.
	*/
	@:overload public static function createDefault<T>(clazz : Class<T>) : com.sun.xml.internal.ws.api.server.InstanceResolver<T>;
	
	/**
	* Checks for {@link InstanceResolverAnnotation} and creates an instance resolver from it if any.
	* Otherwise null.
	*/
	@:overload public static function createFromInstanceResolverAnnotation<T>(clazz : Class<T>) : com.sun.xml.internal.ws.api.server.InstanceResolver<T>;
	
	@:overload private static function createNewInstance<T>(cl : Class<T>) : T;
	
	/**
	* Wraps this {@link InstanceResolver} into an {@link Invoker}.
	*/
	@:overload public function createInvoker() : com.sun.xml.internal.ws.api.server.Invoker;
	
	
}
