package java.security.spec;
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
extern class ECPoint
{
	/**
	* This defines the point at infinity.
	*/
	public static var POINT_INFINITY(default, null) : ECPoint;
	
	/**
	* Creates an ECPoint from the specified affine x-coordinate
	* <code>x</code> and affine y-coordinate <code>y</code>.
	* @param x the affine x-coordinate.
	* @param y the affine y-coordinate.
	* @exception NullPointerException if <code>x</code> or
	* <code>y</code> is null.
	*/
	@:overload public function new(x : java.math.BigInteger, y : java.math.BigInteger) : Void;
	
	/**
	* Returns the affine x-coordinate <code>x</code>.
	* Note: POINT_INFINITY has a null affine x-coordinate.
	* @return the affine x-coordinate.
	*/
	@:overload public function getAffineX() : java.math.BigInteger;
	
	/**
	* Returns the affine y-coordinate <code>y</code>.
	* Note: POINT_INFINITY has a null affine y-coordinate.
	* @return the affine y-coordinate.
	*/
	@:overload public function getAffineY() : java.math.BigInteger;
	
	/**
	* Compares this elliptic curve point for equality with
	* the specified object.
	* @param obj the object to be compared.
	* @return true if <code>obj</code> is an instance of
	* ECPoint and the affine coordinates match, false otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this elliptic curve point.
	* @return a hash code value.
	*/
	@:overload public function hashCode() : Int;
	
	
}
