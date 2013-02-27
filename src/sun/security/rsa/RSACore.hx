package sun.security.rsa;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class RSACore
{
	/**
	* Return the number of bytes required to store the magnitude byte[] of
	* this BigInteger. Do not count a 0x00 byte toByteArray() would
	* prefix for 2's complement form.
	*/
	@:overload public static function getByteLength(b : java.math.BigInteger) : Int;
	
	/**
	* Return the number of bytes required to store the modulus of this
	* RSA key.
	*/
	@:overload public static function getByteLength(key : java.security.interfaces.RSAKey) : Int;
	
	@:overload public static function convert(b : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Perform an RSA public key operation.
	*/
	@:overload public static function rsa(msg : java.NativeArray<java.StdTypes.Int8>, key : java.security.interfaces.RSAPublicKey) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Perform an RSA private key operation. Uses CRT if the key is a
	* CRT key.
	*/
	@:overload public static function rsa(msg : java.NativeArray<java.StdTypes.Int8>, key : java.security.interfaces.RSAPrivateKey) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* Set of blinding parameters for a given RSA key.
*
* The RSA modulus is usually unique, so we index by modulus in
* blindingCache. However, to protect against the unlikely case of two
* keys sharing the same modulus, we also store the public exponent.
* This means we cannot cache blinding parameters for multiple keys that
* share the same modulus, but since sharing moduli is fundamentally broken
* an insecure, this does not matter.
*/
@:native('sun$security$rsa$RSACore$BlindingParameters') @:internal extern class RSACore_BlindingParameters
{
	
}
