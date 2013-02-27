package java.security;
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
extern class KeyPairGeneratorSpi
{
	/**
	* Initializes the key pair generator for a certain keysize, using
	* the default parameter set.
	*
	* @param keysize the keysize. This is an
	* algorithm-specific metric, such as modulus length, specified in
	* number of bits.
	*
	* @param random the source of randomness for this generator.
	*
	* @exception InvalidParameterException if the <code>keysize</code> is not
	* supported by this KeyPairGeneratorSpi object.
	*/
	@:overload @:abstract public function initialize(keysize : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes the key pair generator using the specified parameter
	* set and user-provided source of randomness.
	*
	* <p>This concrete method has been added to this previously-defined
	* abstract class. (For backwards compatibility, it cannot be abstract.)
	* It may be overridden by a provider to initialize the key pair
	* generator. Such an override
	* is expected to throw an InvalidAlgorithmParameterException if
	* a parameter is inappropriate for this key pair generator.
	* If this method is not overridden, it always throws an
	* UnsupportedOperationException.
	*
	* @param params the parameter set used to generate the keys.
	*
	* @param random the source of randomness for this generator.
	*
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key pair generator.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function initialize(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates a key pair. Unless an initialization method is called
	* using a KeyPairGenerator interface, algorithm-specific defaults
	* will be used. This will generate a new key pair every time it
	* is called.
	*
	* @return the newly generated <tt>KeyPair</tt>
	*/
	@:overload @:abstract public function generateKeyPair() : java.security.KeyPair;
	
	
}
