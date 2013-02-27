package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
/**
* MessageDigest implementation class. This class currently supports
* MD2, MD5, SHA-1, SHA-256, SHA-384, and SHA-512.
*
* Note that many digest operations are on fairly small amounts of data
* (less than 100 bytes total). For example, the 2nd hashing in HMAC or
* the PRF in TLS. In order to speed those up, we use some buffering to
* minimize number of the Java->native transitions.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class P11Digest extends java.security.MessageDigestSpi implements java.lang.Cloneable
{
	@:overload override private function engineGetDigestLength() : Int;
	
	@:overload override private function engineReset() : Void;
	
	@:overload override private function engineDigest() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineDigest(digest : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : Int;
	
	@:overload override private function engineUpdate(_in : java.StdTypes.Int8) : Void;
	
	@:overload override private function engineUpdate(_in : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : Void;
	
	@:overload private function implUpdate(key : javax.crypto.SecretKey) : Void;
	
	@:overload override private function engineUpdate(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload override public function clone() : Dynamic;
	
	
}
