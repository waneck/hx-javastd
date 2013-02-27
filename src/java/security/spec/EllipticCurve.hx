package java.security.spec;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class EllipticCurve
{
	/**
	* Creates an elliptic curve with the specified elliptic field
	* <code>field</code> and the coefficients <code>a</code> and
	* <code>b</code>.
	* @param field the finite field that this elliptic curve is over.
	* @param a the first coefficient of this elliptic curve.
	* @param b the second coefficient of this elliptic curve.
	* @exception NullPointerException if <code>field</code>,
	* <code>a</code>, or <code>b</code> is null.
	* @exception IllegalArgumentException if <code>a</code>
	* or <code>b</code> is not null and not in <code>field</code>.
	*/
	@:overload public function new(field : java.security.spec.ECField, a : java.math.BigInteger, b : java.math.BigInteger) : Void;
	
	/**
	* Creates an elliptic curve with the specified elliptic field
	* <code>field</code>, the coefficients <code>a</code> and
	* <code>b</code>, and the <code>seed</code> used for curve generation.
	* @param field the finite field that this elliptic curve is over.
	* @param a the first coefficient of this elliptic curve.
	* @param b the second coefficient of this elliptic curve.
	* @param seed the bytes used during curve generation for later
	* validation. Contents of this array are copied to protect against
	* subsequent modification.
	* @exception NullPointerException if <code>field</code>,
	* <code>a</code>, or <code>b</code> is null.
	* @exception IllegalArgumentException if <code>a</code>
	* or <code>b</code> is not null and not in <code>field</code>.
	*/
	@:overload public function new(field : java.security.spec.ECField, a : java.math.BigInteger, b : java.math.BigInteger, seed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the finite field <code>field</code> that this
	* elliptic curve is over.
	* @return the field <code>field</code> that this curve
	* is over.
	*/
	@:overload public function getField() : java.security.spec.ECField;
	
	/**
	* Returns the first coefficient <code>a</code> of the
	* elliptic curve.
	* @return the first coefficient <code>a</code>.
	*/
	@:overload public function getA() : java.math.BigInteger;
	
	/**
	* Returns the second coefficient <code>b</code> of the
	* elliptic curve.
	* @return the second coefficient <code>b</code>.
	*/
	@:overload public function getB() : java.math.BigInteger;
	
	/**
	* Returns the seeding bytes <code>seed</code> used
	* during curve generation. May be null if not specified.
	* @return the seeding bytes <code>seed</code>. A new
	* array is returned each time this method is called.
	*/
	@:overload public function getSeed() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Compares this elliptic curve for equality with the
	* specified object.
	* @param obj the object to be compared.
	* @return true if <code>obj</code> is an instance of
	* EllipticCurve and the field, A, and B match, false otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this elliptic curve.
	* @return a hash code value computed from the hash codes of the field, A,
	* and B, as follows:
	* <code>
	*     (field.hashCode() << 6) + (a.hashCode() << 4) + (b.hashCode() << 2)
	* </code>
	*/
	@:overload public function hashCode() : Int;
	
	
}
