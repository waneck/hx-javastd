package com.sun.xml.internal.ws.util;
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
extern class ServiceFinder<T> implements java.lang.Iterable<T>
{
	/**
	* Locates and incrementally instantiates the available providers of a
	* given service using the given class loader.
	* <p/>
	* <p> This method transforms the name of the given service class into a
	* provider-configuration filename as described above and then uses the
	* <tt>getResources</tt> method of the given class loader to find all
	* available files with that name.  These files are then read and parsed to
	* produce a list of provider-class names.  The iterator that is returned
	* uses the given class loader to lookup and then instantiate each element
	* of the list.
	* <p/>
	* <p> Because it is possible for extensions to be installed into a running
	* Java virtual machine, this method may return different results each time
	* it is invoked. <p>
	*
	* @param service The service's abstract service class
	* @param loader  The class loader to be used to load provider-configuration files
	*                and instantiate provider classes, or <tt>null</tt> if the system
	*                class loader (or, failing that the bootstrap class loader) is to
	*                be used
	* @throws ServiceConfigurationError If a provider-configuration file violates the specified format
	*                                   or names a provider class that cannot be found and instantiated
	* @see #find(Class)
	*/
	@:overload @:public @:static public static function find<T>(service : Class<T>, loader : java.lang.ClassLoader) : com.sun.xml.internal.ws.util.ServiceFinder<T>;
	
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
	@:overload @:public @:static public static function find<T>(service : Class<T>) : com.sun.xml.internal.ws.util.ServiceFinder<T>;
	
	/**
	* Returns discovered objects incrementally.
	*
	* @return An <tt>Iterator</tt> that yields provider objects for the given
	*         service, in some arbitrary order.  The iterator will throw a
	*         <tt>ServiceConfigurationError</tt> if a provider-configuration
	*         file violates the specified format or if a provider class cannot
	*         be found and instantiated.
	*/
	@:overload @:public public function iterator() : java.util.Iterator<T>;
	
	/**
	* Returns discovered objects all at once.
	*
	* @return
	*      can be empty but never null.
	*
	* @throws ServiceConfigurationError
	*/
	@:overload @:public public function toArray() : java.NativeArray<T>;
	
	
}
/**
* Private inner class implementing fully-lazy provider lookup
*/
@:native('com$sun$xml$internal$ws$util$ServiceFinder$LazyIterator') @:internal extern class ServiceFinder_LazyIterator<T> implements java.util.Iterator<T>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : T;
	
	@:overload @:public public function remove() : Void;
	
	
}
