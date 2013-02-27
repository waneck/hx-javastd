package sun.text.normalizer;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class UCharacter
{
	/**
	* The lowest Unicode code point value.
	* @stable ICU 2.1
	*/
	public static var MIN_VALUE(default, null) : Int;
	
	/**
	* The highest Unicode code point value (scalar value) according to the
	* Unicode Standard.
	* This is a 21-bit value (21 bits, rounded up).<br>
	* Up-to-date Unicode implementation of java.lang.Character.MIN_VALUE
	* @stable ICU 2.1
	*/
	public static var MAX_VALUE(default, null) : Int;
	
	/**
	* The minimum value for Supplementary code points
	* @stable ICU 2.1
	*/
	public static var SUPPLEMENTARY_MIN_VALUE(default, null) : Int;
	
	/**
	* Retrieves the numeric value of a decimal digit code point.
	* <br>This method observes the semantics of
	* <code>java.lang.Character.digit()</code>.  Note that this
	* will return positive values for code points for which isDigit
	* returns false, just like java.lang.Character.
	* <br><em>Semantic Change:</em> In release 1.3.1 and
	* prior, this did not treat the European letters as having a
	* digit value, and also treated numeric letters and other numbers as
	* digits.
	* This has been changed to conform to the java semantics.
	* <br>A code point is a valid digit if and only if:
	* <ul>
	*   <li>ch is a decimal digit or one of the european letters, and
	*   <li>the value of ch is less than the specified radix.
	* </ul>
	* @param ch the code point to query
	* @param radix the radix
	* @return the numeric value represented by the code point in the
	* specified radix, or -1 if the code point is not a decimal digit
	* or if its value is too large for the radix
	* @stable ICU 2.1
	*/
	@:overload public static function digit(ch : Int, radix : Int) : Int;
	
	/**
	* Returns the Bidirection property of a code point.
	* For example, 0x0041 (letter A) has the LEFT_TO_RIGHT directional
	* property.<br>
	* Result returned belongs to the interface
	* <a href=UCharacterDirection.html>UCharacterDirection</a>
	* @param ch the code point to be determined its direction
	* @return direction constant from UCharacterDirection.
	* @stable ICU 2.1
	*/
	@:overload public static function getDirection(ch : Int) : Int;
	
	/**
	* Returns a code point corresponding to the two UTF16 characters.
	* @param lead the lead char
	* @param trail the trail char
	* @return code point if surrogate characters are valid.
	* @exception IllegalArgumentException thrown when argument characters do
	*            not form a valid codepoint
	* @stable ICU 2.1
	*/
	@:overload public static function getCodePoint(lead : java.StdTypes.Char16, trail : java.StdTypes.Char16) : Int;
	
	/**
	* <p>Get the "age" of the code point.</p>
	* <p>The "age" is the Unicode version when the code point was first
	* designated (as a non-character or for Private Use) or assigned a
	* character.
	* <p>This can be useful to avoid emitting code points to receiving
	* processes that do not accept newer characters.</p>
	* <p>The data is from the UCD file DerivedAge.txt.</p>
	* @param ch The code point.
	* @return the Unicode version number
	* @stable ICU 2.6
	*/
	@:overload public static function getAge(ch : Int) : sun.text.normalizer.VersionInfo;
	
	
}
/**
* Numeric Type constants.
* @see UProperty#NUMERIC_TYPE
* @stable ICU 2.4
*/
@:native('sun$text$normalizer$UCharacter$NumericType') extern interface UCharacter_NumericType
{
	
}
