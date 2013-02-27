package sun.security.pkcs;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class EncryptedPrivateKeyInfo
{
	/**
	* Constructs (i.e., parses) an <code>EncryptedPrivateKeyInfo</code> from
	* its encoding.
	*/
	@:overload public function new(encoded : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs an <code>EncryptedPrivateKeyInfo</code> from the
	* encryption algorithm and the encrypted data.
	*/
	@:overload public function new(algid : sun.security.x509.AlgorithmId, encryptedData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the encryption algorithm.
	*/
	@:overload public function getAlgorithm() : sun.security.x509.AlgorithmId;
	
	/**
	* Returns the encrypted data.
	*/
	@:overload public function getEncryptedData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the ASN.1 encoding of this class.
	*/
	@:overload public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this EncryptedPrivateKeyInfo.
	*
	* @return a hashcode for this EncryptedPrivateKeyInfo.
	*/
	@:overload public function hashCode() : Int;
	
	
}
