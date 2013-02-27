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
/**
* <p>Standalone utility class providing UTF16 character conversions and
* indexing conversions.</p>
* <p>Code that uses strings alone rarely need modification.
* By design, UTF-16 does not allow overlap, so searching for strings is a safe
* operation. Similarly, concatenation is always safe. Substringing is safe if
* the start and end are both on UTF-32 boundaries. In normal code, the values
* for start and end are on those boundaries, since they arose from operations
* like searching. If not, the nearest UTF-32 boundaries can be determined
* using <code>bounds()</code>.</p>
* <strong>Examples:</strong>
* <p>The following examples illustrate use of some of these methods.
* <pre>
* // iteration forwards: Original
* for (int i = 0; i &lt; s.length(); ++i) {
*     char ch = s.charAt(i);
*     doSomethingWith(ch);
* }
*
* // iteration forwards: Changes for UTF-32
* int ch;
* for (int i = 0; i &lt; s.length(); i+=UTF16.getCharCount(ch)) {
*     ch = UTF16.charAt(s,i);
*     doSomethingWith(ch);
* }
*
* // iteration backwards: Original
* for (int i = s.length() -1; i >= 0; --i) {
*     char ch = s.charAt(i);
*     doSomethingWith(ch);
* }
*
* // iteration backwards: Changes for UTF-32
* int ch;
* for (int i = s.length() -1; i > 0; i-=UTF16.getCharCount(ch)) {
*     ch = UTF16.charAt(s,i);
*     doSomethingWith(ch);
* }
* </pre>
* <strong>Notes:</strong>
* <ul>
*   <li>
*   <strong>Naming:</strong> For clarity, High and Low surrogates are called
*   <code>Lead</code> and <code>Trail</code> in the API, which gives a better
*   sense of their ordering in a string. <code>offset16</code> and
*   <code>offset32</code> are used to distinguish offsets to UTF-16
*   boundaries vs offsets to UTF-32 boundaries. <code>int char32</code> is
*   used to contain UTF-32 characters, as opposed to <code>char16</code>,
*   which is a UTF-16 code unit.
*   </li>
*   <li>
*   <strong>Roundtripping Offsets:</strong> You can always roundtrip from a
*   UTF-32 offset to a UTF-16 offset and back. Because of the difference in
*   structure, you can roundtrip from a UTF-16 offset to a UTF-32 offset and
*   back if and only if <code>bounds(string, offset16) != TRAIL</code>.
*   </li>
*   <li>
*    <strong>Exceptions:</strong> The error checking will throw an exception
*   if indices are out of bounds. Other than than that, all methods will
*   behave reasonably, even if unmatched surrogates or out-of-bounds UTF-32
*   values are present. <code>UCharacter.isLegal()</code> can be used to check
*   for validity if desired.
*   </li>
*   <li>
*   <strong>Unmatched Surrogates:</strong> If the string contains unmatched
*   surrogates, then these are counted as one UTF-32 value. This matches
*   their iteration behavior, which is vital. It also matches common display
*   practice as missing glyphs (see the Unicode Standard Section 5.4, 5.5).
*   </li>
*   <li>
*     <strong>Optimization:</strong> The method implementations may need
*     optimization if the compiler doesn't fold static final methods. Since
*     surrogate pairs will form an exceeding small percentage of all the text
*     in the world, the singleton case should always be optimized for.
*   </li>
* </ul>
* @author Mark Davis, with help from Markus Scherer
* @stable ICU 2.1
*/
extern class UTF16
{
	/**
	* The lowest Unicode code point value.
	* @stable ICU 2.1
	*/
	public static var CODEPOINT_MIN_VALUE(default, null) : Int;
	
	/**
	* The highest Unicode code point value (scalar value) according to the
	* Unicode Standard.
	* @stable ICU 2.1
	*/
	public static var CODEPOINT_MAX_VALUE(default, null) : Int;
	
	/**
	* The minimum value for Supplementary code points
	* @stable ICU 2.1
	*/
	public static var SUPPLEMENTARY_MIN_VALUE(default, null) : Int;
	
	/**
	* Lead surrogate minimum value
	* @stable ICU 2.1
	*/
	public static var LEAD_SURROGATE_MIN_VALUE(default, null) : Int;
	
	/**
	* Trail surrogate minimum value
	* @stable ICU 2.1
	*/
	public static var TRAIL_SURROGATE_MIN_VALUE(default, null) : Int;
	
	/**
	* Lead surrogate maximum value
	* @stable ICU 2.1
	*/
	public static var LEAD_SURROGATE_MAX_VALUE(default, null) : Int;
	
	/**
	* Trail surrogate maximum value
	* @stable ICU 2.1
	*/
	public static var TRAIL_SURROGATE_MAX_VALUE(default, null) : Int;
	
	/**
	* Surrogate minimum value
	* @stable ICU 2.1
	*/
	public static var SURROGATE_MIN_VALUE(default, null) : Int;
	
	/**
	* Extract a single UTF-32 value from a string.
	* Used when iterating forwards or backwards (with
	* <code>UTF16.getCharCount()</code>, as well as random access. If a
	* validity check is required, use
	* <code><a href="../lang/UCharacter.html#isLegal(char)">
	* UCharacter.isLegal()</a></code> on the return value.
	* If the char retrieved is part of a surrogate pair, its supplementary
	* character will be returned. If a complete supplementary character is
	* not found the incomplete character will be returned
	* @param source array of UTF-16 chars
	* @param offset16 UTF-16 offset to the start of the character.
	* @return UTF-32 value for the UTF-32 value that contains the char at
	*         offset16. The boundaries of that codepoint are the same as in
	*         <code>bounds32()</code>.
	* @exception IndexOutOfBoundsException thrown if offset16 is out of
	*            bounds.
	* @stable ICU 2.1
	*/
	@:overload public static function charAt(source : String, offset16 : Int) : Int;
	
	/**
	* Extract a single UTF-32 value from a substring.
	* Used when iterating forwards or backwards (with
	* <code>UTF16.getCharCount()</code>, as well as random access. If a
	* validity check is required, use
	* <code><a href="../lang/UCharacter.html#isLegal(char)">UCharacter.isLegal()
	* </a></code> on the return value.
	* If the char retrieved is part of a surrogate pair, its supplementary
	* character will be returned. If a complete supplementary character is
	* not found the incomplete character will be returned
	* @param source array of UTF-16 chars
	* @param start offset to substring in the source array for analyzing
	* @param limit offset to substring in the source array for analyzing
	* @param offset16 UTF-16 offset relative to start
	* @return UTF-32 value for the UTF-32 value that contains the char at
	*         offset16. The boundaries of that codepoint are the same as in
	*         <code>bounds32()</code>.
	* @exception IndexOutOfBoundsException thrown if offset16 is not within
	*            the range of start and limit.
	* @stable ICU 2.1
	*/
	@:overload public static function charAt(source : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, offset16 : Int) : Int;
	
	/**
	* Determines how many chars this char32 requires.
	* If a validity check is required, use <code>
	* <a href="../lang/UCharacter.html#isLegal(char)">isLegal()</a></code> on
	* char32 before calling.
	* @param char32 the input codepoint.
	* @return 2 if is in supplementary space, otherwise 1.
	* @stable ICU 2.1
	*/
	@:overload public static function getCharCount(char32 : Int) : Int;
	
	/**
	* Determines whether the code value is a surrogate.
	* @param char16 the input character.
	* @return true iff the input character is a surrogate.
	* @stable ICU 2.1
	*/
	@:overload public static function isSurrogate(char16 : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines whether the character is a trail surrogate.
	* @param char16 the input character.
	* @return true iff the input character is a trail surrogate.
	* @stable ICU 2.1
	*/
	@:overload public static function isTrailSurrogate(char16 : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines whether the character is a lead surrogate.
	* @param char16 the input character.
	* @return true iff the input character is a lead surrogate
	* @stable ICU 2.1
	*/
	@:overload public static function isLeadSurrogate(char16 : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns the lead surrogate.
	* If a validity check is required, use
	* <code><a href="../lang/UCharacter.html#isLegal(char)">isLegal()</a></code>
	* on char32 before calling.
	* @param char32 the input character.
	* @return lead surrogate if the getCharCount(ch) is 2; <br>
	*         and 0 otherwise (note: 0 is not a valid lead surrogate).
	* @stable ICU 2.1
	*/
	@:overload public static function getLeadSurrogate(char32 : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the trail surrogate.
	* If a validity check is required, use
	* <code><a href="../lang/UCharacter.html#isLegal(char)">isLegal()</a></code>
	* on char32 before calling.
	* @param char32 the input character.
	* @return the trail surrogate if the getCharCount(ch) is 2; <br>otherwise
	*         the character itself
	* @stable ICU 2.1
	*/
	@:overload public static function getTrailSurrogate(char32 : Int) : java.StdTypes.Char16;
	
	/**
	* Convenience method corresponding to String.valueOf(char). Returns a one
	* or two char string containing the UTF-32 value in UTF16 format. If a
	* validity check is required, use
	* <code><a href="../lang/UCharacter.html#isLegal(char)">isLegal()</a></code>
	* on char32 before calling.
	* @param char32 the input character.
	* @return string value of char32 in UTF16 format
	* @exception IllegalArgumentException thrown if char32 is a invalid
	*            codepoint.
	* @stable ICU 2.1
	*/
	@:overload public static function valueOf(char32 : Int) : String;
	
	/**
	* Append a single UTF-32 value to the end of a StringBuffer.
	* If a validity check is required, use
	* <code><a href="../lang/UCharacter.html#isLegal(char)">isLegal()</a></code>
	* on char32 before calling.
	* @param target the buffer to append to
	* @param char32 value to append.
	* @return the updated StringBuffer
	* @exception IllegalArgumentException thrown when char32 does not lie
	*            within the range of the Unicode codepoints
	* @stable ICU 2.1
	*/
	@:overload public static function append(target : java.lang.StringBuffer, char32 : Int) : java.lang.StringBuffer;
	
	/**
	* Shifts offset16 by the argument number of codepoints within a subarray.
	* @param source char array
	* @param start position of the subarray to be performed on
	* @param limit position of the subarray to be performed on
	* @param offset16 UTF16 position to shift relative to start
	* @param shift32 number of codepoints to shift
	* @return new shifted offset16 relative to start
	* @exception IndexOutOfBoundsException if the new offset16 is out of
	*            bounds with respect to the subarray or the subarray bounds
	*            are out of range.
	* @stable ICU 2.1
	*/
	@:overload public static function moveCodePointOffset(source : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, offset16 : Int, shift32 : Int) : Int;
	
	
}
