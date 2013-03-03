package com.sun.xml.internal.stream.dtd.nonvalidating;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
/*
* Copyright 2005 The Apache Software Foundation.
*/
/**
*/
extern class XMLSimpleType
{
	/** TYPE_CDATA */
	@:public @:static @:final public static var TYPE_CDATA(default, null) : java.StdTypes.Int16;
	
	/** TYPE_ENTITY */
	@:public @:static @:final public static var TYPE_ENTITY(default, null) : java.StdTypes.Int16;
	
	/** TYPE_ENUMERATION */
	@:public @:static @:final public static var TYPE_ENUMERATION(default, null) : java.StdTypes.Int16;
	
	/** TYPE_ID */
	@:public @:static @:final public static var TYPE_ID(default, null) : java.StdTypes.Int16;
	
	/** TYPE_IDREF */
	@:public @:static @:final public static var TYPE_IDREF(default, null) : java.StdTypes.Int16;
	
	/** TYPE_NMTOKEN */
	@:public @:static @:final public static var TYPE_NMTOKEN(default, null) : java.StdTypes.Int16;
	
	/** TYPE_NOTATION */
	@:public @:static @:final public static var TYPE_NOTATION(default, null) : java.StdTypes.Int16;
	
	/** TYPE_NAMED */
	@:public @:static @:final public static var TYPE_NAMED(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_DEFAULT */
	@:public @:static @:final public static var DEFAULT_TYPE_DEFAULT(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_FIXED */
	@:public @:static @:final public static var DEFAULT_TYPE_FIXED(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_IMPLIED */
	@:public @:static @:final public static var DEFAULT_TYPE_IMPLIED(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_REQUIRED */
	@:public @:static @:final public static var DEFAULT_TYPE_REQUIRED(default, null) : java.StdTypes.Int16;
	
	/** type */
	@:public public var type : java.StdTypes.Int16;
	
	/** name */
	@:public public var name : String;
	
	/** enumeration */
	@:public public var enumeration : java.NativeArray<String>;
	
	/** list */
	@:public public var list : Bool;
	
	/** defaultType */
	@:public public var defaultType : java.StdTypes.Int16;
	
	/** defaultValue */
	@:public public var defaultValue : String;
	
	/** non-normalized defaultValue */
	@:public public var nonNormalizedDefaultValue : String;
	
	/**
	* setValues
	*
	* @param type
	* @param name
	* @param enumeration
	* @param list
	* @param defaultType
	* @param defaultValue
	* @param nonNormalizedDefaultValue
	* @param datatypeValidator
	*/
	@:overload @:public public function setValues(type : java.StdTypes.Int16, name : String, enumeration : java.NativeArray<String>, list : Bool, defaultType : java.StdTypes.Int16, defaultValue : String, nonNormalizedDefaultValue : String) : Void;
	
	/** Set values. */
	@:overload @:public public function setValues(simpleType : com.sun.xml.internal.stream.dtd.nonvalidating.XMLSimpleType) : Void;
	
	/**
	* clear
	*/
	@:overload @:public public function clear() : Void;
	
	
}
