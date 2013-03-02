package java.security;
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
extern class KeyPairGenerator extends java.security.KeyPairGeneratorSpi
{
	/**
	* Creates a KeyPairGenerator object for the specified algorithm.
	*
	* @param algorithm the standard string name of the algorithm.
	* See the KeyPairGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyPairGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*/
	@:overload private function new(algorithm : String) : Void;
	
	/**
	* Returns the standard name of the algorithm for this key pair generator.
	* See the KeyPairGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyPairGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the standard string name of the algorithm.
	*/
	@:overload public function getAlgorithm() : String;
	
	/**
	* Returns a KeyPairGenerator object that generates public/private
	* key pairs for the specified algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new KeyPairGenerator object encapsulating the
	* KeyPairGeneratorSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard string name of the algorithm.
	* See the KeyPairGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyPairGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new KeyPairGenerator object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          KeyPairGeneratorSpi implementation for the
	*          specified algorithm.
	*
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String) : java.security.KeyPairGenerator;
	
	/**
	* Returns a KeyPairGenerator object that generates public/private
	* key pairs for the specified algorithm.
	*
	* <p> A new KeyPairGenerator object encapsulating the
	* KeyPairGeneratorSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard string name of the algorithm.
	* See the KeyPairGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyPairGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the string name of the provider.
	*
	* @return the new KeyPairGenerator object.
	*
	* @exception NoSuchAlgorithmException if a KeyPairGeneratorSpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the provider name is null
	*          or empty.
	*
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String, provider : String) : java.security.KeyPairGenerator;
	
	/**
	* Returns a KeyPairGenerator object that generates public/private
	* key pairs for the specified algorithm.
	*
	* <p> A new KeyPairGenerator object encapsulating the
	* KeyPairGeneratorSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the standard string name of the algorithm.
	* See the KeyPairGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyPairGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new KeyPairGenerator object.
	*
	* @exception NoSuchAlgorithmException if a KeyPairGeneratorSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the specified provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInstance(algorithm : String, provider : java.security.Provider) : java.security.KeyPairGenerator;
	
	/**
	* Returns the provider of this key pair generator object.
	*
	* @return the provider of this key pair generator object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes the key pair generator for a certain keysize using
	* a default parameter set and the <code>SecureRandom</code>
	* implementation of the highest-priority installed provider as the source
	* of randomness.
	* (If none of the installed providers supply an implementation of
	* <code>SecureRandom</code>, a system-provided source of randomness is
	* used.)
	*
	* @param keysize the keysize. This is an
	* algorithm-specific metric, such as modulus length, specified in
	* number of bits.
	*
	* @exception InvalidParameterException if the <code>keysize</code> is not
	* supported by this KeyPairGenerator object.
	*/
	@:overload public function initialize(keysize : Int) : Void;
	
	/**
	* Initializes the key pair generator for a certain keysize with
	* the given source of randomness (and a default parameter set).
	*
	* @param keysize the keysize. This is an
	* algorithm-specific metric, such as modulus length, specified in
	* number of bits.
	* @param random the source of randomness.
	*
	* @exception InvalidParameterException if the <code>keysize</code> is not
	* supported by this KeyPairGenerator object.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function initialize(keysize : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes the key pair generator using the specified parameter
	* set and the <code>SecureRandom</code>
	* implementation of the highest-priority installed provider as the source
	* of randomness.
	* (If none of the installed providers supply an implementation of
	* <code>SecureRandom</code>, a system-provided source of randomness is
	* used.).
	*
	* <p>This concrete method has been added to this previously-defined
	* abstract class.
	* This method calls the KeyPairGeneratorSpi
	* {@link KeyPairGeneratorSpi#initialize(
	* java.security.spec.AlgorithmParameterSpec,
	* java.security.SecureRandom) initialize} method,
	* passing it <code>params</code> and a source of randomness (obtained
	* from the highest-priority installed provider or system-provided if none
	* of the installed providers supply one).
	* That <code>initialize</code> method always throws an
	* UnsupportedOperationException if it is not overridden by the provider.
	*
	* @param params the parameter set used to generate the keys.
	*
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key pair generator.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function initialize(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Initializes the key pair generator with the given parameter
	* set and source of randomness.
	*
	* <p>This concrete method has been added to this previously-defined
	* abstract class.
	* This method calls the KeyPairGeneratorSpi {@link
	* KeyPairGeneratorSpi#initialize(
	* java.security.spec.AlgorithmParameterSpec,
	* java.security.SecureRandom) initialize} method,
	* passing it <code>params</code> and <code>random</code>.
	* That <code>initialize</code>
	* method always throws an
	* UnsupportedOperationException if it is not overridden by the provider.
	*
	* @param params the parameter set used to generate the keys.
	* @param random the source of randomness.
	*
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key pair generator.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function initialize(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates a key pair.
	*
	* <p>If this KeyPairGenerator has not been initialized explicitly,
	* provider-specific defaults will be used for the size and other
	* (algorithm-specific) values of the generated keys.
	*
	* <p>This will generate a new key pair every time it is called.
	*
	* <p>This method is functionally equivalent to
	* {@link #generateKeyPair() generateKeyPair}.
	*
	* @return the generated key pair
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:final public function genKeyPair() : java.security.KeyPair;
	
	/**
	* Generates a key pair.
	*
	* <p>If this KeyPairGenerator has not been initialized explicitly,
	* provider-specific defaults will be used for the size and other
	* (algorithm-specific) values of the generated keys.
	*
	* <p>This will generate a new key pair every time it is called.
	*
	* <p>This method is functionally equivalent to
	* {@link #genKeyPair() genKeyPair}.
	*
	* @return the generated key pair
	*/
	@:overload override public function generateKeyPair() : java.security.KeyPair;
	
	
}
/*
* The following class allows providers to extend from KeyPairGeneratorSpi
* rather than from KeyPairGenerator. It represents a KeyPairGenerator
* with an encapsulated, provider-supplied SPI object (of type
* KeyPairGeneratorSpi).
* If the provider implementation is an instance of KeyPairGeneratorSpi,
* the getInstance() methods above return an instance of this class, with
* the SPI object encapsulated.
*
* Note: All SPI methods from the original KeyPairGenerator class have been
* moved up the hierarchy into a new class (KeyPairGeneratorSpi), which has
* been interposed in the hierarchy between the API (KeyPairGenerator)
* and its original parent (Object).
*/
@:native('java$security$KeyPairGenerator$Delegate') @:internal extern class KeyPairGenerator_Delegate extends java.security.KeyPairGenerator
{
	@:overload override public function initialize(keysize : Int, random : java.security.SecureRandom) : Void;
	
	@:overload override public function initialize(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload override public function generateKeyPair() : java.security.KeyPair;
	
	
}
