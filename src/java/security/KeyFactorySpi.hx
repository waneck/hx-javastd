package java.security;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyFactorySpi
{
	/**
	* Generates a public key object from the provided key
	* specification (key material).
	*
	* @param keySpec the specification (key material) of the public key.
	*
	* @return the public key.
	*
	* @exception InvalidKeySpecException if the given key specification
	* is inappropriate for this key factory to produce a public key.
	*/
	@:overload @:abstract private function engineGeneratePublic(keySpec : java.security.spec.KeySpec) : java.security.PublicKey;
	
	/**
	* Generates a private key object from the provided key
	* specification (key material).
	*
	* @param keySpec the specification (key material) of the private key.
	*
	* @return the private key.
	*
	* @exception InvalidKeySpecException if the given key specification
	* is inappropriate for this key factory to produce a private key.
	*/
	@:overload @:abstract private function engineGeneratePrivate(keySpec : java.security.spec.KeySpec) : java.security.PrivateKey;
	
	/**
	* Returns a specification (key material) of the given key
	* object.
	* <code>keySpec</code> identifies the specification class in which
	* the key material should be returned. It could, for example, be
	* <code>DSAPublicKeySpec.class</code>, to indicate that the
	* key material should be returned in an instance of the
	* <code>DSAPublicKeySpec</code> class.
	*
	* @param key the key.
	*
	* @param keySpec the specification class in which
	* the key material should be returned.
	*
	* @return the underlying key specification (key material) in an instance
	* of the requested specification class.

	* @exception InvalidKeySpecException if the requested key specification is
	* inappropriate for the given key, or the given key cannot be dealt with
	* (e.g., the given key has an unrecognized format).
	*/
	@:overload @:abstract private function engineGetKeySpec<T : java.security.spec.KeySpec>(key : java.security.Key, keySpec : Class<T>) : T;
	
	/**
	* Translates a key object, whose provider may be unknown or
	* potentially untrusted, into a corresponding key object of this key
	* factory.
	*
	* @param key the key whose provider is unknown or untrusted.
	*
	* @return the translated key.
	*
	* @exception InvalidKeyException if the given key cannot be processed
	* by this key factory.
	*/
	@:overload @:abstract private function engineTranslateKey(key : java.security.Key) : java.security.Key;
	
	
}
