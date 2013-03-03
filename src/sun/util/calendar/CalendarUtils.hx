package sun.util.calendar;
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
extern class CalendarUtils
{
	/**
	* Returns whether the specified year is a leap year in the Gregorian
	* calendar system.
	*
	* @param gregorianYear a Gregorian calendar year
	* @return true if the given year is a leap year in the Gregorian
	* calendar system.
	* @see CalendarDate#isLeapYear
	*/
	@:overload @:public @:static @:final public static function isGregorianLeapYear(gregorianYear : Int) : Bool;
	
	/**
	* Returns whether the specified year is a leap year in the Julian
	* calendar system. The year number must be a normalized one
	* (e.g., 45 B.C.E. is 1-45).
	*
	* @param normalizedJulianYear a normalized Julian calendar year
	* @return true if the given year is a leap year in the Julian
	* calendar system.
	* @see CalendarDate#isLeapYear
	*/
	@:overload @:public @:static @:final public static function isJulianLeapYear(normalizedJulianYear : Int) : Bool;
	
	/**
	* Divides two integers and returns the floor of the quotient.
	* For example, <code>floorDivide(-1, 4)</code> returns -1 while
	* -1/4 is 0.
	*
	* @param n the numerator
	* @param d a divisor that must be greater than 0
	* @return the floor of the quotient
	*/
	@:overload @:public @:static @:final public static function floorDivide(n : haxe.Int64, d : haxe.Int64) : haxe.Int64;
	
	/**
	* Divides two integers and returns the floor of the quotient.
	* For example, <code>floorDivide(-1, 4)</code> returns -1 while
	* -1/4 is 0.
	*
	* @param n the numerator
	* @param d a divisor that must be greater than 0
	* @return the floor of the quotient
	*/
	@:overload @:public @:static @:final public static function floorDivide(n : Int, d : Int) : Int;
	
	/**
	* Divides two integers and returns the floor of the quotient and
	* the modulus remainder.  For example,
	* <code>floorDivide(-1,4)</code> returns <code>-1</code> with
	* <code>3</code> as its remainder, while <code>-1/4</code> is
	* <code>0</code> and <code>-1%4</code> is <code>-1</code>.
	*
	* @param n the numerator
	* @param d a divisor which must be > 0
	* @param r an array of at least one element in which the value
	* <code>mod(n, d)</code> is returned.
	* @return the floor of the quotient.
	*/
	@:overload @:public @:static @:final public static function floorDivide(n : Int, d : Int, r : java.NativeArray<Int>) : Int;
	
	/**
	* Divides two integers and returns the floor of the quotient and
	* the modulus remainder.  For example,
	* <code>floorDivide(-1,4)</code> returns <code>-1</code> with
	* <code>3</code> as its remainder, while <code>-1/4</code> is
	* <code>0</code> and <code>-1%4</code> is <code>-1</code>.
	*
	* @param n the numerator
	* @param d a divisor which must be > 0
	* @param r an array of at least one element in which the value
	* <code>mod(n, d)</code> is returned.
	* @return the floor of the quotient.
	*/
	@:overload @:public @:static @:final public static function floorDivide(n : haxe.Int64, d : Int, r : java.NativeArray<Int>) : Int;
	
	@:overload @:public @:static @:final public static function mod(x : haxe.Int64, y : haxe.Int64) : haxe.Int64;
	
	@:overload @:public @:static @:final public static function mod(x : Int, y : Int) : Int;
	
	@:overload @:public @:static @:final public static function amod(x : Int, y : Int) : Int;
	
	@:overload @:public @:static @:final public static function amod(x : haxe.Int64, y : haxe.Int64) : haxe.Int64;
	
	/**
	* Mimics sprintf(buf, "%0*d", decaimal, width).
	*/
	@:overload @:public @:static @:final public static function sprintf0d(sb : java.lang.StringBuilder, value : Int, width : Int) : java.lang.StringBuilder;
	
	@:overload @:public @:static @:final public static function sprintf0d(sb : java.lang.StringBuffer, value : Int, width : Int) : java.lang.StringBuffer;
	
	
}
