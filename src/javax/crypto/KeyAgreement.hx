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
extern class KeyAgreement
{
	/**
	* Creates a KeyAgreement object.
	*
	* @param keyAgreeSpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload private function new(keyAgreeSpi : javax.crypto.KeyAgreementSpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns the algorithm name of this <code>KeyAgreement</code> object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this
	* <code>KeyAgreement</code> object.
	*
	* @return the algorithm name of this <code>KeyAgreement</code> object.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Returns a <code>KeyAgreement</code> object that implements the
	* specified key agreement algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new KeyAgreement object encapsulating the
	* KeyAgreementSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested key agreement
	* algorithm.
	* See the KeyAgreement section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyAgreement">
	* Java Cryptography Architecture Standard Algorithm Name Documentation
	* for information about standard algorithm names.
	*
	* @return the new <code>KeyAgreement</code> object.
	*
	* @exception NullPointerException if the specified algorithm
	*          is null.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          KeyAgreementSpi implementation for the
	*          specified algorithm.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String) : KeyAgreement;
	
	/**
	* Returns a <code>KeyAgreement</code> object that implements the
	* specified key agreement algorithm.
	*
	* <p> A new KeyAgreement object encapsulating the
	* KeyAgreementSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested key agreement
	* algorithm.
	* See the KeyAgreement section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyAgreement">
	* Java Cryptography Architecture Standard Algorithm Name Documentation
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new <code>KeyAgreement</code> object.
	*
	* @exception NullPointerException if the specified algorithm
	*          is null.
	*
	* @exception NoSuchAlgorithmException if a KeyAgreementSpi
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
	@:overload @:final public static function getInstance(algorithm : String, provider : String) : KeyAgreement;
	
	/**
	* Returns a <code>KeyAgreement</code> object that implements the
	* specified key agreement algorithm.
	*
	* <p> A new KeyAgreement object encapsulating the
	* KeyAgreementSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the standard name of the requested key agreement
	* algorithm.
	* See the KeyAgreement section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyAgreement">
	* Java Cryptography Architecture Standard Algorithm Name Documentation
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new <code>KeyAgreement</code> object.
	*
	* @exception NullPointerException if the specified algorithm
	*          is null.
	*
	* @exception NoSuchAlgorithmException if a KeyAgreementSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(algorithm : String, provider : java.security.Provider) : KeyAgreement;
	
	/**
	* Returns the provider of this <code>KeyAgreement</code> object.
	*
	* @return the provider of this <code>KeyAgreement</code> object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this key agreement with the given key, which is required to
	* contain all the algorithm parameters required for this key agreement.
	*
	* <p> If this key agreement requires any random bytes, it will get
	* them using the
	* {@link SecureRandom <code>SecureRandom</code>}
	* implementation of the highest-priority
	* installed provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* @param key the party's private information. For example, in the case
	* of the Diffie-Hellman key agreement, this would be the party's own
	* Diffie-Hellman private key.
	*
	* @exception InvalidKeyException if the given key is
	* inappropriate for this key agreement, e.g., is of the wrong type or
	* has an incompatible algorithm type.
	*/
	@:overload @:final public function init(key : java.security.Key) : Void;
	
	/**
	* Initializes this key agreement with the given key and source of
	* randomness. The given key is required to contain all the algorithm
	* parameters required for this key agreement.
	*
	* <p> If the key agreement algorithm requires random bytes, it gets them
	* from the given source of randomness, <code>random</code>.
	* However, if the underlying
	* algorithm implementation does not require any random bytes,
	* <code>random</code> is ignored.
	*
	* @param key the party's private information. For example, in the case
	* of the Diffie-Hellman key agreement, this would be the party's own
	* Diffie-Hellman private key.
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is
	* inappropriate for this key agreement, e.g., is of the wrong type or
	* has an incompatible algorithm type.
	*/
	@:overload @:final public function init(key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this key agreement with the given key and set of
	* algorithm parameters.
	*
	* <p> If this key agreement requires any random bytes, it will get
	* them using the
	* {@link SecureRandom <code>SecureRandom</code>}
	* implementation of the highest-priority
	* installed provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* @param key the party's private information. For example, in the case
	* of the Diffie-Hellman key agreement, this would be the party's own
	* Diffie-Hellman private key.
	* @param params the key agreement parameters
	*
	* @exception InvalidKeyException if the given key is
	* inappropriate for this key agreement, e.g., is of the wrong type or
	* has an incompatible algorithm type.
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key agreement.
	*/
	@:overload @:final public function init(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Initializes this key agreement with the given key, set of
	* algorithm parameters, and source of randomness.
	*
	* @param key the party's private information. For example, in the case
	* of the Diffie-Hellman key agreement, this would be the party's own
	* Diffie-Hellman private key.
	* @param params the key agreement parameters
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is
	* inappropriate for this key agreement, e.g., is of the wrong type or
	* has an incompatible algorithm type.
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key agreement.
	*/
	@:overload @:final public function init(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Executes the next phase of this key agreement with the given
	* key that was received from one of the other parties involved in this key
	* agreement.
	*
	* @param key the key for this phase. For example, in the case of
	* Diffie-Hellman between 2 parties, this would be the other party's
	* Diffie-Hellman public key.
	* @param lastPhase flag which indicates whether or not this is the last
	* phase of this key agreement.
	*
	* @return the (intermediate) key resulting from this phase, or null
	* if this phase does not yield a key
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* this phase.
	* @exception IllegalStateException if this key agreement has not been
	* initialized.
	*/
	@:overload @:final public function doPhase(key : java.security.Key, lastPhase : Bool) : java.security.Key;
	
	/**
	* Generates the shared secret and returns it in a new buffer.
	*
	* <p>This method resets this <code>KeyAgreement</code> object, so that it
	* can be reused for further key agreements. Unless this key agreement is
	* reinitialized with one of the <code>init</code> methods, the same
	* private information and algorithm parameters will be used for
	* subsequent key agreements.
	*
	* @return the new buffer with the shared secret
	*
	* @exception IllegalStateException if this key agreement has not been
	* completed yet
	*/
	@:overload @:final public function generateSecret() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Generates the shared secret, and places it into the buffer
	* <code>sharedSecret</code>, beginning at <code>offset</code> inclusive.
	*
	* <p>If the <code>sharedSecret</code> buffer is too small to hold the
	* result, a <code>ShortBufferException</code> is thrown.
	* In this case, this call should be repeated with a larger output buffer.
	*
	* <p>This method resets this <code>KeyAgreement</code> object, so that it
	* can be reused for further key agreements. Unless this key agreement is
	* reinitialized with one of the <code>init</code> methods, the same
	* private information and algorithm parameters will be used for
	* subsequent key agreements.
	*
	* @param sharedSecret the buffer for the shared secret
	* @param offset the offset in <code>sharedSecret</code> where the
	* shared secret will be stored
	*
	* @return the number of bytes placed into <code>sharedSecret</code>
	*
	* @exception IllegalStateException if this key agreement has not been
	* completed yet
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the secret
	*/
	@:overload @:final public function generateSecret(sharedSecret : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Int;
	
	/**
	* Creates the shared secret and returns it as a <code>SecretKey</code>
	* object of the specified algorithm.
	*
	* <p>This method resets this <code>KeyAgreement</code> object, so that it
	* can be reused for further key agreements. Unless this key agreement is
	* reinitialized with one of the <code>init</code> methods, the same
	* private information and algorithm parameters will be used for
	* subsequent key agreements.
	*
	* @param algorithm the requested secret-key algorithm
	*
	* @return the shared secret key
	*
	* @exception IllegalStateException if this key agreement has not been
	* completed yet
	* @exception NoSuchAlgorithmException if the specified secret-key
	* algorithm is not available
	* @exception InvalidKeyException if the shared secret-key material cannot
	* be used to generate a secret key of the specified algorithm (e.g.,
	* the key material is too short)
	*/
	@:overload @:final public function generateSecret(algorithm : String) : javax.crypto.SecretKey;
	
	
}
