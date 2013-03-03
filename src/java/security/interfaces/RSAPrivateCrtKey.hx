package java.security.interfaces;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface RSAPrivateCrtKey extends java.security.interfaces.RSAPrivateKey
{
	/**
	* Returns the public exponent.
	*
	* @return the public exponent
	*/
	@:overload @:public public function getPublicExponent() : java.math.BigInteger;
	
	/**
	* Returns the primeP.

	* @return the primeP
	*/
	@:overload @:public public function getPrimeP() : java.math.BigInteger;
	
	/**
	* Returns the primeQ.
	*
	* @return the primeQ
	*/
	@:overload @:public public function getPrimeQ() : java.math.BigInteger;
	
	/**
	* Returns the primeExponentP.
	*
	* @return the primeExponentP
	*/
	@:overload @:public public function getPrimeExponentP() : java.math.BigInteger;
	
	/**
	* Returns the primeExponentQ.
	*
	* @return the primeExponentQ
	*/
	@:overload @:public public function getPrimeExponentQ() : java.math.BigInteger;
	
	/**
	* Returns the crtCoefficient.
	*
	* @return the crtCoefficient
	*/
	@:overload @:public public function getCrtCoefficient() : java.math.BigInteger;
	
	
}
