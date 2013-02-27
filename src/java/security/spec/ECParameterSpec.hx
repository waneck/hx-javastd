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
extern class ECParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Creates elliptic curve domain parameters based on the
	* specified values.
	* @param curve the elliptic curve which this parameter
	* defines.
	* @param g the generator which is also known as the base point.
	* @param n the order of the generator <code>g</code>.
	* @param h the cofactor.
	* @exception NullPointerException if <code>curve</code>,
	* <code>g</code>, or <code>n</code> is null.
	* @exception IllegalArgumentException if <code>n</code>
	* or <code>h</code> is not positive.
	*/
	@:overload public function new(curve : java.security.spec.EllipticCurve, g : java.security.spec.ECPoint, n : java.math.BigInteger, h : Int) : Void;
	
	/**
	* Returns the elliptic curve that this parameter defines.
	* @return the elliptic curve that this parameter defines.
	*/
	@:overload public function getCurve() : java.security.spec.EllipticCurve;
	
	/**
	* Returns the generator which is also known as the base point.
	* @return the generator which is also known as the base point.
	*/
	@:overload public function getGenerator() : java.security.spec.ECPoint;
	
	/**
	* Returns the order of the generator.
	* @return the order of the generator.
	*/
	@:overload public function getOrder() : java.math.BigInteger;
	
	/**
	* Returns the cofactor.
	* @return the cofactor.
	*/
	@:overload public function getCofactor() : Int;
	
	
}
