package sun.security.ec;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
* KeyFactory for EC keys. Keys must be instances of PublicKey or PrivateKey
* and getAlgorithm() must return "EC". For such keys, it supports conversion
* between the following:
*
* For public keys:
*  . PublicKey with an X.509 encoding
*  . ECPublicKey
*  . ECPublicKeySpec
*  . X509EncodedKeySpec
*
* For private keys:
*  . PrivateKey with a PKCS#8 encoding
*  . ECPrivateKey
*  . ECPrivateKeySpec
*  . PKCS8EncodedKeySpec
*
* @since   1.6
* @author  Andreas Sterbenz
*/
@:require(java6) extern class ECKeyFactory extends java.security.KeyFactorySpi
{
	@:public @:final @:static public static var INSTANCE(default, null) : java.security.KeyFactory;
	
	@:public @:final @:static public static var ecInternalProvider(default, null) : java.security.Provider;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Static method to convert Key into a useable instance of
	* ECPublicKey or ECPrivateKey. Check the key and convert it
	* to a Sun key if necessary. If the key is not an EC key
	* or cannot be used, throw an InvalidKeyException.
	*
	* The difference between this method and engineTranslateKey() is that
	* we do not convert keys of other providers that are already an
	* instance of ECPublicKey or ECPrivateKey.
	*
	* To be used by future Java ECDSA and ECDH implementations.
	*/
	@:overload @:public @:static public static function toECKey(key : java.security.Key) : java.security.interfaces.ECKey;
	
	/**
	* Translate an EC key into a Sun EC key. If conversion is
	* not possible, throw an InvalidKeyException.
	* See also JCA doc.
	*/
	@:overload @:protected override private function engineTranslateKey(key : java.security.Key) : java.security.Key;
	
	@:overload @:protected override private function engineGeneratePublic(keySpec : java.security.spec.KeySpec) : java.security.PublicKey;
	
	@:overload @:protected override private function engineGeneratePrivate(keySpec : java.security.spec.KeySpec) : java.security.PrivateKey;
	
	@:overload @:protected override private function engineGetKeySpec<T : java.security.spec.KeySpec>(key : java.security.Key, keySpec : Class<T>) : T;
	
	
}
