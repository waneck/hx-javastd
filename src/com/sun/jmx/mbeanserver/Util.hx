package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Util
{
	@:overload public static function newObjectName(string : String) : javax.management.ObjectName;
	
	/* This method can be used by code that is deliberately violating the
	* allowed checked casts.  Rather than marking the whole method containing
	* the code with @SuppressWarnings, you can use a call to this method for
	* the exact place where you need to escape the constraints.  Typically
	* you will "import static" this method and then write either
	*    X x = cast(y);
	* or, if that doesn't work (e.g. X is a type variable)
	*    Util.<X>cast(y);
	*/
	@:native('cast') @:overload public static function _cast<T>(x : Dynamic) : T;
	
	/**
	* Computes a descriptor hashcode from its names and values.
	* @param names  the sorted array of descriptor names.
	* @param values the array of descriptor values.
	* @return a hash code value, as described in {@link #hashCode(Descriptor)}
	*/
	@:overload public static function hashCode(names : java.NativeArray<String>, values : java.NativeArray<Dynamic>) : Int;
	
	/** Match a string against a shell-style pattern.  The only pattern
	characters recognized are <code>?</code>, standing for any one
	character, and <code>*</code>, standing for any string of
	characters, including the empty string.

	@param str the string to match.
	@param pat the pattern to match the string against.

	@return true if and only if the string matches the pattern.
	*/
	@:overload public static function wildmatch(str : String, pat : String) : Bool;
	
	
}
