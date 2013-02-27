package sun.security.krb5.internal.crypto;
/*
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
extern class Des
{
	@:overload @:final public static function set_parity(key : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final public static function set_parity(key : haxe.Int64) : haxe.Int64;
	
	@:overload @:final public static function bad_key(key : haxe.Int64) : Bool;
	
	@:overload @:final public static function bad_key(key : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload public static function octet2long(input : java.NativeArray<java.StdTypes.Int8>) : haxe.Int64;
	
	@:overload public static function octet2long(input : java.NativeArray<java.StdTypes.Int8>, offset : Int) : haxe.Int64;
	
	@:overload public static function long2octet(input : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function long2octet(input : haxe.Int64, output : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public static function long2octet(input : haxe.Int64, output : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Void;
	
	/**
	* Creates a DES cipher in Electronic Codebook mode, with no padding.
	* @param input plain text.
	* @param output the buffer for the result.
	* @param key DES the key to encrypt the text.
	* @param ivec initialization vector.
	*
	* @created by Yanni Zhang, Dec 6 99.
	*/
	@:overload public static function cbc_encrypt(input : java.NativeArray<java.StdTypes.Int8>, output : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, encrypt : Bool) : Void;
	
	/**
	* Generates DES key from the password.
	* @param password a char[] used to create the key.
	* @return DES key.
	*
	* @modified by Yanni Zhang, Dec 6, 99
	*/
	@:overload public static function char_to_key(passwdChars : java.NativeArray<java.StdTypes.Char16>) : haxe.Int64;
	
	/**
	* Encrypts the message blocks using DES CBC and output the
	* final block of 8-byte ciphertext.
	* @param ivec Initialization vector.
	* @param msg Input message as an byte array.
	* @param key DES key to encrypt the message.
	* @return the last block of ciphertext.
	*
	* @created by Yanni Zhang, Dec 6, 99.
	*/
	@:overload public static function des_cksum(ivec : java.NativeArray<java.StdTypes.Int8>, msg : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function string_to_key_bytes(passwdChars : java.NativeArray<java.StdTypes.Char16>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
