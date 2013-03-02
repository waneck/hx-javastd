package javax.crypto;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* This class provides a delegate for the identity cipher - one that does not
* tranform the plaintext.
*
* @author  Li Gong
* @see Nullcipher
*
* @since 1.4
*/
@:require(java4) @:internal extern class NullCipherSpi extends javax.crypto.CipherSpi
{
	/*
	* Do not let anybody instantiate this directly (protected).
	*/
	@:overload private function new() : Void;
	
	@:overload public function engineSetMode(mode : String) : Void;
	
	@:overload public function engineSetPadding(padding : String) : Void;
	
	@:overload private function engineGetBlockSize() : Int;
	
	@:overload private function engineGetOutputSize(inputLen : Int) : Int;
	
	@:overload private function engineGetIV() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function engineGetParameters() : java.security.AlgorithmParameters;
	
	@:overload private function engineInit(mode : Int, key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	@:overload private function engineInit(mode : Int, key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	@:overload private function engineInit(mode : Int, key : java.security.Key, params : java.security.AlgorithmParameters, random : java.security.SecureRandom) : Void;
	
	@:overload private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	@:overload private function engineDoFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function engineDoFinal(input : java.NativeArray<java.StdTypes.Int8>, inputOffset : Int, inputLen : Int, output : java.NativeArray<java.StdTypes.Int8>, outputOffset : Int) : Int;
	
	@:overload private function engineGetKeySize(key : java.security.Key) : Int;
	
	
}
