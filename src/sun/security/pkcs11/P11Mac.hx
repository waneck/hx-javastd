package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* MAC implementation class. This class currently supports HMAC using
* MD5, SHA-1, SHA-256, SHA-384, and SHA-512 and the SSL3 MAC using MD5
* and SHA-1.
*
* Note that unlike other classes (e.g. Signature), this does not
* composite various operations if the token only supports part of the
* required functionality. The MAC implementations in SunJCE already
* do exactly that by implementing an MAC on top of MessageDigests. We
* could not do any better than they.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class P11Mac extends javax.crypto.MacSpi
{
	@:overload @:protected override private function engineGetMacLength() : Int;
	
	@:overload @:protected override private function engineReset() : Void;
	
	@:overload @:protected override private function engineInit(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload @:protected override private function engineDoFinal() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : Void;
	
	@:overload @:protected override private function engineUpdate(byteBuffer : java.nio.ByteBuffer) : Void;
	
	
}
