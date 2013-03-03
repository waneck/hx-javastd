package sun.security.krb5.internal.crypto;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DesCbcEType extends sun.security.krb5.internal.crypto.EType
{
	@:overload @:protected @:abstract private function calculateChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function blockSize() : Int;
	
	@:overload @:public override public function keyType() : Int;
	
	@:overload @:public override public function keySize() : Int;
	
	/**
	* Encrypts the data using DES in CBC mode.
	* @param data the buffer for plain text.
	* @param key the key to encrypt the data.
	* @return the buffer for encrypted data.
	*
	* @written by Yanni Zhang, Dec 6 99.
	*/
	@:overload @:public override public function encrypt(data : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encrypts the data using DES in CBC mode.
	* @param data the buffer for plain text.
	* @param key the key to encrypt the data.
	* @param ivec initialization vector.
	* @return buffer for encrypted data.
	*
	* @modified by Yanni Zhang, Feb 24 00.
	*/
	@:overload @:public override public function encrypt(data : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decrypts the data using DES in CBC mode.
	* @param cipher the input buffer.
	* @param key the key to decrypt the data.
	*
	* @written by Yanni Zhang, Dec 6 99.
	*/
	@:overload @:public override public function decrypt(cipher : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decrypts the data using DES in CBC mode.
	* @param cipher the input buffer.
	* @param key the key to decrypt the data.
	* @param ivec initialization vector.
	*
	* @modified by Yanni Zhang, Dec 6 99.
	*/
	@:overload @:public override public function decrypt(cipher : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected private function isChecksumValid(data : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	
}
