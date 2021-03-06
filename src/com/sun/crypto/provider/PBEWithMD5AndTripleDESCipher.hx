package com.sun.crypto.provider;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class implements a proprietary password-based encryption algorithm.
* It is based on password-based encryption as defined by the PKCS #5
* standard, except that is uses triple DES instead of DES.
*
* Here's how this algorithm works:
*
* 1. Create random salt and split it in two halves. If the two halves are
*    identical, invert one of them.
* 2. Concatenate password with each of the halves.
* 3. Digest each concatenation with c iterations, where c is the
*    iterationCount. Concatenate the output from each digest round with the
*    password, and use the result as the input to the next digest operation.
*    The digest algorithm is MD5.
* 4. After c iterations, use the 2 resulting digests as follows:
*    The 16 bytes of the first digest and the 1st 8 bytes of the 2nd digest
*    form the triple DES key, and the last 8 bytes of the 2nd digest form the
*    IV.
*
* @author Jan Luehe
* @see javax.crypto.Cipher
*/
extern class PBEWithMD5AndTripleDESCipher extends javax.crypto.CipherSpi
{
	/**
	* Creates an instance of this cipher, and initializes its mode (CBC) and
	* padding (PKCS5).
	*
	* @exception NoSuchAlgorithmException if the required cipher mode (CBC) is
	* unavailable
	* @exception NoSuchPaddingException if the required padding mechanism
	* (PKCS5Padding) is unavailable
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the mode of this cipher. This algorithm can only be run in CBC
	* mode.
	*
	* @param mode the cipher mode
	*
	* @exception NoSuchAlgorithmException if the requested cipher mode is
	* invalid
	*/
	@:overload @:protected override private function engineSetMode(mode : String) : Void;
	
	/**
	* Sets the padding mechanism of this cipher. This algorithm only uses
	* PKCS #5 padding.
	*
	* @param padding the padding mechanism
	*
	* @exception NoSuchPaddingException if the requested padding mechanism
	* is invalid
	*/
	@:overload @:protected override private function engineSetPadding(paddingScheme : String) : Void;
	
	/**
	* Returns the block size (in bytes).
	*
	* @return the block size (in bytes)
	*/
	@:overload @:protected override private function engineGetBlockSize() : Int;
	
	/**
	* Returns the length in bytes that an output buffer would need to be in
	* order to hold the result of the next <code>update</code> or
	* <code>doFinal</code> operation, given the input length
	* <code>inputLen</code> (in bytes).
	*
	* <p>This call takes into account any unprocessed (buffered) data from a
	* previous <code>update</code> call, and padding.
	*
	* <p>The actual output length of the next <code>update</code> or
	* <code>doFinal</code> call may be smaller than the length returned by
	* this method.
	*
	* @param inputLen the input length (in bytes)
	*
	* @return the required output buffer size (in bytes)
	*
	*/
	@:overload @:protected override private function engineGetOutputSize(inputLen : Int) : Int;
	
	/**
	* Returns the initialization vector (IV) in a new buffer.
	*
	* <p> This is useful in the case where a random IV has been created
	* (see <a href = "#init">init</a>),
	* or in the context of password-based encryption or
	* decryption, where the IV is derived from a user-supplied password.
	*
	* @return the initialization vector in a new buffer, or null if the
	* underlying algorithm does not use an IV, or if the IV has not yet
	* been set.
	*/
	@:overload @:protected override private function engineGetIV() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the parameters used with this cipher.
	*
	* <p>The returned parameters may be the same that were used to initialize
	* this cipher, or may contain the default set of parameters or a set of
	* randomly generated parameters used by the underlying cipher
	* implementation (provided that the underlying cipher implementation
	* uses a default set of parameters or creates new parameters if it needs
	* parameters but was not initialized with any).
	*
	* @return the parameters used with this cipher, or null if this cipher
	* does not use any parameters.
	*/
	@:overload @:protected override private function engineGetParameters() : java.security.AlgorithmParameters;
	
	/**
	* Initializes this cipher with a key and a source
	* of randomness.
	* The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or key unwrapping, depending on
	* the value of <code>opmode</code>.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes, it will get them from <code>random</code>.
	*
	* @param opmode the operation mode of this cipher (this is one of
	* the following:
	* <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>),
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)
	* @param key the encryption key
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher
	*/
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with a key, a set of
	* algorithm parameters, and a source of randomness.
	* The cipher is initialized for encryption or decryption, depending on
	* the value of <code>opmode</code>.
	*
	* <p>If this cipher (including its underlying feedback or padding scheme)
	* requires any random bytes, it will get them from <code>random</code>.
	*
	* @param opmode the operation mode of this cipher (this is either
	* <code>ENCRYPT_MODE</code> or <code>DECRYPT_MODE</code>)
	* @param key the encryption key
	* @param params the algorithm parameters
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this cipher
	*/
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code>, are processed, and the
	* result is stored in a new buffer.
	*
	* @param input the input buffer
	* @param inputOffset the offset in <code>input</code> where the input
	* starts
	* @param inputLen the input length
	*
	* @return the new buffer with the result
	*
	*/
	@:overload @:protected override private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Continues a multiple-part encryption or decryption operation
	* (depending on how this cipher was initialized), processing another data
	* part.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code>, are processed, and the
	* result is stored in the <code>output</code> buffer, starting at
	* <code>outputOffset</code>.
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
	@:overload @:protected override private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	/**
	* Encrypts or decrypts data in a single-part operation,
	* or finishes a multiple-part operation.
	* The data is encrypted or decrypted, depending on how this cipher was
	* initialized.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code>, and any input bytes that
	* may have been buffered during a previous <code>update</code> operation,
	* are processed, with padding (if requested) being applied.
	* The result is stored in a new buffer.
	*
	* <p>The cipher is reset to its initial state (uninitialized) after this
	* call.
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
	* block size
	* @exception BadPaddingException if decrypting and padding is choosen,
	* but the last input data does not have proper padding bytes.
	*/
	@:overload @:protected override private function engineDoFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encrypts or decrypts data in a single-part operation,
	* or finishes a multiple-part operation.
	* The data is encrypted or decrypted, depending on how this cipher was
	* initialized.
	*
	* <p>The first <code>inputLen</code> bytes in the <code>input</code>
	* buffer, starting at <code>inputOffset</code>, and any input bytes that
	* may have been buffered during a previous <code>update</code> operation,
	* are processed, with padding (if requested) being applied.
	* The result is stored in the <code>output</code> buffer, starting at
	* <code>outputOffset</code>.
	*
	* <p>The cipher is reset to its initial state (uninitialized) after this
	* call.
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
	* block size
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	* @exception BadPaddingException if decrypting and padding is choosen,
	* but the last input data does not have proper padding bytes.
	*/
	@:overload @:protected override private function engineDoFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	/**
	*  Returns the key size of the given key object.
	*
	* @param key the key object.
	*
	* @return the key size of the given key object.
	*
	* @exception InvalidKeyException if <code>key</code> is invalid.
	*/
	@:overload @:protected override private function engineGetKeySize(key : java.security.Key) : Int;
	
	/**
	* Wrap a key.
	*
	* @param key the key to be wrapped.
	*
	* @return the wrapped key.
	*
	* @exception IllegalBlockSizeException if this cipher is a block
	* cipher, no padding has been requested, and the length of the
	* encoding of the key to be wrapped is not a
	* multiple of the block size.
	*
	* @exception InvalidKeyException if it is impossible or unsafe to
	* wrap the key with this cipher (e.g., a hardware protected key is
	* being passed to a software only cipher).
	*/
	@:overload @:protected override private function engineWrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Unwrap a previously wrapped key.
	*
	* @param wrappedKey the key to be unwrapped.
	*
	* @param wrappedKeyAlgorithm the algorithm the wrapped key is for.
	*
	* @param wrappedKeyType the type of the wrapped key.
	* This is one of <code>Cipher.SECRET_KEY</code>,
	* <code>Cipher.PRIVATE_KEY</code>, or <code>Cipher.PUBLIC_KEY</code>.
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
	@:overload @:protected override private function engineUnwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, wrappedKeyAlgorithm : String, wrappedKeyType : Int) : java.security.Key;
	
	
}
