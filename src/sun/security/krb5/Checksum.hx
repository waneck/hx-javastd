package sun.security.krb5;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class Checksum
{
	@:public @:static @:final public static var CKSUMTYPE_NULL(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_CRC32(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_RSA_MD4(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_RSA_MD4_DES(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_DES_MAC(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_DES_MAC_K(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_RSA_MD4_DES_K(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_RSA_MD5(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_RSA_MD5_DES(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_HMAC_SHA1_DES3_KD(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_HMAC_SHA1_96_AES128(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_HMAC_SHA1_96_AES256(default, null) : Int;
	
	@:public @:static @:final public static var CKSUMTYPE_HMAC_MD5_ARCFOUR(default, null) : Int;
	
	/**
	* Constructs a new Checksum using the raw data and type.
	* @data the byte array of checksum.
	* @new_cksumType the type of checksum.
	*
	*/
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>, new_cksumType : Int) : Void;
	
	/**
	* Constructs a new Checksum by calculating the checksum over the data
	* using specified checksum type.
	* @new_cksumType the type of checksum.
	* @data the data that needs to be performed a checksum calculation on.
	*/
	@:overload @:public public function new(new_cksumType : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new Checksum by calculating the keyed checksum
	* over the data using specified checksum type.
	* @new_cksumType the type of checksum.
	* @data the data that needs to be performed a checksum calculation on.
	*/
	@:overload @:public public function new(new_cksumType : Int, data : java.NativeArray<java.StdTypes.Int8>, key : sun.security.krb5.EncryptionKey, usage : Int) : Void;
	
	/**
	* Verifies the keyed checksum over the data passed in.
	*/
	@:overload @:public public function verifyKeyedChecksum(data : java.NativeArray<java.StdTypes.Int8>, key : sun.security.krb5.EncryptionKey, usage : Int) : Bool;
	
	/**
	* Encodes a Checksum object.
	* <xmp>
	* Checksum    ::= SEQUENCE {
	*         cksumtype   [0] Int32,
	*         checksum    [1] OCTET STRING
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	* @return byte array of enocded Checksum.
	* @exception Asn1Exception if an error occurs while decoding an
	* ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading
	* encoded data.
	*
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse (unmarshal) a checksum object from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception if an error occurs while decoding an
	* ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading
	* encoded data.
	* @param data the Der input stream value, which contains one or more
	* marshaled value.
	* @param explicitTag tag number.
	* @param optional indicates if this data field is optional
	* @return an instance of Checksum.
	*
	*/
	@:overload @:public @:static public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.Checksum;
	
	/**
	* Returns the raw bytes of the checksum, not in ASN.1 encoded form.
	*/
	@:overload @:public @:final public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function getType() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
