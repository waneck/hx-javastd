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
extern class VersionUtil
{
	/**
	* Provides some version utilities.
	*
	* @author JAX-WS Development Team
	*/
	@:overload @:public @:static public static function isVersion20(version : String) : Bool;
	
	/**
	* @param version
	* @return true if version is a 2.0 version
	*/
	@:overload @:public @:static public static function isValidVersion(version : String) : Bool;
	
	@:overload @:public @:static public static function getValidVersionString() : String;
	
	/**
	* BugFix# 4948171
	* Method getCanonicalVersion.
	*
	* Converts a given version to the format "a.b.c.d"
	* a - major version
	* b - minor version
	* c - minor minor version
	* d - patch version
	*
	* @return int[] Canonical version number
	*/
	@:overload @:public @:static public static function getCanonicalVersion(version : String) : java.NativeArray<Int>;
	
	/**
	*
	* @param version1
	* @param version2
	* @return -1, 0 or 1 based upon the comparison results
	* -1 if version1 is less than version2
	* 0 if version1 is equal to version2
	* 1 if version1 is greater than version2
	*/
	@:overload @:public @:static public static function compare(version1 : String, version2 : String) : Int;
	
	@:public @:static @:final public static var JAXWS_VERSION_20(default, null) : String;
	
	@:public @:static @:final public static var JAXWS_VERSION_DEFAULT(default, null) : String;
	
	
}
