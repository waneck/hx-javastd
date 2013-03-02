package sun.security.util;
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
extern class BigInt
{
	/**
	* Constructs a "Big" integer from a set of (big-endian) bytes.
	* Leading zeroes should be stripped off.
	*
	* @param data a sequence of bytes, most significant bytes/digits
	*          first.  CONSUMED.
	*/
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a "Big" integer from a "BigInteger", which must be
	* positive (or zero) in value.
	*/
	@:overload public function new(i : java.math.BigInteger) : Void;
	
	/**
	* Constructs a "Big" integer from a normal Java integer.
	*
	* @param i the java primitive integer
	*/
	@:overload public function new(i : Int) : Void;
	
	/**
	* Converts the "big" integer to a java primitive integer.
	*
	* @excpet NumberFormatException if 32 bits is insufficient.
	*/
	@:overload public function toInt() : Int;
	
	/**
	* Returns a hexadecimal printed representation.  The value is
	* formatted to fit on lines of at least 75 characters, with
	* embedded newlines.  Words are separated for readability,
	* with eight words (32 bytes) per line.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a BigInteger value which supports many arithmetic
	* operations. Assumes negative values will never occur.
	*/
	@:overload public function toBigInteger() : java.math.BigInteger;
	
	/**
	* Returns the data as a byte array.  The most significant bit
	* of the array is bit zero (as in <code>java.math.BigInteger</code>).
	*/
	@:overload public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns true iff the parameter is a numerically equivalent
	* BigInt.
	*
	* @param other the object being compared with this one.
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns true iff the parameter is numerically equivalent.
	*
	* @param other the BigInt being compared with this one.
	*/
	@:overload public function equals(other : sun.security.util.BigInt) : Bool;
	
	/**
	* Returns a hashcode for this BigInt.
	*
	* @return a hashcode for this BigInt.
	*/
	@:overload public function hashCode() : Int;
	
	
}
