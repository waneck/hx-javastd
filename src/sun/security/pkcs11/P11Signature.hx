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
* Signature implementation class. This class currently supports the
* following algorithms:
*
* . DSA
*   . NONEwithDSA (RawDSA)
*   . SHA1withDSA
* . RSA:
*   . MD2withRSA
*   . MD5withRSA
*   . SHA1withRSA
*   . SHA256withRSA
*   . SHA384withRSA
*   . SHA512withRSA
* . ECDSA
*   . NONEwithECDSA
*   . SHA1withECDSA
*   . SHA256withECDSA
*   . SHA384withECDSA
*   . SHA512withECDSA
*
* Note that the underlying PKCS#11 token may support complete signature
* algorithm (e.g. CKM_DSA_SHA1, CKM_MD5_RSA_PKCS), or it may just
* implement the signature algorithm without hashing (e.g. CKM_DSA, CKM_PKCS),
* or it may only implement the raw public key operation (CKM_RSA_X_509).
* This class uses what is available and adds whatever extra processing
* is needed.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class P11Signature extends java.security.SignatureSpi
{
	@:overload override private function engineInitVerify(publicKey : java.security.PublicKey) : Void;
	
	@:overload override private function engineInitSign(privateKey : java.security.PrivateKey) : Void;
	
	@:overload override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : Void;
	
	@:overload override private function engineUpdate(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload override private function engineSetParameter(param : String, value : Dynamic) : Void;
	
	@:overload override private function engineGetParameter(param : String) : Dynamic;
	
	
}
