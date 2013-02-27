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
* A simple bit sieve used for finding prime number candidates. Allows setting
* and clearing of bits in a storage array. The size of the sieve is assumed to
* be constant to reduce overhead. All the bits of a new bitSieve are zero, and
* bits are removed from it by setting them.
*
* To reduce storage space and increase efficiency, no even numbers are
* represented in the sieve (each bit in the sieve represents an odd number).
* The relationship between the index of a bit and the number it represents is
* given by
* N = offset + (2*index + 1);
* Where N is the integer represented by a bit in the sieve, offset is some
* even integer offset indicating where the sieve begins, and index is the
* index of a bit in the sieve array.
*
* @see     BigInteger
* @author  Michael McCloskey
* @since   1.3
*/
@:require(java3) @:internal extern class BitSieve
{
	
}
