package sun.misc;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class contains additional constants documenting limits of the
* <code>double</code> type.
*
* @author Joseph D. Darcy
*/
extern class DoubleConsts
{
	public static var POSITIVE_INFINITY(default, null) : Float;
	
	public static var NEGATIVE_INFINITY(default, null) : Float;
	
	public static var NaN(default, null) : Float;
	
	public static var MAX_VALUE(default, null) : Float;
	
	public static var MIN_VALUE(default, null) : Float;
	
	/**
	* A constant holding the smallest positive normal value of type
	* <code>double</code>, 2<sup>-1022</sup>.  It is equal to the
	* value returned by
	* <code>Double.longBitsToDouble(0x0010000000000000L)</code>.
	*
	* @since 1.5
	*/
	@:require(java5) public static var MIN_NORMAL(default, null) : Float;
	
	/**
	* The number of logical bits in the significand of a
	* <code>double</code> number, including the implicit bit.
	*/
	public static var SIGNIFICAND_WIDTH(default, null) : Int;
	
	/**
	* Maximum exponent a finite <code>double</code> number may have.
	* It is equal to the value returned by
	* <code>Math.ilogb(Double.MAX_VALUE)</code>.
	*/
	public static var MAX_EXPONENT(default, null) : Int;
	
	/**
	* Minimum exponent a normalized <code>double</code> number may
	* have.  It is equal to the value returned by
	* <code>Math.ilogb(Double.MIN_NORMAL)</code>.
	*/
	public static var MIN_EXPONENT(default, null) : Int;
	
	/**
	* The exponent the smallest positive <code>double</code>
	* subnormal value would have if it could be normalized.  It is
	* equal to the value returned by
	* <code>FpUtils.ilogb(Double.MIN_VALUE)</code>.
	*/
	public static var MIN_SUB_EXPONENT(default, null) : Int;
	
	/**
	* Bias used in representing a <code>double</code> exponent.
	*/
	public static var EXP_BIAS(default, null) : Int;
	
	/**
	* Bit mask to isolate the sign bit of a <code>double</code>.
	*/
	public static var SIGN_BIT_MASK(default, null) : haxe.Int64;
	
	/**
	* Bit mask to isolate the exponent field of a
	* <code>double</code>.
	*/
	public static var EXP_BIT_MASK(default, null) : haxe.Int64;
	
	/**
	* Bit mask to isolate the significand field of a
	* <code>double</code>.
	*/
	public static var SIGNIF_BIT_MASK(default, null) : haxe.Int64;
	
	
}
