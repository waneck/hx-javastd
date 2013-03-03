package sun.security.util;
/*
* Copyright (c) 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyUtil
{
	/**
	* Returns the key size of the given key object in bits.
	*
	* @param key the key object, cannot be null
	* @return the key size of the given key object in bits, or -1 if the
	*       key size is not accessible
	*/
	@:overload @:public @:static @:final public static function getKeySize(key : java.security.Key) : Int;
	
	/**
	* Returns whether the key is valid or not.
	* <P>
	* Note that this method is only apply to DHPublicKey at present.
	*
	* @param  publicKey
	*         the key object, cannot be null
	*
	* @throws NullPointerException if {@code publicKey} is null
	* @throws InvalidKeyException if {@code publicKey} is invalid
	*/
	@:overload @:public @:static @:final public static function validate(key : java.security.Key) : Void;
	
	/**
	* Returns whether the key spec is valid or not.
	* <P>
	* Note that this method is only apply to DHPublicKeySpec at present.
	*
	* @param  keySpec
	*         the key spec object, cannot be null
	*
	* @throws NullPointerException if {@code keySpec} is null
	* @throws InvalidKeyException if {@code keySpec} is invalid
	*/
	@:overload @:public @:static @:final public static function validate(keySpec : java.security.spec.KeySpec) : Void;
	
	/**
	* Returns whether the specified provider is Oracle provider or not.
	* <P>
	* Note that this method is only apply to SunJCE and SunPKCS11 at present.
	*
	* @param  providerName
	*         the provider name
	* @return true if, and only if, the provider of the specified
	*         {@code providerName} is Oracle provider
	*/
	@:overload @:public @:static @:final public static function isOracleJCEProvider(providerName : String) : Bool;
	
	
}
