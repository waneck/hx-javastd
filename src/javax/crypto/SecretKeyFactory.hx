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
extern class SecretKeyFactory
{
	/**
	* Creates a SecretKeyFactory object.
	*
	* @param keyFacSpi the delegate
	* @param provider the provider
	* @param algorithm the secret-key algorithm
	*/
	@:overload private function new(keyFacSpi : javax.crypto.SecretKeyFactorySpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns a <code>SecretKeyFactory</code> object that converts
	* secret keys of the specified algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new SecretKeyFactory object encapsulating the
	* SecretKeyFactorySpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested secret-key
	* algorithm.
	* See the SecretKeyFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecretKeyFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new <code>SecretKeyFactory</code> object.
	*
	* @exception NullPointerException if the specified algorithm
	*          is null.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          SecretKeyFactorySpi implementation for the
	*          specified algorithm.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String) : SecretKeyFactory;
	
	/**
	* Returns a <code>SecretKeyFactory</code> object that converts
	* secret keys of the specified algorithm.
	*
	* <p> A new SecretKeyFactory object encapsulating the
	* SecretKeyFactorySpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested secret-key
	* algorithm.
	* See the SecretKeyFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecretKeyFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new <code>SecretKeyFactory</code> object.
	*
	* @exception NoSuchAlgorithmException if a SecretKeyFactorySpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @exception NullPointerException if the specified algorithm
	*          is null.
	*
	* @throws NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null or empty.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String, provider : String) : SecretKeyFactory;
	
	/**
	* Returns a <code>SecretKeyFactory</code> object that converts
	* secret keys of the specified algorithm.
	*
	* <p> A new SecretKeyFactory object encapsulating the
	* SecretKeyFactorySpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the standard name of the requested secret-key
	* algorithm.
	* See the SecretKeyFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecretKeyFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new <code>SecretKeyFactory</code> object.
	*
	* @exception NullPointerException if the specified algorithm
	* is null.
	*
	* @exception NoSuchAlgorithmException if a SecretKeyFactorySpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String, provider : java.security.Provider) : SecretKeyFactory;
	
	/**
	* Returns the provider of this <code>SecretKeyFactory</code> object.
	*
	* @return the provider of this <code>SecretKeyFactory</code> object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the algorithm name of this <code>SecretKeyFactory</code> object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this
	* <code>SecretKeyFactory</code> object.
	*
	* @return the algorithm name of this <code>SecretKeyFactory</code>
	* object.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Generates a <code>SecretKey</code> object from the provided key
	* specification (key material).
	*
	* @param keySpec the specification (key material) of the secret key
	*
	* @return the secret key
	*
	* @exception InvalidKeySpecException if the given key specification
	* is inappropriate for this secret-key factory to produce a secret key.
	*/
	@:overload @:final public function generateSecret(keySpec : java.security.spec.KeySpec) : javax.crypto.SecretKey;
	
	/**
	* Returns a specification (key material) of the given key object
	* in the requested format.
	*
	* @param key the key
	* @param keySpec the requested format in which the key material shall be
	* returned
	*
	* @return the underlying key specification (key material) in the
	* requested format
	*
	* @exception InvalidKeySpecException if the requested key specification is
	* inappropriate for the given key (e.g., the algorithms associated with
	* <code>key</code> and <code>keySpec</code> do not match, or
	* <code>key</code> references a key on a cryptographic hardware device
	* whereas <code>keySpec</code> is the specification of a software-based
	* key), or the given key cannot be dealt with
	* (e.g., the given key has an algorithm or format not supported by this
	* secret-key factory).
	*/
	@:overload @:final public function getKeySpec(key : javax.crypto.SecretKey, keySpec : Class<Dynamic>) : java.security.spec.KeySpec;
	
	/**
	* Translates a key object, whose provider may be unknown or potentially
	* untrusted, into a corresponding key object of this secret-key factory.
	*
	* @param key the key whose provider is unknown or untrusted
	*
	* @return the translated key
	*
	* @exception InvalidKeyException if the given key cannot be processed
	* by this secret-key factory.
	*/
	@:overload @:final public function translateKey(key : javax.crypto.SecretKey) : javax.crypto.SecretKey;
	
	
}
