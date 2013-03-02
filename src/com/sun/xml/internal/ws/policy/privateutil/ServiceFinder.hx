package com.sun.xml.internal.ws.policy.privateutil;
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
@:internal extern class ServiceFinder<T> implements java.lang.Iterable<T>
{
	/**
	* Locates and incrementally instantiates the available providers of a
	* given service using the context class loader.  This convenience method
	* is equivalent to
	* <p/>
	* <pre>
	*   ClassLoader cl = Thread.currentThread().getContextClassLoader();
	*   return Service.providers(service, cl);
	* </pre>
	*
	* @param service The service's abstract service class
	*
	* @throws ServiceConfigurationError If a provider-configuration file violates the specified format
	*                                   or names a provider class that cannot be found and instantiated
	* @see #find(Class, ClassLoader)
	*/
	@:overload public static function find<T>(service : Class<T>) : com.sun.xml.internal.ws.policy.privateutil.ServiceFinder<T>;
	
	/**
	* Returns discovered objects incrementally.
	*
	* @return An <tt>Iterator</tt> that yields provider objects for the given
	*         service, in some arbitrary order.  The iterator will throw a
	*         <tt>ServiceConfigurationError</tt> if a provider-configuration
	*         file violates the specified format or if a provider class cannot
	*         be found and instantiated.
	*/
	@:overload public function iterator() : java.util.Iterator<T>;
	
	/**
	* Returns discovered objects all at once.
	*
	* @return
	*      can be empty but never null.
	*
	* @throws ServiceConfigurationError
	*/
	@:overload public function toArray() : java.NativeArray<T>;
	
	
}
/**
* Private inner class implementing fully-lazy provider lookup
*/
@:native('com$sun$xml$internal$ws$policy$privateutil$ServiceFinder$LazyIterator') @:internal extern class ServiceFinder_LazyIterator<T> implements java.util.Iterator<T>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : T;
	
	@:overload public function remove() : Void;
	
	
}
