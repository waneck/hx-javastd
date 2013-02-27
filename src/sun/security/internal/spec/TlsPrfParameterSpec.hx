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
extern class TlsPrfParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Constructs a new TlsPrfParameterSpec.
	*
	* @param secret the secret to use in the calculation (or null)
	* @param label the label to use in the calculation
	* @param seed the random seed to use in the calculation
	* @param outputLength the length in bytes of the output key to be produced
	* @param prfHashAlg the name of the TLS PRF hash algorithm to use.
	*        Used only for TLS 1.2+.  TLS1.1 and earlier use a fixed PRF.
	* @param prfHashLength the output length of the TLS PRF hash algorithm.
	*        Used only for TLS 1.2+.
	* @param prfBlockSize the input block size of the TLS PRF hash algorithm.
	*        Used only for TLS 1.2+.
	*
	* @throws NullPointerException if label or seed is null
	* @throws IllegalArgumentException if outputLength is negative
	*/
	@:overload public function new(secret : javax.crypto.SecretKey, label : String, seed : java.NativeArray<java.StdTypes.Int8>, outputLength : Int, prfHashAlg : String, prfHashLength : Int, prfBlockSize : Int) : Void;
	
	/**
	* Returns the secret to use in the PRF calculation, or null if there is no
	* secret.
	*
	* @return the secret to use in the PRF calculation, or null if there is no
	* secret.
	*/
	@:overload public function getSecret() : javax.crypto.SecretKey;
	
	/**
	* Returns the label to use in the PRF calcuation.
	*
	* @return the label to use in the PRF calcuation.
	*/
	@:overload public function getLabel() : String;
	
	/**
	* Returns a copy of the seed to use in the PRF calcuation.
	*
	* @return a copy of the seed to use in the PRF calcuation.
	*/
	@:overload public function getSeed() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the length in bytes of the output key to be produced.
	*
	* @return the length in bytes of the output key to be produced.
	*/
	@:overload public function getOutputLength() : Int;
	
	/**
	* Obtains the PRF hash algorithm to use in the PRF calculation.
	*
	* @return the hash algorithm, or null if no algorithm was specified.
	*/
	@:overload public function getPRFHashAlg() : String;
	
	/**
	* Obtains the length of PRF hash algorithm.
	*
	* It would have been preferred to use MessageDigest.getDigestLength(),
	* but the API does not require implementations to support the method.
	*
	* @return the hash algorithm length.
	*/
	@:overload public function getPRFHashLength() : Int;
	
	/**
	* Obtains the length of PRF hash algorithm.
	*
	* @return the hash algorithm length.
	*/
	@:overload public function getPRFBlockSize() : Int;
	
	
}
