package com.sun.tools.internal.xjc.reader.xmlschema;
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
extern class Messages
{
	/** Loads a string resource and formats it with specified arguments. */
	@:overload @:public @:static public static function format(property : String, args : java.NativeArray<Dynamic>) : String;
	
	@:public @:static @:final public static var WARN_UNUSED_EXPECTED_CONTENT_TYPES(default, null) : String;
	
	@:public @:static @:final public static var ERR_UNACKNOWLEDGED_CUSTOMIZATION(default, null) : String;
	
	@:public @:static @:final public static var ERR_UNACKNOWLEDGED_CUSTOMIZATION_LOCATION(default, null) : String;
	
	@:public @:static @:final public static var ERR_MULTIPLE_GLOBAL_BINDINGS(default, null) : String;
	
	@:public @:static @:final public static var ERR_MULTIPLE_GLOBAL_BINDINGS_OTHER(default, null) : String;
	
	@:public @:static @:final public static var ERR_REFERENCE_TO_NONEXPORTED_CLASS(default, null) : String;
	
	@:public @:static @:final public static var ERR_REFERENCE_TO_NONEXPORTED_CLASS_MAP_FALSE(default, null) : String;
	
	@:public @:static @:final public static var ERR_REFERENCE_TO_NONEXPORTED_CLASS_REFERER(default, null) : String;
	
	
}
