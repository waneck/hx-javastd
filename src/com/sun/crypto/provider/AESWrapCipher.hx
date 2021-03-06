package com.sun.crypto.provider;
/*
* Copyright (c) 2004, 2009, Oracle and/or its affiliates. All rights reserved.
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
* This class implements the AES KeyWrap algorithm as defined
* in <a href=http://www.w3.org/TR/xmlenc-core/#sec-Alg-SymmetricKeyWrap>
* "XML Encryption Syntax and Processing" section 5.6.3 "AES Key Wrap".
* Note: only <code>ECB</code> mode and <code>NoPadding</code> padding
* can be used for this algorithm.
*
* @author Valerie Peng
*
*
* @see AESCipher
*/
extern class AESWrapCipher extends javax.crypto.CipherSpi
{
	/**
	* Creates an instance of AES KeyWrap cipher with default
	* mode, i.e. "ECB" and padding scheme, i.e. "NoPadding".
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the mode of this cipher. Only "ECB" mode is accepted for this
	* cipher.
	*
	* @param mode the cipher mode
	*
	* @exception NoSuchAlgorithmException if the requested cipher mode
	* is not "ECB".
	*/
	@:overload @:protected override private function engineSetMode(mode : String) : Void;
	
	/**
	* Sets the padding mechanism of this cipher. Only "NoPadding" schmem
	* is accepted for this cipher.
	*
	* @param padding the padding mechanism
	*
	* @exception NoSuchPaddingException if the requested padding mechanism
	* is not "NoPadding".
	*/
	@:overload @:protected override private function engineSetPadding(padding : String) : Void;
	
	/**
	* Returns the block size (in bytes). i.e. 16 bytes.
	*
	* @return the block size (in bytes), i.e. 16 bytes.
	*/
	@:overload @:protected override private function engineGetBlockSize() : Int;
	
	/**
	* Returns the length in bytes that an output buffer would need to be
	* given the input length <code>inputLen</code> (in bytes).
	*
	* <p>The actual output length of the next <code>update</code> or
	* <code>doFinal</code> call may be smaller than the length returned
	* by this method.
	*
	* @param inputLen the input length (in bytes)
	*
	* @return the required output buffer size (in bytes)
	*/
	@:overload @:protected override private function engineGetOutputSize(inputLen : Int) : Int;
	
	/**
	* Returns the initialization vector (IV) which is null for this cipher.
	*
	* @return null for this cipher.
	*/
	@:overload @:protected override private function engineGetIV() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Initializes this cipher with a key and a source of randomness.
	*
	* <p>The cipher only supports the following two operation modes:<b>
	* Cipher.WRAP_MODE, and <b>
	* Cipher.UNWRAP_MODE.
	* <p>For modes other than the above two, UnsupportedOperationException
	* will be thrown.
	*
	* @param opmode the operation mode of this cipher. Only
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>) are accepted.
	* @param key the secret key.
	* @param random the source of randomness.
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher.
	*/
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with a key, a set of algorithm parameters,
	* and a source of randomness.
	*
	* <p>The cipher only supports the following two operation modes:<b>
	* Cipher.WRAP_MODE, and <b>
	* Cipher.UNWRAP_MODE.
	* <p>For modes other than the above two, UnsupportedOperationException
	* will be thrown.
	*
	* @param opmode the operation mode of this cipher. Only
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>) are accepted.
	* @param key the secret key.
	* @param params the algorithm parameters; must be null for this cipher.
	* @param random the source of randomness.
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this cipher
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters is not null.
	*/
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this cipher with a key, a set of algorithm parameters,
	* and a source of randomness.
	*
	* <p>The cipher only supports the following two operation modes:<b>
	* Cipher.WRAP_MODE, and <b>
	* Cipher.UNWRAP_MODE.
	* <p>For modes other than the above two, UnsupportedOperationException
	* will be thrown.
	*
	* @param opmode the operation mode of this cipher. Only
	* <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>) are accepted.
	* @param key the secret key.
	* @param params the algorithm parameters; must be null for this cipher.
	* @param random the source of randomness.
	*
	* @exception InvalidKeyException if the given key is inappropriate.
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters is not null.
	*/
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	/**
	* This operation is not supported by this cipher.
	* Since it's impossible to initialize this cipher given the
	* current Cipher.engineInit(...) implementation,
	* IllegalStateException will always be thrown upon invocation.
	*
	* @param in the input buffer.
	* @param inOffset the offset in <code>in</code> where the input
	* starts.
	* @param inLen the input length.
	*
	* @return n/a.
	*
	* @exception IllegalStateException upon invocation of this method.
	*/
	@:overload @:protected override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOffset : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* This operation is not supported by this cipher.
	* Since it's impossible to initialize this cipher given the
	* current Cipher.engineInit(...) implementation,
	* IllegalStateException will always be thrown upon invocation.
	*
	* @param in the input buffer.
	* @param inOffset the offset in <code>in</code> where the input
	* starts.
	* @param inLen the input length.
	* @param out the buffer for the result.
	* @param outOffset the offset in <code>out</code> where the result
	* is stored.
	*
	* @return n/a.
	*
	* @exception IllegalStateException upon invocation of this method.
	*/
	@:overload @:protected override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOffset : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOffset : Int) : Int;
	
	/**
	* This operation is not supported by this cipher.
	* Since it's impossible to initialize this cipher given the
	* current Cipher.engineInit(...) implementation,
	* IllegalStateException will always be thrown upon invocation.
	*
	* @param in the input buffer
	* @param inOffset the offset in <code>in</code> where the input
	* starts
	* @param inLen the input length.
	*
	* @return n/a.
	*
	* @exception IllegalStateException upon invocation of this method.
	*/
	@:overload @:protected override private function engineDoFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* This operation is not supported by this cipher.
	* Since it's impossible to initialize this cipher given the
	* current Cipher.engineInit(...) implementation,
	* IllegalStateException will always be thrown upon invocation.
	*
	* @param in the input buffer.
	* @param inOffset the offset in <code>in</code> where the input
	* starts.
	* @param inLen the input length.
	* @param out the buffer for the result.
	* @param outOffset the ofset in <code>out</code> where the result
	* is stored.
	*
	* @return n/a.
	*
	* @exception IllegalStateException upon invocation of this method.
	*/
	@:overload @:protected override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOffset : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOffset : Int) : Int;
	
	/**
	* Returns the parameters used with this cipher which is always null
	* for this cipher.
	*
	* @return null since this cipher does not use any parameters.
	*/
	@:overload @:protected override private function engineGetParameters() : java.security.AlgorithmParameters;
	
	/**
	* Returns the key size of the given key object in number of bits.
	*
	* @param key the key object.
	*
	* @return the "effective" key size of the given key object.
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
