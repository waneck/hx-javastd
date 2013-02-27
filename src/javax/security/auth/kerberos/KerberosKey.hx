package javax.security.auth.kerberos;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KerberosKey implements javax.crypto.SecretKey implements javax.security.auth.Destroyable
{
	/**
	* Constructs a KerberosKey from the given bytes when the key type and
	* key version number are known. This can be used when reading the secret
	* key information from a Kerberos "keytab".
	*
	* @param principal the principal that this secret key belongs to
	* @param keyBytes the raw bytes for the secret key
	* @param keyType the key type for the secret key as defined by the
	* Kerberos protocol specification.
	* @param versionNum the version number of this secret key
	*/
	@:overload public function new(principal : javax.security.auth.kerberos.KerberosPrincipal, keyBytes : java.NativeArray<java.StdTypes.Int8>, keyType : Int, versionNum : Int) : Void;
	
	/**
	* Constructs a KerberosKey from a principal's password.
	*
	* @param principal the principal that this password belongs to
	* @param password the password that should be used to compute the key
	* @param algorithm the name for the algorithm that this key will be
	* used for. This parameter may be null in which case the default
	* algorithm "DES" will be assumed.
	* @throws IllegalArgumentException if the name of the
	* algorithm passed is unsupported.
	*/
	@:overload public function new(principal : javax.security.auth.kerberos.KerberosPrincipal, password : java.NativeArray<java.StdTypes.Char16>, algorithm : String) : Void;
	
	/**
	* Returns the principal that this key belongs to.
	*
	* @return the principal this key belongs to.
	*/
	@:overload @:final public function getPrincipal() : javax.security.auth.kerberos.KerberosPrincipal;
	
	/**
	* Returns the key version number.
	*
	* @return the key version number.
	*/
	@:overload @:final public function getVersionNumber() : Int;
	
	/**
	* Returns the key type for this long-term key.
	*
	* @return the key type.
	*/
	@:overload @:final public function getKeyType() : Int;
	
	/**
	* Returns the standard algorithm name for this key. For
	* example, "DES" would indicate that this key is a DES key.
	* See Appendix A in the <a href=
	* "../../../../../technotes/guides/security/crypto/CryptoSpec.html#AppA">
	* Java Cryptography Architecture API Specification &amp; Reference
	* </a>
	* for information about standard algorithm names.
	*
	* @return the name of the algorithm associated with this key.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Returns the name of the encoding format for this secret key.
	*
	* @return the String "RAW"
	*/
	@:overload @:final public function getFormat() : String;
	
	/**
	* Returns the key material of this secret key.
	*
	* @return the key material
	*/
	@:overload @:final public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Destroys this key. A call to any of its other methods after this
	* will cause an  IllegalStateException to be thrown.
	*
	* @throws DestroyFailedException if some error occurs while destorying
	* this key.
	*/
	@:overload public function destroy() : Void;
	
	/** Determines if this key has been destroyed.*/
	@:overload public function isDestroyed() : Bool;
	
	@:overload public function toString() : String;
	
	/**
	* Returns a hashcode for this KerberosKey.
	*
	* @return a hashCode() for the <code>KerberosKey</code>
	* @since 1.6
	*/
	@:require(java6) @:overload public function hashCode() : Int;
	
	/**
	* Compares the specified Object with this KerberosKey for equality.
	* Returns true if the given object is also a
	* <code>KerberosKey</code> and the two
	* <code>KerberosKey</code> instances are equivalent.
	*
	* @param other the Object to compare to
	* @return true if the specified object is equal to this KerberosKey,
	* false otherwise. NOTE: Returns false if either of the KerberosKey
	* objects has been destroyed.
	* @since 1.6
	*/
	@:require(java6) @:overload public function equals(other : Dynamic) : Bool;
	
	
}
