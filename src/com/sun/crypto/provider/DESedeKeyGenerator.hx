package com.sun.crypto.provider;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class DESedeKeyGenerator extends javax.crypto.KeyGeneratorSpi
{
	/**
	* Empty constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* Initializes this key generator.
	*
	* @param random the source of randomness for this generator
	*/
	@:overload override private function engineInit(random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this key generator with the specified parameter
	* set and a user-provided source of randomness.
	*
	* @param params the key generation parameters
	* @param random the source of randomness for this key generator
	*
	* @exception InvalidAlgorithmParameterException if <code>params</code> is
	* inappropriate for this key generator
	*/
	@:overload override private function engineInit(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this key generator for a certain keysize, using the given
	* source of randomness.
	*
	* @param keysize the keysize. This is an algorithm-specific
	* metric specified in number of bits. A keysize with 112 bits of entropy
	* corresponds to a Triple DES key with 2 intermediate keys, and a keysize
	* with 168 bits of entropy corresponds to a Triple DES key with 3
	* intermediate keys.
	* @param random the source of randomness for this key generator
	*/
	@:overload override private function engineInit(keysize : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates the Triple DES key.
	*
	* @return the new Triple DES key
	*/
	@:overload override private function engineGenerateKey() : javax.crypto.SecretKey;
	
	
}
