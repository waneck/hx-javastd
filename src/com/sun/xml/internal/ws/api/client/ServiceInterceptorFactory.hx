package com.sun.xml.internal.ws.api.client;
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
extern class ServiceInterceptorFactory
{
	/**
	* Creates {@link ServiceInterceptor}.
	*
	* <p>
	* Code that wishes to inject {@link ServiceInterceptor} into {@link WSService}
	* must implement this class. There are two ways to have the JAX-WS RI
	* recognize your {@link ServiceInterceptor}s.
	*
	* <h3>Use {@link ServiceFinder}</h3>
	* <p>
	* {@link ServiceInterceptorFactory}s discovered via {@link ServiceFinder}
	* will be incorporated to all {@link WSService} instances.
	*
	* <h3>Register per-thread</h3>
	*
	*
	* @author Kohsuke Kawaguchi
	* @see ServiceInterceptor
	* @see 2.1 EA3
	*/
	@:overload @:public @:abstract public function create(service : com.sun.xml.internal.ws.api.WSService) : com.sun.xml.internal.ws.api.client.ServiceInterceptor;
	
	/**
	* Loads all {@link ServiceInterceptor}s and return aggregated one.
	*/
	@:overload @:public @:static public static function load(service : com.sun.xml.internal.ws.api.WSService, cl : java.lang.ClassLoader) : com.sun.xml.internal.ws.api.client.ServiceInterceptor;
	
	/**
	* Registers {@link ServiceInterceptorFactory} for this thread.
	*
	* <p>
	* Once registered, {@link ServiceInterceptorFactory}s are consulted for every
	* {@link Service} created in this thread, until it gets unregistered.
	*/
	@:overload @:public @:static public static function registerForThread(factory : com.sun.xml.internal.ws.api.client.ServiceInterceptorFactory) : Bool;
	
	/**
	* Removes previously registered {@link ServiceInterceptorFactory} for this thread.
	*/
	@:overload @:public @:static public static function unregisterForThread(factory : com.sun.xml.internal.ws.api.client.ServiceInterceptorFactory) : Bool;
	
	
}
