package sun.security.rsa;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RSAPrivateCrtKeyImpl extends sun.security.pkcs.PKCS8Key implements java.security.interfaces.RSAPrivateCrtKey
{
	/**
	* Generate a new key from its encoding. Returns a CRT key if possible
	* and a non-CRT key otherwise. Used by RSAKeyFactory.
	*/
	@:overload @:public @:static public static function newKey(encoded : java.NativeArray<java.StdTypes.Int8>) : java.security.interfaces.RSAPrivateKey;
	
	@:overload @:public override public function getAlgorithm() : String;
	
	@:overload @:public public function getModulus() : java.math.BigInteger;
	
	@:overload @:public public function getPublicExponent() : java.math.BigInteger;
	
	@:overload @:public public function getPrivateExponent() : java.math.BigInteger;
	
	@:overload @:public public function getPrimeP() : java.math.BigInteger;
	
	@:overload @:public public function getPrimeQ() : java.math.BigInteger;
	
	@:overload @:public public function getPrimeExponentP() : java.math.BigInteger;
	
	@:overload @:public public function getPrimeExponentQ() : java.math.BigInteger;
	
	@:overload @:public public function getCrtCoefficient() : java.math.BigInteger;
	
	/**
	* Parse the key. Called by PKCS8Key.
	*/
	@:overload @:protected override private function parseKeyBits() : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
