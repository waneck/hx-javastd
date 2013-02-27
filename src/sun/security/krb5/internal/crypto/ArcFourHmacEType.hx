package sun.security.krb5.internal.crypto;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ArcFourHmacEType extends sun.security.krb5.internal.crypto.EType
{
	/*
	* This class encapsulates the encryption type for RC4-HMAC
	*
	* @author Seema Malkani
	*/
	@:overload override public function eType() : Int;
	
	@:overload override public function minimumPadSize() : Int;
	
	@:overload override public function confounderSize() : Int;
	
	@:overload override public function checksumType() : Int;
	
	@:overload override public function checksumSize() : Int;
	
	@:overload override public function blockSize() : Int;
	
	@:overload override public function keyType() : Int;
	
	@:overload override public function keySize() : Int;
	
	@:overload override public function encrypt(data : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function encrypt(data : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function decrypt(cipher : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function decrypt(cipher : java.NativeArray<java.StdTypes.Int8>, key : java.NativeArray<java.StdTypes.Int8>, ivec : java.NativeArray<java.StdTypes.Int8>, usage : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function decryptedData(data : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}