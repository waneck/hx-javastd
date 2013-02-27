package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Cipher implementation class. This class currently supports
* DES, DESede, AES, ARCFOUR, and Blowfish.
*
* This class is designed to support ECB, CBC, CTR with NoPadding
* and ECB, CBC with PKCS5Padding. It will use its own padding impl
* if the native mechanism does not support padding.
*
* Note that PKCS#11 currently only supports ECB, CBC, and CTR.
* There are no provisions for other modes such as CFB, OFB, and PCBC.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class P11Cipher extends javax.crypto.CipherSpi
{
	@:overload override private function engineSetMode(mode : String) : Void;
	
	@:overload override private function engineSetPadding(padding : String) : Void;
	
	@:overload override private function engineGetBlockSize() : Int;
	
	@:overload override private function engineGetOutputSize(inputLen : Int) : Int;
	
	@:overload override private function engineGetIV() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineGetParameters() : java.security.AlgorithmParameters;
	
	@:overload override private function engineInit(opmode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	@:overload override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int) : Int;
	
	@:overload override private function engineUpdate(inBuffer : java.nio.ByteBuffer, outBuffer : java.nio.ByteBuffer) : Int;
	
	@:overload override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int) : Int;
	
	@:overload override private function engineDoFinal(inBuffer : java.nio.ByteBuffer, outBuffer : java.nio.ByteBuffer) : Int;
	
	@:overload override private function engineWrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineUnwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, wrappedKeyAlgorithm : String, wrappedKeyType : Int) : java.security.Key;
	
	@:overload override private function engineGetKeySize(key : java.security.Key) : Int;
	
	
}
@:native('sun$security$pkcs11$P11Cipher$Padding') @:internal extern interface P11Cipher_Padding
{
	@:overload public function setPaddingBytes(paddingBuffer : java.NativeArray<java.StdTypes.Int8>, padLen : Int) : Int;
	
	@:overload public function unpad(paddedData : java.NativeArray<java.StdTypes.Int8>, len : Int) : Int;
	
	
}
@:native('sun$security$pkcs11$P11Cipher$PKCS5Padding') @:internal extern class P11Cipher_PKCS5Padding implements P11Cipher_Padding
{
	@:overload public function setPaddingBytes(paddingBuffer : java.NativeArray<java.StdTypes.Int8>, padLen : Int) : Int;
	
	@:overload public function unpad(paddedData : java.NativeArray<java.StdTypes.Int8>, len : Int) : Int;
	
	
}
