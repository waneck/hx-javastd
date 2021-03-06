package sun.security.krb5.internal.crypto;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class Aes128
{
	@:overload @:public @:static public static function stringToKey(password : java.NativeArray<java.StdTypes.Char16>, salt : String, params : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:static public static function getChecksumLength() : Int;
	
	@:overload @:public @:static public static function calculateChecksum(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, input : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:static public static function encrypt(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/* Encrypt plaintext; do not add confounder, or checksum */
	@:overload @:public @:static public static function encryptRaw(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, plaintext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:static public static function decrypt(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, ciphertext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/* Decrypt ciphertext; do not remove confounder, or check checksum */
	@:overload @:public @:static public static function decryptRaw(baseKey : java.NativeArray<java.StdTypes.Int8>, usage : Int, ivec : java.NativeArray<java.StdTypes.Int8>, ciphertext : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
