package com.sun.codemodel.internal.util;
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
@:internal extern class Surrogate
{
	public static var MIN_HIGH(default, null) : java.StdTypes.Char16;
	
	public static var MAX_HIGH(default, null) : java.StdTypes.Char16;
	
	public static var MIN_LOW(default, null) : java.StdTypes.Char16;
	
	public static var MAX_LOW(default, null) : java.StdTypes.Char16;
	
	public static var MIN(default, null) : java.StdTypes.Char16;
	
	public static var MAX(default, null) : java.StdTypes.Char16;
	
	public static var UCS4_MIN(default, null) : Int;
	
	public static var UCS4_MAX(default, null) : Int;
	
	/**
	* Tells whether or not the given UTF-16 value is a high surrogate.
	*/
	@:overload public static function isHigh(c : Int) : Bool;
	
	/**
	* Tells whether or not the given UTF-16 value is a low surrogate.
	*/
	@:overload public static function isLow(c : Int) : Bool;
	
	/**
	* Tells whether or not the given UTF-16 value is a surrogate character,
	*/
	@:overload public static function is(c : Int) : Bool;
	
	/**
	* Tells whether or not the given UCS-4 character must be represented as a
	* surrogate pair in UTF-16.
	*/
	@:overload public static function neededFor(uc : Int) : Bool;
	
	/**
	* Returns the high UTF-16 surrogate for the given UCS-4 character.
	*/
	@:overload public static function high(uc : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the low UTF-16 surrogate for the given UCS-4 character.
	*/
	@:overload public static function low(uc : Int) : java.StdTypes.Char16;
	
	/**
	* Converts the given surrogate pair into a 32-bit UCS-4 character.
	*/
	@:overload public static function toUCS4(c : java.StdTypes.Char16, d : java.StdTypes.Char16) : Int;
	
	
}
/**
* Surrogate parsing support.  Charset implementations may use instances of
* this class to handle the details of parsing UTF-16 surrogate pairs.
*/
@:native('com$sun$codemodel$internal$util$Surrogate$Parser') extern class Surrogate_Parser
{
	@:overload public function new() : Void;
	
	/**
	* Returns the UCS-4 character previously parsed.
	*/
	@:overload public function character() : Int;
	
	/**
	* Tells whether or not the previously-parsed UCS-4 character was
	* originally represented by a surrogate pair.
	*/
	@:overload public function isPair() : Bool;
	
	/**
	* Returns the number of UTF-16 characters consumed by the previous
	* parse.
	*/
	@:overload public function increment() : Int;
	
	/**
	* If the previous parse operation detected an error, return the object
	* describing that error.
	*/
	@:overload public function error() : java.nio.charset.CoderResult;
	
	/**
	* Returns an unmappable-input result object, with the appropriate
	* input length, for the previously-parsed character.
	*/
	@:overload public function unmappableResult() : java.nio.charset.CoderResult;
	
	/**
	* Parses a UCS-4 character from the given source buffer, handling
	* surrogates.
	*
	* @param  c    The first character
	* @param  in   The source buffer, from which one more character
	*              will be consumed if c is a high surrogate
	*
	* @return   Either a parsed UCS-4 character, in which case the isPair()
	*           and increment() methods will return meaningful values, or
	*           -1, in which case error() will return a descriptive result
	*           object
	*/
	@:overload public function parse(c : java.StdTypes.Char16, _in : java.nio.CharBuffer) : Int;
	
	/**
	* Parses a UCS-4 character from the given source buffer, handling
	* surrogates.
	*
	* @param  c    The first character
	* @param  ia   The input array, from which one more character
	*              will be consumed if c is a high surrogate
	* @param  ip   The input index
	* @param  il   The input limit
	*
	* @return   Either a parsed UCS-4 character, in which case the isPair()
	*           and increment() methods will return meaningful values, or
	*           -1, in which case error() will return a descriptive result
	*           object
	*/
	@:overload public function parse(c : java.StdTypes.Char16, ia : java.NativeArray<java.StdTypes.Char16>, ip : Int, il : Int) : Int;
	
	
}
/**
* Surrogate generation support.  Charset implementations may use instances
* of this class to handle the details of generating UTF-16 surrogate
* pairs.
*/
@:native('com$sun$codemodel$internal$util$Surrogate$Generator') extern class Surrogate_Generator
{
	@:overload public function new() : Void;
	
	/**
	* If the previous generation operation detected an error, return the
	* object describing that error.
	*/
	@:overload public function error() : java.nio.charset.CoderResult;
	
	/**
	* Generates one or two UTF-16 characters to represent the given UCS-4
	* character.
	*
	* @param  uc   The UCS-4 character
	* @param  len  The number of input bytes from which the UCS-4 value
	*              was constructed (used when creating result objects)
	* @param  dst  The destination buffer, to which one or two UTF-16
	*              characters will be written
	*
	* @return   Either a positive count of the number of UTF-16 characters
	*           written to the destination buffer, or -1, in which case
	*           error() will return a descriptive result object
	*/
	@:overload public function generate(uc : Int, len : Int, dst : java.nio.CharBuffer) : Int;
	
	/**
	* Generates one or two UTF-16 characters to represent the given UCS-4
	* character.
	*
	* @param  uc   The UCS-4 character
	* @param  len  The number of input bytes from which the UCS-4 value
	*              was constructed (used when creating result objects)
	* @param  da   The destination array, to which one or two UTF-16
	*              characters will be written
	* @param  dp   The destination position
	* @param  dl   The destination limit
	*
	* @return   Either a positive count of the number of UTF-16 characters
	*           written to the destination buffer, or -1, in which case
	*           error() will return a descriptive result object
	*/
	@:overload public function generate(uc : Int, len : Int, da : java.NativeArray<java.StdTypes.Char16>, dp : Int, dl : Int) : Int;
	
	
}
