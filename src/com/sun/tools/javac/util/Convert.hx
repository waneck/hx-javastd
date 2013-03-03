package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
/** Utility class for static conversion methods between numbers
*  and strings in various formats.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Convert
{
	/** Convert string to integer.
	*/
	@:overload @:public @:static public static function string2int(s : String, radix : Int) : Int;
	
	/** Convert string to long integer.
	*/
	@:overload @:public @:static public static function string2long(s : String, radix : Int) : haxe.Int64;
	
	/** Convert `len' bytes from utf8 to characters.
	*  Parameters are as in System.arraycopy
	*  Return first index in `dst' past the last copied char.
	*  @param src        The array holding the bytes to convert.
	*  @param sindex     The start index from which bytes are converted.
	*  @param dst        The array holding the converted characters..
	*  @param dindex     The start index from which converted characters
	*                    are written.
	*  @param len        The maximum number of bytes to convert.
	*/
	@:overload @:public @:static public static function utf2chars(src : java.NativeArray<java.StdTypes.Int8>, sindex : Int, dst : java.NativeArray<java.StdTypes.Char16>, dindex : Int, len : Int) : Int;
	
	/** Return bytes in Utf8 representation as an array of characters.
	*  @param src        The array holding the bytes.
	*  @param sindex     The start index from which bytes are converted.
	*  @param len        The maximum number of bytes to convert.
	*/
	@:overload @:public @:static public static function utf2chars(src : java.NativeArray<java.StdTypes.Int8>, sindex : Int, len : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	/** Return all bytes of a given array in Utf8 representation
	*  as an array of characters.
	*  @param src        The array holding the bytes.
	*/
	@:overload @:public @:static public static function utf2chars(src : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Char16>;
	
	/** Return bytes in Utf8 representation as a string.
	*  @param src        The array holding the bytes.
	*  @param sindex     The start index from which bytes are converted.
	*  @param len        The maximum number of bytes to convert.
	*/
	@:overload @:public @:static public static function utf2string(src : java.NativeArray<java.StdTypes.Int8>, sindex : Int, len : Int) : String;
	
	/** Return all bytes of a given array in Utf8 representation
	*  as a string.
	*  @param src        The array holding the bytes.
	*/
	@:overload @:public @:static public static function utf2string(src : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/** Copy characters in source array to bytes in target array,
	*  converting them to Utf8 representation.
	*  The target array must be large enough to hold the result.
	*  returns first index in `dst' past the last copied byte.
	*  @param src        The array holding the characters to convert.
	*  @param sindex     The start index from which characters are converted.
	*  @param dst        The array holding the converted characters..
	*  @param dindex     The start index from which converted bytes
	*                    are written.
	*  @param len        The maximum number of characters to convert.
	*/
	@:overload @:public @:static public static function chars2utf(src : java.NativeArray<java.StdTypes.Char16>, sindex : Int, dst : java.NativeArray<java.StdTypes.Int8>, dindex : Int, len : Int) : Int;
	
	/** Return characters as an array of bytes in Utf8 representation.
	*  @param src        The array holding the characters.
	*  @param sindex     The start index from which characters are converted.
	*  @param len        The maximum number of characters to convert.
	*/
	@:overload @:public @:static public static function chars2utf(src : java.NativeArray<java.StdTypes.Char16>, sindex : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Return all characters in given array as an array of bytes
	*  in Utf8 representation.
	*  @param src        The array holding the characters.
	*/
	@:overload @:public @:static public static function chars2utf(src : java.NativeArray<java.StdTypes.Char16>) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Return string as an array of bytes in in Utf8 representation.
	*/
	@:overload @:public @:static public static function string2utf(s : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Escapes each character in a string that has an escape sequence or
	* is non-printable ASCII.  Leaves non-ASCII characters alone.
	*/
	@:overload @:public @:static public static function quote(s : String) : String;
	
	/**
	* Escapes a character if it has an escape sequence or is
	* non-printable ASCII.  Leaves non-ASCII characters alone.
	*/
	@:overload @:public @:static public static function quote(ch : java.StdTypes.Char16) : String;
	
	/** Escape all unicode characters in string.
	*/
	@:overload @:public @:static public static function escapeUnicode(s : String) : String;
	
	/** Return the last part of a class name.
	*/
	@:overload @:public @:static public static function shortName(classname : com.sun.tools.javac.util.Name) : com.sun.tools.javac.util.Name;
	
	@:overload @:public @:static public static function shortName(classname : String) : String;
	
	/** Return the package name of a class name, excluding the trailing '.',
	*  "" if not existent.
	*/
	@:overload @:public @:static public static function packagePart(classname : com.sun.tools.javac.util.Name) : com.sun.tools.javac.util.Name;
	
	@:overload @:public @:static public static function packagePart(classname : String) : String;
	
	@:overload @:public @:static public static function enclosingCandidates(name : com.sun.tools.javac.util.Name) : com.sun.tools.javac.util.List<com.sun.tools.javac.util.Name>;
	
	
}
