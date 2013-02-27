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
* Implementation of the ARCFOUR cipher, an algorithm apparently compatible
* with RSA Security's RC4(tm) cipher. The description of this algorithm was
* taken from Bruce Schneier's book Applied Cryptography, 2nd ed.,
* section 17.1.
*
* We support keys from 40 to 1024 bits. ARCFOUR would allow for keys shorter
* than 40 bits, but that is too insecure for us to permit.
*
* Note that we subclass CipherSpi directly and do not use the CipherCore
* framework. That was designed to simplify implementation of block ciphers
* and does not offer any advantages for stream ciphers such as ARCFOUR.
*
* @since   1.5
* @author  Andreas Sterbenz
*/
@:require(java5) extern class ARCFOURCipher extends javax.crypto.CipherSpi
{
	@:overload public function new() : Void;
	
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
	
	@:overload override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineDoFinal(_in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int) : Int;
	
	@:overload override private function engineWrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineUnwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, algorithm : String, type : Int) : java.security.Key;
	
	@:overload override private function engineGetKeySize(key : java.security.Key) : Int;
	
	
}
