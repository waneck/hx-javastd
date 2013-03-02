package sun.security.rsa;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class RSAPadding
{
	/**
	* RSA padding and unpadding.
	*
	* Format of PKCS#1 v1.5 padding is:
	*   0x00 | BT | PS...PS | 0x00 | data...data
	* where BT is the blocktype (1 or 2). The length of the entire string
	* must be the same as the size of the modulus (i.e. 128 byte for a 1024 bit
	* key). Per spec, the padding string must be at least 8 bytes long. That
	* leaves up to (length of key in bytes) - 11 bytes for the data.
	*
	* OAEP padding is a bit more complicated and has a number of options.
	* We support:
	*   . arbitrary hash functions ('Hash' in the specification), MessageDigest
	*     implementation must be available
	*   . MGF1 as the mask generation function
	*   . the empty string as the default value for label L and whatever
	*     specified in javax.crypto.spec.OAEPParameterSpec
	*
	* Note: RSA keys should be at least 512 bits long
	*
	* @since   1.5
	* @author  Andreas Sterbenz
	*/
	@:require(java5) public static var PAD_BLOCKTYPE_1(default, null) : Int;
	
	public static var PAD_BLOCKTYPE_2(default, null) : Int;
	
	public static var PAD_NONE(default, null) : Int;
	
	public static var PAD_OAEP_MGF1(default, null) : Int;
	
	/**
	* Get a RSAPadding instance of the specified type.
	* Keys used with this padding must be paddedSize bytes long.
	*/
	@:overload public static function getInstance(type : Int, paddedSize : Int) : sun.security.rsa.RSAPadding;
	
	/**
	* Get a RSAPadding instance of the specified type.
	* Keys used with this padding must be paddedSize bytes long.
	*/
	@:overload public static function getInstance(type : Int, paddedSize : Int, random : java.security.SecureRandom) : sun.security.rsa.RSAPadding;
	
	/**
	* Get a RSAPadding instance of the specified type, which must be
	* OAEP. Keys used with this padding must be paddedSize bytes long.
	*/
	@:overload public static function getInstance(type : Int, paddedSize : Int, random : java.security.SecureRandom, spec : javax.crypto.spec.OAEPParameterSpec) : sun.security.rsa.RSAPadding;
	
	/**
	* Return the maximum size of the plaintext data that can be processed using
	* this object.
	*/
	@:overload public function getMaxDataSize() : Int;
	
	/**
	* Pad the data and return the padded block.
	*/
	@:overload public function pad(data : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Pad the data and return the padded block.
	*/
	@:overload public function pad(data : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Unpad the padded block and return the data.
	*/
	@:overload public function unpad(padded : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Unpad the padded block and return the data.
	*/
	@:overload public function unpad(padded : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
