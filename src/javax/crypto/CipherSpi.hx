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
extern class CipherSpi
{
	/**
	* Sets the mode of this cipher.
	*
	* @param mode the cipher mode
	*
	* @exception NoSuchAlgorithmException if the requested cipher mode does
	* not exist
	*/
	@:overload @:protected @:abstract private function engineSetMode(mode : String) : Void;
	
	/**
	* Sets the padding mechanism of this cipher.
	*
	* @param padding the padding mechanism
	*
	* @exception NoSuchPaddingException if the requested padding mechanism
	* does not exist
	*/
	@:overload @:protected @:abstract private function engineSetPadding(padding : String) : Void;
	
	/**
	* Returns the block size (in bytes).
	*
	* @return the block size (in bytes), or 0 if the underlying algorithm is
	* not a block cipher
	*/
	@:overload @:protected @:abstract private function engineGetBlockSize() : Int;
	
	/**
	* Returns the length in bytes that an output buffer would
	* need to be in order to hold the result of the next <code>update</code>
	* or <code>doFinal</code> operation, given the input length
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
	*/
	@:overload @:protected @:abstract private function engineGetOutputSize(inputLen : Int) : Int;
	
	/**
	* Returns the initialization vector (IV) in a new buffer.
	*
	* <p> This is useful in the context of password-based encryption or
	* decryption, where the IV is derived from a user-provided passphrase.
	*
	* @return the initialization vector in a new buffer, or null if the
	* underlying algorithm does not use an IV, or if the IV has not yet
	* been set.
	*/
	@:overload @:protected @:abstract private function engineGetIV() : java.NativeArray<java.StdTypes.Int8>;
	
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
	@:overload @:protected @:abstract private function engineGetParameters() : java.security.AlgorithmParameters;
	
	/**
	* Initializes this cipher with a key and a source
	* of randomness.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or key unwrapping, depending on
	* the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters that cannot be
	* derived from the given <code>key</code>, the underlying cipher
	* implementation is supposed to generate the required parameters itself
	* (using provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidKeyException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #engineGetParameters() engineGetParameters} or
	* {@link #engineGetIV() engineGetIV} (if the parameter is an IV).
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
	* @param opmode the operation mode of this cipher (this is one of
	* the following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher, or requires
	* algorithm parameters that cannot be
	* determined from the given key.
	*/
	@:overload @:protected @:abstract private function engineInit(opmode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with a key, a set of
	* algorithm parameters, and a source of randomness.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or key unwrapping, depending on
	* the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters and
	* <code>params</code> is null, the underlying cipher implementation is
	* supposed to generate the required parameters itself (using
	* provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidAlgorithmParameterException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #engineGetParameters() engineGetParameters} or
	* {@link #engineGetIV() engineGetIV} (if the parameter is an IV).
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
	* @param opmode the operation mode of this cipher (this is one of
	* the following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param params the algorithm parameters
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this cipher,
	* or if this cipher requires
	* algorithm parameters and <code>params</code> is null.
	*/
	@:overload @:protected @:abstract private function engineInit(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with a key, a set of
	* algorithm parameters, and a source of randomness.
	*
	* <p>The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or key unwrapping, depending on
	* the value of <code>opmode</code>.
	*
	* <p>If this cipher requires any algorithm parameters and
	* <code>params</code> is null, the underlying cipher implementation is
	* supposed to generate the required parameters itself (using
	* provider-specific default or random values) if it is being
	* initialized for encryption or key wrapping, and raise an
	* <code>InvalidAlgorithmParameterException</code> if it is being
	* initialized for decryption or key unwrapping.
	* The generated parameters can be retrieved using
	* {@link #engineGetParameters() engineGetParameters} or
	* {@link #engineGetIV() engineGetIV} (if the parameter is an IV).
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
	* @param opmode the operation mode of this cipher (this is one of
	* the following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param params the algorithm parameters
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this cipher,
	* or if this cipher requires
	* algorithm parameters and <code>params</code> is null.
	*/
	@:overload @:protected @:abstract private function engineInit(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, are processed,
	* and the result is stored in a new buffer.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	*
	* @return the new buffer with the result, or null if the underlying
	* cipher is a block cipher and the input data is too short to result in a
	* new block.
	*/
	@:overload @:protected @:abstract private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
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
	* a <code>ShortBufferException</code> is thrown.
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
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	*/
	@:overload @:protected @:abstract private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
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
	*
	* <p>Subclasses should consider overriding this method if they can
	* process ByteBuffers more efficiently than byte arrays.
	*
	* @param input the input ByteBuffer
	* @param output the output ByteByffer
	*
	* @return the number of bytes stored in <code>output</code>
	*
	* @exception ShortBufferException if there is insufficient space in the
	* output buffer
	*
	* @throws NullPointerException if either parameter is <CODE>null</CODE>
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function engineUpdate(input : java.nio.ByteBuffer, output : java.nio.ByteBuffer) : Int;
	
	/**
	* Encrypts or decrypts data in a single-part operation,
	* or finishes a multiple-part operation.
	* The data is encrypted or decrypted, depending on how this cipher was
	* initialized.
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
	* it was in when previously initialized via a call to
	* <code>engineInit</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>engineInit</code>) more data.
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
	@:overload @:protected @:abstract private function engineDoFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encrypts or decrypts data in a single-part operation,
	* or finishes a multiple-part operation.
	* The data is encrypted or decrypted, depending on how this cipher was
	* initialized.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code> inclusive, and any input
	* bytes that may have been buffered during a previous <code>update</code>
	* operation, are processed, with padding (if requested) being applied.
	* If an AEAD mode such as GCM/CCM is being used, the authentication
	* tag is appended in the case of encryption, or verified in the
	* case of decryption.
	* The result is stored in the <code>output</code> buffer, starting at
	* <code>outputOffset</code> inclusive.
	*
	* <p>If the <code>output</code> buffer is too small to hold the result,
	* a <code>ShortBufferException</code> is thrown.
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to
	* <code>engineInit</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>engineInit</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
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
	@:overload @:protected @:abstract private function engineDoFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	/**
	* Encrypts or decrypts data in a single-part operation,
	* or finishes a multiple-part operation.
	* The data is encrypted or decrypted, depending on how this cipher was
	* initialized.
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
	*
	* <p>Upon finishing, this method resets this cipher object to the state
	* it was in when previously initialized via a call to
	* <code>engineInit</code>.
	* That is, the object is reset and available to encrypt or decrypt
	* (depending on the operation mode that was specified in the call to
	* <code>engineInit</code>) more data.
	*
	* <p>Note: if any exception is thrown, this cipher object may need to
	* be reset before it can be used again.
	*
	* <p>Subclasses should consider overriding this method if they can
	* process ByteBuffers more efficiently than byte arrays.
	*
	* @param input the input ByteBuffer
	* @param output the output ByteByffer
	*
	* @return the number of bytes stored in <code>output</code>
	*
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
	* @throws NullPointerException if either parameter is <CODE>null</CODE>
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function engineDoFinal(input : java.nio.ByteBuffer, output : java.nio.ByteBuffer) : Int;
	
	/**
	* Wrap a key.
	*
	* <p>This concrete method has been added to this previously-defined
	* abstract class. (For backwards compatibility, it cannot be abstract.)
	* It may be overridden by a provider to wrap a key.
	* Such an override is expected to throw an IllegalBlockSizeException or
	* InvalidKeyException (under the specified circumstances),
	* if the given key cannot be wrapped.
	* If this method is not overridden, it always throws an
	* UnsupportedOperationException.
	*
	* @param key the key to be wrapped.
	*
	* @return the wrapped key.
	*
	* @exception IllegalBlockSizeException if this cipher is a block cipher,
	* no padding has been requested, and the length of the encoding of the
	* key to be wrapped is not a multiple of the block size.
	*
	* @exception InvalidKeyException if it is impossible or unsafe to
	* wrap the key with this cipher (e.g., a hardware protected key is
	* being passed to a software-only cipher).
	*/
	@:overload @:protected private function engineWrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Unwrap a previously wrapped key.
	*
	* <p>This concrete method has been added to this previously-defined
	* abstract class. (For backwards compatibility, it cannot be abstract.)
	* It may be overridden by a provider to unwrap a previously wrapped key.
	* Such an override is expected to throw an InvalidKeyException if
	* the given wrapped key cannot be unwrapped.
	* If this method is not overridden, it always throws an
	* UnsupportedOperationException.
	*
	* @param wrappedKey the key to be unwrapped.
	*
	* @param wrappedKeyAlgorithm the algorithm associated with the wrapped
	* key.
	*
	* @param wrappedKeyType the type of the wrapped key. This is one of
	* <code>SECRET_KEY</code>, <code>PRIVATE_KEY</code>, or
	* <code>PUBLIC_KEY</code>.
	*
	* @return the unwrapped key.
	*
	* @exception NoSuchAlgorithmException if no installed providers
	* can create keys of type <code>wrappedKeyType</code> for the
	* <code>wrappedKeyAlgorithm</code>.
	*
	* @exception InvalidKeyException if <code>wrappedKey</code> does not
	* represent a wrapped key of type <code>wrappedKeyType</code> for
	* the <code>wrappedKeyAlgorithm</code>.
	*/
	@:overload @:protected private function engineUnwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, wrappedKeyAlgorithm : String, wrappedKeyType : Int) : java.security.Key;
	
	/**
	* Returns the key size of the given key object in bits.
	* <p>This concrete method has been added to this previously-defined
	* abstract class. It throws an <code>UnsupportedOperationException</code>
	* if it is not overridden by the provider.
	*
	* @param key the key object.
	*
	* @return the key size of the given key object.
	*
	* @exception InvalidKeyException if <code>key</code> is invalid.
	*/
	@:overload @:protected private function engineGetKeySize(key : java.security.Key) : Int;
	
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
	* @throws IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized), does not accept AAD, or if
	* operating in either GCM or CCM mode and one of the {@code update}
	* methods has already been called for the active
	* encryption/decryption operation
	* @throws UnsupportedOperationException if this method
	* has not been overridden by an implementation
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:protected private function engineUpdateAAD(src : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
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
	* @throws IllegalStateException if this cipher is in a wrong state
	* (e.g., has not been initialized), does not accept AAD, or if
	* operating in either GCM or CCM mode and one of the {@code update}
	* methods has already been called for the active
	* encryption/decryption operation
	* @throws UnsupportedOperationException if this method
	* has not been overridden by an implementation
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:protected private function engineUpdateAAD(src : java.nio.ByteBuffer) : Void;
	
	
}
