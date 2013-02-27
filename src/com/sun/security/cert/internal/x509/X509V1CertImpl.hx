package com.sun.security.cert.internal.x509;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class X509V1CertImpl extends javax.security.cert.X509Certificate implements java.io.Serializable
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Unmarshals a certificate from its encoded form, parsing the
	* encoded bytes.  This form of constructor is used by agents which
	* need to examine and use certificate contents.  That is, this is
	* one of the more commonly used constructors.  Note that the buffer
	* must include only a certificate, and no "garbage" may be left at
	* the end.  If you need to ignore data at the end of a certificate,
	* use another constructor.
	*
	* @param certData the encoded bytes, with no trailing padding.
	* @exception CertificateException on parsing errors.
	*/
	@:overload public function new(certData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* unmarshals an X.509 certificate from an input stream.
	*
	* @param in an input stream holding at least one certificate
	* @exception CertificateException on parsing errors.
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Returns the encoded form of this certificate. It is
	* assumed that each certificate type would have only a single
	* form of encoding; for example, X.509 certificates would
	* be encoded as ASN.1 DER.
	*/
	@:overload override public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Throws an exception if the certificate was not signed using the
	* verification key provided.  Successfully verifying a certificate
	* does <em>not</em> indicate that one should trust the entity which
	* it represents.
	*
	* @param key the public key used for verification.
	*/
	@:overload override public function verify(key : java.security.PublicKey) : Void;
	
	/**
	* Throws an exception if the certificate was not signed using the
	* verification key provided.  Successfully verifying a certificate
	* does <em>not</em> indicate that one should trust the entity which
	* it represents.
	*
	* @param key the public key used for verification.
	* @param sigProvider the name of the provider.
	*/
	@:overload override public function verify(key : java.security.PublicKey, sigProvider : String) : Void;
	
	/**
	* Checks that the certificate is currently valid, i.e. the current
	* time is within the specified validity period.
	*/
	@:overload override public function checkValidity() : Void;
	
	/**
	* Checks that the specified date is within the certificate's
	* validity period, or basically if the certificate would be
	* valid at the specified date/time.
	*
	* @param date the Date to check against to see if this certificate
	*        is valid at that date/time.
	*/
	@:overload override public function checkValidity(date : java.util.Date) : Void;
	
	/**
	* Returns a printable representation of the certificate.  This does not
	* contain all the information available to distinguish this from any
	* other certificate.  The certificate must be fully constructed
	* before this function may be called.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Gets the publickey from this certificate.
	*
	* @return the publickey.
	*/
	@:overload override public function getPublicKey() : java.security.PublicKey;
	
	/*
	* Gets the version number from the certificate.
	*
	* @return the version number.
	*/
	@:overload override public function getVersion() : Int;
	
	/**
	* Gets the serial number from the certificate.
	*
	* @return the serial number.
	*/
	@:overload override public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* Gets the subject distinguished name from the certificate.
	*
	* @return the subject name.
	* @exception CertificateException if a parsing error occurs.
	*/
	@:overload override public function getSubjectDN() : java.security.Principal;
	
	/**
	* Gets the issuer distinguished name from the certificate.
	*
	* @return the issuer name.
	* @exception CertificateException if a parsing error occurs.
	*/
	@:overload override public function getIssuerDN() : java.security.Principal;
	
	/**
	* Gets the notBefore date from the validity period of the certificate.
	*
	* @return the start date of the validity period.
	* @exception CertificateException if a parsing error occurs.
	*/
	@:overload override public function getNotBefore() : java.util.Date;
	
	/**
	* Gets the notAfter date from the validity period of the certificate.
	*
	* @return the end date of the validity period.
	* @exception CertificateException if a parsing error occurs.
	*/
	@:overload override public function getNotAfter() : java.util.Date;
	
	/**
	* Gets the signature algorithm name for the certificate
	* signature algorithm.
	* For example, the string "SHA1/DSA".
	*
	* @return the signature algorithm name.
	* @exception CertificateException if a parsing error occurs.
	*/
	@:overload override public function getSigAlgName() : String;
	
	/**
	* Gets the signature algorithm OID string from the certificate.
	* For example, the string "1.2.840.10040.4.3"
	*
	* @return the signature algorithm oid string.
	* @exception CertificateException if a parsing error occurs.
	*/
	@:overload override public function getSigAlgOID() : String;
	
	/**
	* Gets the DER encoded signature algorithm parameters from this
	* certificate's signature algorithm.
	*
	* @return the DER encoded signature algorithm parameters, or
	*         null if no parameters are present.
	* @exception CertificateException if a parsing error occurs.
	*/
	@:overload override public function getSigAlgParams() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getX509Certificate() : java.security.cert.X509Certificate;
	
	
}
