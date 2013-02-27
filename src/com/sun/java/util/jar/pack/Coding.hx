package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Define the conversions between sequences of small integers and raw bytes.
* This is a schema of encodings which incorporates varying lengths,
* varying degrees of length variability, and varying amounts of signed-ness.
* @author John Rose
*/
@:internal extern class Coding implements java.lang.Comparable<Coding> implements com.sun.java.util.jar.pack.CodingMethod implements com.sun.java.util.jar.pack.Histogram.Histogram_BitMetric
{
	/** Largest int representable by (B,H,S) in up to nMax bytes. */
	@:overload public static function codeMax(B : Int, H : Int, S : Int, nMax : Int) : Int;
	
	/** Smallest int representable by (B,H,S) in up to nMax bytes.
	Returns Integer.MIN_VALUE if 32-bit wraparound covers
	the entire negative range.
	*/
	@:overload public static function codeMin(B : Int, H : Int, S : Int, nMax : Int) : Int;
	
	@:overload public static function writeInt(out : java.NativeArray<java.StdTypes.Int8>, outpos : java.NativeArray<Int>, sx : Int, B : Int, H : Int, S : Int) : Void;
	
	@:overload public static function readInt(_in : java.NativeArray<java.StdTypes.Int8>, inpos : java.NativeArray<Int>, B : Int, H : Int, S : Int) : Int;
	
	@:overload public static function readIntFrom(_in : java.io.InputStream, B : Int, H : Int, S : Int) : Int;
	
	public static var B_MAX(default, null) : Int;
	
	/* B: [1,5] */
	public static var H_MAX(default, null) : Int;
	
	/* H: [1,256] */
	public static var S_MAX(default, null) : Int;
	
	@:overload public function equals(x : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public static function of(B : Int, H : Int) : Coding;
	
	@:overload public static function of(B : Int, H : Int, S : Int) : Coding;
	
	@:overload public function canRepresentValue(x : Int) : Bool;
	
	/** Can this coding represent a single value, possibly a delta?
	*  This ignores the D property.  That is, for delta codings,
	*  this tests whether a delta value of 'x' can be coded.
	*  For signed delta codings which produce unsigned end values,
	*  use canRepresentUnsigned.
	*/
	@:overload public function canRepresentSigned(x : Int) : Bool;
	
	/** Can this coding, apart from its S property,
	*  represent a single value?  (Negative values
	*  can only be represented via 32-bit overflow,
	*  so this returns true for negative values
	*  if isFullRange is true.)
	*/
	@:overload public function canRepresentUnsigned(x : Int) : Bool;
	
	@:overload public function readFrom(_in : java.NativeArray<java.StdTypes.Int8>, inpos : java.NativeArray<Int>) : Int;
	
	@:overload public function writeTo(out : java.NativeArray<java.StdTypes.Int8>, outpos : java.NativeArray<Int>, x : Int) : Void;
	
	@:overload public function readFrom(_in : java.io.InputStream) : Int;
	
	@:overload public function writeTo(out : java.io.OutputStream, x : Int) : Void;
	
	@:overload public function readArrayFrom(_in : java.io.InputStream, a : java.NativeArray<Int>, start : Int, end : Int) : Void;
	
	@:overload public function writeArrayTo(out : java.io.OutputStream, a : java.NativeArray<Int>, start : Int, end : Int) : Void;
	
	@:overload public function B() : Int;
	
	@:overload public function H() : Int;
	
	@:overload public function L() : Int;
	
	@:overload public function S() : Int;
	
	@:overload public function del() : Int;
	
	@:overload public function min() : Int;
	
	@:overload public function max() : Int;
	
	@:overload public function umin() : Int;
	
	@:overload public function umax() : Int;
	
	@:overload public function byteMin(b : Int) : Int;
	
	@:overload public function byteMax(b : Int) : Int;
	
	@:overload public function compareTo(that : Coding) : Int;
	
	/** Heuristic measure of the difference between two codings. */
	@:overload public function distanceFrom(that : Coding) : Int;
	
	@:overload public function getBitLength(value : Int) : Float;
	
	/** How many bytes are in the coding of this value?
	*  Returns Integer.MAX_VALUE if the value has no coding.
	*  The coding must not be a delta coding, since there is no
	*  definite size for a single value apart from its context.
	*/
	@:overload public function getLength(value : Int) : Int;
	
	@:overload public function getLength(values : java.NativeArray<Int>, start : Int, end : Int) : Int;
	
	@:overload public function getMetaCoding(dflt : Coding) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function parseMetaCoding(bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, dflt : Coding, res : java.NativeArray<com.sun.java.util.jar.pack.CodingMethod>) : Int;
	
	@:overload public function keyString() : String;
	
	@:overload public function toString() : String;
	
	
}
