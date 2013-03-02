package javax.crypto;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class Cipher
{
	/**
	* Constant used to initialize cipher to encryption mode.
	*/
	public static var ENCRYPT_MODE(default, null) : Int;
	
	/**
	* Constant used to initialize cipher to decryption mode.
	*/
	public static var DECRYPT_MODE(default, null) : Int;
	
	/**
	* Constant used to initialize cipher to key-wrapping mode.
	*/
	public static var WRAP_MODE(default, null) : Int;
	
	/**
	* Constant used to initialize cipher to key-unwrapping mode.
	*/
	public static var UNWRAP_MODE(default, null) : Int;
	
	/**
	* Constant used to indicate the to-be-unwrapped key is a "public key".
	*/
	public static var PUBLIC_KEY(default, null) : Int;
	
	/**
	* Constant used to indicate the to-be-unwrapped key is a "private key".
	*/
	public static var PRIVATE_KEY(default, null) : Int;
	
	/**
	* Constant used to indicate the to-be-unwrapped key is a "secret key".
	*/
	public static var SECRET_KEY(default, null) : Int;
	
	/**
	* Creates a Cipher object.
	*
	* @param cipherSpi the delegate
	* @param provider the provider
	* @param transformation the transformation
	*/
	@:overload private function new(cipherSpi : javax.crypto.CipherSpi, provider : java.security.Provider, transformation : String) : Void;
	
	/**
	* Returns a <code>Cipher</code> object that implements the specified
	* transformation.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new Cipher object encapsulating the
	* CipherSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param transformation the name of the transformation, e.g.,
	* <i>DES/CBC/PKCS5Padding</i>.
	* See the Cipher section in the <a href=
	*   "{@docRoot}/../technotes/guides/security/StandardNames.html#Cipher">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard transformation names.
	*
	* @return a cipher that implements the requested transformation.
	*
	* @exception NoSuchAlgorithmException if <code>transformation</code>
	*          is null, empty, in an invalid format,
	*          or if no Provider supports a CipherSpi implementation for the
	*          specified algorithm.
	*
	* @exception NoSuchPaddingException if <code>transformation</code>
	*          contains a padding scheme that is not available.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(transformation : String) : javax.crypto.Cipher;
	
	/**
	* Returns a <code>Cipher</code> object that implements the specified
	* transformation.
	*
	* <p> A new Cipher object encapsulating the
	* CipherSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param transformation the name of the transformation,
	* e.g., <i>DES/CBC/PKCS5Padding</i>.
	* See the Cipher section in the <a href=
	*   "{@docRoot}/../technotes/guides/security/StandardNames.html#Cipher">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard transformation names.
	*
	* @param provider the name of the provider.
	*
	* @return a cipher that implements the requested transformation.
	*
	* @exception NoSuchAlgorithmException if <code>transformation</code>
	*          is null, empty, in an invalid format,
	*          or if a CipherSpi implementation for the specified algorithm
	*          is not available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception NoSuchPaddingException if <code>transformation</code>
	*          contains a padding scheme that is not available.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null or empty.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(transformation : String, provider : String) : javax.crypto.Cipher;
	
	/**
	* Returns a <code>Cipher</code> object that implements the specified
	* transformation.
	*
	* <p> A new Cipher object encapsulating the
	* CipherSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param transformation the name of the transformation,
	* e.g., <i>DES/CBC/PKCS5Padding</i>.
	* See the Cipher section in the <a href=
	*   "{@docRoot}/../technotes/guides/security/StandardNames.html#Cipher">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard transformation names.
	*
	* @param provider the provider.
	*
	* @return a cipher that implements the requested transformation.
	*
	* @exception NoSuchAlgorithmException if <code>transformation</code>
	*          is null, empty, in an invalid format,
	*          or if a CipherSpi implementation for the specified algorithm
	*          is not available from the specified Provider object.
	*
	* @exception NoSuchPaddingException if <code>transformation</code>
	*          contains a padding scheme that is not available.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:final public static function getInstance(transformation : String, provider : java.security.Provider) : javax.crypto.Cipher;
	
	/**
	* Returns the provider of this <code>Cipher</code> object.
	*
	* @return the provider of this <code>Cipher</code> object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the algorithm name of this <code>Cipher</code> object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this <code>Cipher</code>
	* object..
	*
	* @return the algorithm name of this <code>Cipher</code> object.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Returns the block size (in bytes).
	*
	* @return the block size (in bytes), or 0 if the underlying algorithm is
	* not a block cipher
	*/
	@:overload @:final public function getBlockSize() : Int;
	
	/**
	* Returns the length in bytes that an output buffer would need to be in
	* order to hold the result of the next <code>update</code> or
	* <code>doFinal</code> operation, given the input length
	* <code>inputLen</code> (in bytes).
	*
	* <p>This call takes into account any unprocessed (buffered) data from a
	* previous <code>update</code> call, padding, and AEAD tagging.
	*
	* <p>The actual output length of the next <code>update</code> or
	* <code>doFinal</code> call may be smaller than the length returned by
	* this method.
	*
	* @param inputLen the input length (in bytes)
	*
	* @return the required output buffer size (in bytes)
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not yet been initialized)
	*/
	@:overload @:final public function getOutputSize(inputLen : Int) : Int;
	
	/**
	* Returns the initialization vector (IV) in a new buffer.
	*
	* <p>This is useful in the case where a random IV was created,
	* or in the context of password-based encryption or
	* decryption, where the IV is derived from a user-supplied password.
	*
	* @return the initialization vector in a new buffer, or null if the
	* underlying algorithm does not use an IV, or if the IV has not yet
	* been set.
	*/
	@:overload @:final public function getIV() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the parameters used with this cipher.
	*
	* <p>The returned parameters may be the same that were used to initialize
	* this cipher, or may contain a combination of default and random
	* parameter values used by the underlying cipher implementation if this
	* cipher requires algorithm parameters but was not initialized with any.
	*
	* @return the parameters used with this cipher, or null if this cipher
	* does not use any parameters.
	*/
	@:overload @:final public function getParameters() : java.security.AlgorithmParameters;
	
	/**
	* Returns the exemption mechanism object used with this cipher.
	*
	* @return the exemption mechanism object used with this cipher, or
	* null if this cipher does not use any exemption mechanism.
	*/
	@:overload @:final public function getExemptionMechanism() : javax.crypto.ExemptionMechanism;
	
	/**
	* Initializes this cipher with a key.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or key unwrapping, depending
	* on the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters that cannot be
	* derived from the given <code>key</code>, the underlying cipher
	* implementation is supposed to generate the required parameters itself
	* (using provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidKeyException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them using the {@link SecureRandom <code>SecureRandom</code>}
	* implementation of the highest-priority
	* installed provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of
	* the following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the key
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher, or requires
	* algorithm parameters that cannot be
	* determined from the given key, or if the given key has a keysize that
	* exceeds the maximum allowable keysize (as determined from the
	* configured jurisdiction policy files).
	*/
	@:overload @:final public function init(opmode : Int, key : java.security.Key) : Void;
	
	/**
	* Initializes this cipher with a key and a source of randomness.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or  key unwrapping, depending
	* on the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters that cannot be
	* derived from the given <code>key</code>, the underlying cipher
	* implementation is supposed to generate the required parameters itself
	* (using provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidKeyException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them from <code>random</code>.
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	* following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher, or requires
	* algorithm parameters that cannot be
	* determined from the given key, or if the given key has a keysize that
	* exceeds the maximum allowable keysize (as determined from the
	* configured jurisdiction policy files).
	*/
	@:overload @:final public function init(opmode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with a key and a set of algorithm
	* parameters.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or  key unwrapping, depending
	* on the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters and
	* <code>params</code> is null, the underlying cipher implementation is
	* supposed to generate the required parameters itself (using
	* provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidAlgorithmParameterException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them using the {@link SecureRandom <code>SecureRandom</code>}
	* implementation of the highest-priority
	* installed provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	* following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param params the algorithm parameters
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher, or its keysize exceeds the maximum allowable
	* keysize (as determined from the configured jurisdiction policy files).
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this cipher,
	* or this cipher requires
	* algorithm parameters and <code>params</code> is null, or the given
	* algorithm parameters imply a cryptographic strength that would exceed
	* the legal limits (as determined from the configured jurisdiction
	* policy files).
	*/
	@:overload @:final public function init(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Initializes this cipher with a key, a set of algorithm
	* parameters, and a source of randomness.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or  key unwrapping, depending
	* on the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters and
	* <code>params</code> is null, the underlying cipher implementation is
	* supposed to generate the required parameters itself (using
	* provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidAlgorithmParameterException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them from <code>random</code>.
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	* following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param params the algorithm parameters
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher, or its keysize exceeds the maximum allowable
	* keysize (as determined from the configured jurisdiction policy files).
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this cipher,
	* or this cipher requires
	* algorithm parameters and <code>params</code> is null, or the given
	* algorithm parameters imply a cryptographic strength that would exceed
	* the legal limits (as determined from the configured jurisdiction
	* policy files).
	*/
	@:overload @:final public function init(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with a key and a set of algorithm
	* parameters.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or  key unwrapping, depending
	* on the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters and
	* <code>params</code> is null, the underlying cipher implementation is
	* supposed to generate the required parameters itself (using
	* provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidAlgorithmParameterException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them using the {@link SecureRandom <code>SecureRandom</code>}
	* implementation of the highest-priority
	* installed provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	* following: <code>ENCRYPT_MODE</code>,
	* <code>DECRYPT_MODE</code>, <code>WRAP_MODE</code>
	* or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param params the algorithm parameters
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher, or its keysize exceeds the maximum allowable
	* keysize (as determined from the configured jurisdiction policy files).
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this cipher,
	* or this cipher requires
	* algorithm parameters and <code>params</code> is null, or the given
	* algorithm parameters imply a cryptographic strength that would exceed
	* the legal limits (as determined from the configured jurisdiction
	* policy files).
	*/
	@:overload @:final public function init(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters) : Void;
	
	/**
	* Initializes this cipher with a key, a set of algorithm
	* parameters, and a source of randomness.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or  key unwrapping, depending
	* on the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters and
	* <code>params</code> is null, the underlying cipher implementation is
	* supposed to generate the required parameters itself (using
	* provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidAlgorithmParameterException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them from <code>random</code>.
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	* following: <code>ENCRYPT_MODE</code>,
	* <code>DECRYPT_MODE</code>, <code>WRAP_MODE</code>
	* or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param params the algorithm parameters
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher, or its keysize exceeds the maximum allowable
	* keysize (as determined from the configured jurisdiction policy files).
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this cipher,
	* or this cipher requires
	* algorithm parameters and <code>params</code> is null, or the given
	* algorithm parameters imply a cryptographic strength that would exceed
	* the legal limits (as determined from the configured jurisdiction
	* policy files).
	*/
	@:overload @:final public function init(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with the public key from the given certificate.
	* <p> The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or  key unwrapping, depending
	* on the value of <code>opmode</code>.
	*
	* <p>If the certificate is of type X.509 and has a <i>key usage</i>
	* extension field marked as critical, and the value of the <i>key usage</i>
	* extension field implies that the public key in
	* the certificate and its corresponding private key are not
	* supposed to be used for the operation represented by the value
	* of <code>opmode</code>,
	* an <code>InvalidKeyException</code>
	* is thrown.
	*
	* <p> If this cipher requires any algorithm parameters that cannot be
	* derived from the public key in the given certificate, the underlying
	* cipher
	* implementation is supposed to generate the required parameters itself
	* (using provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an <code>
	* InvalidKeyException</code> if it is being initialized for decryption or
	* key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them using the
	* <code>SecureRandom</code>
	* implementation of the highest-priority
	* installed provider as the source of randomness.
	* (If none of the installed providers supply an implementation of
	* SecureRandom, a system-provided source of randomness will be used.)
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	* following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param certificate the certificate
	*
	* @exception InvalidKeyException if the public key in the given
	* certificate is inappropriate for initializing this cipher, or this
	* cipher requires algorithm parameters that cannot be determined from the
	* public key in the given certificate, or the keysize of the public key
	* in the given certificate has a keysize that exceeds the maximum
	* allowable keysize (as determined by the configured jurisdiction policy
	* files).
	*/
	@:overload @:final public function init(opmode : Int, certificate : java.security.cert.Certificate) : Void;
	
	/**
	* Initializes this cipher with the public key from the given certificate
	* and
	* a source of randomness.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping
	* or key unwrapping, depending on
	* the value of <code>opmode</code>.
	*
	* <p>If the certificate is of type X.509 and has a <i>key usage</i>
	* extension field marked as critical, and the value of the <i>key usage</i>
	* extension field implies that the public key in
	* the certificate and its corresponding private key are not
	* supposed to be used for the operation represented by the value of
	* <code>opmode</code>,
	* an <code>InvalidKeyException</code>
	* is thrown.
	*
	* <p>If this cipher requires any algorithm parameters that cannot be
	* derived from the public key in the given <code>certificate</code>,
	* the underlying cipher
	* implementation is supposed to generate the required parameters itself
	* (using provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidKeyException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #getParameters() getParameters} or
	* {@link #getIV() getIV} (if the parameter is an IV).
	*
	* <p>If this cipher requires algorithm parameters that cannot be
	* derived from the input parameters, and there are no reasonable
	* provider-specific default values, initialization will
	* necessarily fail.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes (e.g., for parameter generation), it will get
	* them from <code>random</code>.
	*
	* <p>Note that when a Cipher object is initialized, it loses all
	* previously-acquired state. In other words, initializing a Cipher is
	* equivalent to creating a new instance of that Cipher and initializing
	* it.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	* following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param certificate the certificate
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the public key in the given
	* certificate is inappropriate for initializing this cipher, or this
	* cipher
	* requires algorithm parameters that cannot be determined from the
	* public key in the given certificate, or the keysize of the public key
	* in the given certificate has a keysize that exceeds the maximum
	* allowable keysize (as determined by the configured jurisdiction policy
	* files).
	*/
	@:overload @:final public function init(opmode : Int, certificate : java.security.cert.Certificate, random : java.security.SecureRandom) : Void;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>The bytes in the <code>input</code> buffer are processed, and the
	* result is stored in a new buffer.
	*
	* <p>If <code>input</code> has a length of zero, this method returns
	* <code>null</code>.
	*
	* @param input the input buffer
	*
	* @return the new buffer with the result, or null if the underlying
	* cipher is a block cipher and the input data is too short to result in a
	* new block.
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	*/
	@:overload @:final public function update(input : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, are processed,
	* and the result is stored in a new buffer.
	*
	* <p>If <code>inputLen</code> is zero, this method returns
	* <code>null</code>.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	*
	* @return the new buffer with the result, or null if the underlying
	* cipher is a block cipher and the input data is too short to result in a
	* new block.
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	*/
	@:overload @:final public function update(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, are processed,
	* and the result is stored in the <code>output</code> buffer.
	*
	* <p>If the <code>output</code> buffer is too small to hold the result,
	* a <code>ShortBufferException</code> is thrown. In this case, repeat this
	* call with a larger output buffer. Use
	* {@link #getOutputSize(int) getOutputSize} to determine how big
	* the output buffer should be.
	*
	* <p>If <code>inputLen</code> is zero, this method returns
	* a length of zero.
	*
	* <p>Note: this method should be copy-safe, which means the
	* <code>input</code> and <code>output</code> buffers can reference
	* the same byte array and no unprocessed input data is overwritten
	* when the result is copied into the output buffer.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	* @param output the buffer for the result
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	*/
	@:overload @:final public function update(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, are processed,
	* and the result is stored in the <code>output</code> buffer, starting at
	* <code>outputOffset</code> inclusive.
	*
	* <p>If the <code>output</code> buffer is too small to hold the result,
	* a <code>ShortBufferException</code> is thrown. In this case, repeat this
	* call with a larger output buffer. Use
	* {@link #getOutputSize(int) getOutputSize} to determine how big
	* the output buffer should be.
	*
	* <p>If <code>inputLen</code> is zero, this method returns
	* a length of zero.
	*
	* <p>Note: this method should be copy-safe, which means the
	* <code>input</code> and <code>output</code> buffers can reference
	* the same byte array and no unprocessed input data is overwritten
	* when the result is copied into the output buffer.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	* @param output the buffer for the result
	* @param outputOffset the offset in <code>output</code> where the result
	* is stored
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	*/
	@:overload @:final public function update(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>All <code>input.remaining()</code> bytes starting at
	* <code>input.position()</code> are processed. The result is stored
	* in the output buffer.
	* Upon return, the input buffer's position will be equal
	* to its limit; its limit will not have changed. The output buffer's
	* position will have advanced by n, where n is the value returned
	* by this method; the output buffer's limit will not have changed.
	*
	* <p>If <code>output.remaining()</code> bytes are insufficient to
	* hold the result, a <code>ShortBufferException</code> is thrown.
	* In this case, repeat this call with a larger output buffer. Use
	* {@link #getOutputSize(int) getOutputSize} to determine how big
	* the output buffer should be.
	*
	* <p>Note: this method should be copy-safe, which means the
	* <code>input</code> and <code>output</code> buffers can reference
	* the same block of memory and no unprocessed input data is overwritten
	* when the result is copied into the output buffer.
	*
	* @param input the input ByteBuffer
	* @param output the output ByteByffer
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalArgumentException if input and output are the
	*   same object
	* @exception ReadOnlyBufferException if the output buffer is read-only
	* @exception ShortBufferException if there is insufficient space in the
	* output buffer
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function update(input : java.nio.ByteBuffer, output : java.nio.ByteBuffer) : Int;
	
	/**
	* Finishes a multiple-part encryption or decryption operation, depending
	* on how this cipher was initialized.
	*
	* <p>Input data that may have been buffered during a previous
	* <code>update</code> operation is processed, with padding (if requested)
	* being applied.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in a new buffer.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to <code>init</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>init</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* @return the new buffer with the result
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested (only in encryption mode), and the total
	* input length of the data processed by this cipher is not a multiple of
	* block size; or if this encryption algorithm is unable to
	* process the input data provided.
	* @exception BadPaddingException if this cipher is in decryption mode,
	* and (un)padding has been requested, but the decrypted data is not
	* bounded by the appropriate padding bytes
	* @exception AEADBadTagException if this cipher is decrypting in an
	* AEAD mode (such as GCM/CCM), and the received authentication tag
	* does not match the calculated value
	*/
	@:overload @:final public function doFinal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Finishes a multiple-part encryption or decryption operation, depending
	* on how this cipher was initialized.
	*
	* <p>Input data that may have been buffered during a previous
	* <code>update</code> operation is processed, with padding (if requested)
	* being applied.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in the <code>output</code> buffer, starting at
	* <code>outputOffset</code> inclusive.
	*
	* <p>If the <code>output</code> buffer is too small to hold the result,
	* a <code>ShortBufferException</code> is thrown. In this case, repeat this
	* call with a larger output buffer. Use
	* {@link #getOutputSize(int) getOutputSize} to determine how big
	* the output buffer should be.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to <code>init</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>init</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* @param output the buffer for the result
	* @param outputOffset the offset in <code>output</code> where the result
	* is stored
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested (only in encryption mode), and the total
	* input length of the data processed by this cipher is not a multiple of
	* block size; or if this encryption algorithm is unable to
	* process the input data provided.
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	* @exception BadPaddingException if this cipher is in decryption mode,
	* and (un)padding has been requested, but the decrypted data is not
	* bounded by the appropriate padding bytes
	* @exception AEADBadTagException if this cipher is decrypting in an
	* AEAD mode (such as GCM/CCM), and the received authentication tag
	* does not match the calculated value
	*/
	@:overload @:final public function doFinal(output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	/**
	* Encrypts or decrypts data in a single-part operation, or finishes a
	* multiple-part operation. The data is encrypted or decrypted,
	* depending on how this cipher was initialized.
	*
	* <p>The bytes in the <code>input</code> buffer, and any input bytes that
	* may have been buffered during a previous <code>update</code> operation,
	* are processed, with padding (if requested) being applied.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in a new buffer.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to <code>init</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>init</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* @param input the input buffer
	*
	* @return the new buffer with the result
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested (only in encryption mode), and the total
	* input length of the data processed by this cipher is not a multiple of
	* block size; or if this encryption algorithm is unable to
	* process the input data provided.
	* @exception BadPaddingException if this cipher is in decryption mode,
	* and (un)padding has been requested, but the decrypted data is not
	* bounded by the appropriate padding bytes
	* @exception AEADBadTagException if this cipher is decrypting in an
	* AEAD mode (such as GCM/CCM), and the received authentication tag
	* does not match the calculated value
	*/
	@:overload @:final public function doFinal(input : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encrypts or decrypts data in a single-part operation, or finishes a
	* multiple-part operation. The data is encrypted or decrypted,
	* depending on how this cipher was initialized.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, and any input
	* bytes that may have been buffered during a previous <code>update</code>
	* operation, are processed, with padding (if requested) being applied.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in a new buffer.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to <code>init</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>init</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	*
	* @return the new buffer with the result
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested (only in encryption mode), and the total
	* input length of the data processed by this cipher is not a multiple of
	* block size; or if this encryption algorithm is unable to
	* process the input data provided.
	* @exception BadPaddingException if this cipher is in decryption mode,
	* and (un)padding has been requested, but the decrypted data is not
	* bounded by the appropriate padding bytes
	* @exception AEADBadTagException if this cipher is decrypting in an
	* AEAD mode (such as GCM/CCM), and the received authentication tag
	* does not match the calculated value
	*/
	@:overload @:final public function doFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encrypts or decrypts data in a single-part operation, or finishes a
	* multiple-part operation. The data is encrypted or decrypted,
	* depending on how this cipher was initialized.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, and any input
	* bytes that may have been buffered during a previous <code>update</code>
	* operation, are processed, with padding (if requested) being applied.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in the <code>output</code> buffer.
	*
	* <p>If the <code>output</code> buffer is too small to hold the result,
	* a <code>ShortBufferException</code> is thrown. In this case, repeat this
	* call with a larger output buffer. Use
	* {@link #getOutputSize(int) getOutputSize} to determine how big
	* the output buffer should be.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to <code>init</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>init</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* <p>Note: this method should be copy-safe, which means the
	* <code>input</code> and <code>output</code> buffers can reference
	* the same byte array and no unprocessed input data is overwritten
	* when the result is copied into the output buffer.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	* @param output the buffer for the result
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested (only in encryption mode), and the total
	* input length of the data processed by this cipher is not a multiple of
	* block size; or if this encryption algorithm is unable to
	* process the input data provided.
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	* @exception BadPaddingException if this cipher is in decryption mode,
	* and (un)padding has been requested, but the decrypted data is not
	* bounded by the appropriate padding bytes
	* @exception AEADBadTagException if this cipher is decrypting in an
	* AEAD mode (such as GCM/CCM), and the received authentication tag
	* does not match the calculated value
	*/
	@:overload @:final public function doFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Encrypts or decrypts data in a single-part operation, or finishes a
	* multiple-part operation. The data is encrypted or decrypted,
	* depending on how this cipher was initialized.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, and any input
	* bytes that may have been buffered during a previous
	* <code>update</code> operation, are processed, with padding
	* (if requested) being applied.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in the <code>output</code> buffer, starting at
	* <code>outputOffset</code> inclusive.
	*
	* <p>If the <code>output</code> buffer is too small to hold the result,
	* a <code>ShortBufferException</code> is thrown. In this case, repeat this
	* call with a larger output buffer. Use
	* {@link #getOutputSize(int) getOutputSize} to determine how big
	* the output buffer should be.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to <code>init</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>init</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* <p>Note: this method should be copy-safe, which means the
	* <code>input</code> and <code>output</code> buffers can reference
	* the same byte array and no unprocessed input data is overwritten
	* when the result is copied into the output buffer.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	* @param output the buffer for the result
	* @param outputOffset the offset in <code>output</code> where the result
	* is stored
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested (only in encryption mode), and the total
	* input length of the data processed by this cipher is not a multiple of
	* block size; or if this encryption algorithm is unable to
	* process the input data provided.
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	* @exception BadPaddingException if this cipher is in decryption mode,
	* and (un)padding has been requested, but the decrypted data is not
	* bounded by the appropriate padding bytes
	* @exception AEADBadTagException if this cipher is decrypting in an
	* AEAD mode (such as GCM/CCM), and the received authentication tag
	* does not match the calculated value
	*/
	@:overload @:final public function doFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	/**
	* Encrypts or decrypts data in a single-part operation, or finishes a
	* multiple-part operation. The data is encrypted or decrypted,
	* depending on how this cipher was initialized.
	*
	* <p>All <code>input.remaining()</code> bytes starting at
	* <code>input.position()</code> are processed.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in the output buffer.
	* Upon return, the input buffer's position will be equal
	* to its limit; its limit will not have changed. The output buffer's
	* position will have advanced by n, where n is the value returned
	* by this method; the output buffer's limit will not have changed.
	*
	* <p>If <code>output.remaining()</code> bytes are insufficient to
	* hold the result, a <code>ShortBufferException</code> is thrown.
	* In this case, repeat this call with a larger output buffer. Use
	* {@link #getOutputSize(int) getOutputSize} to determine how big
	* the output buffer should be.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to <code>init</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>init</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* <p>Note: this method should be copy-safe, which means the
	* <code>input</code> and <code>output</code> buffers can reference
	* the same byte array and no unprocessed input data is overwritten
	* when the result is copied into the output buffer.
	*
	* @param input the input ByteBuffer
	* @param output the output ByteBuffer
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized)
	* @exception IllegalArgumentException if input and output are the
	*   same object
	* @exception ReadOnlyBufferException if the output buffer is read-only
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested (only in encryption mode), and the total
	* input length of the data processed by this cipher is not a multiple of
	* block size; or if this encryption algorithm is unable to
	* process the input data provided.
	* @exception ShortBufferException if there is insufficient space in the
	* output buffer
	* @exception BadPaddingException if this cipher is in decryption mode,
	* and (un)padding has been requested, but the decrypted data is not
	* bounded by the appropriate padding bytes
	* @exception AEADBadTagException if this cipher is decrypting in an
	* AEAD mode (such as GCM/CCM), and the received authentication tag
	* does not match the calculated value
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function doFinal(input : java.nio.ByteBuffer, output : java.nio.ByteBuffer) : Int;
	
	/**
	* Wrap a key.
	*
	* @param key the key to be wrapped.
	*
	* @return the wrapped key.
	*
	* @exception IllegalStateException if this cipher is in a wrong
	* state (e.g., has not been initialized).
	*
	* @exception IllegalBlockSizeException if this cipher is a block
	* cipher, no padding has been requested, and the length of the
	* encoding of the key to be wrapped is not a
	* multiple of the block size.
	*
	* @exception InvalidKeyException if it is impossible or unsafe to
	* wrap the key with this cipher (e.g., a hardware protected key is
	* being passed to a software-only cipher).
	*/
	@:overload @:final public function wrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Unwrap a previously wrapped key.
	*
	* @param wrappedKey the key to be unwrapped.
	*
	* @param wrappedKeyAlgorithm the algorithm associated with the wrapped
	* key.
	*
	* @param wrappedKeyType the type of the wrapped key. This must be one of
	* <code>SECRET_KEY</code>, <code>PRIVATE_KEY</code>, or
	* <code>PUBLIC_KEY</code>.
	*
	* @return the unwrapped key.
	*
	* @exception IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized).
	*
	* @exception NoSuchAlgorithmException if no installed providers
	* can create keys of type <code>wrappedKeyType</code> for the
	* <code>wrappedKeyAlgorithm</code>.
	*
	* @exception InvalidKeyException if <code>wrappedKey</code> does not
	* represent a wrapped key of type <code>wrappedKeyType</code> for
	* the <code>wrappedKeyAlgorithm</code>.
	*/
	@:overload @:final public function unwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, wrappedKeyAlgorithm : String, wrappedKeyType : Int) : java.security.Key;
	
	/**
	* Returns the maximum key length for the specified transformation
	* according to the installed JCE jurisdiction policy files. If
	* JCE unlimited strength jurisdiction policy files are installed,
	* Integer.MAX_VALUE will be returned.
	* For more information on default key size in JCE jurisdiction
	* policy files, please see Appendix E in the
	* <a href=
	*   "{@docRoot}/../technotes/guides/security/crypto/CryptoSpec.html#AppC">
	* Java Cryptography Architecture Reference Guide</a>.
	*
	* @param transformation the cipher transformation.
	* @return the maximum key length in bits or Integer.MAX_VALUE.
	* @exception NullPointerException if <code>transformation</code> is null.
	* @exception NoSuchAlgorithmException if <code>transformation</code>
	* is not a valid transformation, i.e. in the form of "algorithm" or
	* "algorithm/mode/padding".
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public static function getMaxAllowedKeyLength(transformation : String) : Int;
	
	/**
	* Returns an AlgorithmParameterSpec object which contains
	* the maximum cipher parameter value according to the
	* jurisdiction policy file. If JCE unlimited strength jurisdiction
	* policy files are installed or there is no maximum limit on the
	* parameters for the specified transformation in the policy file,
	* null will be returned.
	*
	* @param transformation the cipher transformation.
	* @return an AlgorithmParameterSpec which holds the maximum
	* value or null.
	* @exception NullPointerException if <code>transformation</code>
	* is null.
	* @exception NoSuchAlgorithmException if <code>transformation</code>
	* is not a valid transformation, i.e. in the form of "algorithm" or
	* "algorithm/mode/padding".
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public static function getMaxAllowedParameterSpec(transformation : String) : java.security.spec.AlgorithmParameterSpec;
	
	/**
	* Continues a multi-part update of the Additional Authentication
	* Data (AAD).
	* <p>
	* Calls to this method provide AAD to the cipher when operating in
	* modes such as AEAD (GCM/CCM).  If this cipher is operating in
	* either GCM or CCM mode, all AAD must be supplied before beginning
	* operations on the ciphertext (via the {@code update} and {@code
	* doFinal} methods).
	*
	* @param src the buffer containing the Additional Authentication Data
	*
	* @throws IllegalArgumentException if the {@code src}
	* byte array is null
	* @throws IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized), does not accept AAD, or if
	* operating in either GCM or CCM mode and one of the {@code update}
	* methods has already been called for the active
	* encryption/decryption operation
	* @throws UnsupportedOperationException if the corresponding method
	* in the {@code CipherSpi} has not been overridden by an
	* implementation
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:final public function updateAAD(src : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Continues a multi-part update of the Additional Authentication
	* Data (AAD), using a subset of the provided buffer.
	* <p>
	* Calls to this method provide AAD to the cipher when operating in
	* modes such as AEAD (GCM/CCM).  If this cipher is operating in
	* either GCM or CCM mode, all AAD must be supplied before beginning
	* operations on the ciphertext (via the {@code update} and {@code
	* doFinal} methods).
	*
	* @param src the buffer containing the AAD
	* @param offset the offset in {@code src} where the AAD input starts
	* @param len the number of AAD bytes
	*
	* @throws IllegalArgumentException if the {@code src}
	* byte array is null, or the {@code offset} or {@code length}
	* is less than 0, or the sum of the {@code offset} and
	* {@code len} is greater than the length of the
	* {@code src} byte array
	* @throws IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized), does not accept AAD, or if
	* operating in either GCM or CCM mode and one of the {@code update}
	* methods has already been called for the active
	* encryption/decryption operation
	* @throws UnsupportedOperationException if the corresponding method
	* in the {@code CipherSpi} has not been overridden by an
	* implementation
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:final public function updateAAD(src : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Continues a multi-part update of the Additional Authentication
	* Data (AAD).
	* <p>
	* Calls to this method provide AAD to the cipher when operating in
	* modes such as AEAD (GCM/CCM).  If this cipher is operating in
	* either GCM or CCM mode, all AAD must be supplied before beginning
	* operations on the ciphertext (via the {@code update} and {@code
	* doFinal} methods).
	* <p>
	* All {@code src.remaining()} bytes starting at
	* {@code src.position()} are processed.
	* Upon return, the input buffer's position will be equal
	* to its limit; its limit will not have changed.
	*
	* @param src the buffer containing the AAD
	*
	* @throws IllegalArgumentException if the {@code src ByteBuffer}
	* is null
	* @throws IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized), does not accept AAD, or if
	* operating in either GCM or CCM mode and one of the {@code update}
	* methods has already been called for the active
	* encryption/decryption operation
	* @throws UnsupportedOperationException if the corresponding method
	* in the {@code CipherSpi} has not been overridden by an
	* implementation
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:final public function updateAAD(src : java.nio.ByteBuffer) : Void;
	
	
}
/**
* Nested class to deal with modes and paddings.
*/
@:native('javax$crypto$Cipher$Transform') @:internal extern class Cipher_Transform
{
	
}
