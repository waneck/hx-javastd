package javax.crypto;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyGenerator
{
	/**
	* Creates a KeyGenerator object.
	*
	* @param keyGenSpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload private function new(keyGenSpi : javax.crypto.KeyGeneratorSpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns the algorithm name of this <code>KeyGenerator</code> object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this
	* <code>KeyGenerator</code> object.
	*
	* @return the algorithm name of this <code>KeyGenerator</code> object.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Returns a <code>KeyGenerator</code> object that generates secret keys
	* for the specified algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new KeyGenerator object encapsulating the
	* KeyGeneratorSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested key algorithm.
	* See the KeyGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new <code>KeyGenerator</code> object.
	*
	* @exception NullPointerException if the specified algorithm is null.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          KeyGeneratorSpi implementation for the
	*          specified algorithm.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String) : javax.crypto.KeyGenerator;
	
	/**
	* Returns a <code>KeyGenerator</code> object that generates secret keys
	* for the specified algorithm.
	*
	* <p> A new KeyGenerator object encapsulating the
	* KeyGeneratorSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested key algorithm.
	* See the KeyGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new <code>KeyGenerator</code> object.
	*
	* @exception NullPointerException if the specified algorithm is null.
	*
	* @exception NoSuchAlgorithmException if a KeyGeneratorSpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null or empty.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String, provider : String) : javax.crypto.KeyGenerator;
	
	/**
	* Returns a <code>KeyGenerator</code> object that generates secret keys
	* for the specified algorithm.
	*
	* <p> A new KeyGenerator object encapsulating the
	* KeyGeneratorSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the standard name of the requested key algorithm.
	* See the KeyGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new <code>KeyGenerator</code> object.
	*
	* @exception NullPointerException if the specified algorithm is null.
	*
	* @exception NoSuchAlgorithmException if a KeyGeneratorSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String, provider : java.security.Provider) : javax.crypto.KeyGenerator;
	
	/**
	* Returns the provider of this <code>KeyGenerator</code> object.
	*
	* @return the provider of this <code>KeyGenerator</code> object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this key generator.
	*
	* @param random the source of randomness for this generator
	*/
	@:overload @:final public function init(random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this key generator with the specified parameter set.
	*
	* <p> If this key generator requires any random bytes, it will get them
	* using the
	* {@link SecureRandom <code>SecureRandom</code>}
	* implementation of the highest-priority installed
	* provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* @param params the key generation parameters
	*
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key generator
	*/
	@:overload @:final public function init(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
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
	@:overload @:final public function init(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this key generator for a certain keysize.
	*
	* <p> If this key generator requires any random bytes, it will get them
	* using the
	* {@link SecureRandom <code>SecureRandom</code>}
	* implementation of the highest-priority installed
	* provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* @param keysize the keysize. This is an algorithm-specific metric,
	* specified in number of bits.
	*
	* @exception InvalidParameterException if the keysize is wrong or not
	* supported.
	*/
	@:overload @:final public function init(keysize : Int) : Void;
	
	/**
	* Initializes this key generator for a certain keysize, using a
	* user-provided source of randomness.
	*
	* @param keysize the keysize. This is an algorithm-specific metric,
	* specified in number of bits.
	* @param random the source of randomness for this key generator
	*
	* @exception InvalidParameterException if the keysize is wrong or not
	* supported.
	*/
	@:overload @:final public function init(keysize : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates a secret key.
	*
	* @return the new key
	*/
	@:overload @:final public function generateKey() : javax.crypto.SecretKey;
	
	
}
