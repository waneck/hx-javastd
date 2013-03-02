package java.lang;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Character implements java.io.Serializable implements java.lang.Comparable<Null<java.StdTypes.Char16>>
{
	/**
	* The minimum radix available for conversion to and from strings.
	* The constant value of this field is the smallest value permitted
	* for the radix argument in radix-conversion methods such as the
	* {@code digit} method, the {@code forDigit} method, and the
	* {@code toString} method of class {@code Integer}.
	*
	* @see     Character#digit(char, int)
	* @see     Character#forDigit(int, int)
	* @see     Integer#toString(int, int)
	* @see     Integer#valueOf(String)
	*/
	public static var MIN_RADIX(default, null) : Int;
	
	/**
	* The maximum radix available for conversion to and from strings.
	* The constant value of this field is the largest value permitted
	* for the radix argument in radix-conversion methods such as the
	* {@code digit} method, the {@code forDigit} method, and the
	* {@code toString} method of class {@code Integer}.
	*
	* @see     Character#digit(char, int)
	* @see     Character#forDigit(int, int)
	* @see     Integer#toString(int, int)
	* @see     Integer#valueOf(String)
	*/
	public static var MAX_RADIX(default, null) : Int;
	
	/**
	* The constant value of this field is the smallest value of type
	* {@code char}, {@code '\u005Cu0000'}.
	*
	* @since   1.0.2
	*/
	@:require(java0) public static var MIN_VALUE(default, null) : java.StdTypes.Char16;
	
	/**
	* The constant value of this field is the largest value of type
	* {@code char}, {@code '\u005CuFFFF'}.
	*
	* @since   1.0.2
	*/
	@:require(java0) public static var MAX_VALUE(default, null) : java.StdTypes.Char16;
	
	/**
	* The {@code Class} instance representing the primitive type
	* {@code char}.
	*
	* @since   1.1
	*/
	@:require(java1) public static var TYPE(default, null) : Class<Null<java.StdTypes.Char16>>;
	
	/**
	* General category "Cn" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var UNASSIGNED(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Lu" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var UPPERCASE_LETTER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Ll" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var LOWERCASE_LETTER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Lt" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var TITLECASE_LETTER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Lm" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var MODIFIER_LETTER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Lo" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var OTHER_LETTER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Mn" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var NON_SPACING_MARK(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Me" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var ENCLOSING_MARK(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Mc" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var COMBINING_SPACING_MARK(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Nd" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var DECIMAL_DIGIT_NUMBER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Nl" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var LETTER_NUMBER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "No" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var OTHER_NUMBER(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Zs" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var SPACE_SEPARATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Zl" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var LINE_SEPARATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Zp" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var PARAGRAPH_SEPARATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Cc" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var CONTROL(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Cf" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var FORMAT(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Co" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var PRIVATE_USE(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Cs" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var SURROGATE(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Pd" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var DASH_PUNCTUATION(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Ps" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var START_PUNCTUATION(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Pe" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var END_PUNCTUATION(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Pc" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var CONNECTOR_PUNCTUATION(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Po" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var OTHER_PUNCTUATION(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Sm" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var MATH_SYMBOL(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Sc" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var CURRENCY_SYMBOL(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Sk" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var MODIFIER_SYMBOL(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "So" in the Unicode specification.
	* @since   1.1
	*/
	@:require(java1) public static var OTHER_SYMBOL(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Pi" in the Unicode specification.
	* @since   1.4
	*/
	@:require(java4) public static var INITIAL_QUOTE_PUNCTUATION(default, null) : java.StdTypes.Int8;
	
	/**
	* General category "Pf" in the Unicode specification.
	* @since   1.4
	*/
	@:require(java4) public static var FINAL_QUOTE_PUNCTUATION(default, null) : java.StdTypes.Int8;
	
	/**
	* Undefined bidirectional character type. Undefined {@code char}
	* values have undefined directionality in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_UNDEFINED(default, null) : java.StdTypes.Int8;
	
	/**
	* Strong bidirectional character type "L" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_LEFT_TO_RIGHT(default, null) : java.StdTypes.Int8;
	
	/**
	* Strong bidirectional character type "R" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_RIGHT_TO_LEFT(default, null) : java.StdTypes.Int8;
	
	/**
	* Strong bidirectional character type "AL" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "EN" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_EUROPEAN_NUMBER(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "ES" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "ET" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "AN" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_ARABIC_NUMBER(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "CS" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_COMMON_NUMBER_SEPARATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "NSM" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_NONSPACING_MARK(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "BN" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_BOUNDARY_NEUTRAL(default, null) : java.StdTypes.Int8;
	
	/**
	* Neutral bidirectional character type "B" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_PARAGRAPH_SEPARATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* Neutral bidirectional character type "S" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_SEGMENT_SEPARATOR(default, null) : java.StdTypes.Int8;
	
	/**
	* Neutral bidirectional character type "WS" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_WHITESPACE(default, null) : java.StdTypes.Int8;
	
	/**
	* Neutral bidirectional character type "ON" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_OTHER_NEUTRALS(default, null) : java.StdTypes.Int8;
	
	/**
	* Strong bidirectional character type "LRE" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING(default, null) : java.StdTypes.Int8;
	
	/**
	* Strong bidirectional character type "LRO" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE(default, null) : java.StdTypes.Int8;
	
	/**
	* Strong bidirectional character type "RLE" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING(default, null) : java.StdTypes.Int8;
	
	/**
	* Strong bidirectional character type "RLO" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE(default, null) : java.StdTypes.Int8;
	
	/**
	* Weak bidirectional character type "PDF" in the Unicode specification.
	* @since 1.4
	*/
	@:require(java4) public static var DIRECTIONALITY_POP_DIRECTIONAL_FORMAT(default, null) : java.StdTypes.Int8;
	
	/**
	* The minimum value of a
	* <a href="http://www.unicode.org/glossary/#high_surrogate_code_unit">
	* Unicode high-surrogate code unit</a>
	* in the UTF-16 encoding, constant {@code '\u005CuD800'}.
	* A high-surrogate is also known as a <i>leading-surrogate</i>.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MIN_HIGH_SURROGATE(default, null) : java.StdTypes.Char16;
	
	/**
	* The maximum value of a
	* <a href="http://www.unicode.org/glossary/#high_surrogate_code_unit">
	* Unicode high-surrogate code unit</a>
	* in the UTF-16 encoding, constant {@code '\u005CuDBFF'}.
	* A high-surrogate is also known as a <i>leading-surrogate</i>.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MAX_HIGH_SURROGATE(default, null) : java.StdTypes.Char16;
	
	/**
	* The minimum value of a
	* <a href="http://www.unicode.org/glossary/#low_surrogate_code_unit">
	* Unicode low-surrogate code unit</a>
	* in the UTF-16 encoding, constant {@code '\u005CuDC00'}.
	* A low-surrogate is also known as a <i>trailing-surrogate</i>.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MIN_LOW_SURROGATE(default, null) : java.StdTypes.Char16;
	
	/**
	* The maximum value of a
	* <a href="http://www.unicode.org/glossary/#low_surrogate_code_unit">
	* Unicode low-surrogate code unit</a>
	* in the UTF-16 encoding, constant {@code '\u005CuDFFF'}.
	* A low-surrogate is also known as a <i>trailing-surrogate</i>.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MAX_LOW_SURROGATE(default, null) : java.StdTypes.Char16;
	
	/**
	* The minimum value of a Unicode surrogate code unit in the
	* UTF-16 encoding, constant {@code '\u005CuD800'}.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MIN_SURROGATE(default, null) : java.StdTypes.Char16;
	
	/**
	* The maximum value of a Unicode surrogate code unit in the
	* UTF-16 encoding, constant {@code '\u005CuDFFF'}.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MAX_SURROGATE(default, null) : java.StdTypes.Char16;
	
	/**
	* The minimum value of a
	* <a href="http://www.unicode.org/glossary/#supplementary_code_point">
	* Unicode supplementary code point</a>, constant {@code U+10000}.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MIN_SUPPLEMENTARY_CODE_POINT(default, null) : Int;
	
	/**
	* The minimum value of a
	* <a href="http://www.unicode.org/glossary/#code_point">
	* Unicode code point</a>, constant {@code U+0000}.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MIN_CODE_POINT(default, null) : Int;
	
	/**
	* The maximum value of a
	* <a href="http://www.unicode.org/glossary/#code_point">
	* Unicode code point</a>, constant {@code U+10FFFF}.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MAX_CODE_POINT(default, null) : Int;
	
	/**
	* Constructs a newly allocated {@code Character} object that
	* represents the specified {@code char} value.
	*
	* @param  value   the value to be represented by the
	*                  {@code Character} object.
	*/
	@:overload public function new(value : java.StdTypes.Char16) : Void;
	
	/**
	* Returns a <tt>Character</tt> instance representing the specified
	* <tt>char</tt> value.
	* If a new <tt>Character</tt> instance is not required, this method
	* should generally be used in preference to the constructor
	* {@link #Character(char)}, as this method is likely to yield
	* significantly better space and time performance by caching
	* frequently requested values.
	*
	* This method will always cache values in the range {@code
	* '\u005Cu0000'} to {@code '\u005Cu007F'}, inclusive, and may
	* cache other values outside of this range.
	*
	* @param  c a char value.
	* @return a <tt>Character</tt> instance representing <tt>c</tt>.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function valueOf(c : java.StdTypes.Char16) : Null<java.StdTypes.Char16>;
	
	/**
	* Returns the value of this {@code Character} object.
	* @return  the primitive {@code char} value represented by
	*          this object.
	*/
	@:overload public function charValue() : java.StdTypes.Char16;
	
	/**
	* Returns a hash code for this {@code Character}; equal to the result
	* of invoking {@code charValue()}.
	*
	* @return a hash code value for this {@code Character}
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this object against the specified object.
	* The result is {@code true} if and only if the argument is not
	* {@code null} and is a {@code Character} object that
	* represents the same {@code char} value as this object.
	*
	* @param   obj   the object to compare with.
	* @return  {@code true} if the objects are the same;
	*          {@code false} otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a {@code String} object representing this
	* {@code Character}'s value.  The result is a string of
	* length 1 whose sole component is the primitive
	* {@code char} value represented by this
	* {@code Character} object.
	*
	* @return  a string representation of this object.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a {@code String} object representing the
	* specified {@code char}.  The result is a string of length
	* 1 consisting solely of the specified {@code char}.
	*
	* @param c the {@code char} to be converted
	* @return the string representation of the specified {@code char}
	* @since 1.4
	*/
	@:require(java4) @:native('toString') @:overload public static function _toString(c : java.StdTypes.Char16) : String;
	
	/**
	* Determines whether the specified code point is a valid
	* <a href="http://www.unicode.org/glossary/#code_point">
	* Unicode code point value</a>.
	*
	* @param  codePoint the Unicode code point to be tested
	* @return {@code true} if the specified code point value is between
	*         {@link #MIN_CODE_POINT} and
	*         {@link #MAX_CODE_POINT} inclusive;
	*         {@code false} otherwise.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function isValidCodePoint(codePoint : Int) : Bool;
	
	/**
	* Determines whether the specified character (Unicode code point)
	* is in the <a href="#BMP">Basic Multilingual Plane (BMP)</a>.
	* Such code points can be represented using a single {@code char}.
	*
	* @param  codePoint the character (Unicode code point) to be tested
	* @return {@code true} if the specified code point is between
	*         {@link #MIN_VALUE} and {@link #MAX_VALUE} inclusive;
	*         {@code false} otherwise.
	* @since  1.7
	*/
	@:require(java7) @:overload public static function isBmpCodePoint(codePoint : Int) : Bool;
	
	/**
	* Determines whether the specified character (Unicode code point)
	* is in the <a href="#supplementary">supplementary character</a> range.
	*
	* @param  codePoint the character (Unicode code point) to be tested
	* @return {@code true} if the specified code point is between
	*         {@link #MIN_SUPPLEMENTARY_CODE_POINT} and
	*         {@link #MAX_CODE_POINT} inclusive;
	*         {@code false} otherwise.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function isSupplementaryCodePoint(codePoint : Int) : Bool;
	
	/**
	* Determines if the given {@code char} value is a
	* <a href="http://www.unicode.org/glossary/#high_surrogate_code_unit">
	* Unicode high-surrogate code unit</a>
	* (also known as <i>leading-surrogate code unit</i>).
	*
	* <p>Such values do not represent characters by themselves,
	* but are used in the representation of
	* <a href="#supplementary">supplementary characters</a>
	* in the UTF-16 encoding.
	*
	* @param  ch the {@code char} value to be tested.
	* @return {@code true} if the {@code char} value is between
	*         {@link #MIN_HIGH_SURROGATE} and
	*         {@link #MAX_HIGH_SURROGATE} inclusive;
	*         {@code false} otherwise.
	* @see    Character#isLowSurrogate(char)
	* @see    Character.UnicodeBlock#of(int)
	* @since  1.5
	*/
	@:require(java5) @:overload public static function isHighSurrogate(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the given {@code char} value is a
	* <a href="http://www.unicode.org/glossary/#low_surrogate_code_unit">
	* Unicode low-surrogate code unit</a>
	* (also known as <i>trailing-surrogate code unit</i>).
	*
	* <p>Such values do not represent characters by themselves,
	* but are used in the representation of
	* <a href="#supplementary">supplementary characters</a>
	* in the UTF-16 encoding.
	*
	* @param  ch the {@code char} value to be tested.
	* @return {@code true} if the {@code char} value is between
	*         {@link #MIN_LOW_SURROGATE} and
	*         {@link #MAX_LOW_SURROGATE} inclusive;
	*         {@code false} otherwise.
	* @see    Character#isHighSurrogate(char)
	* @since  1.5
	*/
	@:require(java5) @:overload public static function isLowSurrogate(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the given {@code char} value is a Unicode
	* <i>surrogate code unit</i>.
	*
	* <p>Such values do not represent characters by themselves,
	* but are used in the representation of
	* <a href="#supplementary">supplementary characters</a>
	* in the UTF-16 encoding.
	*
	* <p>A char value is a surrogate code unit if and only if it is either
	* a {@linkplain #isLowSurrogate(char) low-surrogate code unit} or
	* a {@linkplain #isHighSurrogate(char) high-surrogate code unit}.
	*
	* @param  ch the {@code char} value to be tested.
	* @return {@code true} if the {@code char} value is between
	*         {@link #MIN_SURROGATE} and
	*         {@link #MAX_SURROGATE} inclusive;
	*         {@code false} otherwise.
	* @since  1.7
	*/
	@:require(java7) @:overload public static function isSurrogate(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines whether the specified pair of {@code char}
	* values is a valid
	* <a href="http://www.unicode.org/glossary/#surrogate_pair">
	* Unicode surrogate pair</a>.

	* <p>This method is equivalent to the expression:
	* <blockquote><pre>
	* isHighSurrogate(high) && isLowSurrogate(low)
	* </pre></blockquote>
	*
	* @param  high the high-surrogate code value to be tested
	* @param  low the low-surrogate code value to be tested
	* @return {@code true} if the specified high and
	* low-surrogate code values represent a valid surrogate pair;
	* {@code false} otherwise.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function isSurrogatePair(high : java.StdTypes.Char16, low : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines the number of {@code char} values needed to
	* represent the specified character (Unicode code point). If the
	* specified character is equal to or greater than 0x10000, then
	* the method returns 2. Otherwise, the method returns 1.
	*
	* <p>This method doesn't validate the specified character to be a
	* valid Unicode code point. The caller must validate the
	* character value using {@link #isValidCodePoint(int) isValidCodePoint}
	* if necessary.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  2 if the character is a valid supplementary character; 1 otherwise.
	* @see     Character#isSupplementaryCodePoint(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function charCount(codePoint : Int) : Int;
	
	/**
	* Converts the specified surrogate pair to its supplementary code
	* point value. This method does not validate the specified
	* surrogate pair. The caller must validate it using {@link
	* #isSurrogatePair(char, char) isSurrogatePair} if necessary.
	*
	* @param  high the high-surrogate code unit
	* @param  low the low-surrogate code unit
	* @return the supplementary code point composed from the
	*         specified surrogate pair.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function toCodePoint(high : java.StdTypes.Char16, low : java.StdTypes.Char16) : Int;
	
	/**
	* Returns the code point at the given index of the
	* {@code CharSequence}. If the {@code char} value at
	* the given index in the {@code CharSequence} is in the
	* high-surrogate range, the following index is less than the
	* length of the {@code CharSequence}, and the
	* {@code char} value at the following index is in the
	* low-surrogate range, then the supplementary code point
	* corresponding to this surrogate pair is returned. Otherwise,
	* the {@code char} value at the given index is returned.
	*
	* @param seq a sequence of {@code char} values (Unicode code
	* units)
	* @param index the index to the {@code char} values (Unicode
	* code units) in {@code seq} to be converted
	* @return the Unicode code point at the given index
	* @exception NullPointerException if {@code seq} is null.
	* @exception IndexOutOfBoundsException if the value
	* {@code index} is negative or not less than
	* {@link CharSequence#length() seq.length()}.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointAt(seq : java.lang.CharSequence, index : Int) : Int;
	
	/**
	* Returns the code point at the given index of the
	* {@code char} array. If the {@code char} value at
	* the given index in the {@code char} array is in the
	* high-surrogate range, the following index is less than the
	* length of the {@code char} array, and the
	* {@code char} value at the following index is in the
	* low-surrogate range, then the supplementary code point
	* corresponding to this surrogate pair is returned. Otherwise,
	* the {@code char} value at the given index is returned.
	*
	* @param a the {@code char} array
	* @param index the index to the {@code char} values (Unicode
	* code units) in the {@code char} array to be converted
	* @return the Unicode code point at the given index
	* @exception NullPointerException if {@code a} is null.
	* @exception IndexOutOfBoundsException if the value
	* {@code index} is negative or not less than
	* the length of the {@code char} array.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointAt(a : java.NativeArray<java.StdTypes.Char16>, index : Int) : Int;
	
	/**
	* Returns the code point at the given index of the
	* {@code char} array, where only array elements with
	* {@code index} less than {@code limit} can be used. If
	* the {@code char} value at the given index in the
	* {@code char} array is in the high-surrogate range, the
	* following index is less than the {@code limit}, and the
	* {@code char} value at the following index is in the
	* low-surrogate range, then the supplementary code point
	* corresponding to this surrogate pair is returned. Otherwise,
	* the {@code char} value at the given index is returned.
	*
	* @param a the {@code char} array
	* @param index the index to the {@code char} values (Unicode
	* code units) in the {@code char} array to be converted
	* @param limit the index after the last array element that
	* can be used in the {@code char} array
	* @return the Unicode code point at the given index
	* @exception NullPointerException if {@code a} is null.
	* @exception IndexOutOfBoundsException if the {@code index}
	* argument is negative or not less than the {@code limit}
	* argument, or if the {@code limit} argument is negative or
	* greater than the length of the {@code char} array.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointAt(a : java.NativeArray<java.StdTypes.Char16>, index : Int, limit : Int) : Int;
	
	/**
	* Returns the code point preceding the given index of the
	* {@code CharSequence}. If the {@code char} value at
	* {@code (index - 1)} in the {@code CharSequence} is in
	* the low-surrogate range, {@code (index - 2)} is not
	* negative, and the {@code char} value at {@code (index - 2)}
	* in the {@code CharSequence} is in the
	* high-surrogate range, then the supplementary code point
	* corresponding to this surrogate pair is returned. Otherwise,
	* the {@code char} value at {@code (index - 1)} is
	* returned.
	*
	* @param seq the {@code CharSequence} instance
	* @param index the index following the code point that should be returned
	* @return the Unicode code point value before the given index.
	* @exception NullPointerException if {@code seq} is null.
	* @exception IndexOutOfBoundsException if the {@code index}
	* argument is less than 1 or greater than {@link
	* CharSequence#length() seq.length()}.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointBefore(seq : java.lang.CharSequence, index : Int) : Int;
	
	/**
	* Returns the code point preceding the given index of the
	* {@code char} array. If the {@code char} value at
	* {@code (index - 1)} in the {@code char} array is in
	* the low-surrogate range, {@code (index - 2)} is not
	* negative, and the {@code char} value at {@code (index - 2)}
	* in the {@code char} array is in the
	* high-surrogate range, then the supplementary code point
	* corresponding to this surrogate pair is returned. Otherwise,
	* the {@code char} value at {@code (index - 1)} is
	* returned.
	*
	* @param a the {@code char} array
	* @param index the index following the code point that should be returned
	* @return the Unicode code point value before the given index.
	* @exception NullPointerException if {@code a} is null.
	* @exception IndexOutOfBoundsException if the {@code index}
	* argument is less than 1 or greater than the length of the
	* {@code char} array
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointBefore(a : java.NativeArray<java.StdTypes.Char16>, index : Int) : Int;
	
	/**
	* Returns the code point preceding the given index of the
	* {@code char} array, where only array elements with
	* {@code index} greater than or equal to {@code start}
	* can be used. If the {@code char} value at {@code (index - 1)}
	* in the {@code char} array is in the
	* low-surrogate range, {@code (index - 2)} is not less than
	* {@code start}, and the {@code char} value at
	* {@code (index - 2)} in the {@code char} array is in
	* the high-surrogate range, then the supplementary code point
	* corresponding to this surrogate pair is returned. Otherwise,
	* the {@code char} value at {@code (index - 1)} is
	* returned.
	*
	* @param a the {@code char} array
	* @param index the index following the code point that should be returned
	* @param start the index of the first array element in the
	* {@code char} array
	* @return the Unicode code point value before the given index.
	* @exception NullPointerException if {@code a} is null.
	* @exception IndexOutOfBoundsException if the {@code index}
	* argument is not greater than the {@code start} argument or
	* is greater than the length of the {@code char} array, or
	* if the {@code start} argument is negative or not less than
	* the length of the {@code char} array.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointBefore(a : java.NativeArray<java.StdTypes.Char16>, index : Int, start : Int) : Int;
	
	/**
	* Returns the leading surrogate (a
	* <a href="http://www.unicode.org/glossary/#high_surrogate_code_unit">
	* high surrogate code unit</a>) of the
	* <a href="http://www.unicode.org/glossary/#surrogate_pair">
	* surrogate pair</a>
	* representing the specified supplementary character (Unicode
	* code point) in the UTF-16 encoding.  If the specified character
	* is not a
	* <a href="Character.html#supplementary">supplementary character</a>,
	* an unspecified {@code char} is returned.
	*
	* <p>If
	* {@link #isSupplementaryCodePoint isSupplementaryCodePoint(x)}
	* is {@code true}, then
	* {@link #isHighSurrogate isHighSurrogate}{@code (highSurrogate(x))} and
	* {@link #toCodePoint toCodePoint}{@code (highSurrogate(x), }{@link #lowSurrogate lowSurrogate}{@code (x)) == x}
	* are also always {@code true}.
	*
	* @param   codePoint a supplementary character (Unicode code point)
	* @return  the leading surrogate code unit used to represent the
	*          character in the UTF-16 encoding
	* @since   1.7
	*/
	@:require(java7) @:overload public static function highSurrogate(codePoint : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the trailing surrogate (a
	* <a href="http://www.unicode.org/glossary/#low_surrogate_code_unit">
	* low surrogate code unit</a>) of the
	* <a href="http://www.unicode.org/glossary/#surrogate_pair">
	* surrogate pair</a>
	* representing the specified supplementary character (Unicode
	* code point) in the UTF-16 encoding.  If the specified character
	* is not a
	* <a href="Character.html#supplementary">supplementary character</a>,
	* an unspecified {@code char} is returned.
	*
	* <p>If
	* {@link #isSupplementaryCodePoint isSupplementaryCodePoint(x)}
	* is {@code true}, then
	* {@link #isLowSurrogate isLowSurrogate}{@code (lowSurrogate(x))} and
	* {@link #toCodePoint toCodePoint}{@code (}{@link #highSurrogate highSurrogate}{@code (x), lowSurrogate(x)) == x}
	* are also always {@code true}.
	*
	* @param   codePoint a supplementary character (Unicode code point)
	* @return  the trailing surrogate code unit used to represent the
	*          character in the UTF-16 encoding
	* @since   1.7
	*/
	@:require(java7) @:overload public static function lowSurrogate(codePoint : Int) : java.StdTypes.Char16;
	
	/**
	* Converts the specified character (Unicode code point) to its
	* UTF-16 representation. If the specified code point is a BMP
	* (Basic Multilingual Plane or Plane 0) value, the same value is
	* stored in {@code dst[dstIndex]}, and 1 is returned. If the
	* specified code point is a supplementary character, its
	* surrogate values are stored in {@code dst[dstIndex]}
	* (high-surrogate) and {@code dst[dstIndex+1]}
	* (low-surrogate), and 2 is returned.
	*
	* @param  codePoint the character (Unicode code point) to be converted.
	* @param  dst an array of {@code char} in which the
	* {@code codePoint}'s UTF-16 value is stored.
	* @param dstIndex the start index into the {@code dst}
	* array where the converted value is stored.
	* @return 1 if the code point is a BMP code point, 2 if the
	* code point is a supplementary code point.
	* @exception IllegalArgumentException if the specified
	* {@code codePoint} is not a valid Unicode code point.
	* @exception NullPointerException if the specified {@code dst} is null.
	* @exception IndexOutOfBoundsException if {@code dstIndex}
	* is negative or not less than {@code dst.length}, or if
	* {@code dst} at {@code dstIndex} doesn't have enough
	* array element(s) to store the resulting {@code char}
	* value(s). (If {@code dstIndex} is equal to
	* {@code dst.length-1} and the specified
	* {@code codePoint} is a supplementary character, the
	* high-surrogate value is not stored in
	* {@code dst[dstIndex]}.)
	* @since  1.5
	*/
	@:require(java5) @:overload public static function toChars(codePoint : Int, dst : java.NativeArray<java.StdTypes.Char16>, dstIndex : Int) : Int;
	
	/**
	* Converts the specified character (Unicode code point) to its
	* UTF-16 representation stored in a {@code char} array. If
	* the specified code point is a BMP (Basic Multilingual Plane or
	* Plane 0) value, the resulting {@code char} array has
	* the same value as {@code codePoint}. If the specified code
	* point is a supplementary code point, the resulting
	* {@code char} array has the corresponding surrogate pair.
	*
	* @param  codePoint a Unicode code point
	* @return a {@code char} array having
	*         {@code codePoint}'s UTF-16 representation.
	* @exception IllegalArgumentException if the specified
	* {@code codePoint} is not a valid Unicode code point.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function toChars(codePoint : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Returns the number of Unicode code points in the text range of
	* the specified char sequence. The text range begins at the
	* specified {@code beginIndex} and extends to the
	* {@code char} at index {@code endIndex - 1}. Thus the
	* length (in {@code char}s) of the text range is
	* {@code endIndex-beginIndex}. Unpaired surrogates within
	* the text range count as one code point each.
	*
	* @param seq the char sequence
	* @param beginIndex the index to the first {@code char} of
	* the text range.
	* @param endIndex the index after the last {@code char} of
	* the text range.
	* @return the number of Unicode code points in the specified text
	* range
	* @exception NullPointerException if {@code seq} is null.
	* @exception IndexOutOfBoundsException if the
	* {@code beginIndex} is negative, or {@code endIndex}
	* is larger than the length of the given sequence, or
	* {@code beginIndex} is larger than {@code endIndex}.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointCount(seq : java.lang.CharSequence, beginIndex : Int, endIndex : Int) : Int;
	
	/**
	* Returns the number of Unicode code points in a subarray of the
	* {@code char} array argument. The {@code offset}
	* argument is the index of the first {@code char} of the
	* subarray and the {@code count} argument specifies the
	* length of the subarray in {@code char}s. Unpaired
	* surrogates within the subarray count as one code point each.
	*
	* @param a the {@code char} array
	* @param offset the index of the first {@code char} in the
	* given {@code char} array
	* @param count the length of the subarray in {@code char}s
	* @return the number of Unicode code points in the specified subarray
	* @exception NullPointerException if {@code a} is null.
	* @exception IndexOutOfBoundsException if {@code offset} or
	* {@code count} is negative, or if {@code offset +
	* count} is larger than the length of the given array.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function codePointCount(a : java.NativeArray<java.StdTypes.Char16>, offset : Int, count : Int) : Int;
	
	/**
	* Returns the index within the given char sequence that is offset
	* from the given {@code index} by {@code codePointOffset}
	* code points. Unpaired surrogates within the text range given by
	* {@code index} and {@code codePointOffset} count as
	* one code point each.
	*
	* @param seq the char sequence
	* @param index the index to be offset
	* @param codePointOffset the offset in code points
	* @return the index within the char sequence
	* @exception NullPointerException if {@code seq} is null.
	* @exception IndexOutOfBoundsException if {@code index}
	*   is negative or larger then the length of the char sequence,
	*   or if {@code codePointOffset} is positive and the
	*   subsequence starting with {@code index} has fewer than
	*   {@code codePointOffset} code points, or if
	*   {@code codePointOffset} is negative and the subsequence
	*   before {@code index} has fewer than the absolute value
	*   of {@code codePointOffset} code points.
	* @since 1.5
	*/
	@:require(java5) @:overload public static function offsetByCodePoints(seq : java.lang.CharSequence, index : Int, codePointOffset : Int) : Int;
	
	/**
	* Returns the index within the given {@code char} subarray
	* that is offset from the given {@code index} by
	* {@code codePointOffset} code points. The
	* {@code start} and {@code count} arguments specify a
	* subarray of the {@code char} array. Unpaired surrogates
	* within the text range given by {@code index} and
	* {@code codePointOffset} count as one code point each.
	*
	* @param a the {@code char} array
	* @param start the index of the first {@code char} of the
	* subarray
	* @param count the length of the subarray in {@code char}s
	* @param index the index to be offset
	* @param codePointOffset the offset in code points
	* @return the index within the subarray
	* @exception NullPointerException if {@code a} is null.
	* @exception IndexOutOfBoundsException
	*   if {@code start} or {@code count} is negative,
	*   or if {@code start + count} is larger than the length of
	*   the given array,
	*   or if {@code index} is less than {@code start} or
	*   larger then {@code start + count},
	*   or if {@code codePointOffset} is positive and the text range
	*   starting with {@code index} and ending with {@code start + count - 1}
	*   has fewer than {@code codePointOffset} code
	*   points,
	*   or if {@code codePointOffset} is negative and the text range
	*   starting with {@code start} and ending with {@code index - 1}
	*   has fewer than the absolute value of
	*   {@code codePointOffset} code points.
	* @since 1.5
	*/
	@:require(java5) @:overload public static function offsetByCodePoints(a : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int, index : Int, codePointOffset : Int) : Int;
	
	/**
	* Determines if the specified character is a lowercase character.
	* <p>
	* A character is lowercase if its general category type, provided
	* by {@code Character.getType(ch)}, is
	* {@code LOWERCASE_LETTER}, or it has contributory property
	* Other_Lowercase as defined by the Unicode Standard.
	* <p>
	* The following are examples of lowercase characters:
	* <p><blockquote><pre>
	* a b c d e f g h i j k l m n o p q r s t u v w x y z
	* '&#92;u00DF' '&#92;u00E0' '&#92;u00E1' '&#92;u00E2' '&#92;u00E3' '&#92;u00E4' '&#92;u00E5' '&#92;u00E6'
	* '&#92;u00E7' '&#92;u00E8' '&#92;u00E9' '&#92;u00EA' '&#92;u00EB' '&#92;u00EC' '&#92;u00ED' '&#92;u00EE'
	* '&#92;u00EF' '&#92;u00F0' '&#92;u00F1' '&#92;u00F2' '&#92;u00F3' '&#92;u00F4' '&#92;u00F5' '&#92;u00F6'
	* '&#92;u00F8' '&#92;u00F9' '&#92;u00FA' '&#92;u00FB' '&#92;u00FC' '&#92;u00FD' '&#92;u00FE' '&#92;u00FF'
	* </pre></blockquote>
	* <p> Many other Unicode characters are lowercase too.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isLowerCase(int)} method.
	*
	* @param   ch   the character to be tested.
	* @return  {@code true} if the character is lowercase;
	*          {@code false} otherwise.
	* @see     Character#isLowerCase(char)
	* @see     Character#isTitleCase(char)
	* @see     Character#toLowerCase(char)
	* @see     Character#getType(char)
	*/
	@:overload public static function isLowerCase(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is a
	* lowercase character.
	* <p>
	* A character is lowercase if its general category type, provided
	* by {@link Character#getType getType(codePoint)}, is
	* {@code LOWERCASE_LETTER}, or it has contributory property
	* Other_Lowercase as defined by the Unicode Standard.
	* <p>
	* The following are examples of lowercase characters:
	* <p><blockquote><pre>
	* a b c d e f g h i j k l m n o p q r s t u v w x y z
	* '&#92;u00DF' '&#92;u00E0' '&#92;u00E1' '&#92;u00E2' '&#92;u00E3' '&#92;u00E4' '&#92;u00E5' '&#92;u00E6'
	* '&#92;u00E7' '&#92;u00E8' '&#92;u00E9' '&#92;u00EA' '&#92;u00EB' '&#92;u00EC' '&#92;u00ED' '&#92;u00EE'
	* '&#92;u00EF' '&#92;u00F0' '&#92;u00F1' '&#92;u00F2' '&#92;u00F3' '&#92;u00F4' '&#92;u00F5' '&#92;u00F6'
	* '&#92;u00F8' '&#92;u00F9' '&#92;u00FA' '&#92;u00FB' '&#92;u00FC' '&#92;u00FD' '&#92;u00FE' '&#92;u00FF'
	* </pre></blockquote>
	* <p> Many other Unicode characters are lowercase too.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is lowercase;
	*          {@code false} otherwise.
	* @see     Character#isLowerCase(int)
	* @see     Character#isTitleCase(int)
	* @see     Character#toLowerCase(int)
	* @see     Character#getType(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isLowerCase(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is an uppercase character.
	* <p>
	* A character is uppercase if its general category type, provided by
	* {@code Character.getType(ch)}, is {@code UPPERCASE_LETTER}.
	* or it has contributory property Other_Uppercase as defined by the Unicode Standard.
	* <p>
	* The following are examples of uppercase characters:
	* <p><blockquote><pre>
	* A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
	* '&#92;u00C0' '&#92;u00C1' '&#92;u00C2' '&#92;u00C3' '&#92;u00C4' '&#92;u00C5' '&#92;u00C6' '&#92;u00C7'
	* '&#92;u00C8' '&#92;u00C9' '&#92;u00CA' '&#92;u00CB' '&#92;u00CC' '&#92;u00CD' '&#92;u00CE' '&#92;u00CF'
	* '&#92;u00D0' '&#92;u00D1' '&#92;u00D2' '&#92;u00D3' '&#92;u00D4' '&#92;u00D5' '&#92;u00D6' '&#92;u00D8'
	* '&#92;u00D9' '&#92;u00DA' '&#92;u00DB' '&#92;u00DC' '&#92;u00DD' '&#92;u00DE'
	* </pre></blockquote>
	* <p> Many other Unicode characters are uppercase too.<p>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isUpperCase(int)} method.
	*
	* @param   ch   the character to be tested.
	* @return  {@code true} if the character is uppercase;
	*          {@code false} otherwise.
	* @see     Character#isLowerCase(char)
	* @see     Character#isTitleCase(char)
	* @see     Character#toUpperCase(char)
	* @see     Character#getType(char)
	* @since   1.0
	*/
	@:require(java0) @:overload public static function isUpperCase(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is an uppercase character.
	* <p>
	* A character is uppercase if its general category type, provided by
	* {@link Character#getType(int) getType(codePoint)}, is {@code UPPERCASE_LETTER},
	* or it has contributory property Other_Uppercase as defined by the Unicode Standard.
	* <p>
	* The following are examples of uppercase characters:
	* <p><blockquote><pre>
	* A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
	* '&#92;u00C0' '&#92;u00C1' '&#92;u00C2' '&#92;u00C3' '&#92;u00C4' '&#92;u00C5' '&#92;u00C6' '&#92;u00C7'
	* '&#92;u00C8' '&#92;u00C9' '&#92;u00CA' '&#92;u00CB' '&#92;u00CC' '&#92;u00CD' '&#92;u00CE' '&#92;u00CF'
	* '&#92;u00D0' '&#92;u00D1' '&#92;u00D2' '&#92;u00D3' '&#92;u00D4' '&#92;u00D5' '&#92;u00D6' '&#92;u00D8'
	* '&#92;u00D9' '&#92;u00DA' '&#92;u00DB' '&#92;u00DC' '&#92;u00DD' '&#92;u00DE'
	* </pre></blockquote>
	* <p> Many other Unicode characters are uppercase too.<p>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is uppercase;
	*          {@code false} otherwise.
	* @see     Character#isLowerCase(int)
	* @see     Character#isTitleCase(int)
	* @see     Character#toUpperCase(int)
	* @see     Character#getType(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isUpperCase(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is a titlecase character.
	* <p>
	* A character is a titlecase character if its general
	* category type, provided by {@code Character.getType(ch)},
	* is {@code TITLECASE_LETTER}.
	* <p>
	* Some characters look like pairs of Latin letters. For example, there
	* is an uppercase letter that looks like "LJ" and has a corresponding
	* lowercase letter that looks like "lj". A third form, which looks like "Lj",
	* is the appropriate form to use when rendering a word in lowercase
	* with initial capitals, as for a book title.
	* <p>
	* These are some of the Unicode characters for which this method returns
	* {@code true}:
	* <ul>
	* <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON}
	* <li>{@code LATIN CAPITAL LETTER L WITH SMALL LETTER J}
	* <li>{@code LATIN CAPITAL LETTER N WITH SMALL LETTER J}
	* <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z}
	* </ul>
	* <p> Many other Unicode characters are titlecase too.<p>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isTitleCase(int)} method.
	*
	* @param   ch   the character to be tested.
	* @return  {@code true} if the character is titlecase;
	*          {@code false} otherwise.
	* @see     Character#isLowerCase(char)
	* @see     Character#isUpperCase(char)
	* @see     Character#toTitleCase(char)
	* @see     Character#getType(char)
	* @since   1.0.2
	*/
	@:require(java0) @:overload public static function isTitleCase(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is a titlecase character.
	* <p>
	* A character is a titlecase character if its general
	* category type, provided by {@link Character#getType(int) getType(codePoint)},
	* is {@code TITLECASE_LETTER}.
	* <p>
	* Some characters look like pairs of Latin letters. For example, there
	* is an uppercase letter that looks like "LJ" and has a corresponding
	* lowercase letter that looks like "lj". A third form, which looks like "Lj",
	* is the appropriate form to use when rendering a word in lowercase
	* with initial capitals, as for a book title.
	* <p>
	* These are some of the Unicode characters for which this method returns
	* {@code true}:
	* <ul>
	* <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON}
	* <li>{@code LATIN CAPITAL LETTER L WITH SMALL LETTER J}
	* <li>{@code LATIN CAPITAL LETTER N WITH SMALL LETTER J}
	* <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z}
	* </ul>
	* <p> Many other Unicode characters are titlecase too.<p>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is titlecase;
	*          {@code false} otherwise.
	* @see     Character#isLowerCase(int)
	* @see     Character#isUpperCase(int)
	* @see     Character#toTitleCase(int)
	* @see     Character#getType(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isTitleCase(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is a digit.
	* <p>
	* A character is a digit if its general category type, provided
	* by {@code Character.getType(ch)}, is
	* {@code DECIMAL_DIGIT_NUMBER}.
	* <p>
	* Some Unicode character ranges that contain digits:
	* <ul>
	* <li>{@code '\u005Cu0030'} through {@code '\u005Cu0039'},
	*     ISO-LATIN-1 digits ({@code '0'} through {@code '9'})
	* <li>{@code '\u005Cu0660'} through {@code '\u005Cu0669'},
	*     Arabic-Indic digits
	* <li>{@code '\u005Cu06F0'} through {@code '\u005Cu06F9'},
	*     Extended Arabic-Indic digits
	* <li>{@code '\u005Cu0966'} through {@code '\u005Cu096F'},
	*     Devanagari digits
	* <li>{@code '\u005CuFF10'} through {@code '\u005CuFF19'},
	*     Fullwidth digits
	* </ul>
	*
	* Many other character ranges contain digits as well.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isDigit(int)} method.
	*
	* @param   ch   the character to be tested.
	* @return  {@code true} if the character is a digit;
	*          {@code false} otherwise.
	* @see     Character#digit(char, int)
	* @see     Character#forDigit(int, int)
	* @see     Character#getType(char)
	*/
	@:overload public static function isDigit(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is a digit.
	* <p>
	* A character is a digit if its general category type, provided
	* by {@link Character#getType(int) getType(codePoint)}, is
	* {@code DECIMAL_DIGIT_NUMBER}.
	* <p>
	* Some Unicode character ranges that contain digits:
	* <ul>
	* <li>{@code '\u005Cu0030'} through {@code '\u005Cu0039'},
	*     ISO-LATIN-1 digits ({@code '0'} through {@code '9'})
	* <li>{@code '\u005Cu0660'} through {@code '\u005Cu0669'},
	*     Arabic-Indic digits
	* <li>{@code '\u005Cu06F0'} through {@code '\u005Cu06F9'},
	*     Extended Arabic-Indic digits
	* <li>{@code '\u005Cu0966'} through {@code '\u005Cu096F'},
	*     Devanagari digits
	* <li>{@code '\u005CuFF10'} through {@code '\u005CuFF19'},
	*     Fullwidth digits
	* </ul>
	*
	* Many other character ranges contain digits as well.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is a digit;
	*          {@code false} otherwise.
	* @see     Character#forDigit(int, int)
	* @see     Character#getType(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isDigit(codePoint : Int) : Bool;
	
	/**
	* Determines if a character is defined in Unicode.
	* <p>
	* A character is defined if at least one of the following is true:
	* <ul>
	* <li>It has an entry in the UnicodeData file.
	* <li>It has a value in a range defined by the UnicodeData file.
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isDefined(int)} method.
	*
	* @param   ch   the character to be tested
	* @return  {@code true} if the character has a defined meaning
	*          in Unicode; {@code false} otherwise.
	* @see     Character#isDigit(char)
	* @see     Character#isLetter(char)
	* @see     Character#isLetterOrDigit(char)
	* @see     Character#isLowerCase(char)
	* @see     Character#isTitleCase(char)
	* @see     Character#isUpperCase(char)
	* @since   1.0.2
	*/
	@:require(java0) @:overload public static function isDefined(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if a character (Unicode code point) is defined in Unicode.
	* <p>
	* A character is defined if at least one of the following is true:
	* <ul>
	* <li>It has an entry in the UnicodeData file.
	* <li>It has a value in a range defined by the UnicodeData file.
	* </ul>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character has a defined meaning
	*          in Unicode; {@code false} otherwise.
	* @see     Character#isDigit(int)
	* @see     Character#isLetter(int)
	* @see     Character#isLetterOrDigit(int)
	* @see     Character#isLowerCase(int)
	* @see     Character#isTitleCase(int)
	* @see     Character#isUpperCase(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isDefined(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is a letter.
	* <p>
	* A character is considered to be a letter if its general
	* category type, provided by {@code Character.getType(ch)},
	* is any of the following:
	* <ul>
	* <li> {@code UPPERCASE_LETTER}
	* <li> {@code LOWERCASE_LETTER}
	* <li> {@code TITLECASE_LETTER}
	* <li> {@code MODIFIER_LETTER}
	* <li> {@code OTHER_LETTER}
	* </ul>
	*
	* Not all letters have case. Many characters are
	* letters but are neither uppercase nor lowercase nor titlecase.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isLetter(int)} method.
	*
	* @param   ch   the character to be tested.
	* @return  {@code true} if the character is a letter;
	*          {@code false} otherwise.
	* @see     Character#isDigit(char)
	* @see     Character#isJavaIdentifierStart(char)
	* @see     Character#isJavaLetter(char)
	* @see     Character#isJavaLetterOrDigit(char)
	* @see     Character#isLetterOrDigit(char)
	* @see     Character#isLowerCase(char)
	* @see     Character#isTitleCase(char)
	* @see     Character#isUnicodeIdentifierStart(char)
	* @see     Character#isUpperCase(char)
	*/
	@:overload public static function isLetter(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is a letter.
	* <p>
	* A character is considered to be a letter if its general
	* category type, provided by {@link Character#getType(int) getType(codePoint)},
	* is any of the following:
	* <ul>
	* <li> {@code UPPERCASE_LETTER}
	* <li> {@code LOWERCASE_LETTER}
	* <li> {@code TITLECASE_LETTER}
	* <li> {@code MODIFIER_LETTER}
	* <li> {@code OTHER_LETTER}
	* </ul>
	*
	* Not all letters have case. Many characters are
	* letters but are neither uppercase nor lowercase nor titlecase.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is a letter;
	*          {@code false} otherwise.
	* @see     Character#isDigit(int)
	* @see     Character#isJavaIdentifierStart(int)
	* @see     Character#isLetterOrDigit(int)
	* @see     Character#isLowerCase(int)
	* @see     Character#isTitleCase(int)
	* @see     Character#isUnicodeIdentifierStart(int)
	* @see     Character#isUpperCase(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isLetter(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is a letter or digit.
	* <p>
	* A character is considered to be a letter or digit if either
	* {@code Character.isLetter(char ch)} or
	* {@code Character.isDigit(char ch)} returns
	* {@code true} for the character.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isLetterOrDigit(int)} method.
	*
	* @param   ch   the character to be tested.
	* @return  {@code true} if the character is a letter or digit;
	*          {@code false} otherwise.
	* @see     Character#isDigit(char)
	* @see     Character#isJavaIdentifierPart(char)
	* @see     Character#isJavaLetter(char)
	* @see     Character#isJavaLetterOrDigit(char)
	* @see     Character#isLetter(char)
	* @see     Character#isUnicodeIdentifierPart(char)
	* @since   1.0.2
	*/
	@:require(java0) @:overload public static function isLetterOrDigit(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is a letter or digit.
	* <p>
	* A character is considered to be a letter or digit if either
	* {@link #isLetter(int) isLetter(codePoint)} or
	* {@link #isDigit(int) isDigit(codePoint)} returns
	* {@code true} for the character.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is a letter or digit;
	*          {@code false} otherwise.
	* @see     Character#isDigit(int)
	* @see     Character#isJavaIdentifierPart(int)
	* @see     Character#isLetter(int)
	* @see     Character#isUnicodeIdentifierPart(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isLetterOrDigit(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is permissible as the first
	* character in a Java identifier.
	* <p>
	* A character may start a Java identifier if and only if
	* one of the following is true:
	* <ul>
	* <li> {@link #isLetter(char) isLetter(ch)} returns {@code true}
	* <li> {@link #getType(char) getType(ch)} returns {@code LETTER_NUMBER}
	* <li> {@code ch} is a currency symbol (such as {@code '$'})
	* <li> {@code ch} is a connecting punctuation character (such as {@code '_'}).
	* </ul>
	*
	* @param   ch the character to be tested.
	* @return  {@code true} if the character may start a Java
	*          identifier; {@code false} otherwise.
	* @see     Character#isJavaLetterOrDigit(char)
	* @see     Character#isJavaIdentifierStart(char)
	* @see     Character#isJavaIdentifierPart(char)
	* @see     Character#isLetter(char)
	* @see     Character#isLetterOrDigit(char)
	* @see     Character#isUnicodeIdentifierStart(char)
	* @since   1.02
	* @deprecated Replaced by isJavaIdentifierStart(char).
	*/
	@:require(java0) @:overload public static function isJavaLetter(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character may be part of a Java
	* identifier as other than the first character.
	* <p>
	* A character may be part of a Java identifier if and only if any
	* of the following are true:
	* <ul>
	* <li>  it is a letter
	* <li>  it is a currency symbol (such as {@code '$'})
	* <li>  it is a connecting punctuation character (such as {@code '_'})
	* <li>  it is a digit
	* <li>  it is a numeric letter (such as a Roman numeral character)
	* <li>  it is a combining mark
	* <li>  it is a non-spacing mark
	* <li> {@code isIdentifierIgnorable} returns
	* {@code true} for the character.
	* </ul>
	*
	* @param   ch the character to be tested.
	* @return  {@code true} if the character may be part of a
	*          Java identifier; {@code false} otherwise.
	* @see     Character#isJavaLetter(char)
	* @see     Character#isJavaIdentifierStart(char)
	* @see     Character#isJavaIdentifierPart(char)
	* @see     Character#isLetter(char)
	* @see     Character#isLetterOrDigit(char)
	* @see     Character#isUnicodeIdentifierPart(char)
	* @see     Character#isIdentifierIgnorable(char)
	* @since   1.02
	* @deprecated Replaced by isJavaIdentifierPart(char).
	*/
	@:require(java0) @:overload public static function isJavaLetterOrDigit(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is an alphabet.
	* <p>
	* A character is considered to be alphabetic if its general category type,
	* provided by {@link Character#getType(int) getType(codePoint)}, is any of
	* the following:
	* <ul>
	* <li> <code>UPPERCASE_LETTER</code>
	* <li> <code>LOWERCASE_LETTER</code>
	* <li> <code>TITLECASE_LETTER</code>
	* <li> <code>MODIFIER_LETTER</code>
	* <li> <code>OTHER_LETTER</code>
	* <li> <code>LETTER_NUMBER</code>
	* </ul>
	* or it has contributory property Other_Alphabetic as defined by the
	* Unicode Standard.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  <code>true</code> if the character is a Unicode alphabet
	*          character, <code>false</code> otherwise.
	* @since   1.7
	*/
	@:require(java7) @:overload public static function isAlphabetic(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is a CJKV
	* (Chinese, Japanese, Korean and Vietnamese) ideograph, as defined by
	* the Unicode Standard.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  <code>true</code> if the character is a Unicode ideograph
	*          character, <code>false</code> otherwise.
	* @since   1.7
	*/
	@:require(java7) @:overload public static function isIdeographic(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is
	* permissible as the first character in a Java identifier.
	* <p>
	* A character may start a Java identifier if and only if
	* one of the following conditions is true:
	* <ul>
	* <li> {@link #isLetter(char) isLetter(ch)} returns {@code true}
	* <li> {@link #getType(char) getType(ch)} returns {@code LETTER_NUMBER}
	* <li> {@code ch} is a currency symbol (such as {@code '$'})
	* <li> {@code ch} is a connecting punctuation character (such as {@code '_'}).
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isJavaIdentifierStart(int)} method.
	*
	* @param   ch the character to be tested.
	* @return  {@code true} if the character may start a Java identifier;
	*          {@code false} otherwise.
	* @see     Character#isJavaIdentifierPart(char)
	* @see     Character#isLetter(char)
	* @see     Character#isUnicodeIdentifierStart(char)
	* @see     javax.lang.model.SourceVersion#isIdentifier(CharSequence)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isJavaIdentifierStart(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the character (Unicode code point) is
	* permissible as the first character in a Java identifier.
	* <p>
	* A character may start a Java identifier if and only if
	* one of the following conditions is true:
	* <ul>
	* <li> {@link #isLetter(int) isLetter(codePoint)}
	*      returns {@code true}
	* <li> {@link #getType(int) getType(codePoint)}
	*      returns {@code LETTER_NUMBER}
	* <li> the referenced character is a currency symbol (such as {@code '$'})
	* <li> the referenced character is a connecting punctuation character
	*      (such as {@code '_'}).
	* </ul>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character may start a Java identifier;
	*          {@code false} otherwise.
	* @see     Character#isJavaIdentifierPart(int)
	* @see     Character#isLetter(int)
	* @see     Character#isUnicodeIdentifierStart(int)
	* @see     javax.lang.model.SourceVersion#isIdentifier(CharSequence)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isJavaIdentifierStart(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character may be part of a Java
	* identifier as other than the first character.
	* <p>
	* A character may be part of a Java identifier if any of the following
	* are true:
	* <ul>
	* <li>  it is a letter
	* <li>  it is a currency symbol (such as {@code '$'})
	* <li>  it is a connecting punctuation character (such as {@code '_'})
	* <li>  it is a digit
	* <li>  it is a numeric letter (such as a Roman numeral character)
	* <li>  it is a combining mark
	* <li>  it is a non-spacing mark
	* <li> {@code isIdentifierIgnorable} returns
	* {@code true} for the character
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isJavaIdentifierPart(int)} method.
	*
	* @param   ch      the character to be tested.
	* @return {@code true} if the character may be part of a
	*          Java identifier; {@code false} otherwise.
	* @see     Character#isIdentifierIgnorable(char)
	* @see     Character#isJavaIdentifierStart(char)
	* @see     Character#isLetterOrDigit(char)
	* @see     Character#isUnicodeIdentifierPart(char)
	* @see     javax.lang.model.SourceVersion#isIdentifier(CharSequence)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isJavaIdentifierPart(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the character (Unicode code point) may be part of a Java
	* identifier as other than the first character.
	* <p>
	* A character may be part of a Java identifier if any of the following
	* are true:
	* <ul>
	* <li>  it is a letter
	* <li>  it is a currency symbol (such as {@code '$'})
	* <li>  it is a connecting punctuation character (such as {@code '_'})
	* <li>  it is a digit
	* <li>  it is a numeric letter (such as a Roman numeral character)
	* <li>  it is a combining mark
	* <li>  it is a non-spacing mark
	* <li> {@link #isIdentifierIgnorable(int)
	* isIdentifierIgnorable(codePoint)} returns {@code true} for
	* the character
	* </ul>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return {@code true} if the character may be part of a
	*          Java identifier; {@code false} otherwise.
	* @see     Character#isIdentifierIgnorable(int)
	* @see     Character#isJavaIdentifierStart(int)
	* @see     Character#isLetterOrDigit(int)
	* @see     Character#isUnicodeIdentifierPart(int)
	* @see     javax.lang.model.SourceVersion#isIdentifier(CharSequence)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isJavaIdentifierPart(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is permissible as the
	* first character in a Unicode identifier.
	* <p>
	* A character may start a Unicode identifier if and only if
	* one of the following conditions is true:
	* <ul>
	* <li> {@link #isLetter(char) isLetter(ch)} returns {@code true}
	* <li> {@link #getType(char) getType(ch)} returns
	*      {@code LETTER_NUMBER}.
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isUnicodeIdentifierStart(int)} method.
	*
	* @param   ch      the character to be tested.
	* @return  {@code true} if the character may start a Unicode
	*          identifier; {@code false} otherwise.
	* @see     Character#isJavaIdentifierStart(char)
	* @see     Character#isLetter(char)
	* @see     Character#isUnicodeIdentifierPart(char)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isUnicodeIdentifierStart(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is permissible as the
	* first character in a Unicode identifier.
	* <p>
	* A character may start a Unicode identifier if and only if
	* one of the following conditions is true:
	* <ul>
	* <li> {@link #isLetter(int) isLetter(codePoint)}
	*      returns {@code true}
	* <li> {@link #getType(int) getType(codePoint)}
	*      returns {@code LETTER_NUMBER}.
	* </ul>
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character may start a Unicode
	*          identifier; {@code false} otherwise.
	* @see     Character#isJavaIdentifierStart(int)
	* @see     Character#isLetter(int)
	* @see     Character#isUnicodeIdentifierPart(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isUnicodeIdentifierStart(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character may be part of a Unicode
	* identifier as other than the first character.
	* <p>
	* A character may be part of a Unicode identifier if and only if
	* one of the following statements is true:
	* <ul>
	* <li>  it is a letter
	* <li>  it is a connecting punctuation character (such as {@code '_'})
	* <li>  it is a digit
	* <li>  it is a numeric letter (such as a Roman numeral character)
	* <li>  it is a combining mark
	* <li>  it is a non-spacing mark
	* <li> {@code isIdentifierIgnorable} returns
	* {@code true} for this character.
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isUnicodeIdentifierPart(int)} method.
	*
	* @param   ch      the character to be tested.
	* @return  {@code true} if the character may be part of a
	*          Unicode identifier; {@code false} otherwise.
	* @see     Character#isIdentifierIgnorable(char)
	* @see     Character#isJavaIdentifierPart(char)
	* @see     Character#isLetterOrDigit(char)
	* @see     Character#isUnicodeIdentifierStart(char)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isUnicodeIdentifierPart(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) may be part of a Unicode
	* identifier as other than the first character.
	* <p>
	* A character may be part of a Unicode identifier if and only if
	* one of the following statements is true:
	* <ul>
	* <li>  it is a letter
	* <li>  it is a connecting punctuation character (such as {@code '_'})
	* <li>  it is a digit
	* <li>  it is a numeric letter (such as a Roman numeral character)
	* <li>  it is a combining mark
	* <li>  it is a non-spacing mark
	* <li> {@code isIdentifierIgnorable} returns
	* {@code true} for this character.
	* </ul>
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character may be part of a
	*          Unicode identifier; {@code false} otherwise.
	* @see     Character#isIdentifierIgnorable(int)
	* @see     Character#isJavaIdentifierPart(int)
	* @see     Character#isLetterOrDigit(int)
	* @see     Character#isUnicodeIdentifierStart(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isUnicodeIdentifierPart(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character should be regarded as
	* an ignorable character in a Java identifier or a Unicode identifier.
	* <p>
	* The following Unicode characters are ignorable in a Java identifier
	* or a Unicode identifier:
	* <ul>
	* <li>ISO control characters that are not whitespace
	* <ul>
	* <li>{@code '\u005Cu0000'} through {@code '\u005Cu0008'}
	* <li>{@code '\u005Cu000E'} through {@code '\u005Cu001B'}
	* <li>{@code '\u005Cu007F'} through {@code '\u005Cu009F'}
	* </ul>
	*
	* <li>all characters that have the {@code FORMAT} general
	* category value
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isIdentifierIgnorable(int)} method.
	*
	* @param   ch      the character to be tested.
	* @return  {@code true} if the character is an ignorable control
	*          character that may be part of a Java or Unicode identifier;
	*           {@code false} otherwise.
	* @see     Character#isJavaIdentifierPart(char)
	* @see     Character#isUnicodeIdentifierPart(char)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isIdentifierIgnorable(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) should be regarded as
	* an ignorable character in a Java identifier or a Unicode identifier.
	* <p>
	* The following Unicode characters are ignorable in a Java identifier
	* or a Unicode identifier:
	* <ul>
	* <li>ISO control characters that are not whitespace
	* <ul>
	* <li>{@code '\u005Cu0000'} through {@code '\u005Cu0008'}
	* <li>{@code '\u005Cu000E'} through {@code '\u005Cu001B'}
	* <li>{@code '\u005Cu007F'} through {@code '\u005Cu009F'}
	* </ul>
	*
	* <li>all characters that have the {@code FORMAT} general
	* category value
	* </ul>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is an ignorable control
	*          character that may be part of a Java or Unicode identifier;
	*          {@code false} otherwise.
	* @see     Character#isJavaIdentifierPart(int)
	* @see     Character#isUnicodeIdentifierPart(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isIdentifierIgnorable(codePoint : Int) : Bool;
	
	/**
	* Converts the character argument to lowercase using case
	* mapping information from the UnicodeData file.
	* <p>
	* Note that
	* {@code Character.isLowerCase(Character.toLowerCase(ch))}
	* does not always return {@code true} for some ranges of
	* characters, particularly those that are symbols or ideographs.
	*
	* <p>In general, {@link String#toLowerCase()} should be used to map
	* characters to lowercase. {@code String} case mapping methods
	* have several benefits over {@code Character} case mapping methods.
	* {@code String} case mapping methods can perform locale-sensitive
	* mappings, context-sensitive mappings, and 1:M character mappings, whereas
	* the {@code Character} case mapping methods cannot.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #toLowerCase(int)} method.
	*
	* @param   ch   the character to be converted.
	* @return  the lowercase equivalent of the character, if any;
	*          otherwise, the character itself.
	* @see     Character#isLowerCase(char)
	* @see     String#toLowerCase()
	*/
	@:overload public static function toLowerCase(ch : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Converts the character (Unicode code point) argument to
	* lowercase using case mapping information from the UnicodeData
	* file.
	*
	* <p> Note that
	* {@code Character.isLowerCase(Character.toLowerCase(codePoint))}
	* does not always return {@code true} for some ranges of
	* characters, particularly those that are symbols or ideographs.
	*
	* <p>In general, {@link String#toLowerCase()} should be used to map
	* characters to lowercase. {@code String} case mapping methods
	* have several benefits over {@code Character} case mapping methods.
	* {@code String} case mapping methods can perform locale-sensitive
	* mappings, context-sensitive mappings, and 1:M character mappings, whereas
	* the {@code Character} case mapping methods cannot.
	*
	* @param   codePoint   the character (Unicode code point) to be converted.
	* @return  the lowercase equivalent of the character (Unicode code
	*          point), if any; otherwise, the character itself.
	* @see     Character#isLowerCase(int)
	* @see     String#toLowerCase()
	*
	* @since   1.5
	*/
	@:require(java5) @:overload public static function toLowerCase(codePoint : Int) : Int;
	
	/**
	* Converts the character argument to uppercase using case mapping
	* information from the UnicodeData file.
	* <p>
	* Note that
	* {@code Character.isUpperCase(Character.toUpperCase(ch))}
	* does not always return {@code true} for some ranges of
	* characters, particularly those that are symbols or ideographs.
	*
	* <p>In general, {@link String#toUpperCase()} should be used to map
	* characters to uppercase. {@code String} case mapping methods
	* have several benefits over {@code Character} case mapping methods.
	* {@code String} case mapping methods can perform locale-sensitive
	* mappings, context-sensitive mappings, and 1:M character mappings, whereas
	* the {@code Character} case mapping methods cannot.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #toUpperCase(int)} method.
	*
	* @param   ch   the character to be converted.
	* @return  the uppercase equivalent of the character, if any;
	*          otherwise, the character itself.
	* @see     Character#isUpperCase(char)
	* @see     String#toUpperCase()
	*/
	@:overload public static function toUpperCase(ch : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Converts the character (Unicode code point) argument to
	* uppercase using case mapping information from the UnicodeData
	* file.
	*
	* <p>Note that
	* {@code Character.isUpperCase(Character.toUpperCase(codePoint))}
	* does not always return {@code true} for some ranges of
	* characters, particularly those that are symbols or ideographs.
	*
	* <p>In general, {@link String#toUpperCase()} should be used to map
	* characters to uppercase. {@code String} case mapping methods
	* have several benefits over {@code Character} case mapping methods.
	* {@code String} case mapping methods can perform locale-sensitive
	* mappings, context-sensitive mappings, and 1:M character mappings, whereas
	* the {@code Character} case mapping methods cannot.
	*
	* @param   codePoint   the character (Unicode code point) to be converted.
	* @return  the uppercase equivalent of the character, if any;
	*          otherwise, the character itself.
	* @see     Character#isUpperCase(int)
	* @see     String#toUpperCase()
	*
	* @since   1.5
	*/
	@:require(java5) @:overload public static function toUpperCase(codePoint : Int) : Int;
	
	/**
	* Converts the character argument to titlecase using case mapping
	* information from the UnicodeData file. If a character has no
	* explicit titlecase mapping and is not itself a titlecase char
	* according to UnicodeData, then the uppercase mapping is
	* returned as an equivalent titlecase mapping. If the
	* {@code char} argument is already a titlecase
	* {@code char}, the same {@code char} value will be
	* returned.
	* <p>
	* Note that
	* {@code Character.isTitleCase(Character.toTitleCase(ch))}
	* does not always return {@code true} for some ranges of
	* characters.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #toTitleCase(int)} method.
	*
	* @param   ch   the character to be converted.
	* @return  the titlecase equivalent of the character, if any;
	*          otherwise, the character itself.
	* @see     Character#isTitleCase(char)
	* @see     Character#toLowerCase(char)
	* @see     Character#toUpperCase(char)
	* @since   1.0.2
	*/
	@:require(java0) @:overload public static function toTitleCase(ch : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Converts the character (Unicode code point) argument to titlecase using case mapping
	* information from the UnicodeData file. If a character has no
	* explicit titlecase mapping and is not itself a titlecase char
	* according to UnicodeData, then the uppercase mapping is
	* returned as an equivalent titlecase mapping. If the
	* character argument is already a titlecase
	* character, the same character value will be
	* returned.
	*
	* <p>Note that
	* {@code Character.isTitleCase(Character.toTitleCase(codePoint))}
	* does not always return {@code true} for some ranges of
	* characters.
	*
	* @param   codePoint   the character (Unicode code point) to be converted.
	* @return  the titlecase equivalent of the character, if any;
	*          otherwise, the character itself.
	* @see     Character#isTitleCase(int)
	* @see     Character#toLowerCase(int)
	* @see     Character#toUpperCase(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function toTitleCase(codePoint : Int) : Int;
	
	/**
	* Returns the numeric value of the character {@code ch} in the
	* specified radix.
	* <p>
	* If the radix is not in the range {@code MIN_RADIX} &le;
	* {@code radix} &le; {@code MAX_RADIX} or if the
	* value of {@code ch} is not a valid digit in the specified
	* radix, {@code -1} is returned. A character is a valid digit
	* if at least one of the following is true:
	* <ul>
	* <li>The method {@code isDigit} is {@code true} of the character
	*     and the Unicode decimal digit value of the character (or its
	*     single-character decomposition) is less than the specified radix.
	*     In this case the decimal digit value is returned.
	* <li>The character is one of the uppercase Latin letters
	*     {@code 'A'} through {@code 'Z'} and its code is less than
	*     {@code radix + 'A' - 10}.
	*     In this case, {@code ch - 'A' + 10}
	*     is returned.
	* <li>The character is one of the lowercase Latin letters
	*     {@code 'a'} through {@code 'z'} and its code is less than
	*     {@code radix + 'a' - 10}.
	*     In this case, {@code ch - 'a' + 10}
	*     is returned.
	* <li>The character is one of the fullwidth uppercase Latin letters A
	*     ({@code '\u005CuFF21'}) through Z ({@code '\u005CuFF3A'})
	*     and its code is less than
	*     {@code radix + '\u005CuFF21' - 10}.
	*     In this case, {@code ch - '\u005CuFF21' + 10}
	*     is returned.
	* <li>The character is one of the fullwidth lowercase Latin letters a
	*     ({@code '\u005CuFF41'}) through z ({@code '\u005CuFF5A'})
	*     and its code is less than
	*     {@code radix + '\u005CuFF41' - 10}.
	*     In this case, {@code ch - '\u005CuFF41' + 10}
	*     is returned.
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #digit(int, int)} method.
	*
	* @param   ch      the character to be converted.
	* @param   radix   the radix.
	* @return  the numeric value represented by the character in the
	*          specified radix.
	* @see     Character#forDigit(int, int)
	* @see     Character#isDigit(char)
	*/
	@:overload public static function digit(ch : java.StdTypes.Char16, radix : Int) : Int;
	
	/**
	* Returns the numeric value of the specified character (Unicode
	* code point) in the specified radix.
	*
	* <p>If the radix is not in the range {@code MIN_RADIX} &le;
	* {@code radix} &le; {@code MAX_RADIX} or if the
	* character is not a valid digit in the specified
	* radix, {@code -1} is returned. A character is a valid digit
	* if at least one of the following is true:
	* <ul>
	* <li>The method {@link #isDigit(int) isDigit(codePoint)} is {@code true} of the character
	*     and the Unicode decimal digit value of the character (or its
	*     single-character decomposition) is less than the specified radix.
	*     In this case the decimal digit value is returned.
	* <li>The character is one of the uppercase Latin letters
	*     {@code 'A'} through {@code 'Z'} and its code is less than
	*     {@code radix + 'A' - 10}.
	*     In this case, {@code codePoint - 'A' + 10}
	*     is returned.
	* <li>The character is one of the lowercase Latin letters
	*     {@code 'a'} through {@code 'z'} and its code is less than
	*     {@code radix + 'a' - 10}.
	*     In this case, {@code codePoint - 'a' + 10}
	*     is returned.
	* <li>The character is one of the fullwidth uppercase Latin letters A
	*     ({@code '\u005CuFF21'}) through Z ({@code '\u005CuFF3A'})
	*     and its code is less than
	*     {@code radix + '\u005CuFF21' - 10}.
	*     In this case,
	*     {@code codePoint - '\u005CuFF21' + 10}
	*     is returned.
	* <li>The character is one of the fullwidth lowercase Latin letters a
	*     ({@code '\u005CuFF41'}) through z ({@code '\u005CuFF5A'})
	*     and its code is less than
	*     {@code radix + '\u005CuFF41'- 10}.
	*     In this case,
	*     {@code codePoint - '\u005CuFF41' + 10}
	*     is returned.
	* </ul>
	*
	* @param   codePoint the character (Unicode code point) to be converted.
	* @param   radix   the radix.
	* @return  the numeric value represented by the character in the
	*          specified radix.
	* @see     Character#forDigit(int, int)
	* @see     Character#isDigit(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function digit(codePoint : Int, radix : Int) : Int;
	
	/**
	* Returns the {@code int} value that the specified Unicode
	* character represents. For example, the character
	* {@code '\u005Cu216C'} (the roman numeral fifty) will return
	* an int with a value of 50.
	* <p>
	* The letters A-Z in their uppercase ({@code '\u005Cu0041'} through
	* {@code '\u005Cu005A'}), lowercase
	* ({@code '\u005Cu0061'} through {@code '\u005Cu007A'}), and
	* full width variant ({@code '\u005CuFF21'} through
	* {@code '\u005CuFF3A'} and {@code '\u005CuFF41'} through
	* {@code '\u005CuFF5A'}) forms have numeric values from 10
	* through 35. This is independent of the Unicode specification,
	* which does not assign numeric values to these {@code char}
	* values.
	* <p>
	* If the character does not have a numeric value, then -1 is returned.
	* If the character has a numeric value that cannot be represented as a
	* nonnegative integer (for example, a fractional value), then -2
	* is returned.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #getNumericValue(int)} method.
	*
	* @param   ch      the character to be converted.
	* @return  the numeric value of the character, as a nonnegative {@code int}
	*           value; -2 if the character has a numeric value that is not a
	*          nonnegative integer; -1 if the character has no numeric value.
	* @see     Character#forDigit(int, int)
	* @see     Character#isDigit(char)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function getNumericValue(ch : java.StdTypes.Char16) : Int;
	
	/**
	* Returns the {@code int} value that the specified
	* character (Unicode code point) represents. For example, the character
	* {@code '\u005Cu216C'} (the Roman numeral fifty) will return
	* an {@code int} with a value of 50.
	* <p>
	* The letters A-Z in their uppercase ({@code '\u005Cu0041'} through
	* {@code '\u005Cu005A'}), lowercase
	* ({@code '\u005Cu0061'} through {@code '\u005Cu007A'}), and
	* full width variant ({@code '\u005CuFF21'} through
	* {@code '\u005CuFF3A'} and {@code '\u005CuFF41'} through
	* {@code '\u005CuFF5A'}) forms have numeric values from 10
	* through 35. This is independent of the Unicode specification,
	* which does not assign numeric values to these {@code char}
	* values.
	* <p>
	* If the character does not have a numeric value, then -1 is returned.
	* If the character has a numeric value that cannot be represented as a
	* nonnegative integer (for example, a fractional value), then -2
	* is returned.
	*
	* @param   codePoint the character (Unicode code point) to be converted.
	* @return  the numeric value of the character, as a nonnegative {@code int}
	*          value; -2 if the character has a numeric value that is not a
	*          nonnegative integer; -1 if the character has no numeric value.
	* @see     Character#forDigit(int, int)
	* @see     Character#isDigit(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function getNumericValue(codePoint : Int) : Int;
	
	/**
	* Determines if the specified character is ISO-LATIN-1 white space.
	* This method returns {@code true} for the following five
	* characters only:
	* <table>
	* <tr><td>{@code '\t'}</td>            <td>{@code U+0009}</td>
	*     <td>{@code HORIZONTAL TABULATION}</td></tr>
	* <tr><td>{@code '\n'}</td>            <td>{@code U+000A}</td>
	*     <td>{@code NEW LINE}</td></tr>
	* <tr><td>{@code '\f'}</td>            <td>{@code U+000C}</td>
	*     <td>{@code FORM FEED}</td></tr>
	* <tr><td>{@code '\r'}</td>            <td>{@code U+000D}</td>
	*     <td>{@code CARRIAGE RETURN}</td></tr>
	* <tr><td>{@code '&nbsp;'}</td>  <td>{@code U+0020}</td>
	*     <td>{@code SPACE}</td></tr>
	* </table>
	*
	* @param      ch   the character to be tested.
	* @return     {@code true} if the character is ISO-LATIN-1 white
	*             space; {@code false} otherwise.
	* @see        Character#isSpaceChar(char)
	* @see        Character#isWhitespace(char)
	* @deprecated Replaced by isWhitespace(char).
	*/
	@:overload public static function isSpace(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character is a Unicode space character.
	* A character is considered to be a space character if and only if
	* it is specified to be a space character by the Unicode Standard. This
	* method returns true if the character's general category type is any of
	* the following:
	* <ul>
	* <li> {@code SPACE_SEPARATOR}
	* <li> {@code LINE_SEPARATOR}
	* <li> {@code PARAGRAPH_SEPARATOR}
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isSpaceChar(int)} method.
	*
	* @param   ch      the character to be tested.
	* @return  {@code true} if the character is a space character;
	*          {@code false} otherwise.
	* @see     Character#isWhitespace(char)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isSpaceChar(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is a
	* Unicode space character.  A character is considered to be a
	* space character if and only if it is specified to be a space
	* character by the Unicode Standard. This method returns true if
	* the character's general category type is any of the following:
	*
	* <ul>
	* <li> {@link #SPACE_SEPARATOR}
	* <li> {@link #LINE_SEPARATOR}
	* <li> {@link #PARAGRAPH_SEPARATOR}
	* </ul>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is a space character;
	*          {@code false} otherwise.
	* @see     Character#isWhitespace(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isSpaceChar(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is white space according to Java.
	* A character is a Java whitespace character if and only if it satisfies
	* one of the following criteria:
	* <ul>
	* <li> It is a Unicode space character ({@code SPACE_SEPARATOR},
	*      {@code LINE_SEPARATOR}, or {@code PARAGRAPH_SEPARATOR})
	*      but is not also a non-breaking space ({@code '\u005Cu00A0'},
	*      {@code '\u005Cu2007'}, {@code '\u005Cu202F'}).
	* <li> It is {@code '\u005Ct'}, U+0009 HORIZONTAL TABULATION.
	* <li> It is {@code '\u005Cn'}, U+000A LINE FEED.
	* <li> It is {@code '\u005Cu000B'}, U+000B VERTICAL TABULATION.
	* <li> It is {@code '\u005Cf'}, U+000C FORM FEED.
	* <li> It is {@code '\u005Cr'}, U+000D CARRIAGE RETURN.
	* <li> It is {@code '\u005Cu001C'}, U+001C FILE SEPARATOR.
	* <li> It is {@code '\u005Cu001D'}, U+001D GROUP SEPARATOR.
	* <li> It is {@code '\u005Cu001E'}, U+001E RECORD SEPARATOR.
	* <li> It is {@code '\u005Cu001F'}, U+001F UNIT SEPARATOR.
	* </ul>
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isWhitespace(int)} method.
	*
	* @param   ch the character to be tested.
	* @return  {@code true} if the character is a Java whitespace
	*          character; {@code false} otherwise.
	* @see     Character#isSpaceChar(char)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isWhitespace(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the specified character (Unicode code point) is
	* white space according to Java.  A character is a Java
	* whitespace character if and only if it satisfies one of the
	* following criteria:
	* <ul>
	* <li> It is a Unicode space character ({@link #SPACE_SEPARATOR},
	*      {@link #LINE_SEPARATOR}, or {@link #PARAGRAPH_SEPARATOR})
	*      but is not also a non-breaking space ({@code '\u005Cu00A0'},
	*      {@code '\u005Cu2007'}, {@code '\u005Cu202F'}).
	* <li> It is {@code '\u005Ct'}, U+0009 HORIZONTAL TABULATION.
	* <li> It is {@code '\u005Cn'}, U+000A LINE FEED.
	* <li> It is {@code '\u005Cu000B'}, U+000B VERTICAL TABULATION.
	* <li> It is {@code '\u005Cf'}, U+000C FORM FEED.
	* <li> It is {@code '\u005Cr'}, U+000D CARRIAGE RETURN.
	* <li> It is {@code '\u005Cu001C'}, U+001C FILE SEPARATOR.
	* <li> It is {@code '\u005Cu001D'}, U+001D GROUP SEPARATOR.
	* <li> It is {@code '\u005Cu001E'}, U+001E RECORD SEPARATOR.
	* <li> It is {@code '\u005Cu001F'}, U+001F UNIT SEPARATOR.
	* </ul>
	* <p>
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is a Java whitespace
	*          character; {@code false} otherwise.
	* @see     Character#isSpaceChar(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isWhitespace(codePoint : Int) : Bool;
	
	/**
	* Determines if the specified character is an ISO control
	* character.  A character is considered to be an ISO control
	* character if its code is in the range {@code '\u005Cu0000'}
	* through {@code '\u005Cu001F'} or in the range
	* {@code '\u005Cu007F'} through {@code '\u005Cu009F'}.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isISOControl(int)} method.
	*
	* @param   ch      the character to be tested.
	* @return  {@code true} if the character is an ISO control character;
	*          {@code false} otherwise.
	*
	* @see     Character#isSpaceChar(char)
	* @see     Character#isWhitespace(char)
	* @since   1.1
	*/
	@:require(java1) @:overload public static function isISOControl(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines if the referenced character (Unicode code point) is an ISO control
	* character.  A character is considered to be an ISO control
	* character if its code is in the range {@code '\u005Cu0000'}
	* through {@code '\u005Cu001F'} or in the range
	* {@code '\u005Cu007F'} through {@code '\u005Cu009F'}.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is an ISO control character;
	*          {@code false} otherwise.
	* @see     Character#isSpaceChar(int)
	* @see     Character#isWhitespace(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isISOControl(codePoint : Int) : Bool;
	
	/**
	* Returns a value indicating a character's general category.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #getType(int)} method.
	*
	* @param   ch      the character to be tested.
	* @return  a value of type {@code int} representing the
	*          character's general category.
	* @see     Character#COMBINING_SPACING_MARK
	* @see     Character#CONNECTOR_PUNCTUATION
	* @see     Character#CONTROL
	* @see     Character#CURRENCY_SYMBOL
	* @see     Character#DASH_PUNCTUATION
	* @see     Character#DECIMAL_DIGIT_NUMBER
	* @see     Character#ENCLOSING_MARK
	* @see     Character#END_PUNCTUATION
	* @see     Character#FINAL_QUOTE_PUNCTUATION
	* @see     Character#FORMAT
	* @see     Character#INITIAL_QUOTE_PUNCTUATION
	* @see     Character#LETTER_NUMBER
	* @see     Character#LINE_SEPARATOR
	* @see     Character#LOWERCASE_LETTER
	* @see     Character#MATH_SYMBOL
	* @see     Character#MODIFIER_LETTER
	* @see     Character#MODIFIER_SYMBOL
	* @see     Character#NON_SPACING_MARK
	* @see     Character#OTHER_LETTER
	* @see     Character#OTHER_NUMBER
	* @see     Character#OTHER_PUNCTUATION
	* @see     Character#OTHER_SYMBOL
	* @see     Character#PARAGRAPH_SEPARATOR
	* @see     Character#PRIVATE_USE
	* @see     Character#SPACE_SEPARATOR
	* @see     Character#START_PUNCTUATION
	* @see     Character#SURROGATE
	* @see     Character#TITLECASE_LETTER
	* @see     Character#UNASSIGNED
	* @see     Character#UPPERCASE_LETTER
	* @since   1.1
	*/
	@:require(java1) @:overload public static function getType(ch : java.StdTypes.Char16) : Int;
	
	/**
	* Returns a value indicating a character's general category.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  a value of type {@code int} representing the
	*          character's general category.
	* @see     Character#COMBINING_SPACING_MARK COMBINING_SPACING_MARK
	* @see     Character#CONNECTOR_PUNCTUATION CONNECTOR_PUNCTUATION
	* @see     Character#CONTROL CONTROL
	* @see     Character#CURRENCY_SYMBOL CURRENCY_SYMBOL
	* @see     Character#DASH_PUNCTUATION DASH_PUNCTUATION
	* @see     Character#DECIMAL_DIGIT_NUMBER DECIMAL_DIGIT_NUMBER
	* @see     Character#ENCLOSING_MARK ENCLOSING_MARK
	* @see     Character#END_PUNCTUATION END_PUNCTUATION
	* @see     Character#FINAL_QUOTE_PUNCTUATION FINAL_QUOTE_PUNCTUATION
	* @see     Character#FORMAT FORMAT
	* @see     Character#INITIAL_QUOTE_PUNCTUATION INITIAL_QUOTE_PUNCTUATION
	* @see     Character#LETTER_NUMBER LETTER_NUMBER
	* @see     Character#LINE_SEPARATOR LINE_SEPARATOR
	* @see     Character#LOWERCASE_LETTER LOWERCASE_LETTER
	* @see     Character#MATH_SYMBOL MATH_SYMBOL
	* @see     Character#MODIFIER_LETTER MODIFIER_LETTER
	* @see     Character#MODIFIER_SYMBOL MODIFIER_SYMBOL
	* @see     Character#NON_SPACING_MARK NON_SPACING_MARK
	* @see     Character#OTHER_LETTER OTHER_LETTER
	* @see     Character#OTHER_NUMBER OTHER_NUMBER
	* @see     Character#OTHER_PUNCTUATION OTHER_PUNCTUATION
	* @see     Character#OTHER_SYMBOL OTHER_SYMBOL
	* @see     Character#PARAGRAPH_SEPARATOR PARAGRAPH_SEPARATOR
	* @see     Character#PRIVATE_USE PRIVATE_USE
	* @see     Character#SPACE_SEPARATOR SPACE_SEPARATOR
	* @see     Character#START_PUNCTUATION START_PUNCTUATION
	* @see     Character#SURROGATE SURROGATE
	* @see     Character#TITLECASE_LETTER TITLECASE_LETTER
	* @see     Character#UNASSIGNED UNASSIGNED
	* @see     Character#UPPERCASE_LETTER UPPERCASE_LETTER
	* @since   1.5
	*/
	@:require(java5) @:overload public static function getType(codePoint : Int) : Int;
	
	/**
	* Determines the character representation for a specific digit in
	* the specified radix. If the value of {@code radix} is not a
	* valid radix, or the value of {@code digit} is not a valid
	* digit in the specified radix, the null character
	* ({@code '\u005Cu0000'}) is returned.
	* <p>
	* The {@code radix} argument is valid if it is greater than or
	* equal to {@code MIN_RADIX} and less than or equal to
	* {@code MAX_RADIX}. The {@code digit} argument is valid if
	* {@code 0 <= digit < radix}.
	* <p>
	* If the digit is less than 10, then
	* {@code '0' + digit} is returned. Otherwise, the value
	* {@code 'a' + digit - 10} is returned.
	*
	* @param   digit   the number to convert to a character.
	* @param   radix   the radix.
	* @return  the {@code char} representation of the specified digit
	*          in the specified radix.
	* @see     Character#MIN_RADIX
	* @see     Character#MAX_RADIX
	* @see     Character#digit(char, int)
	*/
	@:overload public static function forDigit(digit : Int, radix : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the Unicode directionality property for the given
	* character.  Character directionality is used to calculate the
	* visual ordering of text. The directionality value of undefined
	* {@code char} values is {@code DIRECTIONALITY_UNDEFINED}.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #getDirectionality(int)} method.
	*
	* @param  ch {@code char} for which the directionality property
	*            is requested.
	* @return the directionality property of the {@code char} value.
	*
	* @see Character#DIRECTIONALITY_UNDEFINED
	* @see Character#DIRECTIONALITY_LEFT_TO_RIGHT
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC
	* @see Character#DIRECTIONALITY_EUROPEAN_NUMBER
	* @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR
	* @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR
	* @see Character#DIRECTIONALITY_ARABIC_NUMBER
	* @see Character#DIRECTIONALITY_COMMON_NUMBER_SEPARATOR
	* @see Character#DIRECTIONALITY_NONSPACING_MARK
	* @see Character#DIRECTIONALITY_BOUNDARY_NEUTRAL
	* @see Character#DIRECTIONALITY_PARAGRAPH_SEPARATOR
	* @see Character#DIRECTIONALITY_SEGMENT_SEPARATOR
	* @see Character#DIRECTIONALITY_WHITESPACE
	* @see Character#DIRECTIONALITY_OTHER_NEUTRALS
	* @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING
	* @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE
	* @see Character#DIRECTIONALITY_POP_DIRECTIONAL_FORMAT
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getDirectionality(ch : java.StdTypes.Char16) : java.StdTypes.Int8;
	
	/**
	* Returns the Unicode directionality property for the given
	* character (Unicode code point).  Character directionality is
	* used to calculate the visual ordering of text. The
	* directionality value of undefined character is {@link
	* #DIRECTIONALITY_UNDEFINED}.
	*
	* @param   codePoint the character (Unicode code point) for which
	*          the directionality property is requested.
	* @return the directionality property of the character.
	*
	* @see Character#DIRECTIONALITY_UNDEFINED DIRECTIONALITY_UNDEFINED
	* @see Character#DIRECTIONALITY_LEFT_TO_RIGHT DIRECTIONALITY_LEFT_TO_RIGHT
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT DIRECTIONALITY_RIGHT_TO_LEFT
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC
	* @see Character#DIRECTIONALITY_EUROPEAN_NUMBER DIRECTIONALITY_EUROPEAN_NUMBER
	* @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR
	* @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR
	* @see Character#DIRECTIONALITY_ARABIC_NUMBER DIRECTIONALITY_ARABIC_NUMBER
	* @see Character#DIRECTIONALITY_COMMON_NUMBER_SEPARATOR DIRECTIONALITY_COMMON_NUMBER_SEPARATOR
	* @see Character#DIRECTIONALITY_NONSPACING_MARK DIRECTIONALITY_NONSPACING_MARK
	* @see Character#DIRECTIONALITY_BOUNDARY_NEUTRAL DIRECTIONALITY_BOUNDARY_NEUTRAL
	* @see Character#DIRECTIONALITY_PARAGRAPH_SEPARATOR DIRECTIONALITY_PARAGRAPH_SEPARATOR
	* @see Character#DIRECTIONALITY_SEGMENT_SEPARATOR DIRECTIONALITY_SEGMENT_SEPARATOR
	* @see Character#DIRECTIONALITY_WHITESPACE DIRECTIONALITY_WHITESPACE
	* @see Character#DIRECTIONALITY_OTHER_NEUTRALS DIRECTIONALITY_OTHER_NEUTRALS
	* @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING
	* @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING
	* @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE
	* @see Character#DIRECTIONALITY_POP_DIRECTIONAL_FORMAT DIRECTIONALITY_POP_DIRECTIONAL_FORMAT
	* @since    1.5
	*/
	@:require(java5) @:overload public static function getDirectionality(codePoint : Int) : java.StdTypes.Int8;
	
	/**
	* Determines whether the character is mirrored according to the
	* Unicode specification.  Mirrored characters should have their
	* glyphs horizontally mirrored when displayed in text that is
	* right-to-left.  For example, {@code '\u005Cu0028'} LEFT
	* PARENTHESIS is semantically defined to be an <i>opening
	* parenthesis</i>.  This will appear as a "(" in text that is
	* left-to-right but as a ")" in text that is right-to-left.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="#supplementary"> supplementary characters</a>. To support
	* all Unicode characters, including supplementary characters, use
	* the {@link #isMirrored(int)} method.
	*
	* @param  ch {@code char} for which the mirrored property is requested
	* @return {@code true} if the char is mirrored, {@code false}
	*         if the {@code char} is not mirrored or is not defined.
	* @since 1.4
	*/
	@:require(java4) @:overload public static function isMirrored(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Determines whether the specified character (Unicode code point)
	* is mirrored according to the Unicode specification.  Mirrored
	* characters should have their glyphs horizontally mirrored when
	* displayed in text that is right-to-left.  For example,
	* {@code '\u005Cu0028'} LEFT PARENTHESIS is semantically
	* defined to be an <i>opening parenthesis</i>.  This will appear
	* as a "(" in text that is left-to-right but as a ")" in text
	* that is right-to-left.
	*
	* @param   codePoint the character (Unicode code point) to be tested.
	* @return  {@code true} if the character is mirrored, {@code false}
	*          if the character is not mirrored or is not defined.
	* @since   1.5
	*/
	@:require(java5) @:overload public static function isMirrored(codePoint : Int) : Bool;
	
	/**
	* Compares two {@code Character} objects numerically.
	*
	* @param   anotherCharacter   the {@code Character} to be compared.

	* @return  the value {@code 0} if the argument {@code Character}
	*          is equal to this {@code Character}; a value less than
	*          {@code 0} if this {@code Character} is numerically less
	*          than the {@code Character} argument; and a value greater than
	*          {@code 0} if this {@code Character} is numerically greater
	*          than the {@code Character} argument (unsigned comparison).
	*          Note that this is strictly a numerical comparison; it is not
	*          locale-dependent.
	* @since   1.2
	*/
	@:require(java2) @:overload public function compareTo(anotherCharacter : Null<java.StdTypes.Char16>) : Int;
	
	/**
	* Compares two {@code char} values numerically.
	* The value returned is identical to what would be returned by:
	* <pre>
	*    Character.valueOf(x).compareTo(Character.valueOf(y))
	* </pre>
	*
	* @param  x the first {@code char} to compare
	* @param  y the second {@code char} to compare
	* @return the value {@code 0} if {@code x == y};
	*         a value less than {@code 0} if {@code x < y}; and
	*         a value greater than {@code 0} if {@code x > y}
	* @since 1.7
	*/
	@:require(java7) @:overload public static function compare(x : java.StdTypes.Char16, y : java.StdTypes.Char16) : Int;
	
	/**
	* The number of bits used to represent a <tt>char</tt> value in unsigned
	* binary form, constant {@code 16}.
	*
	* @since 1.5
	*/
	@:require(java5) public static var SIZE(default, null) : Int;
	
	/**
	* Returns the value obtained by reversing the order of the bytes in the
	* specified <tt>char</tt> value.
	*
	* @return the value obtained by reversing (or, equivalently, swapping)
	*     the bytes in the specified <tt>char</tt> value.
	* @since 1.5
	*/
	@:require(java5) @:overload public static function reverseBytes(ch : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Returns the Unicode name of the specified character
	* {@code codePoint}, or null if the code point is
	* {@link #UNASSIGNED unassigned}.
	* <p>
	* Note: if the specified character is not assigned a name by
	* the <i>UnicodeData</i> file (part of the Unicode Character
	* Database maintained by the Unicode Consortium), the returned
	* name is the same as the result of expression.
	*
	* <blockquote>{@code
	*     Character.UnicodeBlock.of(codePoint).toString().replace('_', ' ')
	*     + " "
	*     + Integer.toHexString(codePoint).toUpperCase(Locale.ENGLISH);
	*
	* }</blockquote>
	*
	* @param  codePoint the character (Unicode code point)
	*
	* @return the Unicode name of the specified character, or null if
	*         the code point is unassigned.
	*
	* @exception IllegalArgumentException if the specified
	*            {@code codePoint} is not a valid Unicode
	*            code point.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public static function getName(codePoint : Int) : String;
	
	
}
/**
* Instances of this class represent particular subsets of the Unicode
* character set.  The only family of subsets defined in the
* {@code Character} class is {@link Character.UnicodeBlock}.
* Other portions of the Java API may define other subsets for their
* own purposes.
*
* @since 1.2
*/
@:require(java2) @:native('java$lang$Character$Subset') extern class Character_Subset
{
	/**
	* Constructs a new {@code Subset} instance.
	*
	* @param  name  The name of this subset
	* @exception NullPointerException if name is {@code null}
	*/
	@:overload private function new(name : String) : Void;
	
	/**
	* Compares two {@code Subset} objects for equality.
	* This method returns {@code true} if and only if
	* {@code this} and the argument refer to the same
	* object; since this method is {@code final}, this
	* guarantee holds for all subclasses.
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the standard hash code as defined by the
	* {@link Object#hashCode} method.  This method
	* is {@code final} in order to ensure that the
	* {@code equals} and {@code hashCode} methods will
	* be consistent in all subclasses.
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* Returns the name of this subset.
	*/
	@:overload @:final public function toString() : String;
	
	
}
/**
* A family of character subsets representing the character blocks in the
* Unicode specification. Character blocks generally define characters
* used for a specific script or purpose. A character is contained by
* at most one Unicode block.
*
* @since 1.2
*/
@:require(java2) @:native('java$lang$Character$UnicodeBlock') extern class Character_UnicodeBlock extends java.lang.Character.Character_Subset
{
	/**
	* Constant for the "Basic Latin" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var BASIC_LATIN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Latin-1 Supplement" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var LATIN_1_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Latin Extended-A" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var LATIN_EXTENDED_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Latin Extended-B" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var LATIN_EXTENDED_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "IPA Extensions" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var IPA_EXTENSIONS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Spacing Modifier Letters" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var SPACING_MODIFIER_LETTERS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Combining Diacritical Marks" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var COMBINING_DIACRITICAL_MARKS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Greek and Coptic" Unicode character block.
	* <p>
	* This block was previously known as the "Greek" block.
	*
	* @since 1.2
	*/
	@:require(java2) public static var GREEK(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cyrillic" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var CYRILLIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Armenian" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ARMENIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hebrew" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var HEBREW(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Arabic" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ARABIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Devanagari" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var DEVANAGARI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Bengali" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var BENGALI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Gurmukhi" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var GURMUKHI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Gujarati" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var GUJARATI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Oriya" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ORIYA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tamil" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var TAMIL(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Telugu" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var TELUGU(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Kannada" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var KANNADA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Malayalam" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var MALAYALAM(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Thai" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var THAI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Lao" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var LAO(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tibetan" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var TIBETAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Georgian" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var GEORGIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hangul Jamo" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var HANGUL_JAMO(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Latin Extended Additional" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var LATIN_EXTENDED_ADDITIONAL(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Greek Extended" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var GREEK_EXTENDED(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "General Punctuation" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var GENERAL_PUNCTUATION(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Superscripts and Subscripts" Unicode character
	* block.
	* @since 1.2
	*/
	@:require(java2) public static var SUPERSCRIPTS_AND_SUBSCRIPTS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Currency Symbols" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var CURRENCY_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Combining Diacritical Marks for Symbols" Unicode
	* character block.
	* <p>
	* This block was previously known as "Combining Marks for Symbols".
	* @since 1.2
	*/
	@:require(java2) public static var COMBINING_MARKS_FOR_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Letterlike Symbols" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var LETTERLIKE_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Number Forms" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var NUMBER_FORMS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Arrows" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ARROWS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Mathematical Operators" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var MATHEMATICAL_OPERATORS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Miscellaneous Technical" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var MISCELLANEOUS_TECHNICAL(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Control Pictures" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var CONTROL_PICTURES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Optical Character Recognition" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var OPTICAL_CHARACTER_RECOGNITION(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Enclosed Alphanumerics" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ENCLOSED_ALPHANUMERICS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Box Drawing" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var BOX_DRAWING(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Block Elements" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var BLOCK_ELEMENTS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Geometric Shapes" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var GEOMETRIC_SHAPES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Miscellaneous Symbols" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var MISCELLANEOUS_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Dingbats" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var DINGBATS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Symbols and Punctuation" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var CJK_SYMBOLS_AND_PUNCTUATION(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hiragana" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var HIRAGANA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Katakana" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var KATAKANA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Bopomofo" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var BOPOMOFO(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hangul Compatibility Jamo" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var HANGUL_COMPATIBILITY_JAMO(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Kanbun" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var KANBUN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Enclosed CJK Letters and Months" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ENCLOSED_CJK_LETTERS_AND_MONTHS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Compatibility" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var CJK_COMPATIBILITY(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Unified Ideographs" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var CJK_UNIFIED_IDEOGRAPHS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hangul Syllables" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var HANGUL_SYLLABLES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Private Use Area" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var PRIVATE_USE_AREA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Compatibility Ideographs" Unicode character
	* block.
	* @since 1.2
	*/
	@:require(java2) public static var CJK_COMPATIBILITY_IDEOGRAPHS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Alphabetic Presentation Forms" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ALPHABETIC_PRESENTATION_FORMS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Arabic Presentation Forms-A" Unicode character
	* block.
	* @since 1.2
	*/
	@:require(java2) public static var ARABIC_PRESENTATION_FORMS_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Combining Half Marks" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var COMBINING_HALF_MARKS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Compatibility Forms" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var CJK_COMPATIBILITY_FORMS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Small Form Variants" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var SMALL_FORM_VARIANTS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Arabic Presentation Forms-B" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var ARABIC_PRESENTATION_FORMS_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Halfwidth and Fullwidth Forms" Unicode character
	* block.
	* @since 1.2
	*/
	@:require(java2) public static var HALFWIDTH_AND_FULLWIDTH_FORMS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Specials" Unicode character block.
	* @since 1.2
	*/
	@:require(java2) public static var SPECIALS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* @deprecated As of J2SE 5, use {@link #HIGH_SURROGATES},
	*             {@link #HIGH_PRIVATE_USE_SURROGATES}, and
	*             {@link #LOW_SURROGATES}. These new constants match
	*             the block definitions of the Unicode Standard.
	*             The {@link #of(char)} and {@link #of(int)} methods
	*             return the new constants, not SURROGATES_AREA.
	*/
	public static var SURROGATES_AREA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Syriac" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var SYRIAC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Thaana" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var THAANA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Sinhala" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var SINHALA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Myanmar" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var MYANMAR(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ethiopic" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var ETHIOPIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cherokee" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var CHEROKEE(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Unified Canadian Aboriginal Syllabics" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ogham" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var OGHAM(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Runic" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var RUNIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Khmer" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var KHMER(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Mongolian" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var MONGOLIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Braille Patterns" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var BRAILLE_PATTERNS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Radicals Supplement" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var CJK_RADICALS_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Kangxi Radicals" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var KANGXI_RADICALS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ideographic Description Characters" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var IDEOGRAPHIC_DESCRIPTION_CHARACTERS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Bopomofo Extended" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var BOPOMOFO_EXTENDED(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Unified Ideographs Extension A" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Yi Syllables" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var YI_SYLLABLES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Yi Radicals" Unicode character block.
	* @since 1.4
	*/
	@:require(java4) public static var YI_RADICALS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cyrillic Supplementary" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var CYRILLIC_SUPPLEMENTARY(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tagalog" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var TAGALOG(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hanunoo" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var HANUNOO(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Buhid" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var BUHID(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tagbanwa" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var TAGBANWA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Limbu" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var LIMBU(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tai Le" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var TAI_LE(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Khmer Symbols" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var KHMER_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Phonetic Extensions" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var PHONETIC_EXTENSIONS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Miscellaneous Mathematical Symbols-A" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Supplemental Arrows-A" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var SUPPLEMENTAL_ARROWS_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Supplemental Arrows-B" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var SUPPLEMENTAL_ARROWS_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Miscellaneous Mathematical Symbols-B" Unicode
	* character block.
	* @since 1.5
	*/
	@:require(java5) public static var MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Supplemental Mathematical Operators" Unicode
	* character block.
	* @since 1.5
	*/
	@:require(java5) public static var SUPPLEMENTAL_MATHEMATICAL_OPERATORS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Miscellaneous Symbols and Arrows" Unicode character
	* block.
	* @since 1.5
	*/
	@:require(java5) public static var MISCELLANEOUS_SYMBOLS_AND_ARROWS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Katakana Phonetic Extensions" Unicode character
	* block.
	* @since 1.5
	*/
	@:require(java5) public static var KATAKANA_PHONETIC_EXTENSIONS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Yijing Hexagram Symbols" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var YIJING_HEXAGRAM_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Variation Selectors" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var VARIATION_SELECTORS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Linear B Syllabary" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var LINEAR_B_SYLLABARY(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Linear B Ideograms" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var LINEAR_B_IDEOGRAMS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Aegean Numbers" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var AEGEAN_NUMBERS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Old Italic" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var OLD_ITALIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Gothic" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var GOTHIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ugaritic" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var UGARITIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Deseret" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var DESERET(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Shavian" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var SHAVIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Osmanya" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var OSMANYA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cypriot Syllabary" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var CYPRIOT_SYLLABARY(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Byzantine Musical Symbols" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var BYZANTINE_MUSICAL_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Musical Symbols" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var MUSICAL_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tai Xuan Jing Symbols" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var TAI_XUAN_JING_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Mathematical Alphanumeric Symbols" Unicode
	* character block.
	* @since 1.5
	*/
	@:require(java5) public static var MATHEMATICAL_ALPHANUMERIC_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Unified Ideographs Extension B" Unicode
	* character block.
	* @since 1.5
	*/
	@:require(java5) public static var CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Compatibility Ideographs Supplement" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tags" Unicode character block.
	* @since 1.5
	*/
	@:require(java5) public static var TAGS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Variation Selectors Supplement" Unicode character
	* block.
	* @since 1.5
	*/
	@:require(java5) public static var VARIATION_SELECTORS_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Supplementary Private Use Area-A" Unicode character
	* block.
	* @since 1.5
	*/
	@:require(java5) public static var SUPPLEMENTARY_PRIVATE_USE_AREA_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Supplementary Private Use Area-B" Unicode character
	* block.
	* @since 1.5
	*/
	@:require(java5) public static var SUPPLEMENTARY_PRIVATE_USE_AREA_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "High Surrogates" Unicode character block.
	* This block represents codepoint values in the high surrogate
	* range: U+D800 through U+DB7F
	*
	* @since 1.5
	*/
	@:require(java5) public static var HIGH_SURROGATES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "High Private Use Surrogates" Unicode character
	* block.
	* This block represents codepoint values in the private use high
	* surrogate range: U+DB80 through U+DBFF
	*
	* @since 1.5
	*/
	@:require(java5) public static var HIGH_PRIVATE_USE_SURROGATES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Low Surrogates" Unicode character block.
	* This block represents codepoint values in the low surrogate
	* range: U+DC00 through U+DFFF
	*
	* @since 1.5
	*/
	@:require(java5) public static var LOW_SURROGATES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Arabic Supplement" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var ARABIC_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "NKo" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var NKO(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Samaritan" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var SAMARITAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Mandaic" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var MANDAIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ethiopic Supplement" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var ETHIOPIC_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Unified Canadian Aboriginal Syllabics Extended"
	* Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "New Tai Lue" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var NEW_TAI_LUE(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Buginese" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var BUGINESE(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tai Tham" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var TAI_THAM(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Balinese" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var BALINESE(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Sundanese" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var SUNDANESE(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Batak" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var BATAK(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Lepcha" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var LEPCHA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ol Chiki" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var OL_CHIKI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Vedic Extensions" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var VEDIC_EXTENSIONS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Phonetic Extensions Supplement" Unicode character
	* block.
	* @since 1.7
	*/
	@:require(java7) public static var PHONETIC_EXTENSIONS_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Combining Diacritical Marks Supplement" Unicode
	* character block.
	* @since 1.7
	*/
	@:require(java7) public static var COMBINING_DIACRITICAL_MARKS_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Glagolitic" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var GLAGOLITIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Latin Extended-C" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var LATIN_EXTENDED_C(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Coptic" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var COPTIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Georgian Supplement" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var GEORGIAN_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tifinagh" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var TIFINAGH(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ethiopic Extended" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var ETHIOPIC_EXTENDED(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cyrillic Extended-A" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var CYRILLIC_EXTENDED_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Supplemental Punctuation" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var SUPPLEMENTAL_PUNCTUATION(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Strokes" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var CJK_STROKES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Lisu" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var LISU(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Vai" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var VAI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cyrillic Extended-B" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var CYRILLIC_EXTENDED_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Bamum" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var BAMUM(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Modifier Tone Letters" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var MODIFIER_TONE_LETTERS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Latin Extended-D" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var LATIN_EXTENDED_D(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Syloti Nagri" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var SYLOTI_NAGRI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Common Indic Number Forms" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var COMMON_INDIC_NUMBER_FORMS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Phags-pa" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var PHAGS_PA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Saurashtra" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var SAURASHTRA(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Devanagari Extended" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var DEVANAGARI_EXTENDED(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Kayah Li" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var KAYAH_LI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Rejang" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var REJANG(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hangul Jamo Extended-A" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var HANGUL_JAMO_EXTENDED_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Javanese" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var JAVANESE(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cham" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var CHAM(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Myanmar Extended-A" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var MYANMAR_EXTENDED_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Tai Viet" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var TAI_VIET(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ethiopic Extended-A" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var ETHIOPIC_EXTENDED_A(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Meetei Mayek" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var MEETEI_MAYEK(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Hangul Jamo Extended-B" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var HANGUL_JAMO_EXTENDED_B(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Vertical Forms" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var VERTICAL_FORMS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ancient Greek Numbers" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var ANCIENT_GREEK_NUMBERS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ancient Symbols" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var ANCIENT_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Phaistos Disc" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var PHAISTOS_DISC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Lycian" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var LYCIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Carian" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var CARIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Old Persian" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var OLD_PERSIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Imperial Aramaic" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var IMPERIAL_ARAMAIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Phoenician" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var PHOENICIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Lydian" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var LYDIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Kharoshthi" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var KHAROSHTHI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Old South Arabian" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var OLD_SOUTH_ARABIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Avestan" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var AVESTAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Inscriptional Parthian" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var INSCRIPTIONAL_PARTHIAN(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Inscriptional Pahlavi" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var INSCRIPTIONAL_PAHLAVI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Old Turkic" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var OLD_TURKIC(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Rumi Numeral Symbols" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var RUMI_NUMERAL_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Brahmi" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var BRAHMI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Kaithi" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var KAITHI(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cuneiform" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var CUNEIFORM(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Cuneiform Numbers and Punctuation" Unicode
	* character block.
	* @since 1.7
	*/
	@:require(java7) public static var CUNEIFORM_NUMBERS_AND_PUNCTUATION(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Egyptian Hieroglyphs" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var EGYPTIAN_HIEROGLYPHS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Bamum Supplement" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var BAMUM_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Kana Supplement" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var KANA_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Ancient Greek Musical Notation" Unicode character
	* block.
	* @since 1.7
	*/
	@:require(java7) public static var ANCIENT_GREEK_MUSICAL_NOTATION(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Counting Rod Numerals" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var COUNTING_ROD_NUMERALS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Mahjong Tiles" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var MAHJONG_TILES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Domino Tiles" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var DOMINO_TILES(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Playing Cards" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var PLAYING_CARDS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Enclosed Alphanumeric Supplement" Unicode character
	* block.
	* @since 1.7
	*/
	@:require(java7) public static var ENCLOSED_ALPHANUMERIC_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Enclosed Ideographic Supplement" Unicode character
	* block.
	* @since 1.7
	*/
	@:require(java7) public static var ENCLOSED_IDEOGRAPHIC_SUPPLEMENT(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Miscellaneous Symbols And Pictographs" Unicode
	* character block.
	* @since 1.7
	*/
	@:require(java7) public static var MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Emoticons" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var EMOTICONS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Transport And Map Symbols" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var TRANSPORT_AND_MAP_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "Alchemical Symbols" Unicode character block.
	* @since 1.7
	*/
	@:require(java7) public static var ALCHEMICAL_SYMBOLS(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Unified Ideographs Extension C" Unicode
	* character block.
	* @since 1.7
	*/
	@:require(java7) public static var CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Constant for the "CJK Unified Ideographs Extension D" Unicode
	* character block.
	* @since 1.7
	*/
	@:require(java7) public static var CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D(default, null) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Returns the object representing the Unicode block containing the
	* given character, or {@code null} if the character is not a
	* member of a defined block.
	*
	* <p><b>Note:</b> This method cannot handle
	* <a href="Character.html#supplementary"> supplementary
	* characters</a>.  To support all Unicode characters, including
	* supplementary characters, use the {@link #of(int)} method.
	*
	* @param   c  The character in question
	* @return  The {@code UnicodeBlock} instance representing the
	*          Unicode block of which this character is a member, or
	*          {@code null} if the character is not a member of any
	*          Unicode block
	*/
	@:overload public static function of(c : java.StdTypes.Char16) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Returns the object representing the Unicode block
	* containing the given character (Unicode code point), or
	* {@code null} if the character is not a member of a
	* defined block.
	*
	* @param   codePoint the character (Unicode code point) in question.
	* @return  The {@code UnicodeBlock} instance representing the
	*          Unicode block of which this character is a member, or
	*          {@code null} if the character is not a member of any
	*          Unicode block
	* @exception IllegalArgumentException if the specified
	* {@code codePoint} is an invalid Unicode code point.
	* @see Character#isValidCodePoint(int)
	* @since   1.5
	*/
	@:require(java5) @:overload public static function of(codePoint : Int) : java.lang.Character.Character_UnicodeBlock;
	
	/**
	* Returns the UnicodeBlock with the given name. Block
	* names are determined by The Unicode Standard. The file
	* Blocks-&lt;version&gt;.txt defines blocks for a particular
	* version of the standard. The {@link Character} class specifies
	* the version of the standard that it supports.
	* <p>
	* This method accepts block names in the following forms:
	* <ol>
	* <li> Canonical block names as defined by the Unicode Standard.
	* For example, the standard defines a "Basic Latin" block. Therefore, this
	* method accepts "Basic Latin" as a valid block name. The documentation of
	* each UnicodeBlock provides the canonical name.
	* <li>Canonical block names with all spaces removed. For example, "BasicLatin"
	* is a valid block name for the "Basic Latin" block.
	* <li>The text representation of each constant UnicodeBlock identifier.
	* For example, this method will return the {@link #BASIC_LATIN} block if
	* provided with the "BASIC_LATIN" name. This form replaces all spaces and
	* hyphens in the canonical name with underscores.
	* </ol>
	* Finally, character case is ignored for all of the valid block name forms.
	* For example, "BASIC_LATIN" and "basic_latin" are both valid block names.
	* The en_US locale's case mapping rules are used to provide case-insensitive
	* string comparisons for block name validation.
	* <p>
	* If the Unicode Standard changes block names, both the previous and
	* current names will be accepted.
	*
	* @param blockName A {@code UnicodeBlock} name.
	* @return The {@code UnicodeBlock} instance identified
	*         by {@code blockName}
	* @throws IllegalArgumentException if {@code blockName} is an
	*         invalid name
	* @throws NullPointerException if {@code blockName} is null
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public static function forName(blockName : String) : java.lang.Character.Character_UnicodeBlock;
	
	
}
/**
* A family of character subsets representing the character scripts
* defined in the <a href="http://www.unicode.org/reports/tr24/">
* <i>Unicode Standard Annex #24: Script Names</i></a>. Every Unicode
* character is assigned to a single Unicode script, either a specific
* script, such as {@link Character.UnicodeScript#LATIN Latin}, or
* one of the following three special values,
* {@link Character.UnicodeScript#INHERITED Inherited},
* {@link Character.UnicodeScript#COMMON Common} or
* {@link Character.UnicodeScript#UNKNOWN Unknown}.
*
* @since 1.7
*/
@:require(java7) @:native('java$lang$Character$UnicodeScript') extern enum Character_UnicodeScript
{
	/**
	* Unicode script "Common".
	*/
	COMMON;
	/**
	* Unicode script "Latin".
	*/
	LATIN;
	/**
	* Unicode script "Greek".
	*/
	GREEK;
	/**
	* Unicode script "Cyrillic".
	*/
	CYRILLIC;
	/**
	* Unicode script "Armenian".
	*/
	ARMENIAN;
	/**
	* Unicode script "Hebrew".
	*/
	HEBREW;
	/**
	* Unicode script "Arabic".
	*/
	ARABIC;
	/**
	* Unicode script "Syriac".
	*/
	SYRIAC;
	/**
	* Unicode script "Thaana".
	*/
	THAANA;
	/**
	* Unicode script "Devanagari".
	*/
	DEVANAGARI;
	/**
	* Unicode script "Bengali".
	*/
	BENGALI;
	/**
	* Unicode script "Gurmukhi".
	*/
	GURMUKHI;
	/**
	* Unicode script "Gujarati".
	*/
	GUJARATI;
	/**
	* Unicode script "Oriya".
	*/
	ORIYA;
	/**
	* Unicode script "Tamil".
	*/
	TAMIL;
	/**
	* Unicode script "Telugu".
	*/
	TELUGU;
	/**
	* Unicode script "Kannada".
	*/
	KANNADA;
	/**
	* Unicode script "Malayalam".
	*/
	MALAYALAM;
	/**
	* Unicode script "Sinhala".
	*/
	SINHALA;
	/**
	* Unicode script "Thai".
	*/
	THAI;
	/**
	* Unicode script "Lao".
	*/
	LAO;
	/**
	* Unicode script "Tibetan".
	*/
	TIBETAN;
	/**
	* Unicode script "Myanmar".
	*/
	MYANMAR;
	/**
	* Unicode script "Georgian".
	*/
	GEORGIAN;
	/**
	* Unicode script "Hangul".
	*/
	HANGUL;
	/**
	* Unicode script "Ethiopic".
	*/
	ETHIOPIC;
	/**
	* Unicode script "Cherokee".
	*/
	CHEROKEE;
	/**
	* Unicode script "Canadian_Aboriginal".
	*/
	CANADIAN_ABORIGINAL;
	/**
	* Unicode script "Ogham".
	*/
	OGHAM;
	/**
	* Unicode script "Runic".
	*/
	RUNIC;
	/**
	* Unicode script "Khmer".
	*/
	KHMER;
	/**
	* Unicode script "Mongolian".
	*/
	MONGOLIAN;
	/**
	* Unicode script "Hiragana".
	*/
	HIRAGANA;
	/**
	* Unicode script "Katakana".
	*/
	KATAKANA;
	/**
	* Unicode script "Bopomofo".
	*/
	BOPOMOFO;
	/**
	* Unicode script "Han".
	*/
	HAN;
	/**
	* Unicode script "Yi".
	*/
	YI;
	/**
	* Unicode script "Old_Italic".
	*/
	OLD_ITALIC;
	/**
	* Unicode script "Gothic".
	*/
	GOTHIC;
	/**
	* Unicode script "Deseret".
	*/
	DESERET;
	/**
	* Unicode script "Inherited".
	*/
	INHERITED;
	/**
	* Unicode script "Tagalog".
	*/
	TAGALOG;
	/**
	* Unicode script "Hanunoo".
	*/
	HANUNOO;
	/**
	* Unicode script "Buhid".
	*/
	BUHID;
	/**
	* Unicode script "Tagbanwa".
	*/
	TAGBANWA;
	/**
	* Unicode script "Limbu".
	*/
	LIMBU;
	/**
	* Unicode script "Tai_Le".
	*/
	TAI_LE;
	/**
	* Unicode script "Linear_B".
	*/
	LINEAR_B;
	/**
	* Unicode script "Ugaritic".
	*/
	UGARITIC;
	/**
	* Unicode script "Shavian".
	*/
	SHAVIAN;
	/**
	* Unicode script "Osmanya".
	*/
	OSMANYA;
	/**
	* Unicode script "Cypriot".
	*/
	CYPRIOT;
	/**
	* Unicode script "Braille".
	*/
	BRAILLE;
	/**
	* Unicode script "Buginese".
	*/
	BUGINESE;
	/**
	* Unicode script "Coptic".
	*/
	COPTIC;
	/**
	* Unicode script "New_Tai_Lue".
	*/
	NEW_TAI_LUE;
	/**
	* Unicode script "Glagolitic".
	*/
	GLAGOLITIC;
	/**
	* Unicode script "Tifinagh".
	*/
	TIFINAGH;
	/**
	* Unicode script "Syloti_Nagri".
	*/
	SYLOTI_NAGRI;
	/**
	* Unicode script "Old_Persian".
	*/
	OLD_PERSIAN;
	/**
	* Unicode script "Kharoshthi".
	*/
	KHAROSHTHI;
	/**
	* Unicode script "Balinese".
	*/
	BALINESE;
	/**
	* Unicode script "Cuneiform".
	*/
	CUNEIFORM;
	/**
	* Unicode script "Phoenician".
	*/
	PHOENICIAN;
	/**
	* Unicode script "Phags_Pa".
	*/
	PHAGS_PA;
	/**
	* Unicode script "Nko".
	*/
	NKO;
	/**
	* Unicode script "Sundanese".
	*/
	SUNDANESE;
	/**
	* Unicode script "Batak".
	*/
	BATAK;
	/**
	* Unicode script "Lepcha".
	*/
	LEPCHA;
	/**
	* Unicode script "Ol_Chiki".
	*/
	OL_CHIKI;
	/**
	* Unicode script "Vai".
	*/
	VAI;
	/**
	* Unicode script "Saurashtra".
	*/
	SAURASHTRA;
	/**
	* Unicode script "Kayah_Li".
	*/
	KAYAH_LI;
	/**
	* Unicode script "Rejang".
	*/
	REJANG;
	/**
	* Unicode script "Lycian".
	*/
	LYCIAN;
	/**
	* Unicode script "Carian".
	*/
	CARIAN;
	/**
	* Unicode script "Lydian".
	*/
	LYDIAN;
	/**
	* Unicode script "Cham".
	*/
	CHAM;
	/**
	* Unicode script "Tai_Tham".
	*/
	TAI_THAM;
	/**
	* Unicode script "Tai_Viet".
	*/
	TAI_VIET;
	/**
	* Unicode script "Avestan".
	*/
	AVESTAN;
	/**
	* Unicode script "Egyptian_Hieroglyphs".
	*/
	EGYPTIAN_HIEROGLYPHS;
	/**
	* Unicode script "Samaritan".
	*/
	SAMARITAN;
	/**
	* Unicode script "Mandaic".
	*/
	MANDAIC;
	/**
	* Unicode script "Lisu".
	*/
	LISU;
	/**
	* Unicode script "Bamum".
	*/
	BAMUM;
	/**
	* Unicode script "Javanese".
	*/
	JAVANESE;
	/**
	* Unicode script "Meetei_Mayek".
	*/
	MEETEI_MAYEK;
	/**
	* Unicode script "Imperial_Aramaic".
	*/
	IMPERIAL_ARAMAIC;
	/**
	* Unicode script "Old_South_Arabian".
	*/
	OLD_SOUTH_ARABIAN;
	/**
	* Unicode script "Inscriptional_Parthian".
	*/
	INSCRIPTIONAL_PARTHIAN;
	/**
	* Unicode script "Inscriptional_Pahlavi".
	*/
	INSCRIPTIONAL_PAHLAVI;
	/**
	* Unicode script "Old_Turkic".
	*/
	OLD_TURKIC;
	/**
	* Unicode script "Brahmi".
	*/
	BRAHMI;
	/**
	* Unicode script "Kaithi".
	*/
	KAITHI;
	/**
	* Unicode script "Unknown".
	*/
	UNKNOWN;
	
}

@:native('java$lang$Character$CharacterCache') @:internal extern class Character_CharacterCache
{
	
}
