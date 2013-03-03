package sun.security.timestamp;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class TSRequest
{
	/**
	* Constructs a timestamp request for the supplied hash value..
	*
	* @param hashValue     The hash value. This is the data to be timestamped.
	* @param hashAlgorithm The name of the hash algorithm.
	*/
	@:overload @:public public function new(hashValue : java.NativeArray<java.StdTypes.Int8>, hashAlgorithm : String) : Void;
	
	/**
	* Sets the Time-Stamp Protocol version.
	*
	* @param version The TSP version.
	*/
	@:overload @:public public function setVersion(version : Int) : Void;
	
	/**
	* Sets an object identifier for the Time-Stamp Protocol policy.
	*
	* @param version The policy object identifier.
	*/
	@:overload @:public public function setPolicyId(policyId : String) : Void;
	
	/**
	* Sets a nonce.
	* A nonce is a single-use random number.
	*
	* @param nonce The nonce value.
	*/
	@:overload @:public public function setNonce(nonce : java.math.BigInteger) : Void;
	
	/**
	* Request that the TSA include its signing certificate in the response.
	*
	* @param returnCertificate True if the TSA should return its signing
	*                          certificate. By default it is not returned.
	*/
	@:overload @:public public function requestCertificate(returnCertificate : Bool) : Void;
	
	/**
	* Sets the Time-Stamp Protocol extensions.
	*
	* @param extensions The protocol extensions.
	*/
	@:overload @:public public function setExtensions(extensions : java.NativeArray<java.security.cert.X509Extension>) : Void;
	
	@:overload @:public public function encode() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
