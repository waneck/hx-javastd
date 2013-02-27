package sun.security.pkcs;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SignerInfo implements sun.security.util.DerEncoder
{
	@:overload public function new(issuerName : sun.security.x509.X500Name, serial : java.math.BigInteger, digestAlgorithmId : sun.security.x509.AlgorithmId, digestEncryptionAlgorithmId : sun.security.x509.AlgorithmId, encryptedDigest : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(issuerName : sun.security.x509.X500Name, serial : java.math.BigInteger, digestAlgorithmId : sun.security.x509.AlgorithmId, authenticatedAttributes : sun.security.pkcs.PKCS9Attributes, digestEncryptionAlgorithmId : sun.security.x509.AlgorithmId, encryptedDigest : java.NativeArray<java.StdTypes.Int8>, unauthenticatedAttributes : sun.security.pkcs.PKCS9Attributes) : Void;
	
	/**
	* Parses a PKCS#7 signer info.
	*/
	@:overload public function new(derin : sun.security.util.DerInputStream) : Void;
	
	/**
	* Parses a PKCS#7 signer info.
	*
	* <p>This constructor is used only for backwards compatibility with
	* PKCS#7 blocks that were generated using JDK1.1.x.
	*
	* @param derin the ASN.1 encoding of the signer info.
	* @param oldStyle flag indicating whether or not the given signer info
	* is encoded according to JDK1.1.x.
	*/
	@:overload public function new(derin : sun.security.util.DerInputStream, oldStyle : Bool) : Void;
	
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* DER encode this object onto an output stream.
	* Implements the <code>DerEncoder</code> interface.
	*
	* @param out
	* the output stream on which to write the DER encoding.
	*
	* @exception IOException on encoding error.
	*/
	@:overload public function derEncode(out : java.io.OutputStream) : Void;
	
	/*
	* Returns the (user) certificate pertaining to this SignerInfo.
	*/
	@:overload public function getCertificate(block : sun.security.pkcs.PKCS7) : java.security.cert.X509Certificate;
	
	/*
	* Returns the certificate chain pertaining to this SignerInfo.
	*/
	@:overload public function getCertificateChain(block : sun.security.pkcs.PKCS7) : java.util.ArrayList<java.security.cert.X509Certificate>;
	
	@:overload public function getVersion() : java.math.BigInteger;
	
	@:overload public function getIssuerName() : sun.security.x509.X500Name;
	
	@:overload public function getCertificateSerialNumber() : java.math.BigInteger;
	
	@:overload public function getDigestAlgorithmId() : sun.security.x509.AlgorithmId;
	
	@:overload public function getAuthenticatedAttributes() : sun.security.pkcs.PKCS9Attributes;
	
	@:overload public function getDigestEncryptionAlgorithmId() : sun.security.x509.AlgorithmId;
	
	@:overload public function getEncryptedDigest() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getUnauthenticatedAttributes() : sun.security.pkcs.PKCS9Attributes;
	
	@:overload public function toString() : String;
	
	
}
