package com.sun.corba.se.impl.util;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class JDKBridge
{
	/**
	* Get local codebase System property (java.rmi.server.codebase).
	* May be null or a space separated array of URLS.
	*/
	@:overload @:public @:static public static function getLocalCodebase() : String;
	
	/**
	* Return true if the system property "java.rmi.server.useCodebaseOnly"
	* is set, false otherwise.
	*/
	@:overload @:public @:static public static function useCodebaseOnly() : Bool;
	
	/**
	* Returns a class instance for the specified class.
	* @param className the name of the class
	* @param remoteCodebase a space-separated array of urls at which
	* the class might be found. May be null.
	* @param loader a ClassLoader who may be used to
	* load the class if all other methods fail.
	* @return the <code>Class</code> object representing the loaded class.
	* @exception throws ClassNotFoundException if class cannot be loaded.
	*/
	@:overload @:public @:static public static function loadClass(className : String, remoteCodebase : String, loader : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* Returns a class instance for the specified class.
	* @param className the name of the class
	* @param remoteCodebase a space-separated array of urls at which
	* the class might be found. May be null.
	* @return the <code>Class</code> object representing the loaded class.
	* @exception throws ClassNotFoundException if class cannot be loaded.
	*/
	@:overload @:public @:static public static function loadClass(className : String, remoteCodebase : String) : Class<Dynamic>;
	
	/**
	* Returns a class instance for the specified class.
	* @param className the name of the class
	* @return the <code>Class</code> object representing the loaded class.
	* @exception throws ClassNotFoundException if class cannot be loaded.
	*/
	@:overload @:public @:static public static function loadClass(className : String) : Class<Dynamic>;
	
	@:overload @:public @:static @:final public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Set the codebase and useCodebaseOnly properties. This is public
	* only for test code.
	*/
	@:overload @:public @:static @:synchronized public static function setCodebaseProperties() : Void;
	
	/**
	* Set the default code base. This method is here only
	* for test code.
	*/
	@:overload @:public @:static @:synchronized public static function setLocalCodebase(codebase : String) : Void;
	
	
}
