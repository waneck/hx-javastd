package java.security.cert;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class X509CRLSelector implements java.security.cert.CRLSelector
{
	/**
	* Creates an <code>X509CRLSelector</code>. Initially, no criteria are set
	* so any <code>X509CRL</code> will match.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the issuerNames criterion. The issuer distinguished name in the
	* <code>X509CRL</code> must match at least one of the specified
	* distinguished names. If <code>null</code>, any issuer distinguished name
	* will do.
	* <p>
	* This method allows the caller to specify, with a single method call,
	* the complete set of issuer names which <code>X509CRLs</code> may contain.
	* The specified value replaces the previous value for the issuerNames
	* criterion.
	* <p>
	* The <code>names</code> parameter (if not <code>null</code>) is a
	* <code>Collection</code> of <code>X500Principal</code>s.
	* <p>
	* Note that the <code>names</code> parameter can contain duplicate
	* distinguished names, but they may be removed from the
	* <code>Collection</code> of names returned by the
	* {@link #getIssuers getIssuers} method.
	* <p>
	* Note that a copy is performed on the <code>Collection</code> to
	* protect against subsequent modifications.
	*
	* @param issuers a <code>Collection</code> of X500Principals
	*   (or <code>null</code>)
	* @see #getIssuers
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function setIssuers(issuers : java.util.Collection<javax.security.auth.x500.X500Principal>) : Void;
	
	/**
	* <strong>Note:</strong> use {@linkplain #setIssuers(Collection)} instead
	* or only specify the byte array form of distinguished names when using
	* this method. See {@link #addIssuerName(String)} for more information.
	* <p>
	* Sets the issuerNames criterion. The issuer distinguished name in the
	* <code>X509CRL</code> must match at least one of the specified
	* distinguished names. If <code>null</code>, any issuer distinguished name
	* will do.
	* <p>
	* This method allows the caller to specify, with a single method call,
	* the complete set of issuer names which <code>X509CRLs</code> may contain.
	* The specified value replaces the previous value for the issuerNames
	* criterion.
	* <p>
	* The <code>names</code> parameter (if not <code>null</code>) is a
	* <code>Collection</code> of names. Each name is a <code>String</code>
	* or a byte array representing a distinguished name (in
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a> or
	* ASN.1 DER encoded form, respectively). If <code>null</code> is supplied
	* as the value for this argument, no issuerNames check will be performed.
	* <p>
	* Note that the <code>names</code> parameter can contain duplicate
	* distinguished names, but they may be removed from the
	* <code>Collection</code> of names returned by the
	* {@link #getIssuerNames getIssuerNames} method.
	* <p>
	* If a name is specified as a byte array, it should contain a single DER
	* encoded distinguished name, as defined in X.501. The ASN.1 notation for
	* this structure is as follows.
	* <pre><code>
	* Name ::= CHOICE {
	*   RDNSequence }
	*
	* RDNSequence ::= SEQUENCE OF RelativeDistinguishedName
	*
	* RelativeDistinguishedName ::=
	*   SET SIZE (1 .. MAX) OF AttributeTypeAndValue
	*
	* AttributeTypeAndValue ::= SEQUENCE {
	*   type     AttributeType,
	*   value    AttributeValue }
	*
	* AttributeType ::= OBJECT IDENTIFIER
	*
	* AttributeValue ::= ANY DEFINED BY AttributeType
	* ....
	* DirectoryString ::= CHOICE {
	*       teletexString           TeletexString (SIZE (1..MAX)),
	*       printableString         PrintableString (SIZE (1..MAX)),
	*       universalString         UniversalString (SIZE (1..MAX)),
	*       utf8String              UTF8String (SIZE (1.. MAX)),
	*       bmpString               BMPString (SIZE (1..MAX)) }
	* </code></pre>
	* <p>
	* Note that a deep copy is performed on the <code>Collection</code> to
	* protect against subsequent modifications.
	*
	* @param names a <code>Collection</code> of names (or <code>null</code>)
	* @throws IOException if a parsing error occurs
	* @see #getIssuerNames
	*/
	@:overload @:public public function setIssuerNames(names : java.util.Collection<Dynamic>) : Void;
	
	/**
	* Adds a name to the issuerNames criterion. The issuer distinguished
	* name in the <code>X509CRL</code> must match at least one of the specified
	* distinguished names.
	* <p>
	* This method allows the caller to add a name to the set of issuer names
	* which <code>X509CRLs</code> may contain. The specified name is added to
	* any previous value for the issuerNames criterion.
	* If the specified name is a duplicate, it may be ignored.
	*
	* @param issuer the issuer as X500Principal
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function addIssuer(issuer : javax.security.auth.x500.X500Principal) : Void;
	
	/**
	* <strong>Denigrated</strong>, use
	* {@linkplain #addIssuer(X500Principal)} or
	* {@linkplain #addIssuerName(byte[])} instead. This method should not be
	* relied on as it can fail to match some CRLs because of a loss of
	* encoding information in the RFC 2253 String form of some distinguished
	* names.
	* <p>
	* Adds a name to the issuerNames criterion. The issuer distinguished
	* name in the <code>X509CRL</code> must match at least one of the specified
	* distinguished names.
	* <p>
	* This method allows the caller to add a name to the set of issuer names
	* which <code>X509CRLs</code> may contain. The specified name is added to
	* any previous value for the issuerNames criterion.
	* If the specified name is a duplicate, it may be ignored.
	*
	* @param name the name in RFC 2253 form
	* @throws IOException if a parsing error occurs
	*/
	@:overload @:public public function addIssuerName(name : String) : Void;
	
	/**
	* Adds a name to the issuerNames criterion. The issuer distinguished
	* name in the <code>X509CRL</code> must match at least one of the specified
	* distinguished names.
	* <p>
	* This method allows the caller to add a name to the set of issuer names
	* which <code>X509CRLs</code> may contain. The specified name is added to
	* any previous value for the issuerNames criterion. If the specified name
	* is a duplicate, it may be ignored.
	* If a name is specified as a byte array, it should contain a single DER
	* encoded distinguished name, as defined in X.501. The ASN.1 notation for
	* this structure is as follows.
	* <p>
	* The name is provided as a byte array. This byte array should contain
	* a single DER encoded distinguished name, as defined in X.501. The ASN.1
	* notation for this structure appears in the documentation for
	* {@link #setIssuerNames setIssuerNames(Collection names)}.
	* <p>
	* Note that the byte array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param name a byte array containing the name in ASN.1 DER encoded form
	* @throws IOException if a parsing error occurs
	*/
	@:overload @:public public function addIssuerName(name : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the minCRLNumber criterion. The <code>X509CRL</code> must have a
	* CRL number extension whose value is greater than or equal to the
	* specified value. If <code>null</code>, no minCRLNumber check will be
	* done.
	*
	* @param minCRL the minimum CRL number accepted (or <code>null</code>)
	*/
	@:overload @:public public function setMinCRLNumber(minCRL : java.math.BigInteger) : Void;
	
	/**
	* Sets the maxCRLNumber criterion. The <code>X509CRL</code> must have a
	* CRL number extension whose value is less than or equal to the
	* specified value. If <code>null</code>, no maxCRLNumber check will be
	* done.
	*
	* @param maxCRL the maximum CRL number accepted (or <code>null</code>)
	*/
	@:overload @:public public function setMaxCRLNumber(maxCRL : java.math.BigInteger) : Void;
	
	/**
	* Sets the dateAndTime criterion. The specified date must be
	* equal to or later than the value of the thisUpdate component
	* of the <code>X509CRL</code> and earlier than the value of the
	* nextUpdate component. There is no match if the <code>X509CRL</code>
	* does not contain a nextUpdate component.
	* If <code>null</code>, no dateAndTime check will be done.
	* <p>
	* Note that the <code>Date</code> supplied here is cloned to protect
	* against subsequent modifications.
	*
	* @param dateAndTime the <code>Date</code> to match against
	*                    (or <code>null</code>)
	* @see #getDateAndTime
	*/
	@:overload @:public public function setDateAndTime(dateAndTime : java.util.Date) : Void;
	
	/**
	* Sets the certificate being checked. This is not a criterion. Rather,
	* it is optional information that may help a <code>CertStore</code>
	* find CRLs that would be relevant when checking revocation for the
	* specified certificate. If <code>null</code> is specified, then no
	* such optional information is provided.
	*
	* @param cert the <code>X509Certificate</code> being checked
	*             (or <code>null</code>)
	* @see #getCertificateChecking
	*/
	@:overload @:public public function setCertificateChecking(cert : java.security.cert.X509Certificate) : Void;
	
	/**
	* Returns the issuerNames criterion. The issuer distinguished
	* name in the <code>X509CRL</code> must match at least one of the specified
	* distinguished names. If the value returned is <code>null</code>, any
	* issuer distinguished name will do.
	* <p>
	* If the value returned is not <code>null</code>, it is a
	* unmodifiable <code>Collection</code> of <code>X500Principal</code>s.
	*
	* @return an unmodifiable <code>Collection</code> of names
	*   (or <code>null</code>)
	* @see #setIssuers
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getIssuers() : java.util.Collection<javax.security.auth.x500.X500Principal>;
	
	/**
	* Returns a copy of the issuerNames criterion. The issuer distinguished
	* name in the <code>X509CRL</code> must match at least one of the specified
	* distinguished names. If the value returned is <code>null</code>, any
	* issuer distinguished name will do.
	* <p>
	* If the value returned is not <code>null</code>, it is a
	* <code>Collection</code> of names. Each name is a <code>String</code>
	* or a byte array representing a distinguished name (in RFC 2253 or
	* ASN.1 DER encoded form, respectively).  Note that the
	* <code>Collection</code> returned may contain duplicate names.
	* <p>
	* If a name is specified as a byte array, it should contain a single DER
	* encoded distinguished name, as defined in X.501. The ASN.1 notation for
	* this structure is given in the documentation for
	* {@link #setIssuerNames setIssuerNames(Collection names)}.
	* <p>
	* Note that a deep copy is performed on the <code>Collection</code> to
	* protect against subsequent modifications.
	*
	* @return a <code>Collection</code> of names (or <code>null</code>)
	* @see #setIssuerNames
	*/
	@:overload @:public public function getIssuerNames() : java.util.Collection<Dynamic>;
	
	/**
	* Returns the minCRLNumber criterion. The <code>X509CRL</code> must have a
	* CRL number extension whose value is greater than or equal to the
	* specified value. If <code>null</code>, no minCRLNumber check will be done.
	*
	* @return the minimum CRL number accepted (or <code>null</code>)
	*/
	@:overload @:public public function getMinCRL() : java.math.BigInteger;
	
	/**
	* Returns the maxCRLNumber criterion. The <code>X509CRL</code> must have a
	* CRL number extension whose value is less than or equal to the
	* specified value. If <code>null</code>, no maxCRLNumber check will be
	* done.
	*
	* @return the maximum CRL number accepted (or <code>null</code>)
	*/
	@:overload @:public public function getMaxCRL() : java.math.BigInteger;
	
	/**
	* Returns the dateAndTime criterion. The specified date must be
	* equal to or later than the value of the thisUpdate component
	* of the <code>X509CRL</code> and earlier than the value of the
	* nextUpdate component. There is no match if the
	* <code>X509CRL</code> does not contain a nextUpdate component.
	* If <code>null</code>, no dateAndTime check will be done.
	* <p>
	* Note that the <code>Date</code> returned is cloned to protect against
	* subsequent modifications.
	*
	* @return the <code>Date</code> to match against (or <code>null</code>)
	* @see #setDateAndTime
	*/
	@:overload @:public public function getDateAndTime() : java.util.Date;
	
	/**
	* Returns the certificate being checked. This is not a criterion. Rather,
	* it is optional information that may help a <code>CertStore</code>
	* find CRLs that would be relevant when checking revocation for the
	* specified certificate. If the value returned is <code>null</code>, then
	* no such optional information is provided.
	*
	* @return the certificate being checked (or <code>null</code>)
	* @see #setCertificateChecking
	*/
	@:overload @:public public function getCertificateChecking() : java.security.cert.X509Certificate;
	
	/**
	* Returns a printable representation of the <code>X509CRLSelector</code>.
	*
	* @return a <code>String</code> describing the contents of the
	*         <code>X509CRLSelector</code>.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Decides whether a <code>CRL</code> should be selected.
	*
	* @param crl the <code>CRL</code> to be checked
	* @return <code>true</code> if the <code>CRL</code> should be selected,
	*         <code>false</code> otherwise
	*/
	@:overload @:public public function match(crl : java.security.cert.CRL) : Bool;
	
	/**
	* Returns a copy of this object.
	*
	* @return the copy
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
