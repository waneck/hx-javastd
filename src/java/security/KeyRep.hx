package java.security;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyRep implements java.io.Serializable
{
	/**
	* Construct the alternate Key class.
	*
	* <p>
	*
	* @param type either one of Type.SECRET, Type.PUBLIC, or Type.PRIVATE
	* @param algorithm the algorithm returned from
	*          <code>Key.getAlgorithm()</code>
	* @param format the encoding format returned from
	*          <code>Key.getFormat()</code>
	* @param encoded the encoded bytes returned from
	*          <code>Key.getEncoded()</code>
	*
	* @exception NullPointerException
	*          if type is <code>null</code>,
	*          if algorithm is <code>null</code>,
	*          if format is <code>null</code>,
	*          or if encoded is <code>null</code>
	*/
	@:overload public function new(type : KeyRep_Type, algorithm : String, format : String, encoded : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Resolve the Key object.
	*
	* <p> This method supports three Type/format combinations:
	* <ul>
	* <li> Type.SECRET/"RAW" - returns a SecretKeySpec object
	* constructed using encoded key bytes and algorithm
	* <li> Type.PUBLIC/"X.509" - gets a KeyFactory instance for
	* the key algorithm, constructs an X509EncodedKeySpec with the
	* encoded key bytes, and generates a public key from the spec
	* <li> Type.PRIVATE/"PKCS#8" - gets a KeyFactory instance for
	* the key algorithm, constructs a PKCS8EncodedKeySpec with the
	* encoded key bytes, and generates a private key from the spec
	* </ul>
	*
	* <p>
	*
	* @return the resolved Key object
	*
	* @exception ObjectStreamException if the Type/format
	*  combination is unrecognized, if the algorithm, key format, or
	*  encoded key bytes are unrecognized/invalid, of if the
	*  resolution of the key fails for any reason
	*/
	@:overload private function readResolve() : Dynamic;
	
	
}
/**
* Key type.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyRep$Type') extern enum KeyRep_Type
{
	/** Type for secret keys. */
	SECRET;
	/** Type for public keys. */
	PUBLIC;
	/** Type for private keys. */
	PRIVATE;
	
}

