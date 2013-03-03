package com.sun.xml.internal.fastinfoset;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DecoderStateTables
{
	@:public @:final @:static public static var STATE_ILLEGAL(default, null) : Int;
	
	@:public @:final @:static public static var STATE_UNSUPPORTED(default, null) : Int;
	
	@:public @:final @:static public static var EII_NO_AIIS_INDEX_SMALL(default, null) : Int;
	
	@:public @:final @:static public static var EII_AIIS_INDEX_SMALL(default, null) : Int;
	
	@:public @:final @:static public static var EII_INDEX_MEDIUM(default, null) : Int;
	
	@:public @:final @:static public static var EII_INDEX_LARGE(default, null) : Int;
	
	@:public @:final @:static public static var EII_NAMESPACES(default, null) : Int;
	
	@:public @:final @:static public static var EII_LITERAL(default, null) : Int;
	
	@:public @:final @:static public static var CII_UTF8_SMALL_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var CII_UTF8_MEDIUM_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var CII_UTF8_LARGE_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var CII_UTF16_SMALL_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var CII_UTF16_MEDIUM_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var CII_UTF16_LARGE_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var CII_RA(default, null) : Int;
	
	@:public @:final @:static public static var CII_EA(default, null) : Int;
	
	@:public @:final @:static public static var CII_INDEX_SMALL(default, null) : Int;
	
	@:public @:final @:static public static var CII_INDEX_MEDIUM(default, null) : Int;
	
	@:public @:final @:static public static var CII_INDEX_LARGE(default, null) : Int;
	
	@:public @:final @:static public static var CII_INDEX_LARGE_LARGE(default, null) : Int;
	
	@:public @:final @:static public static var COMMENT_II(default, null) : Int;
	
	@:public @:final @:static public static var PROCESSING_INSTRUCTION_II(default, null) : Int;
	
	@:public @:final @:static public static var DOCUMENT_TYPE_DECLARATION_II(default, null) : Int;
	
	@:public @:final @:static public static var UNEXPANDED_ENTITY_REFERENCE_II(default, null) : Int;
	
	@:public @:final @:static public static var TERMINATOR_SINGLE(default, null) : Int;
	
	@:public @:final @:static public static var TERMINATOR_DOUBLE(default, null) : Int;
	
	@:public @:final @:static public static var AII_INDEX_SMALL(default, null) : Int;
	
	@:public @:final @:static public static var AII_INDEX_MEDIUM(default, null) : Int;
	
	@:public @:final @:static public static var AII_INDEX_LARGE(default, null) : Int;
	
	@:public @:final @:static public static var AII_LITERAL(default, null) : Int;
	
	@:public @:final @:static public static var AII_TERMINATOR_SINGLE(default, null) : Int;
	
	@:public @:final @:static public static var AII_TERMINATOR_DOUBLE(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_UTF8_SMALL_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_UTF8_MEDIUM_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_UTF8_LARGE_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_UTF16_SMALL_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_UTF16_MEDIUM_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_UTF16_LARGE_LENGTH(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_RA(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_EA(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_INDEX_SMALL(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_INDEX_MEDIUM(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_INDEX_LARGE(default, null) : Int;
	
	@:public @:final @:static public static var NISTRING_EMPTY(default, null) : Int;
	
	@:overload @:public @:static @:final public static function DII(index : Int) : Int;
	
	@:overload @:public @:static @:final public static function EII(index : Int) : Int;
	
	@:overload @:public @:static @:final public static function AII(index : Int) : Int;
	
	@:overload @:public @:static @:final public static function NISTRING(index : Int) : Int;
	
	@:overload @:public @:static @:final public static function ISTRING(index : Int) : Int;
	
	@:overload @:public @:static @:final public static function ISTRING_PREFIX_NAMESPACE(index : Int) : Int;
	
	@:overload @:public @:static @:final public static function UTF8(index : Int) : Int;
	
	@:overload @:public @:static @:final public static function UTF8_NCNAME(index : Int) : Int;
	
	
}
