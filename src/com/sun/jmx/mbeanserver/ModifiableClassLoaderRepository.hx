package com.sun.jmx.mbeanserver;
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
//// JMX import
extern interface ModifiableClassLoaderRepository extends javax.management.loading.ClassLoaderRepository
{
	/**
	* Add an anonymous ClassLoader to the repository.
	**/
	@:overload public function addClassLoader(loader : java.lang.ClassLoader) : Void;
	
	/**
	* Remove the specified ClassLoader to the repository.
	* The class loader may or may not be anonymous.
	**/
	@:overload public function removeClassLoader(loader : java.lang.ClassLoader) : Void;
	
	/**
	* Add a named ClassLoader to the repository.
	**/
	@:overload public function addClassLoader(name : javax.management.ObjectName, loader : java.lang.ClassLoader) : Void;
	
	/**
	* Remove a named ClassLoader from the repository.
	**/
	@:overload public function removeClassLoader(name : javax.management.ObjectName) : Void;
	
	/**
	* Get a named ClassLoader from the repository.
	**/
	@:overload public function getClassLoader(name : javax.management.ObjectName) : java.lang.ClassLoader;
	
	
}
