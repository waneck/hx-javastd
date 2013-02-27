package java.math;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
* A class used to represent multiprecision integers that makes efficient
* use of allocated space by allowing a number to occupy only part of
* an array so that the arrays do not have to be reallocated as often.
* When performing an operation with many iterations the array used to
* hold a number is only increased when necessary and does not have to
* be the same size as the number it represents. A mutable number allows
* calculations to occur on the same number without having to create
* a new number for every step of the calculation as occurs with
* BigIntegers.
*
* Note that SignedMutableBigIntegers only support signed addition and
* subtraction. All other operations occur as with MutableBigIntegers.
*
* @see     BigInteger
* @author  Michael McCloskey
* @since   1.3
*/
@:require(java3) @:internal extern class SignedMutableBigInteger extends java.math.MutableBigInteger
{
	/**
	* Print out the first intLen ints of this MutableBigInteger's value
	* array starting at offset.
	*/
	@:overload override public function toString() : String;
	
	
}
