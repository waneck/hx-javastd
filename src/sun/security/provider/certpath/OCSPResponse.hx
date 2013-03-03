package sun.security.provider.certpath;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to process an OCSP response.
* The OCSP Response is defined
* in RFC 2560 and the ASN.1 encoding is as follows:
* <pre>
*
*  OCSPResponse ::= SEQUENCE {
*      responseStatus         OCSPResponseStatus,
*      responseBytes          [0] EXPLICIT ResponseBytes OPTIONAL }
*
*   OCSPResponseStatus ::= ENUMERATED {
*       successful            (0),  --Response has valid confirmations
*       malformedRequest      (1),  --Illegal confirmation request
*       internalError         (2),  --Internal error in issuer
*       tryLater              (3),  --Try again later
*                                   --(4) is not used
*       sigRequired           (5),  --Must sign the request
*       unauthorized          (6)   --Request unauthorized
*   }
*
*   ResponseBytes ::=       SEQUENCE {
*       responseType   OBJECT IDENTIFIER,
*       response       OCTET STRING }
*
*   BasicOCSPResponse       ::= SEQUENCE {
*      tbsResponseData      ResponseData,
*      signatureAlgorithm   AlgorithmIdentifier,
*      signature            BIT STRING,
*      certs                [0] EXPLICIT SEQUENCE OF Certificate OPTIONAL }
*
*   The value for signature SHALL be computed on the hash of the DER
*   encoding ResponseData.
*
*   ResponseData ::= SEQUENCE {
*      version              [0] EXPLICIT Version DEFAULT v1,
*      responderID              ResponderID,
*      producedAt               GeneralizedTime,
*      responses                SEQUENCE OF SingleResponse,
*      responseExtensions   [1] EXPLICIT Extensions OPTIONAL }
*
*   ResponderID ::= CHOICE {
*      byName               [1] Name,
*      byKey                [2] KeyHash }
*
*   KeyHash ::= OCTET STRING -- SHA-1 hash of responder's public key
*   (excluding the tag and length fields)
*
*   SingleResponse ::= SEQUENCE {
*      certID                       CertID,
*      certStatus                   CertStatus,
*      thisUpdate                   GeneralizedTime,
*      nextUpdate         [0]       EXPLICIT GeneralizedTime OPTIONAL,
*      singleExtensions   [1]       EXPLICIT Extensions OPTIONAL }
*
*   CertStatus ::= CHOICE {
*       good        [0]     IMPLICIT NULL,
*       revoked     [1]     IMPLICIT RevokedInfo,
*       unknown     [2]     IMPLICIT UnknownInfo }
*
*   RevokedInfo ::= SEQUENCE {
*       revocationTime              GeneralizedTime,
*       revocationReason    [0]     EXPLICIT CRLReason OPTIONAL }
*
*   UnknownInfo ::= NULL -- this can be replaced with an enumeration
*
* </pre>
*
* @author      Ram Marti
*/
extern class OCSPResponse
{
	
}
@:native('sun$security$provider$certpath$OCSPResponse$ResponseStatus') extern enum OCSPResponse_ResponseStatus
{
	SUCCESSFUL;
	MALFORMED_REQUEST;
	INTERNAL_ERROR;
	TRY_LATER;
	UNUSED;
	SIG_REQUIRED;
	UNAUTHORIZED;
	
}

/*
* A class representing a single OCSP response.
*/
@:native('sun$security$provider$certpath$OCSPResponse$SingleResponse') @:internal extern class OCSPResponse_SingleResponse implements sun.security.provider.certpath.OCSP.OCSP_RevocationStatus
{
	/*
	* Return the certificate's revocation status code
	*/
	@:overload @:public public function getCertStatus() : sun.security.provider.certpath.OCSP.OCSP_RevocationStatus_CertStatus;
	
	@:overload @:public public function getRevocationTime() : java.util.Date;
	
	@:overload @:public public function getRevocationReason() : java.security.cert.CRLReason;
	
	@:overload @:public public function getSingleExtensions() : java.util.Map<String, java.security.cert.Extension>;
	
	/**
	* Construct a string representation of a single OCSP response.
	*/
	@:overload @:public public function toString() : String;
	
	
}
