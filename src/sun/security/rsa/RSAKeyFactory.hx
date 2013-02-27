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
extern class RSAKeyFactory extends java.security.KeyFactorySpi
{
	public static var MIN_MODLEN(default, null) : Int;
	
	public static var MAX_MODLEN(default, null) : Int;
	
	/*
	* If the modulus length is above this value, restrict the size of
	* the exponent to something that can be reasonably computed.  We
	* could simply hardcode the exp len to something like 64 bits, but
	* this approach allows flexibility in case impls would like to use
	* larger module and exponent values.
	*/
	public static var MAX_MODLEN_RESTRICT_EXP(default, null) : Int;
	
	public static var MAX_RESTRICTED_EXPLEN(default, null) : Int;
	
	@:overload public function new() : Void;
	
	/**
	* Static method to convert Key into an instance of RSAPublicKeyImpl
	* or RSAPrivate(Crt)KeyImpl. If the key is not an RSA key or cannot be
	* used, throw an InvalidKeyException.
	*
	* Used by RSASignature and RSACipher.
	*/
	@:overload public static function toRSAKey(key : java.security.Key) : java.security.interfaces.RSAKey;
	
	/**
	* Check the length of an RSA key modulus/exponent to make sure it
	* is not too short or long.  Some impls have their own min and
	* max key sizes that may or may not match with a system defined value.
	*
	* @param modulusLen the bit length of the RSA modulus.
	* @param exponent the RSA exponent
	* @param minModulusLen if > 0, check to see if modulusLen is at
	*        least this long, otherwise unused.
	* @param maxModulusLen caller will allow this max number of bits.
	*        Allow the smaller of the system-defined maximum and this param.
	*
	* @throws InvalidKeyException if any of the values are unacceptable.
	*/
	@:overload public static function checkKeyLengths(modulusLen : Int, exponent : java.math.BigInteger, minModulusLen : Int, maxModulusLen : Int) : Void;
	
	/**
	* Translate an RSA key into a SunRsaSign RSA key. If conversion is
	* not possible, throw an InvalidKeyException.
	* See also JCA doc.
	*/
	@:overload override private function engineTranslateKey(key : java.security.Key) : java.security.Key;
	
	@:overload override private function engineGeneratePublic(keySpec : java.security.spec.KeySpec) : java.security.PublicKey;
	
	@:overload override private function engineGeneratePrivate(keySpec : java.security.spec.KeySpec) : java.security.PrivateKey;
	
	@:overload override private function engineGetKeySpec<T : java.security.spec.KeySpec>(key : java.security.Key, keySpec : Class<T>) : T;
	
	
}
