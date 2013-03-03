package java.text;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
@:internal extern class DigitList implements java.lang.Cloneable
{
	/**
	* The maximum number of significant digits in an IEEE 754 double, that
	* is, in a Java double.  This must not be increased, or garbage digits
	* will be generated, and should not be decreased, or accuracy will be lost.
	*/
	@:public @:static @:final public static var MAX_COUNT(default, null) : Int;
	
	/**
	* These data members are intentionally public and can be set directly.
	*
	* The value represented is given by placing the decimal point before
	* digits[decimalAt].  If decimalAt is < 0, then leading zeros between
	* the decimal point and the first nonzero digit are implied.  If decimalAt
	* is > count, then trailing zeros between the digits[count-1] and the
	* decimal point are implied.
	*
	* Equivalently, the represented value is given by f * 10^decimalAt.  Here
	* f is a value 0.1 <= f < 1 arrived at by placing the digits in Digits to
	* the right of the decimal.
	*
	* DigitList is normalized, so if it is non-zero, figits[0] is non-zero.  We
	* don't allow denormalized numbers because our exponent is effectively of
	* unlimited magnitude.  The count value contains the number of significant
	* digits present in digits[].
	*
	* Zero is represented by any DigitList with count == 0 or with each digits[i]
	* for all i <= count == '0'.
	*/
	@:public public var decimalAt : Int;
	
	@:public public var count : Int;
	
	@:public public var digits : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Clears out the digits.
	* Use before appending them.
	* Typically, you set a series of digits with append, then at the point
	* you hit the decimal point, you set myDigitList.decimalAt = myDigitList.count;
	* then go on appending digits.
	*/
	@:overload @:public public function clear() : Void;
	
	/**
	* Appends a digit to the list, extending the list when necessary.
	*/
	@:overload @:public public function append(digit : java.StdTypes.Char16) : Void;
	
	/**
	* Utility routine to get the value of the digit list
	* If (count == 0) this throws a NumberFormatException, which
	* mimics Long.parseLong().
	*/
	@:overload @:public @:final public function getDouble() : Float;
	
	/**
	* Utility routine to get the value of the digit list.
	* If (count == 0) this returns 0, unlike Long.parseLong().
	*/
	@:overload @:public @:final public function getLong() : haxe.Int64;
	
	@:overload @:public @:final public function getBigDecimal() : java.math.BigDecimal;
	
	/**
	* Set the digit list to a representation of the given double value.
	* This method supports fixed-point notation.
	* @param isNegative Boolean value indicating whether the number is negative.
	* @param source Value to be converted; must not be Inf, -Inf, Nan,
	* or a value <= 0.
	* @param maximumFractionDigits The most fractional digits which should
	* be converted.
	*/
	@:overload @:public @:final public function set(isNegative : Bool, source : Float, maximumFractionDigits : Int) : Void;
	
	/**
	* Utility routine to set the value of the digit list from a long
	*/
	@:overload @:public @:final public function set(isNegative : Bool, source : haxe.Int64) : Void;
	
	/**
	* Set the digit list to a representation of the given long value.
	* @param isNegative Boolean value indicating whether the number is negative.
	* @param source Value to be converted; must be >= 0 or ==
	* Long.MIN_VALUE.
	* @param maximumDigits The most digits which should be converted.
	* If maximumDigits is lower than the number of significant digits
	* in source, the representation will be rounded.  Ignored if <= 0.
	*/
	@:overload @:public @:final public function set(isNegative : Bool, source : haxe.Int64, maximumDigits : Int) : Void;
	
	/**
	* equality test between two digit lists.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Generates the hash code for the digit list.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Creates a copy of this object.
	* @return a clone of this instance.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	
}
