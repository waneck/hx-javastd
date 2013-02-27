package sun.security.util;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class BitArray
{
	/**
	* Creates a BitArray of the specified size, initialized to zeros.
	*/
	@:overload public function new(length : Int) : Void;
	
	/**
	* Creates a BitArray of the specified size, initialized from the
	* specified byte array.  The most significant bit of a[0] gets
	* index zero in the BitArray.  The array a must be large enough
	* to specify a value for every bit in the BitArray.  In other words,
	* 8*a.length <= length.
	*/
	@:overload public function new(length : Int, a : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create a BitArray whose bits are those of the given array
	* of Booleans.
	*/
	@:overload public function new(bits : java.NativeArray<Bool>) : Void;
	
	/**
	*  Returns the indexed bit in this BitArray.
	*/
	@:overload public function get(index : Int) : Bool;
	
	/**
	*  Sets the indexed bit in this BitArray.
	*/
	@:overload public function set(index : Int, value : Bool) : Void;
	
	/**
	* Returns the length of this BitArray.
	*/
	@:overload public function length() : Int;
	
	/**
	* Returns a Byte array containing the contents of this BitArray.
	* The bit stored at index zero in this BitArray will be copied
	* into the most significant bit of the zeroth element of the
	* returned byte array.  The last byte of the returned byte array
	* will be contain zeros in any bits that do not have corresponding
	* bits in the BitArray.  (This matters only if the BitArray's size
	* is not a multiple of 8.)
	*/
	@:overload public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return a boolean array with the same bit values a this BitArray.
	*/
	@:overload public function toBooleanArray() : java.NativeArray<Bool>;
	
	/**
	* Returns a hash code value for this bit array.
	*
	* @return  a hash code value for this bit array.
	*/
	@:overload public function hashCode() : Int;
	
	@:overload public function clone() : Dynamic;
	
	/**
	*  Returns a string representation of this BitArray.
	*/
	@:overload public function toString() : String;
	
	@:overload public function truncate() : BitArray;
	
	
}
