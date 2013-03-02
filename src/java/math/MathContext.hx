package java.math;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Portions Copyright IBM Corporation, 1997, 2001. All Rights Reserved.
*/
/**
* Immutable objects which encapsulate the context settings which
* describe certain rules for numerical operators, such as those
* implemented by the {@link BigDecimal} class.
*
* <p>The base-independent settings are:
* <ol>
* <li>{@code precision}:
* the number of digits to be used for an operation; results are
* rounded to this precision
*
* <li>{@code roundingMode}:
* a {@link RoundingMode} object which specifies the algorithm to be
* used for rounding.
* </ol>
*
* @see     BigDecimal
* @see     RoundingMode
* @author  Mike Cowlishaw
* @author  Joseph D. Darcy
* @since 1.5
*/
@:require(java5) extern class MathContext implements java.io.Serializable
{
	/**
	*  A {@code MathContext} object whose settings have the values
	*  required for unlimited precision arithmetic.
	*  The values of the settings are:
	*  <code>
	*  precision=0 roundingMode=HALF_UP
	*  </code>
	*/
	public static var UNLIMITED(default, null) : java.math.MathContext;
	
	/**
	*  A {@code MathContext} object with a precision setting
	*  matching the IEEE 754R Decimal32 format, 7 digits, and a
	*  rounding mode of {@link RoundingMode#HALF_EVEN HALF_EVEN}, the
	*  IEEE 754R default.
	*/
	public static var DECIMAL32(default, null) : java.math.MathContext;
	
	/**
	*  A {@code MathContext} object with a precision setting
	*  matching the IEEE 754R Decimal64 format, 16 digits, and a
	*  rounding mode of {@link RoundingMode#HALF_EVEN HALF_EVEN}, the
	*  IEEE 754R default.
	*/
	public static var DECIMAL64(default, null) : java.math.MathContext;
	
	/**
	*  A {@code MathContext} object with a precision setting
	*  matching the IEEE 754R Decimal128 format, 34 digits, and a
	*  rounding mode of {@link RoundingMode#HALF_EVEN HALF_EVEN}, the
	*  IEEE 754R default.
	*/
	public static var DECIMAL128(default, null) : java.math.MathContext;
	
	/**
	* Constructs a new {@code MathContext} with the specified
	* precision and the {@link RoundingMode#HALF_UP HALF_UP} rounding
	* mode.
	*
	* @param setPrecision The non-negative {@code int} precision setting.
	* @throws IllegalArgumentException if the {@code setPrecision} parameter is less
	*         than zero.
	*/
	@:overload public function new(setPrecision : Int) : Void;
	
	/**
	* Constructs a new {@code MathContext} with a specified
	* precision and rounding mode.
	*
	* @param setPrecision The non-negative {@code int} precision setting.
	* @param setRoundingMode The rounding mode to use.
	* @throws IllegalArgumentException if the {@code setPrecision} parameter is less
	*         than zero.
	* @throws NullPointerException if the rounding mode argument is {@code null}
	*/
	@:overload public function new(setPrecision : Int, setRoundingMode : java.math.RoundingMode) : Void;
	
	/**
	* Constructs a new {@code MathContext} from a string.
	*
	* The string must be in the same format as that produced by the
	* {@link #toString} method.
	*
	* <p>An {@code IllegalArgumentException} is thrown if the precision
	* section of the string is out of range ({@code < 0}) or the string is
	* not in the format created by the {@link #toString} method.
	*
	* @param val The string to be parsed
	* @throws IllegalArgumentException if the precision section is out of range
	* or of incorrect format
	* @throws NullPointerException if the argument is {@code null}
	*/
	@:overload public function new(val : String) : Void;
	
	/**
	* Returns the {@code precision} setting.
	* This value is always non-negative.
	*
	* @return an {@code int} which is the value of the {@code precision}
	*         setting
	*/
	@:overload public function getPrecision() : Int;
	
	/**
	* Returns the roundingMode setting.
	* This will be one of
	* {@link  RoundingMode#CEILING},
	* {@link  RoundingMode#DOWN},
	* {@link  RoundingMode#FLOOR},
	* {@link  RoundingMode#HALF_DOWN},
	* {@link  RoundingMode#HALF_EVEN},
	* {@link  RoundingMode#HALF_UP},
	* {@link  RoundingMode#UNNECESSARY}, or
	* {@link  RoundingMode#UP}.
	*
	* @return a {@code RoundingMode} object which is the value of the
	*         {@code roundingMode} setting
	*/
	@:overload public function getRoundingMode() : java.math.RoundingMode;
	
	/**
	* Compares this {@code MathContext} with the specified
	* {@code Object} for equality.
	*
	* @param  x {@code Object} to which this {@code MathContext} is to
	*         be compared.
	* @return {@code true} if and only if the specified {@code Object} is
	*         a {@code MathContext} object which has exactly the same
	*         settings as this object
	*/
	@:overload public function equals(x : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this {@code MathContext}.
	*
	* @return hash code for this {@code MathContext}
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the string representation of this {@code MathContext}.
	* The {@code String} returned represents the settings of the
	* {@code MathContext} object as two space-delimited words
	* (separated by a single space character, <tt>'&#92;u0020'</tt>,
	* and with no leading or trailing white space), as follows:
	* <ol>
	* <li>
	* The string {@code "precision="}, immediately followed
	* by the value of the precision setting as a numeric string as if
	* generated by the {@link Integer#toString(int) Integer.toString}
	* method.
	*
	* <li>
	* The string {@code "roundingMode="}, immediately
	* followed by the value of the {@code roundingMode} setting as a
	* word.  This word will be the same as the name of the
	* corresponding public constant in the {@link RoundingMode}
	* enum.
	* </ol>
	* <p>
	* For example:
	* <pre>
	* precision=9 roundingMode=HALF_UP
	* </pre>
	*
	* Additional words may be appended to the result of
	* {@code toString} in the future if more properties are added to
	* this class.
	*
	* @return a {@code String} representing the context settings
	*/
	@:overload public function toString() : String;
	
	
}
