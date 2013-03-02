package sun.security.krb5;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class EncryptionKey implements java.lang.Cloneable
{
	/**
	* This class encapsulates the concept of an EncryptionKey. An encryption
	* key is defined in RFC 4120 as:
	*
	* EncryptionKey   ::= SEQUENCE {
	*         keytype         [0] Int32 -- actually encryption type --,
	*         keyvalue        [1] OCTET STRING
	* }
	*
	* keytype
	*     This field specifies the encryption type of the encryption key
	*     that follows in the keyvalue field.  Although its name is
	*     "keytype", it actually specifies an encryption type.  Previously,
	*     multiple cryptosystems that performed encryption differently but
	*     were capable of using keys with the same characteristics were
	*     permitted to share an assigned number to designate the type of
	*     key; this usage is now deprecated.
	*
	* keyvalue
	*     This field contains the key itself, encoded as an octet string.
	*/
	public static var NULL_KEY(default, null) : sun.security.krb5.EncryptionKey;
	
	@:overload @:synchronized public function getEType() : Int;
	
	@:overload @:final public function getKeyVersionNumber() : Null<Int>;
	
	/**
	* Returns the raw key bytes, not in any ASN.1 encoding.
	*/
	@:overload @:final public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:synchronized public function clone() : Dynamic;
	
	/**
	* Obtains all versions of the secret key of the principal from a
	* keytab.
	*
	* @Param princ the principal whose secret key is desired
	* @param keytab the path to the keytab file. A value of null
	* will be accepted to indicate that the default path should be
	* searched.
	* @returns an array of secret keys or null if none were found.
	*/
	@:overload public static function acquireSecretKeys(princ : sun.security.krb5.PrincipalName, keytab : String) : java.NativeArray<sun.security.krb5.EncryptionKey>;
	
	/**
	* Obtains a key for a given etype of a principal with possible new salt
	* and s2kparams
	* @param cname NOT null
	* @param password NOT null
	* @param etype
	* @param snp can be NULL
	* @returns never null
	*/
	@:overload public static function acquireSecretKey(cname : sun.security.krb5.PrincipalName, password : java.NativeArray<java.StdTypes.Char16>, etype : Int, snp : sun.security.krb5.internal.PAData.PAData_SaltAndParams) : sun.security.krb5.EncryptionKey;
	
	/**
	* Obtains a key for a given etype with salt and optional s2kparams
	* @param password NOT null
	* @param salt NOT null
	* @param etype
	* @param s2kparams can be NULL
	* @returns never null
	*/
	@:overload public static function acquireSecretKey(password : java.NativeArray<java.StdTypes.Char16>, salt : String, etype : Int, s2kparams : java.NativeArray<java.StdTypes.Int8>) : sun.security.krb5.EncryptionKey;
	
	/*
	* Usually, when keyType is decoded from ASN.1 it will contain a
	* value indicating what the algorithm to be used is. However, when
	* converting from a password to a key for the AS-EXCHANGE, this
	* keyType will not be available. Use builtin list of default etypes
	* as the default in that case. If default_tkt_enctypes was set in
	* the libdefaults of krb5.conf, then use that sequence.
	*/
	@:overload public static function acquireSecretKeys(password : java.NativeArray<java.StdTypes.Char16>, salt : String) : java.NativeArray<sun.security.krb5.EncryptionKey>;
	
	@:overload public function new(keyValue : java.NativeArray<java.StdTypes.Int8>, keyType : Int, kvno : Null<Int>) : Void;
	
	/**
	* Constructs an EncryptionKey by using the specified key type and key
	* value.  It is used to recover the key when retrieving data from
	* credential cache file.
	*
	*/
	@:overload public function new(keyType : Int, keyValue : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(password : java.NativeArray<java.StdTypes.Char16>, salt : String, algorithm : String) : Void;
	
	/**
	* Constructs an instance of EncryptionKey type.
	* @param encoding a single DER-encoded value.
	* @exception Asn1Exception if an error occurs while decoding an ASN1
	* encoded data.
	* @exception IOException if an I/O error occurs while reading encoded
	* data.
	*
	*
	*/
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Returns the ASN.1 encoding of this EncryptionKey.
	*
	* <xmp>
	* EncryptionKey ::=   SEQUENCE {
	*                             keytype[0]    INTEGER,
	*                             keyvalue[1]   OCTET STRING }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*
	* @return byte array of encoded EncryptionKey object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1
	* encoded data.
	* @exception IOException if an I/O error occurs while reading encoded
	* data.
	*
	*/
	@:overload @:synchronized public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:synchronized public function destroy() : Void;
	
	/**
	* Parse (unmarshal) an Encryption key from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @param data the Der input stream value, which contains one or more
	* marshaled value.
	* @param explicitTag tag number.
	* @param optional indicate if this data field is optional
	* @exception Asn1Exception if an error occurs while decoding an ASN1
	* encoded data.
	* @exception IOException if an I/O error occurs while reading encoded
	* data.
	* @return an instance of EncryptionKey.
	*
	*/
	@:overload public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.EncryptionKey;
	
	/**
	* Writes key value in FCC format to a <code>CCacheOutputStream</code>.
	*
	* @param cos a <code>CCacheOutputStream</code> to be written to.
	* @exception IOException if an I/O exception occurs.
	* @see sun.security.krb5.internal.ccache.CCacheOutputStream
	*
	*/
	@:overload @:synchronized public function writeKey(cos : sun.security.krb5.internal.ccache.CCacheOutputStream) : Void;
	
	@:overload public function toString() : String;
	
	/**
	* Find a key with given etype
	*/
	@:overload public static function findKey(etype : Int, keys : java.NativeArray<sun.security.krb5.EncryptionKey>) : sun.security.krb5.EncryptionKey;
	
	/**
	* Find a key with given etype and kvno
	* @param kvno if null, return any (first?) key
	*/
	@:overload public static function findKey(etype : Int, kvno : Null<Int>, keys : java.NativeArray<sun.security.krb5.EncryptionKey>) : sun.security.krb5.EncryptionKey;
	
	
}
