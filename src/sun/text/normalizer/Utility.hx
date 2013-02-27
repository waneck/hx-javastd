package sun.text.normalizer;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
/*
*******************************************************************************
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class Utility
{
	/**
	* Convenience utility to compare two Object[]s
	* Ought to be in System.
	* @param len the length to compare.
	* The start indices and start+len must be valid.
	*/
	@:overload @:final public static function arrayRegionMatches(source : java.NativeArray<java.StdTypes.Char16>, sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, len : Int) : Bool;
	
	/**
	* Convert characters outside the range U+0020 to U+007F to
	* Unicode escapes, and convert backslash to a double backslash.
	*/
	@:overload @:final public static function escape(s : String) : String;
	
	/**
	* Convert an escape to a 32-bit code point value.  We attempt
	* to parallel the icu4c unescapeAt() function.
	* @param offset16 an array containing offset to the character
	* <em>after</em> the backslash.  Upon return offset16[0] will
	* be updated to point after the escape sequence.
	* @return character value from 0 to 10FFFF, or -1 on error.
	*/
	@:overload public static function unescapeAt(s : String, offset16 : java.NativeArray<Int>) : Int;
	
	/**
	* Convert a integer to size width hex uppercase digits.
	* E.g., hex('a', 4, str) => "0041".
	* Append the output to the given StringBuffer.
	* If width is too small to fit, nothing will be appended to output.
	*/
	@:overload public static function hex(ch : Int, width : Int, output : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	/**
	* Convert a integer to size width (minimum) hex uppercase digits.
	* E.g., hex('a', 4, str) => "0041".  If the integer requires more
	* than width digits, more will be used.
	*/
	@:overload public static function hex(ch : Int, width : Int) : String;
	
	/**
	* Skip over a sequence of zero or more white space characters
	* at pos.  Return the index of the first non-white-space character
	* at or after pos, or str.length(), if there is none.
	*/
	@:overload public static function skipWhitespace(str : String, pos : Int) : Int;
	
	/**
	* Append a number to the given StringBuffer in the given radix.
	* Standard digits '0'-'9' are used and letters 'A'-'Z' for
	* radices 11 through 36.
	* @param result the digits of the number are appended here
	* @param n the number to be converted to digits; may be negative.
	* If negative, a '-' is prepended to the digits.
	* @param radix a radix from 2 to 36 inclusive.
	* @param minDigits the minimum number of digits, not including
	* any '-', to produce.  Values less than 2 have no effect.  One
	* digit is always emitted regardless of this parameter.
	* @return a reference to result
	*/
	@:overload public static function appendNumber(result : java.lang.StringBuffer, n : Int, radix : Int, minDigits : Int) : java.lang.StringBuffer;
	
	/**
	* Return true if the character is NOT printable ASCII.  The tab,
	* newline and linefeed characters are considered unprintable.
	*/
	@:overload public static function isUnprintable(c : Int) : Bool;
	
	/**
	* Escape unprintable characters using <backslash>uxxxx notation
	* for U+0000 to U+FFFF and <backslash>Uxxxxxxxx for U+10000 and
	* above.  If the character is printable ASCII, then do nothing
	* and return FALSE.  Otherwise, append the escaped notation and
	* return TRUE.
	*/
	@:overload public static function escapeUnprintable(result : java.lang.StringBuffer, c : Int) : Bool;
	
	/**
	* Similar to StringBuffer.getChars, version 1.3.
	* Since JDK 1.2 implements StringBuffer.getChars differently, this method
	* is here to provide consistent results.
	* To be removed after JDK 1.2 ceased to be the reference platform.
	* @param src source string buffer
	* @param srcBegin offset to the start of the src to retrieve from
	* @param srcEnd offset to the end of the src to retrieve from
	* @param dst char array to store the retrieved chars
	* @param dstBegin offset to the start of the destination char array to
	*                 store the retrieved chars
	*/
	@:overload public static function getChars(src : java.lang.StringBuffer, srcBegin : Int, srcEnd : Int, dst : java.NativeArray<java.StdTypes.Char16>, dstBegin : Int) : Void;
	
	
}
