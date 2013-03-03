package com.sun.crypto.provider;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class PBKDF2HmacSHA1Factory extends javax.crypto.SecretKeyFactorySpi
{
	/**
	* Empty constructor
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Generates a <code>SecretKey</code> object from the provided key
	* specification (key material).
	*
	* @param keySpec the specification (key material) of the secret key
	*
	* @return the secret key
	*
	* @exception InvalidKeySpecException if the given key specification
	* is inappropriate for this key factory to produce a public key.
	*/
	@:overload @:protected override private function engineGenerateSecret(keySpec : java.security.spec.KeySpec) : javax.crypto.SecretKey;
	
	/**
	* Returns a specification (key material) of the given key
	* in the requested format.
	*
	* @param key the key
	*
	* @param keySpec the requested format in which the key material shall be
	* returned
	*
	* @return the underlying key specification (key material) in the
	* requested format
	*
	* @exception InvalidKeySpecException if the requested key
	* specification is inappropriate for the given key, or the
	* given key cannot be processed (e.g., the given key has an
	* unrecognized algorithm or format).
	*/
	@:overload @:protected override private function engineGetKeySpec(key : javax.crypto.SecretKey, keySpecCl : Class<Dynamic>) : java.security.spec.KeySpec;
	
	/**
	* Translates a <code>SecretKey</code> object, whose provider may be
	* unknown or potentially untrusted, into a corresponding
	* <code>SecretKey</code> object of this key factory.
	*
	* @param key the key whose provider is unknown or untrusted
	*
	* @return the translated key
	*
	* @exception InvalidKeyException if the given key cannot be processed by
	* this key factory.
	*/
	@:overload @:protected override private function engineTranslateKey(key : javax.crypto.SecretKey) : javax.crypto.SecretKey;
	
	
}
