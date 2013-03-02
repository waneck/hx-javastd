package sun.io;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class CharToByteISCII91 extends sun.io.CharToByteConverter
{
	/**
	* @return true for Devanagari and ASCII range and for the special characters
	*              Zero Width Joiner and Zero Width Non-Joiner
	* @see sun.io.CharToByteConverter#canConvert
	*
	*/
	@:overload public function canConvert(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Converts both Devanagari and ASCII range of characters.
	* @see sun.io.CharToByteConverter#convert
	*/
	@:overload public function convert(input : java.NativeArray<java.StdTypes.Char16>, inStart : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/**
* @see sun.io.CharToByteConverter#flush
*/
	@:overload public function flush(output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* @return The character encoding as a String.
	*/
	@:overload public function getCharacterEncoding() : String;
	
	/**
	* @see sun.io.CharToByteConverter#getMaxBytesPerChar
	*/
	@:overload public function getMaxBytesPerChar() : Int;
	
	/**
	* @see sun.io.CharToByteConverter#reset
	*/
	@:overload public function reset() : Void;
	
	
}
