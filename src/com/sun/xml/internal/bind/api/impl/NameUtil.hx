package com.sun.xml.internal.bind.api.impl;
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
@:internal extern class NameUtil
{
	/**
	* Methods that convert strings into various formats.
	*
	* <p>
	* What JAX-RPC name binding tells us is that even such basic method
	* like "isLetter" can be different depending on the situation.
	*
	* For this reason, a whole lot of methods are made non-static,
	* even though they look like they should be static.
	*/
	@:overload private function isPunct(c : java.StdTypes.Char16) : Bool;
	
	@:overload private static function isDigit(c : java.StdTypes.Char16) : Bool;
	
	@:overload private static function isUpper(c : java.StdTypes.Char16) : Bool;
	
	@:overload private static function isLower(c : java.StdTypes.Char16) : Bool;
	
	@:overload private function isLetter(c : java.StdTypes.Char16) : Bool;
	
	/**
	* Capitalizes the first character of the specified string,
	* and de-capitalize the rest of characters.
	*/
	@:overload public function capitalize(s : String) : String;
	
	private static var UPPER_LETTER(default, null) : Int;
	
	private static var LOWER_LETTER(default, null) : Int;
	
	private static var OTHER_LETTER(default, null) : Int;
	
	private static var DIGIT(default, null) : Int;
	
	private static var OTHER(default, null) : Int;
	
	/**
	* Classify a character into 5 categories that determine the word break.
	*/
	@:overload private function classify(c0 : java.StdTypes.Char16) : Int;
	
	/**
	* Tokenizes a string into words and capitalizes the first
	* character of each word.
	*
	* <p>
	* This method uses a change in character type as a splitter
	* of two words. For example, "abc100ghi" will be splitted into
	* {"Abc", "100","Ghi"}.
	*/
	@:overload public function toWordList(s : String) : java.util.List<String>;
	
	@:overload private function toMixedCaseName(ss : java.util.List<String>, startUpper : Bool) : String;
	
	@:overload private function toMixedCaseVariableName(ss : java.NativeArray<String>, startUpper : Bool, cdrUpper : Bool) : String;
	
	/**
	* Formats a string into "THIS_KIND_OF_FORMAT_ABC_DEF".
	*
	* @return
	*      Always return a string but there's no guarantee that
	*      the generated code is a valid Java identifier.
	*/
	@:overload public function toConstantName(s : String) : String;
	
	/**
	* Formats a string into "THIS_KIND_OF_FORMAT_ABC_DEF".
	*
	* @return
	*      Always return a string but there's no guarantee that
	*      the generated code is a valid Java identifier.
	*/
	@:overload public function toConstantName(ss : java.util.List<String>) : String;
	
	/**
	* Escapes characters is the given string so that they can be
	* printed by only using US-ASCII characters.
	*
	* The escaped characters will be appended to the given
	* StringBuffer.
	*
	* @param sb
	*      StringBuffer that receives escaped string.
	* @param s
	*      String to be escaped. <code>s.substring(start)</code>
	*      will be escaped and copied to the string buffer.
	*/
	@:overload public static function escape(sb : java.lang.StringBuilder, s : String, start : Int) : Void;
	
	/**
	* Checks if a given string is usable as a Java identifier.
	*/
	@:overload public static function isJavaIdentifier(s : String) : Bool;
	
	/**
	* Checks if the given string is a valid Java package name.
	*/
	@:overload public static function isJavaPackageName(s : String) : Bool;
	
	
}
