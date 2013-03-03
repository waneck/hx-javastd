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
extern class ECFieldF2m implements java.security.spec.ECField
{
	/**
	* Creates an elliptic curve characteristic 2 finite
	* field which has 2^<code>m</code> elements with normal basis.
	* @param m with 2^<code>m</code> being the number of elements.
	* @exception IllegalArgumentException if <code>m</code>
	* is not positive.
	*/
	@:overload @:public public function new(m : Int) : Void;
	
	/**
	* Creates an elliptic curve characteristic 2 finite
	* field which has 2^<code>m</code> elements with
	* polynomial basis.
	* The reduction polynomial for this field is based
	* on <code>rp</code> whose i-th bit correspondes to
	* the i-th coefficient of the reduction polynomial.<p>
	* Note: A valid reduction polynomial is either a
	* trinomial (X^<code>m</code> + X^<code>k</code> + 1
	* with <code>m</code> > <code>k</code> >= 1) or a
	* pentanomial (X^<code>m</code> + X^<code>k3</code>
	* + X^<code>k2</code> + X^<code>k1</code> + 1 with
	* <code>m</code> > <code>k3</code> > <code>k2</code>
	* > <code>k1</code> >= 1).
	* @param m with 2^<code>m</code> being the number of elements.
	* @param rp the BigInteger whose i-th bit corresponds to
	* the i-th coefficient of the reduction polynomial.
	* @exception NullPointerException if <code>rp</code> is null.
	* @exception IllegalArgumentException if <code>m</code>
	* is not positive, or <code>rp</code> does not represent
	* a valid reduction polynomial.
	*/
	@:overload @:public public function new(m : Int, rp : java.math.BigInteger) : Void;
	
	/**
	* Creates an elliptic curve characteristic 2 finite
	* field which has 2^<code>m</code> elements with
	* polynomial basis. The reduction polynomial for this
	* field is based on <code>ks</code> whose content
	* contains the order of the middle term(s) of the
	* reduction polynomial.
	* Note: A valid reduction polynomial is either a
	* trinomial (X^<code>m</code> + X^<code>k</code> + 1
	* with <code>m</code> > <code>k</code> >= 1) or a
	* pentanomial (X^<code>m</code> + X^<code>k3</code>
	* + X^<code>k2</code> + X^<code>k1</code> + 1 with
	* <code>m</code> > <code>k3</code> > <code>k2</code>
	* > <code>k1</code> >= 1), so <code>ks</code> should
	* have length 1 or 3.
	* @param m with 2^<code>m</code> being the number of elements.
	* @param ks the order of the middle term(s) of the
	* reduction polynomial. Contents of this array are copied
	* to protect against subsequent modification.
	* @exception NullPointerException if <code>ks</code> is null.
	* @exception IllegalArgumentException if<code>m</code>
	* is not positive, or the length of <code>ks</code>
	* is neither 1 nor 3, or values in <code>ks</code>
	* are not between <code>m</code>-1 and 1 (inclusive)
	* and in descending order.
	*/
	@:overload @:public public function new(m : Int, ks : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the field size in bits which is <code>m</code>
	* for this characteristic 2 finite field.
	* @return the field size in bits.
	*/
	@:overload @:public public function getFieldSize() : Int;
	
	/**
	* Returns the value <code>m</code> of this characteristic
	* 2 finite field.
	* @return <code>m</code> with 2^<code>m</code> being the
	* number of elements.
	*/
	@:overload @:public public function getM() : Int;
	
	/**
	* Returns a BigInteger whose i-th bit corresponds to the
	* i-th coefficient of the reduction polynomial for polynomial
	* basis or null for normal basis.
	* @return a BigInteger whose i-th bit corresponds to the
	* i-th coefficient of the reduction polynomial for polynomial
	* basis or null for normal basis.
	*/
	@:overload @:public public function getReductionPolynomial() : java.math.BigInteger;
	
	/**
	* Returns an integer array which contains the order of the
	* middle term(s) of the reduction polynomial for polynomial
	* basis or null for normal basis.
	* @return an integer array which contains the order of the
	* middle term(s) of the reduction polynomial for polynomial
	* basis or null for normal basis. A new array is returned
	* each time this method is called.
	*/
	@:overload @:public public function getMidTermsOfReductionPolynomial() : java.NativeArray<Int>;
	
	/**
	* Compares this finite field for equality with the
	* specified object.
	* @param obj the object to be compared.
	* @return true if <code>obj</code> is an instance
	* of ECFieldF2m and both <code>m</code> and the reduction
	* polynomial match, false otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this characteristic 2
	* finite field.
	* @return a hash code value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
