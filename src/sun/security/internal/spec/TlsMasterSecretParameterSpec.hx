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
extern class TlsMasterSecretParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Constructs a new TlsMasterSecretParameterSpec.
	*
	* <p>The <code>getAlgorithm()</code> method of <code>premasterSecret</code>
	* should return <code>"TlsRsaPremasterSecret"</code> if the key exchange
	* algorithm was RSA and <code>"TlsPremasterSecret"</code> otherwise.
	*
	* @param premasterSecret the premaster secret
	* @param majorVersion the major number of the protocol version
	* @param minorVersion the minor number of the protocol version
	* @param clientRandom the client's random value
	* @param serverRandom the server's random value
	* @param prfHashAlg the name of the TLS PRF hash algorithm to use.
	*        Used only for TLS 1.2+.  TLS1.1 and earlier use a fixed PRF.
	* @param prfHashLength the output length of the TLS PRF hash algorithm.
	*        Used only for TLS 1.2+.
	* @param prfBlockSize the input block size of the TLS PRF hash algorithm.
	*        Used only for TLS 1.2+.
	*
	* @throws NullPointerException if premasterSecret, clientRandom,
	*   or serverRandom are null
	* @throws IllegalArgumentException if minorVersion or majorVersion are
	*   negative or larger than 255
	*/
	@:overload @:public public function new(premasterSecret : javax.crypto.SecretKey, majorVersion : Int, minorVersion : Int, clientRandom : java.NativeArray<java.StdTypes.Int8>, serverRandom : java.NativeArray<java.StdTypes.Int8>, prfHashAlg : String, prfHashLength : Int, prfBlockSize : Int) : Void;
	
	/**
	* Returns the premaster secret.
	*
	* @return the premaster secret.
	*/
	@:overload @:public public function getPremasterSecret() : javax.crypto.SecretKey;
	
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
	* @return the hash algorithm block size.
	*/
	@:overload @:public public function getPRFBlockSize() : Int;
	
	
}
