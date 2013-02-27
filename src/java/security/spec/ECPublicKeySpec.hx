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
/**
* This immutable class specifies an elliptic curve public key with
* its associated parameters.
*
* @see KeySpec
* @see ECPoint
* @see ECParameterSpec
*
* @author Valerie Peng
*
* @since 1.5
*/
@:require(java5) extern class ECPublicKeySpec implements java.security.spec.KeySpec
{
	/**
	* Creates a new ECPublicKeySpec with the specified
	* parameter values.
	* @param w the public point.
	* @param params the associated elliptic curve domain
	* parameters.
	* @exception NullPointerException if <code>w</code>
	* or <code>params</code> is null.
	* @exception IllegalArgumentException if <code>w</code>
	* is point at infinity, i.e. ECPoint.POINT_INFINITY
	*/
	@:overload public function new(w : java.security.spec.ECPoint, params : java.security.spec.ECParameterSpec) : Void;
	
	/**
	* Returns the public point W.
	* @return the public point W.
	*/
	@:overload public function getW() : java.security.spec.ECPoint;
	
	/**
	* Returns the associated elliptic curve domain
	* parameters.
	* @return the EC domain parameters.
	*/
	@:overload public function getParams() : java.security.spec.ECParameterSpec;
	
	
}
