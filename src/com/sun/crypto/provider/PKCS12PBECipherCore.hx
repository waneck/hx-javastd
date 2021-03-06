package com.sun.crypto.provider;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This class implements password-base encryption algorithm with
* SHA1 digest and the following Ciphers in CBC mode
* - DESede cipher and
* - RC2 Cipher with 40-bit effective key length
* as defined by PKCS #12 version 1.0 standard.
*
* @author Valerie Peng
* @see javax.crypto.CipherSpi
*/
@:internal extern class PKCS12PBECipherCore
{
	
}
@:native('com$sun$crypto$provider$PKCS12PBECipherCore$PBEWithSHA1AndDESede') extern class PKCS12PBECipherCore_PBEWithSHA1AndDESede extends javax.crypto.CipherSpi
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOff : Int) : Int;
	
	@:overload @:protected override private function engineGetBlockSize() : Int;
	
	@:overload @:protected override private function engineGetIV() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineGetKeySize(key : java.security.Key) : Int;
	
	@:overload @:protected override private function engineGetOutputSize(inLen : Int) : Int;
	
	@:overload @:protected override private function engineGetParameters() : java.security.AlgorithmParameters;
	
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineSetMode(mode : String) : Void;
	
	@:overload @:protected override private function engineSetPadding(paddingScheme : String) : Void;
	
	@:overload @:protected override private function engineUnwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, wrappedKeyAlgorithm : String, wrappedKeyType : Int) : java.security.Key;
	
	@:overload @:protected override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOff : Int) : Int;
	
	@:overload @:protected override private function engineWrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$crypto$provider$PKCS12PBECipherCore$PBEWithSHA1AndRC2_40') extern class PKCS12PBECipherCore_PBEWithSHA1AndRC2_40 extends javax.crypto.CipherSpi
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOff : Int) : Int;
	
	@:overload @:protected override private function engineGetBlockSize() : Int;
	
	@:overload @:protected override private function engineGetIV() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineGetKeySize(key : java.security.Key) : Int;
	
	@:overload @:protected override private function engineGetOutputSize(inLen : Int) : Int;
	
	@:overload @:protected override private function engineGetParameters() : java.security.AlgorithmParameters;
	
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineInit(opmode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineSetMode(mode : String) : Void;
	
	@:overload @:protected override private function engineSetPadding(paddingScheme : String) : Void;
	
	@:overload @:protected override private function engineUnwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, wrappedKeyAlgorithm : String, wrappedKeyType : Int) : java.security.Key;
	
	@:overload @:protected override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOff : Int) : Int;
	
	@:overload @:protected override private function engineWrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
