package com.sun.xml.internal.bind.unmarshaller;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Messages
{
	/**
	* Formats error messages.
	*
	* @since JAXB1.0
	*/
	@:require(java0) @:overload public static function format(property : String) : String;
	
	@:overload public static function format(property : String, arg1 : Dynamic) : String;
	
	@:overload public static function format(property : String, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function format(property : String, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	/** Loads a string resource and formats it with specified arguments. */
	@:overload public static function format(property : String, args : java.NativeArray<Dynamic>) : String;
	
	public static var UNEXPECTED_ENTER_ELEMENT(default, null) : String;
	
	public static var UNEXPECTED_LEAVE_ELEMENT(default, null) : String;
	
	public static var UNEXPECTED_ENTER_ATTRIBUTE(default, null) : String;
	
	public static var UNEXPECTED_LEAVE_ATTRIBUTE(default, null) : String;
	
	public static var UNEXPECTED_TEXT(default, null) : String;
	
	public static var UNEXPECTED_LEAVE_CHILD(default, null) : String;
	
	public static var UNEXPECTED_ROOT_ELEMENT(default, null) : String;
	
	public static var UNEXPECTED_ROOT_ELEMENT2(default, null) : String;
	
	public static var UNDEFINED_PREFIX(default, null) : String;
	
	public static var NULL_READER(default, null) : String;
	
	public static var ILLEGAL_READER_STATE(default, null) : String;
	
	
}
