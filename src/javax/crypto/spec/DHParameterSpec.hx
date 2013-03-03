package javax.crypto.spec;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class DHParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Constructs a parameter set for Diffie-Hellman, using a prime modulus
	* <code>p</code> and a base generator <code>g</code>.
	*
	* @param p the prime modulus
	* @param g the base generator
	*/
	@:overload @:public public function new(p : java.math.BigInteger, g : java.math.BigInteger) : Void;
	
	/**
	* Constructs a parameter set for Diffie-Hellman, using a prime modulus
	* <code>p</code>, a base generator <code>g</code>,
	* and the size in bits, <code>l</code>, of the random exponent
	* (private value).
	*
	* @param p the prime modulus
	* @param g the base generator
	* @param l the size in bits of the random exponent (private value)
	*/
	@:overload @:public public function new(p : java.math.BigInteger, g : java.math.BigInteger, l : Int) : Void;
	
	/**
	* Returns the prime modulus <code>p</code>.
	*
	* @return the prime modulus <code>p</code>
	*/
	@:overload @:public public function getP() : java.math.BigInteger;
	
	/**
	* Returns the base generator <code>g</code>.
	*
	* @return the base generator <code>g</code>
	*/
	@:overload @:public public function getG() : java.math.BigInteger;
	
	/**
	* Returns the size in bits, <code>l</code>, of the random exponent
	* (private value).
	*
	* @return the size in bits, <code>l</code>, of the random exponent
	* (private value), or 0 if this size has not been set
	*/
	@:overload @:public public function getL() : Int;
	
	
}
