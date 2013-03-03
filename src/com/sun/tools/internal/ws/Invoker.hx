package com.sun.tools.internal.ws;
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
	* Returns true if the RI appears to be loading the JAX-WS 2.1 API.
	*/
	@:overload @:public @:static public static function checkIfLoading21API() : Bool;
	
	/**
	* Returns true if the RI appears to be loading the JAX-WS 2.2 API.
	*/
	@:overload @:public @:static public static function checkIfLoading22API() : Bool;
	
	/**
	* Creates a classloader that can load JAXB/WS 2.2 API and tools.jar,
	* and then return a classloader that can RI classes, which can see all those APIs and tools.jar.
	*/
	@:overload @:public @:static public static function createClassLoader(cl : java.lang.ClassLoader) : java.lang.ClassLoader;
	
	/**
	* The list of package prefixes we want the
	* {@link MaskingClassLoader} to prevent the parent
	* classLoader from loading
	*/
	@:public @:static public static var maskedPackages : java.NativeArray<String>;
	
	/**
	* Escape hatch to work around IBM JDK problem.
	* See http://www-128.ibm.com/developerworks/forums/dw_thread.jsp?nav=false&forum=367&thread=164718&cat=10
	*/
	@:public @:static public static var noSystemProxies : Bool;
	
	
}
