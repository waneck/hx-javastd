package com.sun.jmx.interceptor;
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
extern interface MBeanServerInterceptor extends javax.management.MBeanServer
{
	/**
	* This method should never be called.
	* Usually hrows UnsupportedOperationException.
	*/
	@:overload public function instantiate(className : String) : Dynamic;
	
	/**
	* This method should never be called.
	* Usually throws UnsupportedOperationException.
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName) : Dynamic;
	
	/**
	* This method should never be called.
	* Usually throws UnsupportedOperationException.
	*/
	@:overload public function instantiate(className : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* This method should never be called.
	* Usually throws UnsupportedOperationException.
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* This method should never be called.
	* Usually throws UnsupportedOperationException.
	*/
	@:overload public function deserialize(name : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* This method should never be called.
	* Usually throws UnsupportedOperationException.
	*/
	@:overload public function deserialize(className : String, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* This method should never be called.
	* Usually hrows UnsupportedOperationException.
	*/
	@:overload public function deserialize(className : String, loaderName : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* This method should never be called.
	* Usually throws UnsupportedOperationException.
	*/
	@:overload public function getClassLoaderRepository() : javax.management.loading.ClassLoaderRepository;
	
	
}
