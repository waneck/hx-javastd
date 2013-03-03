package sun.security.krb5;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class EncryptedData implements java.lang.Cloneable
{
	@:public @:static @:final public static var ETYPE_NULL(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_DES_CBC_CRC(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_DES_CBC_MD4(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_DES_CBC_MD5(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_ARCFOUR_HMAC(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_ARCFOUR_HMAC_EXP(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_DES3_CBC_HMAC_SHA1_KD(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_AES128_CTS_HMAC_SHA1_96(default, null) : Int;
	
	@:public @:static @:final public static var ETYPE_AES256_CTS_HMAC_SHA1_96(default, null) : Int;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function new(new_eType : Int, new_kvno : Null<Int>, new_cipher : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/*
	// Not used.
	public EncryptedData(
	EncryptionKey key,
	byte[] plaintext)
	throws KdcErrException, KrbCryptoException {
	EType etypeEngine = EType.getInstance(key.getEType());
	cipher = etypeEngine.encrypt(plaintext, key.getBytes());
	eType = key.getEType();
	kvno = key.getKeyVersionNumber();
	}
	*/
	@:overload @:public public function new(key : sun.security.krb5.EncryptionKey, plaintext : java.NativeArray<java.StdTypes.Int8>, usage : Int) : Void;
	
	/*
	// Not used.
	EncryptedData(
	StringBuffer password,
	byte[] plaintext)
	throws KdcErrException, KrbCryptoException {
	EncryptionKey key = new EncryptionKey(password);
	EType etypeEngine = EType.getInstance(key.getEType());
	cipher = etypeEngine.encrypt(plaintext, key.getBytes());
	eType = key.getEType();
	kvno = key.getKeyVersionNumber();
	}
	*/
	@:overload @:public public function decrypt(key : sun.security.krb5.EncryptionKey, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns an ASN.1 encoded EncryptedData type.
	*
	* <xmp>
	* EncryptedData   ::= SEQUENCE {
	*     etype   [0] Int32 -- EncryptionType --,
	*     kvno    [1] UInt32 OPTIONAL,
	*     cipher  [2] OCTET STRING -- ciphertext
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	* <p>
	* @return byte array of encoded EncryptedData object.
	* @exception Asn1Exception if an error occurs while decoding an
	* ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading
	* encoded data.
	*
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse (unmarshal) an EncryptedData from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @param data the Der input stream value, which contains one or more
	*        marshaled value.
	* @param explicitTag tag number.
	* @param optional indicate if this data field is optional
	* @exception Asn1Exception if an error occurs while decoding an
	* ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading
	* encoded data.
	* @return an instance of EncryptedData.
	*
	*/
	@:overload @:public @:static public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.EncryptedData;
	
	/**
	* Reset asn.1 data stream after decryption, remove redundant bytes.
	* @param data the decrypted data from decrypt().
	* @return the reset byte array which holds exactly one asn1 datum
	* including its tag and length.
	*
	*/
	@:overload @:public public function reset(data : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getEType() : Int;
	
	@:overload @:public public function getKeyVersionNumber() : Null<Int>;
	
	/**
	* Returns the raw cipher text bytes, not in ASN.1 encoding.
	*/
	@:overload @:public public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
