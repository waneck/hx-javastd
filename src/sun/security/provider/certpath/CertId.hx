package sun.security.provider.certpath;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class corresponds to the CertId field in OCSP Request
* and the OCSP Response. The ASN.1 definition for CertID is defined
* in RFC 2560 as:
* <pre>
*
* CertID          ::=     SEQUENCE {
*      hashAlgorithm       AlgorithmIdentifier,
*      issuerNameHash      OCTET STRING, -- Hash of Issuer's DN
*      issuerKeyHash       OCTET STRING, -- Hash of Issuers public key
*      serialNumber        CertificateSerialNumber
*      }
*
* </pre>
*
* @author      Ram Marti
*/
extern class CertId
{
	/**
	* Creates a CertId. The hash algorithm used is SHA-1.
	*/
	@:overload @:public public function new(issuerCert : java.security.cert.X509Certificate, serialNumber : sun.security.x509.SerialNumber) : Void;
	
	/**
	* Creates a CertId from its ASN.1 DER encoding.
	*/
	@:overload @:public public function new(derIn : sun.security.util.DerInputStream) : Void;
	
	/**
	* Return the hash algorithm identifier.
	*/
	@:overload @:public public function getHashAlgorithm() : sun.security.x509.AlgorithmId;
	
	/**
	* Return the hash value for the issuer name.
	*/
	@:overload @:public public function getIssuerNameHash() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return the hash value for the issuer key.
	*/
	@:overload @:public public function getIssuerKeyHash() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return the serial number.
	*/
	@:overload @:public public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* Encode the CertId using ASN.1 DER.
	* The hash algorithm used is SHA-1.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Returns a hashcode value for this CertId.
	*
	* @return the hashcode value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this CertId for equality with the specified
	* object. Two CertId objects are considered equal if their hash algorithms,
	* their issuer name and issuer key hash values and their serial numbers
	* are equal.
	*
	* @param other the object to test for equality with this object.
	* @return true if the objects are considered equal, false otherwise.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Create a string representation of the CertId.
	*/
	@:overload @:public public function toString() : String;
	
	
}
