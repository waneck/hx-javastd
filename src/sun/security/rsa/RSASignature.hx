package sun.security.rsa;
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
extern class RSASignature extends java.security.SignatureSpi
{
	@:overload @:protected override private function engineInitVerify(publicKey : java.security.PublicKey) : Void;
	
	@:overload @:protected override private function engineInitSign(privateKey : java.security.PrivateKey) : Void;
	
	@:overload @:protected override private function engineInitSign(privateKey : java.security.PrivateKey, random : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.nio.ByteBuffer) : Void;
	
	@:overload @:protected override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineVerify(sigBytes : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Encode the digest, return the to-be-signed data.
	* Also used by the PKCS#11 provider.
	*/
	@:overload @:public @:static public static function encodeSignature(oid : sun.security.util.ObjectIdentifier, digest : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decode the signature data. Verify that the object identifier matches
	* and return the message digest.
	*/
	@:overload @:public @:static public static function decodeSignature(oid : sun.security.util.ObjectIdentifier, signature : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineSetParameter(param : String, value : Dynamic) : Void;
	
	@:overload @:protected override private function engineGetParameter(param : String) : Dynamic;
	
	
}
@:native('sun$security$rsa$RSASignature$MD2withRSA') extern class RSASignature_MD2withRSA extends sun.security.rsa.RSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$rsa$RSASignature$MD5withRSA') extern class RSASignature_MD5withRSA extends sun.security.rsa.RSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$rsa$RSASignature$SHA1withRSA') extern class RSASignature_SHA1withRSA extends sun.security.rsa.RSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$rsa$RSASignature$SHA256withRSA') extern class RSASignature_SHA256withRSA extends sun.security.rsa.RSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$rsa$RSASignature$SHA384withRSA') extern class RSASignature_SHA384withRSA extends sun.security.rsa.RSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$rsa$RSASignature$SHA512withRSA') extern class RSASignature_SHA512withRSA extends sun.security.rsa.RSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
