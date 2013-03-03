package sun.security.ssl;
/*
* Copyright (c) 1996, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Signature implementation for the SSL/TLS RSA Signature variant with both
* MD5 and SHA-1 MessageDigests. Used for explicit RSA server authentication
* (RSA signed server key exchange for RSA_EXPORT and DHE_RSA) and RSA client
* authentication (RSA signed certificate verify message).
*
* It conforms to the standard JCA Signature API. It is registered in the
* SunJSSE provider to avoid more complicated getInstance() code and
* negative interaction with the JCA mechanisms for hardware providers.
*
* The class should be instantiated via the getInstance() method in this class,
* which returns the implementation from the prefered provider. The internal
* implementation allows the hashes to be explicitly set, which is required
* for RSA client authentication. It can be obtained via the
* getInternalInstance() method.
*
* This class is not thread safe.
*
*/
extern class RSASignature extends java.security.SignatureSpi
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function engineInitVerify(publicKey : java.security.PublicKey) : Void;
	
	@:overload @:protected override private function engineInitSign(privateKey : java.security.PrivateKey) : Void;
	
	@:overload @:protected override private function engineInitSign(privateKey : java.security.PrivateKey, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:protected override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineVerify(sigBytes : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload @:protected override private function engineVerify(sigBytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Bool;
	
	@:overload @:protected override private function engineSetParameter(param : String, value : Dynamic) : Void;
	
	@:overload @:protected override private function engineGetParameter(param : String) : Dynamic;
	
	
}
