package javax.management.loading;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class PrivateMLet extends javax.management.loading.MLet implements javax.management.loading.PrivateClassLoader
{
	/**
	* Constructs a new PrivateMLet for the specified URLs using the
	* default delegation parent ClassLoader.  The URLs will be
	* searched in the order specified for classes and resources
	* after first searching in the parent class loader.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  delegateToCLR  True if, when a class is not found in
	* either the parent ClassLoader or the URLs, the MLet should delegate
	* to its containing MBeanServer's {@link ClassLoaderRepository}.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, delegateToCLR : Bool) : Void;
	
	/**
	* Constructs a new PrivateMLet for the given URLs. The URLs will
	* be searched in the order specified for classes and resources
	* after first searching in the specified parent class loader.
	* The parent argument will be used as the parent class loader
	* for delegation.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  parent The parent class loader for delegation.
	* @param  delegateToCLR  True if, when a class is not found in
	* either the parent ClassLoader or the URLs, the MLet should delegate
	* to its containing MBeanServer's {@link ClassLoaderRepository}.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader, delegateToCLR : Bool) : Void;
	
	/**
	* Constructs a new PrivateMLet for the specified URLs, parent
	* class loader, and URLStreamHandlerFactory. The parent argument
	* will be used as the parent class loader for delegation. The
	* factory argument will be used as the stream handler factory to
	* obtain protocol handlers when creating new URLs.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  parent The parent class loader for delegation.
	* @param  factory  The URLStreamHandlerFactory to use when creating URLs.
	* @param  delegateToCLR  True if, when a class is not found in
	* either the parent ClassLoader or the URLs, the MLet should delegate
	* to its containing MBeanServer's {@link ClassLoaderRepository}.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader, factory : java.net.URLStreamHandlerFactory, delegateToCLR : Bool) : Void;
	
	
}
