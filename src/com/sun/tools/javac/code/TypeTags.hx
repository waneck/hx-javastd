package com.sun.tools.javac.code;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
/** An interface for type tag values, which distinguish between different
*  sorts of types.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class TypeTags
{
	/** The tag of the basic type `byte'.
	*/
	@:public @:static @:final public static var BYTE(default, null) : Int;
	
	/** The tag of the basic type `char'.
	*/
	@:public @:static @:final public static var CHAR(default, null) : Int;
	
	/** The tag of the basic type `short'.
	*/
	@:public @:static @:final public static var SHORT(default, null) : Int;
	
	/** The tag of the basic type `int'.
	*/
	@:public @:static @:final public static var INT(default, null) : Int;
	
	/** The tag of the basic type `long'.
	*/
	@:public @:static @:final public static var LONG(default, null) : Int;
	
	/** The tag of the basic type `float'.
	*/
	@:public @:static @:final public static var FLOAT(default, null) : Int;
	
	/** The tag of the basic type `double'.
	*/
	@:public @:static @:final public static var DOUBLE(default, null) : Int;
	
	/** The tag of the basic type `boolean'.
	*/
	@:public @:static @:final public static var BOOLEAN(default, null) : Int;
	
	/** The tag of the type `void'.
	*/
	@:public @:static @:final public static var VOID(default, null) : Int;
	
	/** The tag of all class and interface types.
	*/
	@:public @:static @:final public static var CLASS(default, null) : Int;
	
	/** The tag of all array types.
	*/
	@:public @:static @:final public static var ARRAY(default, null) : Int;
	
	/** The tag of all (monomorphic) method types.
	*/
	@:public @:static @:final public static var METHOD(default, null) : Int;
	
	/** The tag of all package "types".
	*/
	@:public @:static @:final public static var PACKAGE(default, null) : Int;
	
	/** The tag of all (source-level) type variables.
	*/
	@:public @:static @:final public static var TYPEVAR(default, null) : Int;
	
	/** The tag of all type arguments.
	*/
	@:public @:static @:final public static var WILDCARD(default, null) : Int;
	
	/** The tag of all polymorphic (method-) types.
	*/
	@:public @:static @:final public static var FORALL(default, null) : Int;
	
	/** The tag of the bottom type <null>.
	*/
	@:public @:static @:final public static var BOT(default, null) : Int;
	
	/** The tag of a missing type.
	*/
	@:public @:static @:final public static var NONE(default, null) : Int;
	
	/** The tag of the error type.
	*/
	@:public @:static @:final public static var ERROR(default, null) : Int;
	
	/** The tag of an unknown type
	*/
	@:public @:static @:final public static var UNKNOWN(default, null) : Int;
	
	/** The tag of all instantiatable type variables.
	*/
	@:public @:static @:final public static var UNDETVAR(default, null) : Int;
	
	/** The number of type tags.
	*/
	@:public @:static @:final public static var TypeTagCount(default, null) : Int;
	
	/** The maximum tag of a basic type.
	*/
	@:public @:static @:final public static var lastBaseTag(default, null) : Int;
	
	/** The minimum tag of a partial type
	*/
	@:public @:static @:final public static var firstPartialTag(default, null) : Int;
	
	
}
