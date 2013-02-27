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
extern class KeyFactory
{
	/**
	* Creates a KeyFactory object.
	*
	* @param keyFacSpi the delegate
	* @param provider the provider
	* @param algorithm the name of the algorithm
	* to associate with this <tt>KeyFactory</tt>
	*/
	@:overload private function new(keyFacSpi : java.security.KeyFactorySpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns a KeyFactory object that converts
	* public/private keys of the specified algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new KeyFactory object encapsulating the
	* KeyFactorySpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the requested key algorithm.
	* See the KeyFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new KeyFactory object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          KeyFactorySpi implementation for the
	*          specified algorithm.
	*
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String) : KeyFactory;
	
	/**
	* Returns a KeyFactory object that converts
	* public/private keys of the specified algorithm.
	*
	* <p> A new KeyFactory object encapsulating the
	* KeyFactorySpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the requested key algorithm.
	* See the KeyFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new KeyFactory object.
	*
	* @exception NoSuchAlgorithmException if a KeyFactorySpi
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
	@:overload public static function getInstance(algorithm : String, provider : String) : KeyFactory;
	
	/**
	* Returns a KeyFactory object that converts
	* public/private keys of the specified algorithm.
	*
	* <p> A new KeyFactory object encapsulating the
	* KeyFactorySpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the name of the requested key algorithm.
	* See the KeyFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new KeyFactory object.
	*
	* @exception NoSuchAlgorithmException if a KeyFactorySpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the specified provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInstance(algorithm : String, provider : java.security.Provider) : KeyFactory;
	
	/**
	* Returns the provider of this key factory object.
	*
	* @return the provider of this key factory object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Gets the name of the algorithm
	* associated with this <tt>KeyFactory</tt>.
	*
	* @return the name of the algorithm associated with this
	* <tt>KeyFactory</tt>
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Generates a public key object from the provided key specification
	* (key material).
	*
	* @param keySpec the specification (key material) of the public key.
	*
	* @return the public key.
	*
	* @exception InvalidKeySpecException if the given key specification
	* is inappropriate for this key factory to produce a public key.
	*/
	@:overload @:final public function generatePublic(keySpec : java.security.spec.KeySpec) : java.security.PublicKey;
	
	/**
	* Generates a private key object from the provided key specification
	* (key material).
	*
	* @param keySpec the specification (key material) of the private key.
	*
	* @return the private key.
	*
	* @exception InvalidKeySpecException if the given key specification
	* is inappropriate for this key factory to produce a private key.
	*/
	@:overload @:final public function generatePrivate(keySpec : java.security.spec.KeySpec) : java.security.PrivateKey;
	
	/**
	* Returns a specification (key material) of the given key object.
	* <code>keySpec</code> identifies the specification class in which
	* the key material should be returned. It could, for example, be
	* <code>DSAPublicKeySpec.class</code>, to indicate that the
	* key material should be returned in an instance of the
	* <code>DSAPublicKeySpec</code> class.
	*
	* @param key the key.
	*
	* @param keySpec the specification class in which
	* the key material should be returned.
	*
	* @return the underlying key specification (key material) in an instance
	* of the requested specification class.
	*
	* @exception InvalidKeySpecException if the requested key specification is
	* inappropriate for the given key, or the given key cannot be processed
	* (e.g., the given key has an unrecognized algorithm or format).
	*/
	@:overload @:final public function getKeySpec<T : java.security.spec.KeySpec>(key : java.security.Key, keySpec : Class<T>) : T;
	
	/**
	* Translates a key object, whose provider may be unknown or potentially
	* untrusted, into a corresponding key object of this key factory.
	*
	* @param key the key whose provider is unknown or untrusted.
	*
	* @return the translated key.
	*
	* @exception InvalidKeyException if the given key cannot be processed
	* by this key factory.
	*/
	@:overload @:final public function translateKey(key : java.security.Key) : java.security.Key;
	
	
}
