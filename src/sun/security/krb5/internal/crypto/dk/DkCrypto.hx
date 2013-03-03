package sun.security.krb5.internal.crypto.dk;
/*
* Copyright (c) 2004, 2007, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright (C) 1998 by the FundsXpress, INC.
*
* All rights reserved.
*
* Export of this software from the United States of America may require
* a specific license from the United States Government.  It is the
* responsibility of any person or organization contemplating export to
* obtain such a license before exporting.
*
* WITHIN THAT CONSTRAINT, permission to use, copy, modify, and
* distribute this software and its documentation for any purpose and
* without fee is hereby granted, provided that the above copyright
* notice appear in all copies and that both that copyright notice and
* this permission notice appear in supporting documentation, and that
* the name of FundsXpress. not be used in advertising or publicity pertaining
* to distribution of the software without specific, written prior
* permission.  FundsXpress makes no representations about the suitability of
* this software for any purpose.  It is provided "as is" without express
* or implied warranty.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
* IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
* WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
*/
extern class DkCrypto
{
	/**
	* Implements Derive Key cryptography functionality as defined in RFC 3961.
	* http://www.ietf.org/rfc/rfc3961.txt
	*
	* This is an abstract class. Concrete subclasses need to implement
	* the abstract methods.
	*/
	@:protected @:static @:final private static var debug(default, null) : Bool;
	
	@:overload @:protected @:abstract private function getKeySeedLength() : Int;
	
	@:overload @:protected @:abstract private function randomToKey(_in : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected @:abstract private function getCipher(key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, mode : Int) : javax.crypto.Cipher;
	
	@:overload @:public @:abstract public function getChecksumLength() : Int;
	
	@:overload @:protected @:abstract private function getHmac(key : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* From RFC 3961.
	*
	* encryption function       conf = random string of length c
	*                     pad = shortest string to bring confounder
	*                           and plaintext to a length that's a
	*                           multiple of m
	*                     (C1, newIV) = E(Ke, conf | plaintext | pad,
	*                                     oldstate.ivec)
	*                    H1 = HMAC(Ki, conf | plaintext | pad)
	*                     ciphertext =  C1 | H1[1..h]
	*                     newstate.ivec = newIV
	*
	* @param ivec initial vector to use when initializing the cipher; if null,
	*     then blocksize number of zeros are used,
	* @param new_ivec if non-null, it is updated upon return to be the
	*       new ivec to use when calling encrypt next time
	*/
	@:overload @:public public function encrypt(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, new_ivec : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Performs encryption using given key only; does not add
	* confounder, padding, or checksum. Incoming data to be encrypted
	* assumed to have the correct blocksize.
	* Ignore key usage.
	*/
	@:overload @:public public function encryptRaw(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decrypts data using specified key and initial vector.
	* @param baseKey encryption key to use
	* @param ciphertext  encrypted data to be decrypted
	* @param usage ignored
	*/
	@:overload @:public public function decryptRaw(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, ciphertext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @param baseKey key from which keys are to be derived using usage
	* @param ciphertext  E(Ke, conf | plaintext | padding, ivec) | H1[1..h]
	*/
	@:overload @:public public function decrypt(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, ciphertext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function calculateChecksum(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, input : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
