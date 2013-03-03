package com.sun.crypto.provider;
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
extern class DHKeyPairGenerator extends java.security.KeyPairGeneratorSpi
{
	@:overload @:public public function new() : Void;
	
	/**
	* Initializes this key pair generator for a certain keysize and source of
	* randomness.
	* The keysize is specified as the size in bits of the prime modulus.
	*
	* @param keysize the keysize (size of prime modulus) in bits
	* @param random the source of randomness
	*/
	@:overload @:public override public function initialize(keysize : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this key pair generator for the specified parameter
	* set and source of randomness.
	*
	* <p>The given parameter set contains the prime modulus, the base
	* generator, and optionally the requested size in bits of the random
	* exponent (private value).
	*
	* @param params the parameter set used to generate the key pair
	* @param random the source of randomness
	*
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key pair generator
	*/
	@:overload @:public override public function initialize(algParams : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates a key pair.
	*
	* @return the new key pair
	*/
	@:overload @:public override public function generateKeyPair() : java.security.KeyPair;
	
	
}
