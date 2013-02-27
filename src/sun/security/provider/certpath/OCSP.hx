package sun.security.provider.certpath;
/*
* Copyright (c) 2009, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class OCSP
{
	/**
	* Obtains the revocation status of a certificate using OCSP using the most
	* common defaults. The OCSP responder URI is retrieved from the
	* certificate's AIA extension. The OCSP responder certificate is assumed
	* to be the issuer's certificate (or issued by the issuer CA).
	*
	* @param cert the certificate to be checked
	* @param issuerCert the issuer certificate
	* @return the RevocationStatus
	* @throws IOException if there is an exception connecting to or
	*    communicating with the OCSP responder
	* @throws CertPathValidatorException if an exception occurs while
	*    encoding the OCSP Request or validating the OCSP Response
	*/
	@:overload public static function check(cert : java.security.cert.X509Certificate, issuerCert : java.security.cert.X509Certificate) : OCSP_RevocationStatus;
	
	/**
	* Obtains the revocation status of a certificate using OCSP.
	*
	* @param cert the certificate to be checked
	* @param issuerCert the issuer certificate
	* @param responderURI the URI of the OCSP responder
	* @param responderCert the OCSP responder's certificate
	* @param date the time the validity of the OCSP responder's certificate
	*    should be checked against. If null, the current time is used.
	* @return the RevocationStatus
	* @throws IOException if there is an exception connecting to or
	*    communicating with the OCSP responder
	* @throws CertPathValidatorException if an exception occurs while
	*    encoding the OCSP Request or validating the OCSP Response
	*/
	@:overload public static function check(cert : java.security.cert.X509Certificate, issuerCert : java.security.cert.X509Certificate, responderURI : java.net.URI, responderCert : java.security.cert.X509Certificate, date : java.util.Date) : OCSP_RevocationStatus;
	
	/**
	* Obtains the revocation status of a certificate using OCSP.
	*
	* @param cert the certificate to be checked
	* @param issuerCert the issuer certificate
	* @param responderURI the URI of the OCSP responder
	* @param responderCerts the OCSP responder's certificates
	* @param date the time the validity of the OCSP responder's certificate
	*    should be checked against. If null, the current time is used.
	* @return the RevocationStatus
	* @throws IOException if there is an exception connecting to or
	*    communicating with the OCSP responder
	* @throws CertPathValidatorException if an exception occurs while
	*    encoding the OCSP Request or validating the OCSP Response
	*/
	@:overload public static function check(cert : java.security.cert.X509Certificate, issuerCert : java.security.cert.X509Certificate, responderURI : java.net.URI, responderCerts : java.util.List<java.security.cert.X509Certificate>, date : java.util.Date) : OCSP_RevocationStatus;
	
	/**
	* Returns the URI of the OCSP Responder as specified in the
	* certificate's Authority Information Access extension, or null if
	* not specified.
	*
	* @param cert the certificate
	* @return the URI of the OCSP Responder, or null if not specified
	*/
	@:overload public static function getResponderURI(cert : java.security.cert.X509Certificate) : java.net.URI;
	
	
}
/**
* The Revocation Status of a certificate.
*/
@:native('sun$security$provider$certpath$OCSP$RevocationStatus') extern interface OCSP_RevocationStatus
{
	/**
	* Returns the revocation status.
	*/
	@:overload public function getCertStatus() : OCSP_RevocationStatus_CertStatus;
	
	/**
	* Returns the time when the certificate was revoked, or null
	* if it has not been revoked.
	*/
	@:overload public function getRevocationTime() : java.util.Date;
	
	/**
	* Returns the reason the certificate was revoked, or null if it
	* has not been revoked.
	*/
	@:overload public function getRevocationReason() : java.security.cert.CRLReason;
	
	/**
	* Returns a Map of additional extensions.
	*/
	@:overload public function getSingleExtensions() : java.util.Map<String, java.security.cert.Extension>;
	
	
}
@:native('sun$security$provider$certpath$OCSP$RevocationStatus$CertStatus') extern enum OCSP_RevocationStatus_CertStatus
{
	GOOD;
	REVOKED;
	UNKNOWN;
	
}

