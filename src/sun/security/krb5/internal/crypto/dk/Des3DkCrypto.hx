package sun.security.krb5.internal.crypto.dk;
/*
* Copyright (c) 2004, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Des3DkCrypto extends sun.security.krb5.internal.crypto.dk.DkCrypto
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function getKeySeedLength() : Int;
	
	@:overload @:public public function stringToKey(salt : java.NativeArray<java.StdTypes.Char16>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function parityFix(value : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/*
	* From RFC 3961.
	*
	* The 168 bits of random key data are converted to a protocol key value
	* as follows.  First, the 168 bits are divided into three groups of 56
	* bits, which are expanded individually into 64 bits as in des3Expand().
	* Result is a 24 byte (192-bit) key.
	*/
	@:overload @:protected override private function randomToKey(_in : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function getCipher(key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, mode : Int) : javax.crypto.Cipher;
	
	@:overload @:public override public function getChecksumLength() : Int;
	
	@:overload @:protected override private function getHmac(key : java.NativeArray<java.StdTypes.Int8>, msg : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
