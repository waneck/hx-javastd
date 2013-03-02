package sun.security.krb5.internal.crypto.dk;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ArcFourCrypto extends sun.security.krb5.internal.crypto.dk.DkCrypto
{
	@:overload public function new(length : Int) : Void;
	
	@:overload private function getKeySeedLength() : Int;
	
	@:overload private function randomToKey(_in : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function stringToKey(passwd : java.NativeArray<java.StdTypes.Char16>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function getCipher(key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, mode : Int) : javax.crypto.Cipher;
	
	@:overload public function getChecksumLength() : Int;
	
	/**
	* Get the HMAC-MD5
	*/
	@:overload private function getHmac(key : java.NativeArray<java.StdTypes.Int8>, msg : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Calculate the checksum
	*/
	@:overload public function calculateChecksum(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, input : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Performs encryption of Sequence Number using derived key.
	*/
	@:overload public function encryptSeq(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, checksum : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Performs decryption of Sequence Number using derived key.
	*/
	@:overload public function decryptSeq(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, checksum : java.NativeArray<java.StdTypes.Int8>, ciphertext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Performs encryption using derived key; adds confounder.
	*/
	@:overload public function encrypt(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, new_ivec : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Performs encryption using derived key; does not add confounder.
	*/
	@:overload public function encryptRaw(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, seqNum : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @param baseKey key from which keys are to be derived using usage
	* @param ciphertext  E(Ke, conf | plaintext | padding, ivec) | H1[1..h]
	*/
	@:overload public function decrypt(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, ciphertext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decrypts data using specified key and initial vector.
	* @param baseKey encryption key to use
	* @param ciphertext  encrypted data to be decrypted
	* @param usage ignored
	*/
	@:overload public function decryptRaw(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, ciphertext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int, seqNum : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
