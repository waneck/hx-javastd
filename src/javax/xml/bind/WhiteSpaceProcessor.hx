package javax.xml.bind;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Processes white space normalization.
*
* @since 1.0
*/
@:require(java0) @:internal extern class WhiteSpaceProcessor
{
	@:overload @:public @:static public static function replace(text : String) : String;
	
	/**
	* @since 2.0
	*/
	@:require(java0) @:overload @:public @:static public static function replace(text : java.lang.CharSequence) : java.lang.CharSequence;
	
	/**
	* Equivalent of {@link String#trim()}.
	* @since 2.0
	*/
	@:require(java0) @:overload @:public @:static public static function trim(text : java.lang.CharSequence) : java.lang.CharSequence;
	
	@:overload @:public @:static public static function collapse(text : String) : String;
	
	/**
	* This is usually the biggest processing bottleneck.
	*
	* @since 2.0
	*/
	@:require(java0) @:overload @:public @:static public static function collapse(text : java.lang.CharSequence) : java.lang.CharSequence;
	
	/**
	* Returns true if the specified string is all whitespace.
	*/
	@:overload @:public @:static @:final public static function isWhiteSpace(s : java.lang.CharSequence) : Bool;
	
	/** returns true if the specified char is a white space character. */
	@:overload @:public @:static @:final public static function isWhiteSpace(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns true if the specified char is a white space character
	* but not 0x20.
	*/
	@:overload @:protected @:static @:final private static function isWhiteSpaceExceptSpace(ch : java.StdTypes.Char16) : Bool;
	
	
}
