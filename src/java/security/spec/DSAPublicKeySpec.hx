package java.security.spec;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class DSAPublicKeySpec implements java.security.spec.KeySpec
{
	/**
	* Creates a new DSAPublicKeySpec with the specified parameter values.
	*
	* @param y the public key.
	*
	* @param p the prime.
	*
	* @param q the sub-prime.
	*
	* @param g the base.
	*/
	@:overload public function new(y : java.math.BigInteger, p : java.math.BigInteger, q : java.math.BigInteger, g : java.math.BigInteger) : Void;
	
	/**
	* Returns the public key <code>y</code>.
	*
	* @return the public key <code>y</code>.
	*/
	@:overload public function getY() : java.math.BigInteger;
	
	/**
	* Returns the prime <code>p</code>.
	*
	* @return the prime <code>p</code>.
	*/
	@:overload public function getP() : java.math.BigInteger;
	
	/**
	* Returns the sub-prime <code>q</code>.
	*
	* @return the sub-prime <code>q</code>.
	*/
	@:overload public function getQ() : java.math.BigInteger;
	
	/**
	* Returns the base <code>g</code>.
	*
	* @return the base <code>g</code>.
	*/
	@:overload public function getG() : java.math.BigInteger;
	
	
}
