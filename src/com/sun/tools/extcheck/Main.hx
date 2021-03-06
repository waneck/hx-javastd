package com.sun.tools.extcheck;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* Main program of extcheck
*/
extern class Main
{
	@:public @:static @:final public static var INSUFFICIENT(default, null) : String;
	
	@:public @:static @:final public static var MISSING(default, null) : String;
	
	@:public @:static @:final public static var DOES_NOT_EXIST(default, null) : String;
	
	@:public @:static @:final public static var EXTRA(default, null) : String;
	
	/**
	* Terminates with one of the following codes
	*  1 A newer (or same version) jar file is already installed
	*  0 No newer jar file was found
	*  -1 An internal error occurred
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	@:overload @:public @:static public static function realMain(args : java.NativeArray<String>) : Void;
	
	
}
