package sun.security.pkcs;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PKCS7
{
	/**
	* Unmarshals a PKCS7 block from its encoded form, parsing the
	* encoded bytes from the InputStream.
	*
	* @param in an input stream holding at least one PKCS7 block.
	* @exception ParsingException on parsing errors.
	* @exception IOException on other errors.
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Unmarshals a PKCS7 block from its encoded form, parsing the
	* encoded bytes from the DerInputStream.
	*
	* @param derin a DerInputStream holding at least one PKCS7 block.
	* @exception ParsingException on parsing errors.
	*/
	@:overload @:public public function new(derin : sun.security.util.DerInputStream) : Void;
	
	/**
	* Unmarshals a PKCS7 block from its encoded form, parsing the
	* encoded bytes.
	*
	* @param bytes the encoded bytes.
	* @exception ParsingException on parsing errors.
	*/
	@:overload @:public public function new(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Construct an initialized PKCS7 block.
	*
	* @param digestAlgorithmIds the message digest algorithm identifiers.
	* @param contentInfo the content information.
	* @param certificates an array of X.509 certificates.
	* @param crls an array of CRLs
	* @param signerInfos an array of signer information.
	*/
	@:overload @:public public function new(digestAlgorithmIds : java.NativeArray<sun.security.x509.AlgorithmId>, contentInfo : sun.security.pkcs.ContentInfo, certificates : java.NativeArray<java.security.cert.X509Certificate>, crls : java.NativeArray<java.security.cert.X509CRL>, signerInfos : java.NativeArray<sun.security.pkcs.SignerInfo>) : Void;
	
	@:overload @:public public function new(digestAlgorithmIds : java.NativeArray<sun.security.x509.AlgorithmId>, contentInfo : sun.security.pkcs.ContentInfo, certificates : java.NativeArray<java.security.cert.X509Certificate>, signerInfos : java.NativeArray<sun.security.pkcs.SignerInfo>) : Void;
	
	/**
	* Encodes the signed data to an output stream.
	*
	* @param out the output stream to write the encoded data to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encodeSignedData(out : java.io.OutputStream) : Void;
	
	/**
	* Encodes the signed data to a DerOutputStream.
	*
	* @param out the DerOutputStream to write the encoded data to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encodeSignedData(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* This verifies a given SignerInfo.
	*
	* @param info the signer information.
	* @param bytes the DER encoded content information.
	*
	* @exception NoSuchAlgorithmException on unrecognized algorithms.
	* @exception SignatureException on signature handling errors.
	*/
	@:overload @:public public function verify(info : sun.security.pkcs.SignerInfo, bytes : java.NativeArray<java.StdTypes.Int8>) : sun.security.pkcs.SignerInfo;
	
	/**
	* Returns all signerInfos which self-verify.
	*
	* @param bytes the DER encoded content information.
	*
	* @exception NoSuchAlgorithmException on unrecognized algorithms.
	* @exception SignatureException on signature handling errors.
	*/
	@:overload @:public public function verify(bytes : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<sun.security.pkcs.SignerInfo>;
	
	/**
	* Returns all signerInfos which self-verify.
	*
	* @exception NoSuchAlgorithmException on unrecognized algorithms.
	* @exception SignatureException on signature handling errors.
	*/
	@:overload @:public public function verify() : java.NativeArray<sun.security.pkcs.SignerInfo>;
	
	/**
	* Returns the version number of this PKCS7 block.
	* @return the version or null if version is not specified
	*         for the content type.
	*/
	@:overload @:public public function getVersion() : java.math.BigInteger;
	
	/**
	* Returns the message digest algorithms specified in this PKCS7 block.
	* @return the array of Digest Algorithms or null if none are specified
	*         for the content type.
	*/
	@:overload @:public public function getDigestAlgorithmIds() : java.NativeArray<sun.security.x509.AlgorithmId>;
	
	/**
	* Returns the content information specified in this PKCS7 block.
	*/
	@:overload @:public public function getContentInfo() : sun.security.pkcs.ContentInfo;
	
	/**
	* Returns the X.509 certificates listed in this PKCS7 block.
	* @return a clone of the array of X.509 certificates or null if
	*         none are specified for the content type.
	*/
	@:overload @:public public function getCertificates() : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Returns the X.509 crls listed in this PKCS7 block.
	* @return a clone of the array of X.509 crls or null if none
	*         are specified for the content type.
	*/
	@:overload @:public public function getCRLs() : java.NativeArray<java.security.cert.X509CRL>;
	
	/**
	* Returns the signer's information specified in this PKCS7 block.
	* @return the array of Signer Infos or null if none are specified
	*         for the content type.
	*/
	@:overload @:public public function getSignerInfos() : java.NativeArray<sun.security.pkcs.SignerInfo>;
	
	/**
	* Returns the X.509 certificate listed in this PKCS7 block
	* which has a matching serial number and Issuer name, or
	* null if one is not found.
	*
	* @param serial the serial number of the certificate to retrieve.
	* @param issuerName the Distinguished Name of the Issuer.
	*/
	@:overload @:public public function getCertificate(serial : java.math.BigInteger, issuerName : sun.security.x509.X500Name) : java.security.cert.X509Certificate;
	
	/**
	* Returns the PKCS7 block in a printable string form.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns true if this is a JDK1.1.x-style PKCS#7 block, and false
	* otherwise.
	*/
	@:overload @:public public function isOldStyle() : Bool;
	
	
}
