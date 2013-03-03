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
@:internal extern class DerInputBuffer extends java.io.ByteArrayInputStream implements java.lang.Cloneable
{
	/**
	* Compares this DerInputBuffer for equality with the specified
	* object.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this DerInputBuffer.
	*
	* @return a hashcode for this DerInputBuffer.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the integer which takes up the specified number
	* of bytes in this buffer.
	* @throws IOException if the result is not within the valid
	* range for integer, i.e. between Integer.MIN_VALUE and
	* Integer.MAX_VALUE.
	* @param len the number of bytes to use.
	* @return the integer.
	*/
	@:overload @:public public function getInteger(len : Int) : Int;
	
	/**
	* Returns the bit string which takes up the specified
	* number of bytes in this buffer.
	*/
	@:overload @:public public function getBitString(len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the UTC Time value that takes up the specified number
	* of bytes in this buffer.
	* @param len the number of bytes to use
	*/
	@:overload @:public public function getUTCTime(len : Int) : java.util.Date;
	
	/**
	* Returns the Generalized Time value that takes up the specified
	* number of bytes in this buffer.
	* @param len the number of bytes to use
	*/
	@:overload @:public public function getGeneralizedTime(len : Int) : java.util.Date;
	
	
}
