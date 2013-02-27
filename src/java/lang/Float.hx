package java.lang;
/*
* Copyright (c) 1994, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Float extends java.lang.Number implements java.lang.Comparable<Float>
{
	/**
	* A constant holding the positive infinity of type
	* {@code float}. It is equal to the value returned by
	* {@code Float.intBitsToFloat(0x7f800000)}.
	*/
	public static var POSITIVE_INFINITY(default, null) : Single;
	
	/**
	* A constant holding the negative infinity of type
	* {@code float}. It is equal to the value returned by
	* {@code Float.intBitsToFloat(0xff800000)}.
	*/
	public static var NEGATIVE_INFINITY(default, null) : Single;
	
	/**
	* A constant holding a Not-a-Number (NaN) value of type
	* {@code float}.  It is equivalent to the value returned by
	* {@code Float.intBitsToFloat(0x7fc00000)}.
	*/
	public static var NaN(default, null) : Single;
	
	/**
	* A constant holding the largest positive finite value of type
	* {@code float}, (2-2<sup>-23</sup>)&middot;2<sup>127</sup>.
	* It is equal to the hexadecimal floating-point literal
	* {@code 0x1.fffffeP+127f} and also equal to
	* {@code Float.intBitsToFloat(0x7f7fffff)}.
	*/
	public static var MAX_VALUE(default, null) : Single;
	
	/**
	* A constant holding the smallest positive normal value of type
	* {@code float}, 2<sup>-126</sup>.  It is equal to the
	* hexadecimal floating-point literal {@code 0x1.0p-126f} and also
	* equal to {@code Float.intBitsToFloat(0x00800000)}.
	*
	* @since 1.6
	*/
	@:require(java6) public static var MIN_NORMAL(default, null) : Single;
	
	/**
	* A constant holding the smallest positive nonzero value of type
	* {@code float}, 2<sup>-149</sup>. It is equal to the
	* hexadecimal floating-point literal {@code 0x0.000002P-126f}
	* and also equal to {@code Float.intBitsToFloat(0x1)}.
	*/
	public static var MIN_VALUE(default, null) : Single;
	
	/**
	* Maximum exponent a finite {@code float} variable may have.  It
	* is equal to the value returned by {@code
	* Math.getExponent(Float.MAX_VALUE)}.
	*
	* @since 1.6
	*/
	@:require(java6) public static var MAX_EXPONENT(default, null) : Int;
	
	/**
	* Minimum exponent a normalized {@code float} variable may have.
	* It is equal to the value returned by {@code
	* Math.getExponent(Float.MIN_NORMAL)}.
	*
	* @since 1.6
	*/
	@:require(java6) public static var MIN_EXPONENT(default, null) : Int;
	
	/**
	* The number of bits used to represent a {@code float} value.
	*
	* @since 1.5
	*/
	@:require(java5) public static var SIZE(default, null) : Int;
	
	/**
	* The {@code Class} instance representing the primitive type
	* {@code float}.
	*
	* @since JDK1.1
	*/
	@:require(java1) public static var TYPE(default, null) : Class<Float>;
	
	/**
	* Returns a string representation of the {@code float}
	* argument. All characters mentioned below are ASCII characters.
	* <ul>
	* <li>If the argument is NaN, the result is the string
	* "{@code NaN}".
	* <li>Otherwise, the result is a string that represents the sign and
	*     magnitude (absolute value) of the argument. If the sign is
	*     negative, the first character of the result is
	*     '{@code -}' (<code>'&#92;u002D'</code>); if the sign is
	*     positive, no sign character appears in the result. As for
	*     the magnitude <i>m</i>:
	* <ul>
	* <li>If <i>m</i> is infinity, it is represented by the characters
	*     {@code "Infinity"}; thus, positive infinity produces
	*     the result {@code "Infinity"} and negative infinity
	*     produces the result {@code "-Infinity"}.
	* <li>If <i>m</i> is zero, it is represented by the characters
	*     {@code "0.0"}; thus, negative zero produces the result
	*     {@code "-0.0"} and positive zero produces the result
	*     {@code "0.0"}.
	* <li> If <i>m</i> is greater than or equal to 10<sup>-3</sup> but
	*      less than 10<sup>7</sup>, then it is represented as the
	*      integer part of <i>m</i>, in decimal form with no leading
	*      zeroes, followed by '{@code .}'
	*      (<code>'&#92;u002E'</code>), followed by one or more
	*      decimal digits representing the fractional part of
	*      <i>m</i>.
	* <li> If <i>m</i> is less than 10<sup>-3</sup> or greater than or
	*      equal to 10<sup>7</sup>, then it is represented in
	*      so-called "computerized scientific notation." Let <i>n</i>
	*      be the unique integer such that 10<sup><i>n</i> </sup>&le;
	*      <i>m</i> {@literal <} 10<sup><i>n</i>+1</sup>; then let <i>a</i>
	*      be the mathematically exact quotient of <i>m</i> and
	*      10<sup><i>n</i></sup> so that 1 &le; <i>a</i> {@literal <} 10.
	*      The magnitude is then represented as the integer part of
	*      <i>a</i>, as a single decimal digit, followed by
	*      '{@code .}' (<code>'&#92;u002E'</code>), followed by
	*      decimal digits representing the fractional part of
	*      <i>a</i>, followed by the letter '{@code E}'
	*      (<code>'&#92;u0045'</code>), followed by a representation
	*      of <i>n</i> as a decimal integer, as produced by the
	*      method {@link java.lang.Integer#toString(int)}.
	*
	* </ul>
	* </ul>
	* How many digits must be printed for the fractional part of
	* <i>m</i> or <i>a</i>? There must be at least one digit
	* to represent the fractional part, and beyond that as many, but
	* only as many, more digits as are needed to uniquely distinguish
	* the argument value from adjacent values of type
	* {@code float}. That is, suppose that <i>x</i> is the
	* exact mathematical value represented by the decimal
	* representation produced by this method for a finite nonzero
	* argument <i>f</i>. Then <i>f</i> must be the {@code float}
	* value nearest to <i>x</i>; or, if two {@code float} values are
	* equally close to <i>x</i>, then <i>f</i> must be one of
	* them and the least significant bit of the significand of
	* <i>f</i> must be {@code 0}.
	*
	* <p>To create localized string representations of a floating-point
	* value, use subclasses of {@link java.text.NumberFormat}.
	*
	* @param   f   the float to be converted.
	* @return a string representation of the argument.
	*/
	@:native('toString') @:overload public static function _toString(f : Single) : String;
	
	/**
	* Returns a hexadecimal string representation of the
	* {@code float} argument. All characters mentioned below are
	* ASCII characters.
	*
	* <ul>
	* <li>If the argument is NaN, the result is the string
	*     "{@code NaN}".
	* <li>Otherwise, the result is a string that represents the sign and
	* magnitude (absolute value) of the argument. If the sign is negative,
	* the first character of the result is '{@code -}'
	* (<code>'&#92;u002D'</code>); if the sign is positive, no sign character
	* appears in the result. As for the magnitude <i>m</i>:
	*
	* <ul>
	* <li>If <i>m</i> is infinity, it is represented by the string
	* {@code "Infinity"}; thus, positive infinity produces the
	* result {@code "Infinity"} and negative infinity produces
	* the result {@code "-Infinity"}.
	*
	* <li>If <i>m</i> is zero, it is represented by the string
	* {@code "0x0.0p0"}; thus, negative zero produces the result
	* {@code "-0x0.0p0"} and positive zero produces the result
	* {@code "0x0.0p0"}.
	*
	* <li>If <i>m</i> is a {@code float} value with a
	* normalized representation, substrings are used to represent the
	* significand and exponent fields.  The significand is
	* represented by the characters {@code "0x1."}
	* followed by a lowercase hexadecimal representation of the rest
	* of the significand as a fraction.  Trailing zeros in the
	* hexadecimal representation are removed unless all the digits
	* are zero, in which case a single zero is used. Next, the
	* exponent is represented by {@code "p"} followed
	* by a decimal string of the unbiased exponent as if produced by
	* a call to {@link Integer#toString(int) Integer.toString} on the
	* exponent value.
	*
	* <li>If <i>m</i> is a {@code float} value with a subnormal
	* representation, the significand is represented by the
	* characters {@code "0x0."} followed by a
	* hexadecimal representation of the rest of the significand as a
	* fraction.  Trailing zeros in the hexadecimal representation are
	* removed. Next, the exponent is represented by
	* {@code "p-126"}.  Note that there must be at
	* least one nonzero digit in a subnormal significand.
	*
	* </ul>
	*
	* </ul>
	*
	* <table border>
	* <caption><h3>Examples</h3></caption>
	* <tr><th>Floating-point Value</th><th>Hexadecimal String</th>
	* <tr><td>{@code 1.0}</td> <td>{@code 0x1.0p0}</td>
	* <tr><td>{@code -1.0}</td>        <td>{@code -0x1.0p0}</td>
	* <tr><td>{@code 2.0}</td> <td>{@code 0x1.0p1}</td>
	* <tr><td>{@code 3.0}</td> <td>{@code 0x1.8p1}</td>
	* <tr><td>{@code 0.5}</td> <td>{@code 0x1.0p-1}</td>
	* <tr><td>{@code 0.25}</td>        <td>{@code 0x1.0p-2}</td>
	* <tr><td>{@code Float.MAX_VALUE}</td>
	*     <td>{@code 0x1.fffffep127}</td>
	* <tr><td>{@code Minimum Normal Value}</td>
	*     <td>{@code 0x1.0p-126}</td>
	* <tr><td>{@code Maximum Subnormal Value}</td>
	*     <td>{@code 0x0.fffffep-126}</td>
	* <tr><td>{@code Float.MIN_VALUE}</td>
	*     <td>{@code 0x0.000002p-126}</td>
	* </table>
	* @param   f   the {@code float} to be converted.
	* @return a hex string representation of the argument.
	* @since 1.5
	* @author Joseph D. Darcy
	*/
	@:require(java5) @:overload public static function toHexString(f : Single) : String;
	
	/**
	* Returns a {@code Float} object holding the
	* {@code float} value represented by the argument string
	* {@code s}.
	*
	* <p>If {@code s} is {@code null}, then a
	* {@code NullPointerException} is thrown.
	*
	* <p>Leading and trailing whitespace characters in {@code s}
	* are ignored.  Whitespace is removed as if by the {@link
	* String#trim} method; that is, both ASCII space and control
	* characters are removed. The rest of {@code s} should
	* constitute a <i>FloatValue</i> as described by the lexical
	* syntax rules:
	*
	* <blockquote>
	* <dl>
	* <dt><i>FloatValue:</i>
	* <dd><i>Sign<sub>opt</sub></i> {@code NaN}
	* <dd><i>Sign<sub>opt</sub></i> {@code Infinity}
	* <dd><i>Sign<sub>opt</sub> FloatingPointLiteral</i>
	* <dd><i>Sign<sub>opt</sub> HexFloatingPointLiteral</i>
	* <dd><i>SignedInteger</i>
	* </dl>
	*
	* <p>
	*
	* <dl>
	* <dt><i>HexFloatingPointLiteral</i>:
	* <dd> <i>HexSignificand BinaryExponent FloatTypeSuffix<sub>opt</sub></i>
	* </dl>
	*
	* <p>
	*
	* <dl>
	* <dt><i>HexSignificand:</i>
	* <dd><i>HexNumeral</i>
	* <dd><i>HexNumeral</i> {@code .}
	* <dd>{@code 0x} <i>HexDigits<sub>opt</sub>
	*     </i>{@code .}<i> HexDigits</i>
	* <dd>{@code 0X}<i> HexDigits<sub>opt</sub>
	*     </i>{@code .} <i>HexDigits</i>
	* </dl>
	*
	* <p>
	*
	* <dl>
	* <dt><i>BinaryExponent:</i>
	* <dd><i>BinaryExponentIndicator SignedInteger</i>
	* </dl>
	*
	* <p>
	*
	* <dl>
	* <dt><i>BinaryExponentIndicator:</i>
	* <dd>{@code p}
	* <dd>{@code P}
	* </dl>
	*
	* </blockquote>
	*
	* where <i>Sign</i>, <i>FloatingPointLiteral</i>,
	* <i>HexNumeral</i>, <i>HexDigits</i>, <i>SignedInteger</i> and
	* <i>FloatTypeSuffix</i> are as defined in the lexical structure
	* sections of
	* <cite>The Java&trade; Language Specification</cite>,
	* except that underscores are not accepted between digits.
	* If {@code s} does not have the form of
	* a <i>FloatValue</i>, then a {@code NumberFormatException}
	* is thrown. Otherwise, {@code s} is regarded as
	* representing an exact decimal value in the usual
	* "computerized scientific notation" or as an exact
	* hexadecimal value; this exact numerical value is then
	* conceptually converted to an "infinitely precise"
	* binary value that is then rounded to type {@code float}
	* by the usual round-to-nearest rule of IEEE 754 floating-point
	* arithmetic, which includes preserving the sign of a zero
	* value.
	*
	* Note that the round-to-nearest rule also implies overflow and
	* underflow behaviour; if the exact value of {@code s} is large
	* enough in magnitude (greater than or equal to ({@link
	* #MAX_VALUE} + {@link Math#ulp(float) ulp(MAX_VALUE)}/2),
	* rounding to {@code float} will result in an infinity and if the
	* exact value of {@code s} is small enough in magnitude (less
	* than or equal to {@link #MIN_VALUE}/2), rounding to float will
	* result in a zero.
	*
	* Finally, after rounding a {@code Float} object representing
	* this {@code float} value is returned.
	*
	* <p>To interpret localized string representations of a
	* floating-point value, use subclasses of {@link
	* java.text.NumberFormat}.
	*
	* <p>Note that trailing format specifiers, specifiers that
	* determine the type of a floating-point literal
	* ({@code 1.0f} is a {@code float} value;
	* {@code 1.0d} is a {@code double} value), do
	* <em>not</em> influence the results of this method.  In other
	* words, the numerical value of the input string is converted
	* directly to the target floating-point type.  In general, the
	* two-step sequence of conversions, string to {@code double}
	* followed by {@code double} to {@code float}, is
	* <em>not</em> equivalent to converting a string directly to
	* {@code float}.  For example, if first converted to an
	* intermediate {@code double} and then to
	* {@code float}, the string<br>
	* {@code "1.00000017881393421514957253748434595763683319091796875001d"}<br>
	* results in the {@code float} value
	* {@code 1.0000002f}; if the string is converted directly to
	* {@code float}, <code>1.000000<b>1</b>f</code> results.
	*
	* <p>To avoid calling this method on an invalid string and having
	* a {@code NumberFormatException} be thrown, the documentation
	* for {@link Double#valueOf Double.valueOf} lists a regular
	* expression which can be used to screen the input.
	*
	* @param   s   the string to be parsed.
	* @return  a {@code Float} object holding the value
	*          represented by the {@code String} argument.
	* @throws  NumberFormatException  if the string does not contain a
	*          parsable number.
	*/
	@:overload public static function valueOf(s : String) : Float;
	
	/**
	* Returns a {@code Float} instance representing the specified
	* {@code float} value.
	* If a new {@code Float} instance is not required, this method
	* should generally be used in preference to the constructor
	* {@link #Float(float)}, as this method is likely to yield
	* significantly better space and time performance by caching
	* frequently requested values.
	*
	* @param  f a float value.
	* @return a {@code Float} instance representing {@code f}.
	* @since  1.5
	*/
	@:require(java5) @:overload public static function valueOf(f : Single) : Float;
	
	/**
	* Returns a new {@code float} initialized to the value
	* represented by the specified {@code String}, as performed
	* by the {@code valueOf} method of class {@code Float}.
	*
	* @param  s the string to be parsed.
	* @return the {@code float} value represented by the string
	*         argument.
	* @throws NullPointerException  if the string is null
	* @throws NumberFormatException if the string does not contain a
	*               parsable {@code float}.
	* @see    java.lang.Float#valueOf(String)
	* @since 1.2
	*/
	@:require(java2) @:overload public static function parseFloat(s : String) : Single;
	
	/**
	* Returns {@code true} if the specified number is a
	* Not-a-Number (NaN) value, {@code false} otherwise.
	*
	* @param   v   the value to be tested.
	* @return  {@code true} if the argument is NaN;
	*          {@code false} otherwise.
	*/
	@:native('isNaN') @:overload public static function _isNaN(v : Single) : Bool;
	
	/**
	* Returns {@code true} if the specified number is infinitely
	* large in magnitude, {@code false} otherwise.
	*
	* @param   v   the value to be tested.
	* @return  {@code true} if the argument is positive infinity or
	*          negative infinity; {@code false} otherwise.
	*/
	@:native('isInfinite') @:overload public static function _isInfinite(v : Single) : Bool;
	
	/**
	* Constructs a newly allocated {@code Float} object that
	* represents the primitive {@code float} argument.
	*
	* @param   value   the value to be represented by the {@code Float}.
	*/
	@:overload public function new(value : Single) : Void;
	
	/**
	* Constructs a newly allocated {@code Float} object that
	* represents the argument converted to type {@code float}.
	*
	* @param   value   the value to be represented by the {@code Float}.
	*/
	@:overload public function new(value : Float) : Void;
	
	/**
	* Constructs a newly allocated {@code Float} object that
	* represents the floating-point value of type {@code float}
	* represented by the string. The string is converted to a
	* {@code float} value as if by the {@code valueOf} method.
	*
	* @param      s   a string to be converted to a {@code Float}.
	* @throws  NumberFormatException  if the string does not contain a
	*               parsable number.
	* @see        java.lang.Float#valueOf(java.lang.String)
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Returns {@code true} if this {@code Float} value is a
	* Not-a-Number (NaN), {@code false} otherwise.
	*
	* @return  {@code true} if the value represented by this object is
	*          NaN; {@code false} otherwise.
	*/
	@:overload public function isNaN() : Bool;
	
	/**
	* Returns {@code true} if this {@code Float} value is
	* infinitely large in magnitude, {@code false} otherwise.
	*
	* @return  {@code true} if the value represented by this object is
	*          positive infinity or negative infinity;
	*          {@code false} otherwise.
	*/
	@:overload public function isInfinite() : Bool;
	
	/**
	* Returns a string representation of this {@code Float} object.
	* The primitive {@code float} value represented by this object
	* is converted to a {@code String} exactly as if by the method
	* {@code toString} of one argument.
	*
	* @return  a {@code String} representation of this object.
	* @see java.lang.Float#toString(float)
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the value of this {@code Float} as a {@code byte} (by
	* casting to a {@code byte}).
	*
	* @return  the {@code float} value represented by this object
	*          converted to type {@code byte}
	*/
	@:overload override public function byteValue() : java.StdTypes.Int8;
	
	/**
	* Returns the value of this {@code Float} as a {@code short} (by
	* casting to a {@code short}).
	*
	* @return  the {@code float} value represented by this object
	*          converted to type {@code short}
	* @since JDK1.1
	*/
	@:require(java1) @:overload override public function shortValue() : java.StdTypes.Int16;
	
	/**
	* Returns the value of this {@code Float} as an {@code int} (by
	* casting to type {@code int}).
	*
	* @return  the {@code float} value represented by this object
	*          converted to type {@code int}
	*/
	@:overload override public function intValue() : Int;
	
	/**
	* Returns value of this {@code Float} as a {@code long} (by
	* casting to type {@code long}).
	*
	* @return  the {@code float} value represented by this object
	*          converted to type {@code long}
	*/
	@:overload override public function longValue() : haxe.Int64;
	
	/**
	* Returns the {@code float} value of this {@code Float} object.
	*
	* @return the {@code float} value represented by this object
	*/
	@:overload override public function floatValue() : Single;
	
	/**
	* Returns the {@code double} value of this {@code Float} object.
	*
	* @return the {@code float} value represented by this
	*         object is converted to type {@code double} and the
	*         result of the conversion is returned.
	*/
	@:overload override public function doubleValue() : Float;
	
	/**
	* Returns a hash code for this {@code Float} object. The
	* result is the integer bit representation, exactly as produced
	* by the method {@link #floatToIntBits(float)}, of the primitive
	* {@code float} value represented by this {@code Float}
	* object.
	*
	* @return a hash code value for this object.
	*/
	@:overload public function hashCode() : Int;
	
	/**

	* Compares this object against the specified object.  The result
	* is {@code true} if and only if the argument is not
	* {@code null} and is a {@code Float} object that
	* represents a {@code float} with the same value as the
	* {@code float} represented by this object. For this
	* purpose, two {@code float} values are considered to be the
	* same if and only if the method {@link #floatToIntBits(float)}
	* returns the identical {@code int} value when applied to
	* each.
	*
	* <p>Note that in most cases, for two instances of class
	* {@code Float}, {@code f1} and {@code f2}, the value
	* of {@code f1.equals(f2)} is {@code true} if and only if
	*
	* <blockquote><pre>
	*   f1.floatValue() == f2.floatValue()
	* </pre></blockquote>
	*
	* <p>also has the value {@code true}. However, there are two exceptions:
	* <ul>
	* <li>If {@code f1} and {@code f2} both represent
	*     {@code Float.NaN}, then the {@code equals} method returns
	*     {@code true}, even though {@code Float.NaN==Float.NaN}
	*     has the value {@code false}.
	* <li>If {@code f1} represents {@code +0.0f} while
	*     {@code f2} represents {@code -0.0f}, or vice
	*     versa, the {@code equal} test has the value
	*     {@code false}, even though {@code 0.0f==-0.0f}
	*     has the value {@code true}.
	* </ul>
	*
	* This definition allows hash tables to operate properly.
	*
	* @param obj the object to be compared
	* @return  {@code true} if the objects are the same;
	*          {@code false} otherwise.
	* @see java.lang.Float#floatToIntBits(float)
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a representation of the specified floating-point value
	* according to the IEEE 754 floating-point "single format" bit
	* layout.
	*
	* <p>Bit 31 (the bit that is selected by the mask
	* {@code 0x80000000}) represents the sign of the floating-point
	* number.
	* Bits 30-23 (the bits that are selected by the mask
	* {@code 0x7f800000}) represent the exponent.
	* Bits 22-0 (the bits that are selected by the mask
	* {@code 0x007fffff}) represent the significand (sometimes called
	* the mantissa) of the floating-point number.
	*
	* <p>If the argument is positive infinity, the result is
	* {@code 0x7f800000}.
	*
	* <p>If the argument is negative infinity, the result is
	* {@code 0xff800000}.
	*
	* <p>If the argument is NaN, the result is {@code 0x7fc00000}.
	*
	* <p>In all cases, the result is an integer that, when given to the
	* {@link #intBitsToFloat(int)} method, will produce a floating-point
	* value the same as the argument to {@code floatToIntBits}
	* (except all NaN values are collapsed to a single
	* "canonical" NaN value).
	*
	* @param   value   a floating-point number.
	* @return the bits that represent the floating-point number.
	*/
	@:overload public static function floatToIntBits(value : Single) : Int;
	
	/**
	* Returns a representation of the specified floating-point value
	* according to the IEEE 754 floating-point "single format" bit
	* layout, preserving Not-a-Number (NaN) values.
	*
	* <p>Bit 31 (the bit that is selected by the mask
	* {@code 0x80000000}) represents the sign of the floating-point
	* number.
	* Bits 30-23 (the bits that are selected by the mask
	* {@code 0x7f800000}) represent the exponent.
	* Bits 22-0 (the bits that are selected by the mask
	* {@code 0x007fffff}) represent the significand (sometimes called
	* the mantissa) of the floating-point number.
	*
	* <p>If the argument is positive infinity, the result is
	* {@code 0x7f800000}.
	*
	* <p>If the argument is negative infinity, the result is
	* {@code 0xff800000}.
	*
	* <p>If the argument is NaN, the result is the integer representing
	* the actual NaN value.  Unlike the {@code floatToIntBits}
	* method, {@code floatToRawIntBits} does not collapse all the
	* bit patterns encoding a NaN to a single "canonical"
	* NaN value.
	*
	* <p>In all cases, the result is an integer that, when given to the
	* {@link #intBitsToFloat(int)} method, will produce a
	* floating-point value the same as the argument to
	* {@code floatToRawIntBits}.
	*
	* @param   value   a floating-point number.
	* @return the bits that represent the floating-point number.
	* @since 1.3
	*/
	@:require(java3) @:overload @:native public static function floatToRawIntBits(value : Single) : Int;
	
	/**
	* Returns the {@code float} value corresponding to a given
	* bit representation.
	* The argument is considered to be a representation of a
	* floating-point value according to the IEEE 754 floating-point
	* "single format" bit layout.
	*
	* <p>If the argument is {@code 0x7f800000}, the result is positive
	* infinity.
	*
	* <p>If the argument is {@code 0xff800000}, the result is negative
	* infinity.
	*
	* <p>If the argument is any value in the range
	* {@code 0x7f800001} through {@code 0x7fffffff} or in
	* the range {@code 0xff800001} through
	* {@code 0xffffffff}, the result is a NaN.  No IEEE 754
	* floating-point operation provided by Java can distinguish
	* between two NaN values of the same type with different bit
	* patterns.  Distinct values of NaN are only distinguishable by
	* use of the {@code Float.floatToRawIntBits} method.
	*
	* <p>In all other cases, let <i>s</i>, <i>e</i>, and <i>m</i> be three
	* values that can be computed from the argument:
	*
	* <blockquote><pre>
	* int s = ((bits &gt;&gt; 31) == 0) ? 1 : -1;
	* int e = ((bits &gt;&gt; 23) & 0xff);
	* int m = (e == 0) ?
	*                 (bits & 0x7fffff) &lt;&lt; 1 :
	*                 (bits & 0x7fffff) | 0x800000;
	* </pre></blockquote>
	*
	* Then the floating-point result equals the value of the mathematical
	* expression <i>s</i>&middot;<i>m</i>&middot;2<sup><i>e</i>-150</sup>.
	*
	* <p>Note that this method may not be able to return a
	* {@code float} NaN with exactly same bit pattern as the
	* {@code int} argument.  IEEE 754 distinguishes between two
	* kinds of NaNs, quiet NaNs and <i>signaling NaNs</i>.  The
	* differences between the two kinds of NaN are generally not
	* visible in Java.  Arithmetic operations on signaling NaNs turn
	* them into quiet NaNs with a different, but often similar, bit
	* pattern.  However, on some processors merely copying a
	* signaling NaN also performs that conversion.  In particular,
	* copying a signaling NaN to return it to the calling method may
	* perform this conversion.  So {@code intBitsToFloat} may
	* not be able to return a {@code float} with a signaling NaN
	* bit pattern.  Consequently, for some {@code int} values,
	* {@code floatToRawIntBits(intBitsToFloat(start))} may
	* <i>not</i> equal {@code start}.  Moreover, which
	* particular bit patterns represent signaling NaNs is platform
	* dependent; although all NaN bit patterns, quiet or signaling,
	* must be in the NaN range identified above.
	*
	* @param   bits   an integer.
	* @return  the {@code float} floating-point value with the same bit
	*          pattern.
	*/
	@:overload @:native public static function intBitsToFloat(bits : Int) : Single;
	
	/**
	* Compares two {@code Float} objects numerically.  There are
	* two ways in which comparisons performed by this method differ
	* from those performed by the Java language numerical comparison
	* operators ({@code <, <=, ==, >=, >}) when
	* applied to primitive {@code float} values:
	*
	* <ul><li>
	*          {@code Float.NaN} is considered by this method to
	*          be equal to itself and greater than all other
	*          {@code float} values
	*          (including {@code Float.POSITIVE_INFINITY}).
	* <li>
	*          {@code 0.0f} is considered by this method to be greater
	*          than {@code -0.0f}.
	* </ul>
	*
	* This ensures that the <i>natural ordering</i> of {@code Float}
	* objects imposed by this method is <i>consistent with equals</i>.
	*
	* @param   anotherFloat   the {@code Float} to be compared.
	* @return  the value {@code 0} if {@code anotherFloat} is
	*          numerically equal to this {@code Float}; a value
	*          less than {@code 0} if this {@code Float}
	*          is numerically less than {@code anotherFloat};
	*          and a value greater than {@code 0} if this
	*          {@code Float} is numerically greater than
	*          {@code anotherFloat}.
	*
	* @since   1.2
	* @see Comparable#compareTo(Object)
	*/
	@:require(java2) @:overload public function compareTo(anotherFloat : Float) : Int;
	
	/**
	* Compares the two specified {@code float} values. The sign
	* of the integer value returned is the same as that of the
	* integer that would be returned by the call:
	* <pre>
	*    new Float(f1).compareTo(new Float(f2))
	* </pre>
	*
	* @param   f1        the first {@code float} to compare.
	* @param   f2        the second {@code float} to compare.
	* @return  the value {@code 0} if {@code f1} is
	*          numerically equal to {@code f2}; a value less than
	*          {@code 0} if {@code f1} is numerically less than
	*          {@code f2}; and a value greater than {@code 0}
	*          if {@code f1} is numerically greater than
	*          {@code f2}.
	* @since 1.4
	*/
	@:require(java4) @:overload public static function compare(f1 : Single, f2 : Single) : Int;
	
	
}
