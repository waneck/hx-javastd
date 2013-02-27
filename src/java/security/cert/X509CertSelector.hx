package java.security.cert;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A <code>CertSelector</code> that selects <code>X509Certificates</code> that
* match all specified criteria. This class is particularly useful when
* selecting certificates from a <code>CertStore</code> to build a
* PKIX-compliant certification path.
* <p>
* When first constructed, an <code>X509CertSelector</code> has no criteria
* enabled and each of the <code>get</code> methods return a default value
* (<code>null</code>, or <code>-1</code> for the {@link #getBasicConstraints
* getBasicConstraints} method). Therefore, the {@link #match match}
* method would return <code>true</code> for any <code>X509Certificate</code>.
* Typically, several criteria are enabled (by calling
* {@link #setIssuer setIssuer} or
* {@link #setKeyUsage setKeyUsage}, for instance) and then the
* <code>X509CertSelector</code> is passed to
* {@link CertStore#getCertificates CertStore.getCertificates} or some similar
* method.
* <p>
* Several criteria can be enabled (by calling {@link #setIssuer setIssuer}
* and {@link #setSerialNumber setSerialNumber},
* for example) such that the <code>match</code> method
* usually uniquely matches a single <code>X509Certificate</code>. We say
* usually, since it is possible for two issuing CAs to have the same
* distinguished name and each issue a certificate with the same serial
* number. Other unique combinations include the issuer, subject,
* subjectKeyIdentifier and/or the subjectPublicKey criteria.
* <p>
* Please refer to <a href="http://www.ietf.org/rfc/rfc3280.txt">RFC 3280:
* Internet X.509 Public Key Infrastructure Certificate and CRL Profile</a> for
* definitions of the X.509 certificate extensions mentioned below.
* <p>
* <b>Concurrent Access</b>
* <p>
* Unless otherwise specified, the methods defined in this class are not
* thread-safe. Multiple threads that need to access a single
* object concurrently should synchronize amongst themselves and
* provide the necessary locking. Multiple threads each manipulating
* separate objects need not synchronize.
*
* @see CertSelector
* @see X509Certificate
*
* @since       1.4
* @author      Steve Hanna
*/
@:require(java4) extern class X509CertSelector implements java.security.cert.CertSelector
{
	/**
	* Creates an <code>X509CertSelector</code>. Initially, no criteria are set
	* so any <code>X509Certificate</code> will match.
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets the certificateEquals criterion. The specified
	* <code>X509Certificate</code> must be equal to the
	* <code>X509Certificate</code> passed to the <code>match</code> method.
	* If <code>null</code>, then this check is not applied.
	*
	* <p>This method is particularly useful when it is necessary to
	* match a single certificate. Although other criteria can be specified
	* in conjunction with the certificateEquals criterion, it is usually not
	* practical or necessary.
	*
	* @param cert the <code>X509Certificate</code> to match (or
	* <code>null</code>)
	* @see #getCertificate
	*/
	@:overload public function setCertificate(cert : java.security.cert.X509Certificate) : Void;
	
	/**
	* Sets the serialNumber criterion. The specified serial number
	* must match the certificate serial number in the
	* <code>X509Certificate</code>. If <code>null</code>, any certificate
	* serial number will do.
	*
	* @param serial the certificate serial number to match
	*        (or <code>null</code>)
	* @see #getSerialNumber
	*/
	@:overload public function setSerialNumber(serial : java.math.BigInteger) : Void;
	
	/**
	* Sets the issuer criterion. The specified distinguished name
	* must match the issuer distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, any issuer
	* distinguished name will do.
	*
	* @param issuer a distinguished name as X500Principal
	*                 (or <code>null</code>)
	* @since 1.5
	*/
	@:require(java5) @:overload public function setIssuer(issuer : javax.security.auth.x500.X500Principal) : Void;
	
	/**
	* <strong>Denigrated</strong>, use {@linkplain #setIssuer(X500Principal)}
	* or {@linkplain #setIssuer(byte[])} instead. This method should not be
	* relied on as it can fail to match some certificates because of a loss of
	* encoding information in the
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a> String form
	* of some distinguished names.
	* <p>
	* Sets the issuer criterion. The specified distinguished name
	* must match the issuer distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, any issuer
	* distinguished name will do.
	* <p>
	* If <code>issuerDN</code> is not <code>null</code>, it should contain a
	* distinguished name, in RFC 2253 format.
	*
	* @param issuerDN a distinguished name in RFC 2253 format
	*                 (or <code>null</code>)
	* @throws IOException if a parsing error occurs (incorrect form for DN)
	*/
	@:overload public function setIssuer(issuerDN : String) : Void;
	
	/**
	* Sets the issuer criterion. The specified distinguished name
	* must match the issuer distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code> is specified,
	* the issuer criterion is disabled and any issuer distinguished name will
	* do.
	* <p>
	* If <code>issuerDN</code> is not <code>null</code>, it should contain a
	* single DER encoded distinguished name, as defined in X.501. The ASN.1
	* notation for this structure is as follows.
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
	* Note that the byte array specified here is cloned to protect against
	* subsequent modifications.
	*
	* @param issuerDN a byte array containing the distinguished name
	*                 in ASN.1 DER encoded form (or <code>null</code>)
	* @throws IOException if an encoding error occurs (incorrect form for DN)
	*/
	@:overload public function setIssuer(issuerDN : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the subject criterion. The specified distinguished name
	* must match the subject distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, any subject
	* distinguished name will do.
	*
	* @param subject a distinguished name as X500Principal
	*                  (or <code>null</code>)
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSubject(subject : javax.security.auth.x500.X500Principal) : Void;
	
	/**
	* <strong>Denigrated</strong>, use {@linkplain #setSubject(X500Principal)}
	* or {@linkplain #setSubject(byte[])} instead. This method should not be
	* relied on as it can fail to match some certificates because of a loss of
	* encoding information in the RFC 2253 String form of some distinguished
	* names.
	* <p>
	* Sets the subject criterion. The specified distinguished name
	* must match the subject distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, any subject
	* distinguished name will do.
	* <p>
	* If <code>subjectDN</code> is not <code>null</code>, it should contain a
	* distinguished name, in RFC 2253 format.
	*
	* @param subjectDN a distinguished name in RFC 2253 format
	*                  (or <code>null</code>)
	* @throws IOException if a parsing error occurs (incorrect form for DN)
	*/
	@:overload public function setSubject(subjectDN : String) : Void;
	
	/**
	* Sets the subject criterion. The specified distinguished name
	* must match the subject distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, any subject
	* distinguished name will do.
	* <p>
	* If <code>subjectDN</code> is not <code>null</code>, it should contain a
	* single DER encoded distinguished name, as defined in X.501. For the ASN.1
	* notation for this structure, see
	* {@link #setIssuer(byte [] issuerDN) setIssuer(byte [] issuerDN)}.
	*
	* @param subjectDN a byte array containing the distinguished name in
	*                  ASN.1 DER format (or <code>null</code>)
	* @throws IOException if an encoding error occurs (incorrect form for DN)
	*/
	@:overload public function setSubject(subjectDN : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the subjectKeyIdentifier criterion. The
	* <code>X509Certificate</code> must contain a SubjectKeyIdentifier
	* extension for which the contents of the extension
	* matches the specified criterion value.
	* If the criterion value is <code>null</code>, no
	* subjectKeyIdentifier check will be done.
	* <p>
	* If <code>subjectKeyID</code> is not <code>null</code>, it
	* should contain a single DER encoded value corresponding to the contents
	* of the extension value (not including the object identifier,
	* criticality setting, and encapsulating OCTET STRING)
	* for a SubjectKeyIdentifier extension.
	* The ASN.1 notation for this structure follows.
	* <p>
	* <pre><code>
	* SubjectKeyIdentifier ::= KeyIdentifier
	*
	* KeyIdentifier ::= OCTET STRING
	* </code></pre>
	* <p>
	* Since the format of subject key identifiers is not mandated by
	* any standard, subject key identifiers are not parsed by the
	* <code>X509CertSelector</code>. Instead, the values are compared using
	* a byte-by-byte comparison.
	* <p>
	* Note that the byte array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param subjectKeyID the subject key identifier (or <code>null</code>)
	* @see #getSubjectKeyIdentifier
	*/
	@:overload public function setSubjectKeyIdentifier(subjectKeyID : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the authorityKeyIdentifier criterion. The
	* <code>X509Certificate</code> must contain an
	* AuthorityKeyIdentifier extension for which the contents of the
	* extension value matches the specified criterion value.
	* If the criterion value is <code>null</code>, no
	* authorityKeyIdentifier check will be done.
	* <p>
	* If <code>authorityKeyID</code> is not <code>null</code>, it
	* should contain a single DER encoded value corresponding to the contents
	* of the extension value (not including the object identifier,
	* criticality setting, and encapsulating OCTET STRING)
	* for an AuthorityKeyIdentifier extension.
	* The ASN.1 notation for this structure follows.
	* <p>
	* <pre><code>
	* AuthorityKeyIdentifier ::= SEQUENCE {
	*    keyIdentifier             [0] KeyIdentifier           OPTIONAL,
	*    authorityCertIssuer       [1] GeneralNames            OPTIONAL,
	*    authorityCertSerialNumber [2] CertificateSerialNumber OPTIONAL  }
	*
	* KeyIdentifier ::= OCTET STRING
	* </code></pre>
	* <p>
	* Authority key identifiers are not parsed by the
	* <code>X509CertSelector</code>.  Instead, the values are
	* compared using a byte-by-byte comparison.
	* <p>
	* When the <code>keyIdentifier</code> field of
	* <code>AuthorityKeyIdentifier</code> is populated, the value is
	* usually taken from the <code>SubjectKeyIdentifier</code> extension
	* in the issuer's certificate.  Note, however, that the result of
	* <code>X509Certificate.getExtensionValue(&lt;SubjectKeyIdentifier Object
	* Identifier&gt;)</code> on the issuer's certificate may NOT be used
	* directly as the input to <code>setAuthorityKeyIdentifier</code>.
	* This is because the SubjectKeyIdentifier contains
	* only a KeyIdentifier OCTET STRING, and not a SEQUENCE of
	* KeyIdentifier, GeneralNames, and CertificateSerialNumber.
	* In order to use the extension value of the issuer certificate's
	* <code>SubjectKeyIdentifier</code>
	* extension, it will be necessary to extract the value of the embedded
	* <code>KeyIdentifier</code> OCTET STRING, then DER encode this OCTET
	* STRING inside a SEQUENCE.
	* For more details on SubjectKeyIdentifier, see
	* {@link #setSubjectKeyIdentifier(byte[] subjectKeyID)}.
	* <p>
	* Note also that the byte array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param authorityKeyID the authority key identifier
	*        (or <code>null</code>)
	* @see #getAuthorityKeyIdentifier
	*/
	@:overload public function setAuthorityKeyIdentifier(authorityKeyID : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the certificateValid criterion. The specified date must fall
	* within the certificate validity period for the
	* <code>X509Certificate</code>. If <code>null</code>, no certificateValid
	* check will be done.
	* <p>
	* Note that the <code>Date</code> supplied here is cloned to protect
	* against subsequent modifications.
	*
	* @param certValid the <code>Date</code> to check (or <code>null</code>)
	* @see #getCertificateValid
	*/
	@:overload public function setCertificateValid(certValid : java.util.Date) : Void;
	
	/**
	* Sets the privateKeyValid criterion. The specified date must fall
	* within the private key validity period for the
	* <code>X509Certificate</code>. If <code>null</code>, no privateKeyValid
	* check will be done.
	* <p>
	* Note that the <code>Date</code> supplied here is cloned to protect
	* against subsequent modifications.
	*
	* @param privateKeyValid the <code>Date</code> to check (or
	*                        <code>null</code>)
	* @see #getPrivateKeyValid
	*/
	@:overload public function setPrivateKeyValid(privateKeyValid : java.util.Date) : Void;
	
	/**
	* Sets the subjectPublicKeyAlgID criterion. The
	* <code>X509Certificate</code> must contain a subject public key
	* with the specified algorithm. If <code>null</code>, no
	* subjectPublicKeyAlgID check will be done.
	*
	* @param oid The object identifier (OID) of the algorithm to check
	*            for (or <code>null</code>). An OID is represented by a
	*            set of nonnegative integers separated by periods.
	* @throws IOException if the OID is invalid, such as
	* the first component being not 0, 1 or 2 or the second component
	* being greater than 39.
	*
	* @see #getSubjectPublicKeyAlgID
	*/
	@:overload public function setSubjectPublicKeyAlgID(oid : String) : Void;
	
	/**
	* Sets the subjectPublicKey criterion. The
	* <code>X509Certificate</code> must contain the specified subject public
	* key. If <code>null</code>, no subjectPublicKey check will be done.
	*
	* @param key the subject public key to check for (or <code>null</code>)
	* @see #getSubjectPublicKey
	*/
	@:overload public function setSubjectPublicKey(key : java.security.PublicKey) : Void;
	
	/**
	* Sets the subjectPublicKey criterion. The <code>X509Certificate</code>
	* must contain the specified subject public key. If <code>null</code>,
	* no subjectPublicKey check will be done.
	* <p>
	* Because this method allows the public key to be specified as a byte
	* array, it may be used for unknown key types.
	* <p>
	* If <code>key</code> is not <code>null</code>, it should contain a
	* single DER encoded SubjectPublicKeyInfo structure, as defined in X.509.
	* The ASN.1 notation for this structure is as follows.
	* <pre><code>
	* SubjectPublicKeyInfo  ::=  SEQUENCE  {
	*   algorithm            AlgorithmIdentifier,
	*   subjectPublicKey     BIT STRING  }
	*
	* AlgorithmIdentifier  ::=  SEQUENCE  {
	*   algorithm               OBJECT IDENTIFIER,
	*   parameters              ANY DEFINED BY algorithm OPTIONAL  }
	*                              -- contains a value of the type
	*                              -- registered for use with the
	*                              -- algorithm object identifier value
	* </code></pre>
	* <p>
	* Note that the byte array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param key a byte array containing the subject public key in ASN.1 DER
	*            form (or <code>null</code>)
	* @throws IOException if an encoding error occurs (incorrect form for
	* subject public key)
	* @see #getSubjectPublicKey
	*/
	@:overload public function setSubjectPublicKey(key : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the keyUsage criterion. The <code>X509Certificate</code>
	* must allow the specified keyUsage values. If <code>null</code>, no
	* keyUsage check will be done. Note that an <code>X509Certificate</code>
	* that has no keyUsage extension implicitly allows all keyUsage values.
	* <p>
	* Note that the boolean array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param keyUsage a boolean array in the same format as the boolean
	*                 array returned by
	* {@link X509Certificate#getKeyUsage() X509Certificate.getKeyUsage()}.
	*                 Or <code>null</code>.
	* @see #getKeyUsage
	*/
	@:overload public function setKeyUsage(keyUsage : java.NativeArray<Bool>) : Void;
	
	/**
	* Sets the extendedKeyUsage criterion. The <code>X509Certificate</code>
	* must allow the specified key purposes in its extended key usage
	* extension. If <code>keyPurposeSet</code> is empty or <code>null</code>,
	* no extendedKeyUsage check will be done. Note that an
	* <code>X509Certificate</code> that has no extendedKeyUsage extension
	* implicitly allows all key purposes.
	* <p>
	* Note that the <code>Set</code> is cloned to protect against
	* subsequent modifications.
	*
	* @param keyPurposeSet a <code>Set</code> of key purpose OIDs in string
	* format (or <code>null</code>). Each OID is represented by a set of
	* nonnegative integers separated by periods.
	* @throws IOException if the OID is invalid, such as
	* the first component being not 0, 1 or 2 or the second component
	* being greater than 39.
	* @see #getExtendedKeyUsage
	*/
	@:overload public function setExtendedKeyUsage(keyPurposeSet : java.util.Set<String>) : Void;
	
	/**
	* Enables/disables matching all of the subjectAlternativeNames
	* specified in the {@link #setSubjectAlternativeNames
	* setSubjectAlternativeNames} or {@link #addSubjectAlternativeName
	* addSubjectAlternativeName} methods. If enabled,
	* the <code>X509Certificate</code> must contain all of the
	* specified subject alternative names. If disabled, the
	* <code>X509Certificate</code> must contain at least one of the
	* specified subject alternative names.
	*
	* <p>The matchAllNames flag is <code>true</code> by default.
	*
	* @param matchAllNames if <code>true</code>, the flag is enabled;
	* if <code>false</code>, the flag is disabled.
	* @see #getMatchAllSubjectAltNames
	*/
	@:overload public function setMatchAllSubjectAltNames(matchAllNames : Bool) : Void;
	
	/**
	* Sets the subjectAlternativeNames criterion. The
	* <code>X509Certificate</code> must contain all or at least one of the
	* specified subjectAlternativeNames, depending on the value of
	* the matchAllNames flag (see {@link #setMatchAllSubjectAltNames
	* setMatchAllSubjectAltNames}).
	* <p>
	* This method allows the caller to specify, with a single method call,
	* the complete set of subject alternative names for the
	* subjectAlternativeNames criterion. The specified value replaces
	* the previous value for the subjectAlternativeNames criterion.
	* <p>
	* The <code>names</code> parameter (if not <code>null</code>) is a
	* <code>Collection</code> with one
	* entry for each name to be included in the subject alternative name
	* criterion. Each entry is a <code>List</code> whose first entry is an
	* <code>Integer</code> (the name type, 0-8) and whose second
	* entry is a <code>String</code> or a byte array (the name, in
	* string or ASN.1 DER encoded form, respectively).
	* There can be multiple names of the same type. If <code>null</code>
	* is supplied as the value for this argument, no
	* subjectAlternativeNames check will be performed.
	* <p>
	* Each subject alternative name in the <code>Collection</code>
	* may be specified either as a <code>String</code> or as an ASN.1 encoded
	* byte array. For more details about the formats used, see
	* {@link #addSubjectAlternativeName(int type, String name)
	* addSubjectAlternativeName(int type, String name)} and
	* {@link #addSubjectAlternativeName(int type, byte [] name)
	* addSubjectAlternativeName(int type, byte [] name)}.
	* <p>
	* <strong>Note:</strong> for distinguished names, specify the byte
	* array form instead of the String form. See the note in
	* {@link #addSubjectAlternativeName(int, String)} for more information.
	* <p>
	* Note that the <code>names</code> parameter can contain duplicate
	* names (same name and name type), but they may be removed from the
	* <code>Collection</code> of names returned by the
	* {@link #getSubjectAlternativeNames getSubjectAlternativeNames} method.
	* <p>
	* Note that a deep copy is performed on the <code>Collection</code> to
	* protect against subsequent modifications.
	*
	* @param names a <code>Collection</code> of names (or <code>null</code>)
	* @throws IOException if a parsing error occurs
	* @see #getSubjectAlternativeNames
	*/
	@:overload public function setSubjectAlternativeNames(names : java.util.Collection<java.util.List<Dynamic>>) : Void;
	
	/**
	* Adds a name to the subjectAlternativeNames criterion. The
	* <code>X509Certificate</code> must contain all or at least one
	* of the specified subjectAlternativeNames, depending on the value of
	* the matchAllNames flag (see {@link #setMatchAllSubjectAltNames
	* setMatchAllSubjectAltNames}).
	* <p>
	* This method allows the caller to add a name to the set of subject
	* alternative names.
	* The specified name is added to any previous value for the
	* subjectAlternativeNames criterion. If the specified name is a
	* duplicate, it may be ignored.
	* <p>
	* The name is provided in string format.
	* <a href="http://www.ietf.org/rfc/rfc822.txt">RFC 822</a>, DNS, and URI
	* names use the well-established string formats for those types (subject to
	* the restrictions included in RFC 3280). IPv4 address names are
	* supplied using dotted quad notation. OID address names are represented
	* as a series of nonnegative integers separated by periods. And
	* directory names (distinguished names) are supplied in RFC 2253 format.
	* No standard string format is defined for otherNames, X.400 names,
	* EDI party names, IPv6 address names, or any other type of names. They
	* should be specified using the
	* {@link #addSubjectAlternativeName(int type, byte [] name)
	* addSubjectAlternativeName(int type, byte [] name)}
	* method.
	* <p>
	* <strong>Note:</strong> for distinguished names, use
	* {@linkplain #addSubjectAlternativeName(int, byte[])} instead.
	* This method should not be relied on as it can fail to match some
	* certificates because of a loss of encoding information in the RFC 2253
	* String form of some distinguished names.
	*
	* @param type the name type (0-8, as specified in
	*             RFC 3280, section 4.2.1.7)
	* @param name the name in string form (not <code>null</code>)
	* @throws IOException if a parsing error occurs
	*/
	@:overload public function addSubjectAlternativeName(type : Int, name : String) : Void;
	
	/**
	* Adds a name to the subjectAlternativeNames criterion. The
	* <code>X509Certificate</code> must contain all or at least one
	* of the specified subjectAlternativeNames, depending on the value of
	* the matchAllNames flag (see {@link #setMatchAllSubjectAltNames
	* setMatchAllSubjectAltNames}).
	* <p>
	* This method allows the caller to add a name to the set of subject
	* alternative names.
	* The specified name is added to any previous value for the
	* subjectAlternativeNames criterion. If the specified name is a
	* duplicate, it may be ignored.
	* <p>
	* The name is provided as a byte array. This byte array should contain
	* the DER encoded name, as it would appear in the GeneralName structure
	* defined in RFC 3280 and X.509. The encoded byte array should only contain
	* the encoded value of the name, and should not include the tag associated
	* with the name in the GeneralName structure. The ASN.1 definition of this
	* structure appears below.
	* <pre><code>
	*  GeneralName ::= CHOICE {
	*       otherName                       [0]     OtherName,
	*       rfc822Name                      [1]     IA5String,
	*       dNSName                         [2]     IA5String,
	*       x400Address                     [3]     ORAddress,
	*       directoryName                   [4]     Name,
	*       ediPartyName                    [5]     EDIPartyName,
	*       uniformResourceIdentifier       [6]     IA5String,
	*       iPAddress                       [7]     OCTET STRING,
	*       registeredID                    [8]     OBJECT IDENTIFIER}
	* </code></pre>
	* <p>
	* Note that the byte array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param type the name type (0-8, as listed above)
	* @param name a byte array containing the name in ASN.1 DER encoded form
	* @throws IOException if a parsing error occurs
	*/
	@:overload public function addSubjectAlternativeName(type : Int, name : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the name constraints criterion. The <code>X509Certificate</code>
	* must have subject and subject alternative names that
	* meet the specified name constraints.
	* <p>
	* The name constraints are specified as a byte array. This byte array
	* should contain the DER encoded form of the name constraints, as they
	* would appear in the NameConstraints structure defined in RFC 3280
	* and X.509. The ASN.1 definition of this structure appears below.
	*
	* <pre><code>
	*  NameConstraints ::= SEQUENCE {
	*       permittedSubtrees       [0]     GeneralSubtrees OPTIONAL,
	*       excludedSubtrees        [1]     GeneralSubtrees OPTIONAL }
	*
	*  GeneralSubtrees ::= SEQUENCE SIZE (1..MAX) OF GeneralSubtree
	*
	*  GeneralSubtree ::= SEQUENCE {
	*       base                    GeneralName,
	*       minimum         [0]     BaseDistance DEFAULT 0,
	*       maximum         [1]     BaseDistance OPTIONAL }
	*
	*  BaseDistance ::= INTEGER (0..MAX)
	*
	*  GeneralName ::= CHOICE {
	*       otherName                       [0]     OtherName,
	*       rfc822Name                      [1]     IA5String,
	*       dNSName                         [2]     IA5String,
	*       x400Address                     [3]     ORAddress,
	*       directoryName                   [4]     Name,
	*       ediPartyName                    [5]     EDIPartyName,
	*       uniformResourceIdentifier       [6]     IA5String,
	*       iPAddress                       [7]     OCTET STRING,
	*       registeredID                    [8]     OBJECT IDENTIFIER}
	* </code></pre>
	* <p>
	* Note that the byte array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param bytes a byte array containing the ASN.1 DER encoding of
	*              a NameConstraints extension to be used for checking
	*              name constraints. Only the value of the extension is
	*              included, not the OID or criticality flag. Can be
	*              <code>null</code>,
	*              in which case no name constraints check will be performed.
	* @throws IOException if a parsing error occurs
	* @see #getNameConstraints
	*/
	@:overload public function setNameConstraints(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the basic constraints constraint. If the value is greater than or
	* equal to zero, <code>X509Certificates</code> must include a
	* basicConstraints extension with
	* a pathLen of at least this value. If the value is -2, only end-entity
	* certificates are accepted. If the value is -1, no check is done.
	* <p>
	* This constraint is useful when building a certification path forward
	* (from the target toward the trust anchor. If a partial path has been
	* built, any candidate certificate must have a maxPathLen value greater
	* than or equal to the number of certificates in the partial path.
	*
	* @param minMaxPathLen the value for the basic constraints constraint
	* @throws IllegalArgumentException if the value is less than -2
	* @see #getBasicConstraints
	*/
	@:overload public function setBasicConstraints(minMaxPathLen : Int) : Void;
	
	/**
	* Sets the policy constraint. The <code>X509Certificate</code> must
	* include at least one of the specified policies in its certificate
	* policies extension. If <code>certPolicySet</code> is empty, then the
	* <code>X509Certificate</code> must include at least some specified policy
	* in its certificate policies extension. If <code>certPolicySet</code> is
	* <code>null</code>, no policy check will be performed.
	* <p>
	* Note that the <code>Set</code> is cloned to protect against
	* subsequent modifications.
	*
	* @param certPolicySet a <code>Set</code> of certificate policy OIDs in
	*                      string format (or <code>null</code>). Each OID is
	*                      represented by a set of nonnegative integers
	*                    separated by periods.
	* @throws IOException if a parsing error occurs on the OID such as
	* the first component is not 0, 1 or 2 or the second component is
	* greater than 39.
	* @see #getPolicy
	*/
	@:overload public function setPolicy(certPolicySet : java.util.Set<String>) : Void;
	
	/**
	* Sets the pathToNames criterion. The <code>X509Certificate</code> must
	* not include name constraints that would prohibit building a
	* path to the specified names.
	* <p>
	* This method allows the caller to specify, with a single method call,
	* the complete set of names which the <code>X509Certificates</code>'s
	* name constraints must permit. The specified value replaces
	* the previous value for the pathToNames criterion.
	* <p>
	* This constraint is useful when building a certification path forward
	* (from the target toward the trust anchor. If a partial path has been
	* built, any candidate certificate must not include name constraints that
	* would prohibit building a path to any of the names in the partial path.
	* <p>
	* The <code>names</code> parameter (if not <code>null</code>) is a
	* <code>Collection</code> with one
	* entry for each name to be included in the pathToNames
	* criterion. Each entry is a <code>List</code> whose first entry is an
	* <code>Integer</code> (the name type, 0-8) and whose second
	* entry is a <code>String</code> or a byte array (the name, in
	* string or ASN.1 DER encoded form, respectively).
	* There can be multiple names of the same type. If <code>null</code>
	* is supplied as the value for this argument, no
	* pathToNames check will be performed.
	* <p>
	* Each name in the <code>Collection</code>
	* may be specified either as a <code>String</code> or as an ASN.1 encoded
	* byte array. For more details about the formats used, see
	* {@link #addPathToName(int type, String name)
	* addPathToName(int type, String name)} and
	* {@link #addPathToName(int type, byte [] name)
	* addPathToName(int type, byte [] name)}.
	* <p>
	* <strong>Note:</strong> for distinguished names, specify the byte
	* array form instead of the String form. See the note in
	* {@link #addPathToName(int, String)} for more information.
	* <p>
	* Note that the <code>names</code> parameter can contain duplicate
	* names (same name and name type), but they may be removed from the
	* <code>Collection</code> of names returned by the
	* {@link #getPathToNames getPathToNames} method.
	* <p>
	* Note that a deep copy is performed on the <code>Collection</code> to
	* protect against subsequent modifications.
	*
	* @param names a <code>Collection</code> with one entry per name
	*              (or <code>null</code>)
	* @throws IOException if a parsing error occurs
	* @see #getPathToNames
	*/
	@:overload public function setPathToNames(names : java.util.Collection<java.util.List<Dynamic>>) : Void;
	
	/**
	* Adds a name to the pathToNames criterion. The <code>X509Certificate</code>
	* must not include name constraints that would prohibit building a
	* path to the specified name.
	* <p>
	* This method allows the caller to add a name to the set of names which
	* the <code>X509Certificates</code>'s name constraints must permit.
	* The specified name is added to any previous value for the
	* pathToNames criterion.  If the name is a duplicate, it may be ignored.
	* <p>
	* The name is provided in string format. RFC 822, DNS, and URI names
	* use the well-established string formats for those types (subject to
	* the restrictions included in RFC 3280). IPv4 address names are
	* supplied using dotted quad notation. OID address names are represented
	* as a series of nonnegative integers separated by periods. And
	* directory names (distinguished names) are supplied in RFC 2253 format.
	* No standard string format is defined for otherNames, X.400 names,
	* EDI party names, IPv6 address names, or any other type of names. They
	* should be specified using the
	* {@link #addPathToName(int type, byte [] name)
	* addPathToName(int type, byte [] name)} method.
	* <p>
	* <strong>Note:</strong> for distinguished names, use
	* {@linkplain #addPathToName(int, byte[])} instead.
	* This method should not be relied on as it can fail to match some
	* certificates because of a loss of encoding information in the RFC 2253
	* String form of some distinguished names.
	*
	* @param type the name type (0-8, as specified in
	*             RFC 3280, section 4.2.1.7)
	* @param name the name in string form
	* @throws IOException if a parsing error occurs
	*/
	@:overload public function addPathToName(type : Int, name : String) : Void;
	
	/**
	* Adds a name to the pathToNames criterion. The <code>X509Certificate</code>
	* must not include name constraints that would prohibit building a
	* path to the specified name.
	* <p>
	* This method allows the caller to add a name to the set of names which
	* the <code>X509Certificates</code>'s name constraints must permit.
	* The specified name is added to any previous value for the
	* pathToNames criterion. If the name is a duplicate, it may be ignored.
	* <p>
	* The name is provided as a byte array. This byte array should contain
	* the DER encoded name, as it would appear in the GeneralName structure
	* defined in RFC 3280 and X.509. The ASN.1 definition of this structure
	* appears in the documentation for
	* {@link #addSubjectAlternativeName(int type, byte [] name)
	* addSubjectAlternativeName(int type, byte [] name)}.
	* <p>
	* Note that the byte array supplied here is cloned to protect against
	* subsequent modifications.
	*
	* @param type the name type (0-8, as specified in
	*             RFC 3280, section 4.2.1.7)
	* @param name a byte array containing the name in ASN.1 DER encoded form
	* @throws IOException if a parsing error occurs
	*/
	@:overload public function addPathToName(type : Int, name : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the certificateEquals criterion. The specified
	* <code>X509Certificate</code> must be equal to the
	* <code>X509Certificate</code> passed to the <code>match</code> method.
	* If <code>null</code>, this check is not applied.
	*
	* @return the <code>X509Certificate</code> to match (or <code>null</code>)
	* @see #setCertificate
	*/
	@:overload public function getCertificate() : java.security.cert.X509Certificate;
	
	/**
	* Returns the serialNumber criterion. The specified serial number
	* must match the certificate serial number in the
	* <code>X509Certificate</code>. If <code>null</code>, any certificate
	* serial number will do.
	*
	* @return the certificate serial number to match
	*                (or <code>null</code>)
	* @see #setSerialNumber
	*/
	@:overload public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* Returns the issuer criterion as an <code>X500Principal</code>. This
	* distinguished name must match the issuer distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, the issuer criterion
	* is disabled and any issuer distinguished name will do.
	*
	* @return the required issuer distinguished name as X500Principal
	*         (or <code>null</code>)
	* @since 1.5
	*/
	@:require(java5) @:overload public function getIssuer() : javax.security.auth.x500.X500Principal;
	
	/**
	* <strong>Denigrated</strong>, use {@linkplain #getIssuer()} or
	* {@linkplain #getIssuerAsBytes()} instead. This method should not be
	* relied on as it can fail to match some certificates because of a loss of
	* encoding information in the RFC 2253 String form of some distinguished
	* names.
	* <p>
	* Returns the issuer criterion as a <code>String</code>. This
	* distinguished name must match the issuer distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, the issuer criterion
	* is disabled and any issuer distinguished name will do.
	* <p>
	* If the value returned is not <code>null</code>, it is a
	* distinguished name, in RFC 2253 format.
	*
	* @return the required issuer distinguished name in RFC 2253 format
	*         (or <code>null</code>)
	*/
	@:overload public function getIssuerAsString() : String;
	
	/**
	* Returns the issuer criterion as a byte array. This distinguished name
	* must match the issuer distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, the issuer criterion
	* is disabled and any issuer distinguished name will do.
	* <p>
	* If the value returned is not <code>null</code>, it is a byte
	* array containing a single DER encoded distinguished name, as defined in
	* X.501. The ASN.1 notation for this structure is supplied in the
	* documentation for
	* {@link #setIssuer(byte [] issuerDN) setIssuer(byte [] issuerDN)}.
	* <p>
	* Note that the byte array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return a byte array containing the required issuer distinguished name
	*         in ASN.1 DER format (or <code>null</code>)
	* @throws IOException if an encoding error occurs
	*/
	@:overload public function getIssuerAsBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the subject criterion as an <code>X500Principal</code>. This
	* distinguished name must match the subject distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, the subject criterion
	* is disabled and any subject distinguished name will do.
	*
	* @return the required subject distinguished name as X500Principal
	*         (or <code>null</code>)
	* @since 1.5
	*/
	@:require(java5) @:overload public function getSubject() : javax.security.auth.x500.X500Principal;
	
	/**
	* <strong>Denigrated</strong>, use {@linkplain #getSubject()} or
	* {@linkplain #getSubjectAsBytes()} instead. This method should not be
	* relied on as it can fail to match some certificates because of a loss of
	* encoding information in the RFC 2253 String form of some distinguished
	* names.
	* <p>
	* Returns the subject criterion as a <code>String</code>. This
	* distinguished name must match the subject distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, the subject criterion
	* is disabled and any subject distinguished name will do.
	* <p>
	* If the value returned is not <code>null</code>, it is a
	* distinguished name, in RFC 2253 format.
	*
	* @return the required subject distinguished name in RFC 2253 format
	*         (or <code>null</code>)
	*/
	@:overload public function getSubjectAsString() : String;
	
	/**
	* Returns the subject criterion as a byte array. This distinguished name
	* must match the subject distinguished name in the
	* <code>X509Certificate</code>. If <code>null</code>, the subject criterion
	* is disabled and any subject distinguished name will do.
	* <p>
	* If the value returned is not <code>null</code>, it is a byte
	* array containing a single DER encoded distinguished name, as defined in
	* X.501. The ASN.1 notation for this structure is supplied in the
	* documentation for
	* {@link #setSubject(byte [] subjectDN) setSubject(byte [] subjectDN)}.
	* <p>
	* Note that the byte array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return a byte array containing the required subject distinguished name
	*         in ASN.1 DER format (or <code>null</code>)
	* @throws IOException if an encoding error occurs
	*/
	@:overload public function getSubjectAsBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the subjectKeyIdentifier criterion. The
	* <code>X509Certificate</code> must contain a SubjectKeyIdentifier
	* extension with the specified value. If <code>null</code>, no
	* subjectKeyIdentifier check will be done.
	* <p>
	* Note that the byte array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return the key identifier (or <code>null</code>)
	* @see #setSubjectKeyIdentifier
	*/
	@:overload public function getSubjectKeyIdentifier() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the authorityKeyIdentifier criterion. The
	* <code>X509Certificate</code> must contain a AuthorityKeyIdentifier
	* extension with the specified value. If <code>null</code>, no
	* authorityKeyIdentifier check will be done.
	* <p>
	* Note that the byte array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return the key identifier (or <code>null</code>)
	* @see #setAuthorityKeyIdentifier
	*/
	@:overload public function getAuthorityKeyIdentifier() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the certificateValid criterion. The specified date must fall
	* within the certificate validity period for the
	* <code>X509Certificate</code>. If <code>null</code>, no certificateValid
	* check will be done.
	* <p>
	* Note that the <code>Date</code> returned is cloned to protect against
	* subsequent modifications.
	*
	* @return the <code>Date</code> to check (or <code>null</code>)
	* @see #setCertificateValid
	*/
	@:overload public function getCertificateValid() : java.util.Date;
	
	/**
	* Returns the privateKeyValid criterion. The specified date must fall
	* within the private key validity period for the
	* <code>X509Certificate</code>. If <code>null</code>, no privateKeyValid
	* check will be done.
	* <p>
	* Note that the <code>Date</code> returned is cloned to protect against
	* subsequent modifications.
	*
	* @return the <code>Date</code> to check (or <code>null</code>)
	* @see #setPrivateKeyValid
	*/
	@:overload public function getPrivateKeyValid() : java.util.Date;
	
	/**
	* Returns the subjectPublicKeyAlgID criterion. The
	* <code>X509Certificate</code> must contain a subject public key
	* with the specified algorithm. If <code>null</code>, no
	* subjectPublicKeyAlgID check will be done.
	*
	* @return the object identifier (OID) of the signature algorithm to check
	*         for (or <code>null</code>). An OID is represented by a set of
	*         nonnegative integers separated by periods.
	* @see #setSubjectPublicKeyAlgID
	*/
	@:overload public function getSubjectPublicKeyAlgID() : String;
	
	/**
	* Returns the subjectPublicKey criterion. The
	* <code>X509Certificate</code> must contain the specified subject
	* public key. If <code>null</code>, no subjectPublicKey check will be done.
	*
	* @return the subject public key to check for (or <code>null</code>)
	* @see #setSubjectPublicKey
	*/
	@:overload public function getSubjectPublicKey() : java.security.PublicKey;
	
	/**
	* Returns the keyUsage criterion. The <code>X509Certificate</code>
	* must allow the specified keyUsage values. If null, no keyUsage
	* check will be done.
	* <p>
	* Note that the boolean array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return a boolean array in the same format as the boolean
	*                 array returned by
	* {@link X509Certificate#getKeyUsage() X509Certificate.getKeyUsage()}.
	*                 Or <code>null</code>.
	* @see #setKeyUsage
	*/
	@:overload public function getKeyUsage() : java.NativeArray<Bool>;
	
	/**
	* Returns the extendedKeyUsage criterion. The <code>X509Certificate</code>
	* must allow the specified key purposes in its extended key usage
	* extension. If the <code>keyPurposeSet</code> returned is empty or
	* <code>null</code>, no extendedKeyUsage check will be done. Note that an
	* <code>X509Certificate</code> that has no extendedKeyUsage extension
	* implicitly allows all key purposes.
	*
	* @return an immutable <code>Set</code> of key purpose OIDs in string
	* format (or <code>null</code>)
	* @see #setExtendedKeyUsage
	*/
	@:overload public function getExtendedKeyUsage() : java.util.Set<String>;
	
	/**
	* Indicates if the <code>X509Certificate</code> must contain all
	* or at least one of the subjectAlternativeNames
	* specified in the {@link #setSubjectAlternativeNames
	* setSubjectAlternativeNames} or {@link #addSubjectAlternativeName
	* addSubjectAlternativeName} methods. If <code>true</code>,
	* the <code>X509Certificate</code> must contain all of the
	* specified subject alternative names. If <code>false</code>, the
	* <code>X509Certificate</code> must contain at least one of the
	* specified subject alternative names.
	*
	* @return <code>true</code> if the flag is enabled;
	* <code>false</code> if the flag is disabled. The flag is
	* <code>true</code> by default.
	* @see #setMatchAllSubjectAltNames
	*/
	@:overload public function getMatchAllSubjectAltNames() : Bool;
	
	/**
	* Returns a copy of the subjectAlternativeNames criterion.
	* The <code>X509Certificate</code> must contain all or at least one
	* of the specified subjectAlternativeNames, depending on the value
	* of the matchAllNames flag (see {@link #getMatchAllSubjectAltNames
	* getMatchAllSubjectAltNames}). If the value returned is
	* <code>null</code>, no subjectAlternativeNames check will be performed.
	* <p>
	* If the value returned is not <code>null</code>, it is a
	* <code>Collection</code> with
	* one entry for each name to be included in the subject alternative name
	* criterion. Each entry is a <code>List</code> whose first entry is an
	* <code>Integer</code> (the name type, 0-8) and whose second
	* entry is a <code>String</code> or a byte array (the name, in
	* string or ASN.1 DER encoded form, respectively).
	* There can be multiple names of the same type.  Note that the
	* <code>Collection</code> returned may contain duplicate names (same name
	* and name type).
	* <p>
	* Each subject alternative name in the <code>Collection</code>
	* may be specified either as a <code>String</code> or as an ASN.1 encoded
	* byte array. For more details about the formats used, see
	* {@link #addSubjectAlternativeName(int type, String name)
	* addSubjectAlternativeName(int type, String name)} and
	* {@link #addSubjectAlternativeName(int type, byte [] name)
	* addSubjectAlternativeName(int type, byte [] name)}.
	* <p>
	* Note that a deep copy is performed on the <code>Collection</code> to
	* protect against subsequent modifications.
	*
	* @return a <code>Collection</code> of names (or <code>null</code>)
	* @see #setSubjectAlternativeNames
	*/
	@:overload public function getSubjectAlternativeNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	/**
	* Returns the name constraints criterion. The <code>X509Certificate</code>
	* must have subject and subject alternative names that
	* meet the specified name constraints.
	* <p>
	* The name constraints are returned as a byte array. This byte array
	* contains the DER encoded form of the name constraints, as they
	* would appear in the NameConstraints structure defined in RFC 3280
	* and X.509. The ASN.1 notation for this structure is supplied in the
	* documentation for
	* {@link #setNameConstraints(byte [] bytes) setNameConstraints(byte [] bytes)}.
	* <p>
	* Note that the byte array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return a byte array containing the ASN.1 DER encoding of
	*         a NameConstraints extension used for checking name constraints.
	*         <code>null</code> if no name constraints check will be performed.
	* @see #setNameConstraints
	*/
	@:overload public function getNameConstraints() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the basic constraints constraint. If the value is greater than
	* or equal to zero, the <code>X509Certificates</code> must include a
	* basicConstraints extension with a pathLen of at least this value.
	* If the value is -2, only end-entity certificates are accepted. If
	* the value is -1, no basicConstraints check is done.
	*
	* @return the value for the basic constraints constraint
	* @see #setBasicConstraints
	*/
	@:overload public function getBasicConstraints() : Int;
	
	/**
	* Returns the policy criterion. The <code>X509Certificate</code> must
	* include at least one of the specified policies in its certificate policies
	* extension. If the <code>Set</code> returned is empty, then the
	* <code>X509Certificate</code> must include at least some specified policy
	* in its certificate policies extension. If the <code>Set</code> returned is
	* <code>null</code>, no policy check will be performed.
	*
	* @return an immutable <code>Set</code> of certificate policy OIDs in
	*         string format (or <code>null</code>)
	* @see #setPolicy
	*/
	@:overload public function getPolicy() : java.util.Set<String>;
	
	/**
	* Returns a copy of the pathToNames criterion. The
	* <code>X509Certificate</code> must not include name constraints that would
	* prohibit building a path to the specified names. If the value
	* returned is <code>null</code>, no pathToNames check will be performed.
	* <p>
	* If the value returned is not <code>null</code>, it is a
	* <code>Collection</code> with one
	* entry for each name to be included in the pathToNames
	* criterion. Each entry is a <code>List</code> whose first entry is an
	* <code>Integer</code> (the name type, 0-8) and whose second
	* entry is a <code>String</code> or a byte array (the name, in
	* string or ASN.1 DER encoded form, respectively).
	* There can be multiple names of the same type. Note that the
	* <code>Collection</code> returned may contain duplicate names (same
	* name and name type).
	* <p>
	* Each name in the <code>Collection</code>
	* may be specified either as a <code>String</code> or as an ASN.1 encoded
	* byte array. For more details about the formats used, see
	* {@link #addPathToName(int type, String name)
	* addPathToName(int type, String name)} and
	* {@link #addPathToName(int type, byte [] name)
	* addPathToName(int type, byte [] name)}.
	* <p>
	* Note that a deep copy is performed on the <code>Collection</code> to
	* protect against subsequent modifications.
	*
	* @return a <code>Collection</code> of names (or <code>null</code>)
	* @see #setPathToNames
	*/
	@:overload public function getPathToNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	/**
	* Return a printable representation of the <code>CertSelector</code>.
	*
	* @return a <code>String</code> describing the contents of the
	*         <code>CertSelector</code>
	*/
	@:overload public function toString() : String;
	
	/**
	* Decides whether a <code>Certificate</code> should be selected.
	*
	* @param cert the <code>Certificate</code> to be checked
	* @return <code>true</code> if the <code>Certificate</code> should be
	*         selected, <code>false</code> otherwise
	*/
	@:overload public function match(cert : java.security.cert.Certificate) : Bool;
	
	/**
	* Returns a copy of this object.
	*
	* @return the copy
	*/
	@:overload public function clone() : Dynamic;
	
	
}
