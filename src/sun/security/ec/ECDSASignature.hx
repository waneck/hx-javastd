package sun.security.ec;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ECDSASignature extends java.security.SignatureSpi
{
	@:overload @:protected override private function engineInitVerify(publicKey : java.security.PublicKey) : Void;
	
	@:overload @:protected override private function engineInitSign(privateKey : java.security.PrivateKey) : Void;
	
	@:overload @:protected override private function engineInitSign(privateKey : java.security.PrivateKey, random : java.security.SecureRandom) : Void;
	
	/**
	* Resets the message digest if needed.
	*/
	@:overload @:protected private function resetDigest() : Void;
	
	/**
	* Returns the message digest value.
	*/
	@:overload @:protected private function getDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:protected override private function engineUpdate(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:protected override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload @:protected override private function engineSetParameter(param : String, value : Dynamic) : Void;
	
	@:overload @:protected override private function engineGetParameter(param : String) : Dynamic;
	
	
}
@:native('sun$security$ec$ECDSASignature$Raw') extern class ECDSASignature_Raw extends sun.security.ec.ECDSASignature
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload @:protected override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:protected override private function engineUpdate(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:protected override private function resetDigest() : Void;
	
	@:overload @:protected override private function getDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('sun$security$ec$ECDSASignature$SHA1') extern class ECDSASignature_SHA1 extends sun.security.ec.ECDSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$ec$ECDSASignature$SHA256') extern class ECDSASignature_SHA256 extends sun.security.ec.ECDSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$ec$ECDSASignature$SHA384') extern class ECDSASignature_SHA384 extends sun.security.ec.ECDSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$security$ec$ECDSASignature$SHA512') extern class ECDSASignature_SHA512 extends sun.security.ec.ECDSASignature
{
	@:overload @:public public function new() : Void;
	
	
}
