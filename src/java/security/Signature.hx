package java.security;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Signature extends java.security.SignatureSpi
{
	/**
	* Possible {@link #state} value, signifying that
	* this signature object has not yet been initialized.
	*/
	private static var UNINITIALIZED(default, null) : Int;
	
	/**
	* Possible {@link #state} value, signifying that
	* this signature object has been initialized for signing.
	*/
	private static var SIGN(default, null) : Int;
	
	/**
	* Possible {@link #state} value, signifying that
	* this signature object has been initialized for verification.
	*/
	private static var VERIFY(default, null) : Int;
	
	/**
	* Current state of this signature object.
	*/
	private var state : Int;
	
	/**
	* Creates a Signature object for the specified algorithm.
	*
	* @param algorithm the standard string name of the algorithm.
	* See the Signature section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#Signature">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*/
	@:overload private function new(algorithm : String) : Void;
	
	/**
	* Returns a Signature object that implements the specified signature
	* algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new Signature object encapsulating the
	* SignatureSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the algorithm requested.
	* See the Signature section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#Signature">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new Signature object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          Signature implementation for the
	*          specified algorithm.
	*
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String) : Signature;
	
	/**
	* Returns a Signature object that implements the specified signature
	* algorithm.
	*
	* <p> A new Signature object encapsulating the
	* SignatureSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the algorithm requested.
	* See the Signature section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#Signature">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new Signature object.
	*
	* @exception NoSuchAlgorithmException if a SignatureSpi
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
	@:overload public static function getInstance(algorithm : String, provider : String) : Signature;
	
	/**
	* Returns a Signature object that implements the specified
	* signature algorithm.
	*
	* <p> A new Signature object encapsulating the
	* SignatureSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the name of the algorithm requested.
	* See the Signature section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#Signature">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new Signature object.
	*
	* @exception NoSuchAlgorithmException if a SignatureSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInstance(algorithm : String, provider : java.security.Provider) : Signature;
	
	/**
	* Returns the provider of this signature object.
	*
	* @return the provider of this signature object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this object for verification. If this method is called
	* again with a different argument, it negates the effect
	* of this call.
	*
	* @param publicKey the public key of the identity whose signature is
	* going to be verified.
	*
	* @exception InvalidKeyException if the key is invalid.
	*/
	@:overload @:final public function initVerify(publicKey : java.security.PublicKey) : Void;
	
	/**
	* Initializes this object for verification, using the public key from
	* the given certificate.
	* <p>If the certificate is of type X.509 and has a <i>key usage</i>
	* extension field marked as critical, and the value of the <i>key usage</i>
	* extension field implies that the public key in
	* the certificate and its corresponding private key are not
	* supposed to be used for digital signatures, an
	* <code>InvalidKeyException</code> is thrown.
	*
	* @param certificate the certificate of the identity whose signature is
	* going to be verified.
	*
	* @exception InvalidKeyException  if the public key in the certificate
	* is not encoded properly or does not include required  parameter
	* information or cannot be used for digital signature purposes.
	* @since 1.3
	*/
	@:require(java3) @:overload @:final public function initVerify(certificate : java.security.cert.Certificate) : Void;
	
	/**
	* Initialize this object for signing. If this method is called
	* again with a different argument, it negates the effect
	* of this call.
	*
	* @param privateKey the private key of the identity whose signature
	* is going to be generated.
	*
	* @exception InvalidKeyException if the key is invalid.
	*/
	@:overload @:final public function initSign(privateKey : java.security.PrivateKey) : Void;
	
	/**
	* Initialize this object for signing. If this method is called
	* again with a different argument, it negates the effect
	* of this call.
	*
	* @param privateKey the private key of the identity whose signature
	* is going to be generated.
	*
	* @param random the source of randomness for this signature.
	*
	* @exception InvalidKeyException if the key is invalid.
	*/
	@:overload @:final public function initSign(privateKey : java.security.PrivateKey, random : java.security.SecureRandom) : Void;
	
	/**
	* Returns the signature bytes of all the data updated.
	* The format of the signature depends on the underlying
	* signature scheme.
	*
	* <p>A call to this method resets this signature object to the state
	* it was in when previously initialized for signing via a
	* call to <code>initSign(PrivateKey)</code>. That is, the object is
	* reset and available to generate another signature from the same
	* signer, if desired, via new calls to <code>update</code> and
	* <code>sign</code>.
	*
	* @return the signature bytes of the signing operation's result.
	*
	* @exception SignatureException if this signature object is not
	* initialized properly or if this signature algorithm is unable to
	* process the input data provided.
	*/
	@:overload @:final public function sign() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Finishes the signature operation and stores the resulting signature
	* bytes in the provided buffer <code>outbuf</code>, starting at
	* <code>offset</code>.
	* The format of the signature depends on the underlying
	* signature scheme.
	*
	* <p>This signature object is reset to its initial state (the state it
	* was in after a call to one of the <code>initSign</code> methods) and
	* can be reused to generate further signatures with the same private key.
	*
	* @param outbuf buffer for the signature result.
	*
	* @param offset offset into <code>outbuf</code> where the signature is
	* stored.
	*
	* @param len number of bytes within <code>outbuf</code> allotted for the
	* signature.
	*
	* @return the number of bytes placed into <code>outbuf</code>.
	*
	* @exception SignatureException if this signature object is not
	* initialized properly, if this signature algorithm is unable to
	* process the input data provided, or if <code>len</code> is less
	* than the actual signature length.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:final public function sign(outbuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	/**
	* Verifies the passed-in signature.
	*
	* <p>A call to this method resets this signature object to the state
	* it was in when previously initialized for verification via a
	* call to <code>initVerify(PublicKey)</code>. That is, the object is
	* reset and available to verify another signature from the identity
	* whose public key was specified in the call to <code>initVerify</code>.
	*
	* @param signature the signature bytes to be verified.
	*
	* @return true if the signature was verified, false if not.
	*
	* @exception SignatureException if this signature object is not
	* initialized properly, the passed-in signature is improperly
	* encoded or of the wrong type, if this signature algorithm is unable to
	* process the input data provided, etc.
	*/
	@:overload @:final public function verify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Verifies the passed-in signature in the specified array
	* of bytes, starting at the specified offset.
	*
	* <p>A call to this method resets this signature object to the state
	* it was in when previously initialized for verification via a
	* call to <code>initVerify(PublicKey)</code>. That is, the object is
	* reset and available to verify another signature from the identity
	* whose public key was specified in the call to <code>initVerify</code>.
	*
	*
	* @param signature the signature bytes to be verified.
	* @param offset the offset to start from in the array of bytes.
	* @param length the number of bytes to use, starting at offset.
	*
	* @return true if the signature was verified, false if not.
	*
	* @exception SignatureException if this signature object is not
	* initialized properly, the passed-in signature is improperly
	* encoded or of the wrong type, if this signature algorithm is unable to
	* process the input data provided, etc.
	* @exception IllegalArgumentException if the <code>signature</code>
	* byte array is null, or the <code>offset</code> or <code>length</code>
	* is less than 0, or the sum of the <code>offset</code> and
	* <code>length</code> is greater than the length of the
	* <code>signature</code> byte array.
	* @since 1.4
	*/
	@:require(java4) @:overload @:final public function verify(signature : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Bool;
	
	/**
	* Updates the data to be signed or verified by a byte.
	*
	* @param b the byte to use for the update.
	*
	* @exception SignatureException if this signature object is not
	* initialized properly.
	*/
	@:overload @:final public function update(b : java.StdTypes.Int8) : Void;
	
	/**
	* Updates the data to be signed or verified, using the specified
	* array of bytes.
	*
	* @param data the byte array to use for the update.
	*
	* @exception SignatureException if this signature object is not
	* initialized properly.
	*/
	@:overload @:final public function update(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Updates the data to be signed or verified, using the specified
	* array of bytes, starting at the specified offset.
	*
	* @param data the array of bytes.
	* @param off the offset to start from in the array of bytes.
	* @param len the number of bytes to use, starting at offset.
	*
	* @exception SignatureException if this signature object is not
	* initialized properly.
	*/
	@:overload @:final public function update(data : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Updates the data to be signed or verified using the specified
	* ByteBuffer. Processes the <code>data.remaining()</code> bytes
	* starting at at <code>data.position()</code>.
	* Upon return, the buffer's position will be equal to its limit;
	* its limit will not have changed.
	*
	* @param data the ByteBuffer
	*
	* @exception SignatureException if this signature object is not
	* initialized properly.
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function update(data : java.nio.ByteBuffer) : Void;
	
	/**
	* Returns the name of the algorithm for this signature object.
	*
	* @return the name of the algorithm for this signature object.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Returns a string representation of this signature object,
	* providing information that includes the state of the object
	* and the name of the algorithm used.
	*
	* @return a string representation of this signature object.
	*/
	@:overload public function toString() : String;
	
	/**
	* Sets the specified algorithm parameter to the specified value.
	* This method supplies a general-purpose mechanism through
	* which it is possible to set the various parameters of this object.
	* A parameter may be any settable parameter for the algorithm, such as
	* a parameter size, or a source of random bits for signature generation
	* (if appropriate), or an indication of whether or not to perform
	* a specific but optional computation. A uniform algorithm-specific
	* naming scheme for each parameter is desirable but left unspecified
	* at this time.
	*
	* @param param the string identifier of the parameter.
	* @param value the parameter value.
	*
	* @exception InvalidParameterException if <code>param</code> is an
	* invalid parameter for this signature algorithm engine,
	* the parameter is already set
	* and cannot be set again, a security exception occurs, and so on.
	*
	* @see #getParameter
	*
	* @deprecated Use
	* {@link #setParameter(java.security.spec.AlgorithmParameterSpec)
	* setParameter}.
	*/
	@:overload @:final public function setParameter(param : String, value : Dynamic) : Void;
	
	/**
	* Initializes this signature engine with the specified parameter set.
	*
	* @param params the parameters
	*
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this signature engine
	*
	* @see #getParameters
	*/
	@:overload @:final public function setParameter(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Returns the parameters used with this signature object.
	*
	* <p>The returned parameters may be the same that were used to initialize
	* this signature, or may contain a combination of default and randomly
	* generated parameter values used by the underlying signature
	* implementation if this signature requires algorithm parameters but
	* was not initialized with any.
	*
	* @return the parameters used with this signature, or null if this
	* signature does not use any parameters.
	*
	* @see #setParameter(AlgorithmParameterSpec)
	* @since 1.4
	*/
	@:require(java4) @:overload @:final public function getParameters() : java.security.AlgorithmParameters;
	
	/**
	* Gets the value of the specified algorithm parameter. This method
	* supplies a general-purpose mechanism through which it is possible to
	* get the various parameters of this object. A parameter may be any
	* settable parameter for the algorithm, such as a parameter size, or
	* a source of random bits for signature generation (if appropriate),
	* or an indication of whether or not to perform a specific but optional
	* computation. A uniform algorithm-specific naming scheme for each
	* parameter is desirable but left unspecified at this time.
	*
	* @param param the string name of the parameter.
	*
	* @return the object that represents the parameter value, or null if
	* there is none.
	*
	* @exception InvalidParameterException if <code>param</code> is an invalid
	* parameter for this engine, or another exception occurs while
	* trying to get this parameter.
	*
	* @see #setParameter(String, Object)
	*
	* @deprecated
	*/
	@:overload @:final public function getParameter(param : String) : Dynamic;
	
	/**
	* Returns a clone if the implementation is cloneable.
	*
	* @return a clone if the implementation is cloneable.
	*
	* @exception CloneNotSupportedException if this is called
	* on an implementation that does not support <code>Cloneable</code>.
	*/
	@:overload override public function clone() : Dynamic;
	
	
}
/*
* The following class allows providers to extend from SignatureSpi
* rather than from Signature. It represents a Signature with an
* encapsulated, provider-supplied SPI object (of type SignatureSpi).
* If the provider implementation is an instance of SignatureSpi, the
* getInstance() methods above return an instance of this class, with
* the SPI object encapsulated.
*
* Note: All SPI methods from the original Signature class have been
* moved up the hierarchy into a new class (SignatureSpi), which has
* been interposed in the hierarchy between the API (Signature)
* and its original parent (Object).
*/
@:native('java$security$Signature$Delegate') @:internal extern class Signature_Delegate extends Signature
{
	/**
	* Returns a clone if the delegate is cloneable.
	*
	* @return a clone if the delegate is cloneable.
	*
	* @exception CloneNotSupportedException if this is called on a
	* delegate that does not support <code>Cloneable</code>.
	*/
	@:overload override public function clone() : Dynamic;
	
	@:overload override private function engineInitVerify(publicKey : java.security.PublicKey) : Void;
	
	@:overload override private function engineInitSign(privateKey : java.security.PrivateKey) : Void;
	
	@:overload override private function engineInitSign(privateKey : java.security.PrivateKey, sr : java.security.SecureRandom) : Void;
	
	@:overload override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override private function engineUpdate(data : java.nio.ByteBuffer) : Void;
	
	@:overload override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineSign(outbuf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	@:overload override private function engineVerify(sigBytes : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload override private function engineVerify(sigBytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Bool;
	
	@:overload override private function engineSetParameter(param : String, value : Dynamic) : Void;
	
	@:overload override private function engineSetParameter(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload override private function engineGetParameter(param : String) : Dynamic;
	
	@:overload override private function engineGetParameters() : java.security.AlgorithmParameters;
	
	
}
@:native('java$security$Signature$CipherAdapter') @:internal extern class Signature_CipherAdapter extends java.security.SignatureSpi
{
	@:overload override private function engineInitVerify(publicKey : java.security.PublicKey) : Void;
	
	@:overload override private function engineInitSign(privateKey : java.security.PrivateKey) : Void;
	
	@:overload override private function engineInitSign(privateKey : java.security.PrivateKey, random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineVerify(sigBytes : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload override private function engineSetParameter(param : String, value : Dynamic) : Void;
	
	@:overload override private function engineGetParameter(param : String) : Dynamic;
	
	
}
