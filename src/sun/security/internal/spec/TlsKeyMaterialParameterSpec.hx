package sun.security.internal.spec;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TlsKeyMaterialParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Constructs a new TlsKeyMaterialParameterSpec.
	*
	* @param masterSecret the master secret
	* @param majorVersion the major number of the protocol version
	* @param minorVersion the minor number of the protocol version
	* @param clientRandom the client's random value
	* @param serverRandom the server's random value
	* @param cipherAlgorithm the algorithm name of the cipher keys to
	*    be generated
	* @param cipherKeyLength if 0, no cipher keys will be generated;
	*    otherwise, the length in bytes of cipher keys to be
	*    generated for domestic cipher suites; for cipher suites defined as
	*    exportable, the number of key material bytes to be generated;
	* @param expandedCipherKeyLength 0 for domestic cipher suites; for
	*    exportable cipher suites the length in bytes of the key to be
	*    generated.
	* @param ivLength the length in bytes of the initialization vector
	*    to be generated, or 0 if no initialization vector is required
	* @param macKeyLength the length in bytes of the MAC key to be generated
	* @param prfHashAlg the name of the TLS PRF hash algorithm to use.
	*        Used only for TLS 1.2+.  TLS1.1 and earlier use a fixed PRF.
	* @param prfHashLength the output length of the TLS PRF hash algorithm.
	*        Used only for TLS 1.2+.
	* @param prfBlockSize the input block size of the TLS PRF hash algorithm.
	*        Used only for TLS 1.2+.
	*
	* @throws NullPointerException if masterSecret, clientRandom,
	*   serverRandom, or cipherAlgorithm are null
	* @throws IllegalArgumentException if the algorithm of masterSecret is
	*   not TlsMasterSecret, or if majorVersion or minorVersion are
	*   negative or larger than 255; or if cipherKeyLength, expandedKeyLength,
	*   ivLength, or macKeyLength are negative
	*/
	@:overload @:public public function new(masterSecret : javax.crypto.SecretKey, majorVersion : Int, minorVersion : Int, clientRandom : java.NativeArray<java.StdTypes.Int8>, serverRandom : java.NativeArray<java.StdTypes.Int8>, cipherAlgorithm : String, cipherKeyLength : Int, expandedCipherKeyLength : Int, ivLength : Int, macKeyLength : Int, prfHashAlg : String, prfHashLength : Int, prfBlockSize : Int) : Void;
	
	/**
	* Returns the master secret.
	*
	* @return the master secret.
	*/
	@:overload @:public public function getMasterSecret() : javax.crypto.SecretKey;
	
	/**
	* Returns the major version number.
	*
	* @return the major version number.
	*/
	@:overload @:public public function getMajorVersion() : Int;
	
	/**
	* Returns the minor version number.
	*
	* @return the minor version number.
	*/
	@:overload @:public public function getMinorVersion() : Int;
	
	/**
	* Returns a copy of the client's random value.
	*
	* @return a copy of the client's random value.
	*/
	@:overload @:public public function getClientRandom() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a copy of the server's random value.
	*
	* @return a copy of the server's random value.
	*/
	@:overload @:public public function getServerRandom() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the cipher algorithm.
	*
	* @return the cipher algorithm.
	*/
	@:overload @:public public function getCipherAlgorithm() : String;
	
	/**
	* Returns the length in bytes of the encryption key to be generated.
	*
	* @return the length in bytes of the encryption key to be generated.
	*/
	@:overload @:public public function getCipherKeyLength() : Int;
	
	/**
	* Returns the length in bytes of the expanded encryption key to be
	* generated. Returns zero if the expanded encryption key is not
	* supposed to be generated.
	*
	* @return the length in bytes of the expanded encryption key to be
	*     generated.
	*/
	@:overload @:public public function getExpandedCipherKeyLength() : Int;
	
	/**
	* Returns the length in bytes of the initialization vector to be
	* generated. Returns zero if the initialization vector is not
	* supposed to be generated.
	*
	* @return the length in bytes of the initialization vector to be
	*     generated.
	*/
	@:overload @:public public function getIvLength() : Int;
	
	/**
	* Returns the length in bytes of the MAC key to be generated.
	*
	* @return the length in bytes of the MAC key to be generated.
	*/
	@:overload @:public public function getMacKeyLength() : Int;
	
	/**
	* Obtains the PRF hash algorithm to use in the PRF calculation.
	*
	* @return the hash algorithm.
	*/
	@:overload @:public public function getPRFHashAlg() : String;
	
	/**
	* Obtains the length of the PRF hash algorithm.
	*
	* @return the hash algorithm length.
	*/
	@:overload @:public public function getPRFHashLength() : Int;
	
	/**
	* Obtains the block size of the PRF hash algorithm.
	*
	* @return the hash algorithm block size
	*/
	@:overload @:public public function getPRFBlockSize() : Int;
	
	
}
