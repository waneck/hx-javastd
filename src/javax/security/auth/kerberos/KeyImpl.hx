package javax.security.auth.kerberos;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class KeyImpl implements javax.crypto.SecretKey implements javax.security.auth.Destroyable implements java.io.Serializable
{
	/**
	* Constructs a KeyImpl from the given bytes.
	*
	* @param keyBytes the raw bytes for the secret key
	* @param keyType the key type for the secret key as defined by the
	* Kerberos protocol specification.
	*/
	@:overload @:public public function new(keyBytes : java.NativeArray<java.StdTypes.Int8>, keyType : Int) : Void;
	
	/**
	* Constructs a KeyImpl from a password.
	*
	* @param principal the principal from which to derive the salt
	* @param password the password that should be used to compute the
	* key.
	* @param algorithm the name for the algorithm that this key wil be
	* used for. This parameter may be null in which case "DES" will be
	* assumed.
	*/
	@:overload @:public public function new(principal : javax.security.auth.kerberos.KerberosPrincipal, password : java.NativeArray<java.StdTypes.Char16>, algorithm : String) : Void;
	
	/**
	* Returns the keyType for this key as defined in the Kerberos Spec.
	*/
	@:overload @:public @:final public function getKeyType() : Int;
	
	/*
	* Methods from java.security.Key
	*/
	@:overload @:public @:final public function getAlgorithm() : String;
	
	@:overload @:public @:final public function getFormat() : String;
	
	@:overload @:public @:final public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function destroy() : Void;
	
	@:overload @:public public function isDestroyed() : Bool;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	
}
