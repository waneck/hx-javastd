package sun.security.x509;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
* Lists all the object identifiers of the X509 extensions of the PKIX profile.
*
* <p>Extensions are addiitonal attributes which can be inserted in a X509
* v3 certificate. For example a "Driving License Certificate" could have
* the driving license number as a extension.
*
* <p>Extensions are represented as a sequence of the extension identifier
* (Object Identifier), a boolean flag stating whether the extension is to
* be treated as being critical and the extension value itself (this is again
* a DER encoding of the extension value).
*
* @see Extension
*
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class PKIXExtensions
{
	/**
	* Identifies the particular public key used to sign the certificate.
	*/
	public static var AuthorityKey_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies the particular public key used in an application.
	*/
	public static var SubjectKey_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Defines the purpose of the key contained in the certificate.
	*/
	public static var KeyUsage_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Allows the certificate issuer to specify a different validity period
	* for the private key than the certificate.
	*/
	public static var PrivateKeyUsage_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Contains the sequence of policy information terms.
	*/
	public static var CertificatePolicies_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Lists pairs of objectidentifiers of policies considered equivalent by the
	* issuing CA to the subject CA.
	*/
	public static var PolicyMappings_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Allows additional identities to be bound to the subject of the certificate.
	*/
	public static var SubjectAlternativeName_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Allows additional identities to be associated with the certificate issuer.
	*/
	public static var IssuerAlternativeName_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies additional directory attributes.
	* This extension is always non-critical.
	*/
	public static var SubjectDirectoryAttributes_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies whether the subject of the certificate is a CA and how deep
	* a certification path may exist through that CA.
	*/
	public static var BasicConstraints_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Provides for permitted and excluded subtrees that place restrictions
	* on names that may be included within a certificate issued by a given CA.
	*/
	public static var NameConstraints_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Used to either prohibit policy mapping or limit the set of policies
	* that can be in subsequent certificates.
	*/
	public static var PolicyConstraints_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies how CRL information is obtained.
	*/
	public static var CRLDistributionPoints_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Conveys a monotonically increasing sequence number for each CRL
	* issued by a given CA.
	*/
	public static var CRLNumber_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies the CRL distribution point for a particular CRL.
	*/
	public static var IssuingDistributionPoint_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies the delta CRL.
	*/
	public static var DeltaCRLIndicator_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies the reason for the certificate revocation.
	*/
	public static var ReasonCode_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* This extension provides a registered instruction identifier indicating
	* the action to be taken, after encountering a certificate that has been
	* placed on hold.
	*/
	public static var HoldInstructionCode_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies the date on which it is known or suspected that the private
	* key was compromised or that the certificate otherwise became invalid.
	*/
	public static var InvalidityDate_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies one or more purposes for which the certified public key
	* may be used, in addition to or in place of the basic purposes
	* indicated in the key usage extension field.
	*/
	public static var ExtendedKeyUsage_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Specifies whether any-policy policy OID is permitted
	*/
	public static var InhibitAnyPolicy_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies the certificate issuer associated with an entry in an
	* indirect CRL.
	*/
	public static var CertificateIssuer_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* This extension indicates how to access CA information and services for
	* the issuer of the certificate in which the extension appears.
	* This information may be used for on-line certification validation
	* services.
	*/
	public static var AuthInfoAccess_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* This extension indicates how to access CA information and services for
	* the subject of the certificate in which the extension appears.
	*/
	public static var SubjectInfoAccess_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies how delta CRL information is obtained.
	*/
	public static var FreshestCRL_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Identifies the OCSP client can trust the responder for the
	* lifetime of the responder's certificate.
	*/
	public static var OCSPNoCheck_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	
}
