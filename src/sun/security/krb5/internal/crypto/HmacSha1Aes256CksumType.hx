package sun.security.krb5.internal.crypto;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class HmacSha1Aes256CksumType extends sun.security.krb5.internal.crypto.CksumType
{
	/*
	* This class encapsulates the checksum type for AES256
	*
	* @author Seema Malkani
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function confounderSize() : Int;
	
	@:overload @:public override public function cksumType() : Int;
	
	@:overload @:public override public function isSafe() : Bool;
	
	@:overload @:public override public function cksumSize() : Int;
	
	@:overload @:public override public function keyType() : Int;
	
	@:overload @:public override public function keySize() : Int;
	
	@:overload @:public override public function calculateChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Calculates keyed checksum.
	* @param data the data used to generate the checksum.
	* @param size length of the data.
	* @param key the key used to encrypt the checksum.
	* @return keyed checksum.
	*/
	@:overload @:public override public function calculateKeyedChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Verifies keyed checksum.
	* @param data the data.
	* @param size the length of data.
	* @param key the key used to encrypt the checksum.
	* @param checksum
	* @return true if verification is successful.
	*/
	@:overload @:public override public function verifyKeyedChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int, key : java.NativeArray<java.StdTypes.Int8>, checksum : java.NativeArray<java.StdTypes.Int8>, usage : Int) : Bool;
	
	
}
