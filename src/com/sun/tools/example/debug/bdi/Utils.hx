package com.sun.tools.example.debug.bdi;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
////### does it belong here?
extern class Utils
{
	/**
	* Return the thread status description.
	*/
	@:overload public static function getStatus(thr : com.sun.jdi.ThreadReference) : String;
	
	/**
	* Return a description of an object.
	*/
	@:overload public static function description(ref : com.sun.jdi.ObjectReference) : String;
	
	/**
	* Convert a long to a hexadecimal string.
	*/
	@:overload public static function toHex(n : haxe.Int64) : String;
	
	/**
	* Convert hexadecimal strings to longs.
	*/
	@:overload public static function fromHex(hexStr : String) : haxe.Int64;
	
	/*
	* The next two methods are used by this class and by EventHandler
	* to print consistent locations and error messages.
	*/
	@:overload public static function locationString(loc : com.sun.jdi.Location) : String;
	
	/************************
	private String typedName(Method method) {
	// TO DO: Use method.signature() instead of method.arguments() so that
	// we get sensible results for classes without debugging info
	StringBuffer buf = new StringBuffer();
	buf.append(method.name());
	buf.append("(");
	Iterator it = method.arguments().iterator();
	while (it.hasNext()) {
	buf.append(((LocalVariable)it.next()).typeName());
	if (it.hasNext()) {
	buf.append(",");
	}
	}
	buf.append(")");
	return buf.toString();
	}
************************/
	@:overload public static function isValidMethodName(s : String) : Bool;
	
	@:overload public static function isJavaIdentifier(s : String) : Bool;
	
	
}
