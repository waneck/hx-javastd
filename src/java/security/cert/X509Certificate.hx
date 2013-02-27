package java.security.cert;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class X509Certificate extends java.security.cert.Certificate implements java.security.cert.X509Extension
{
	/**
	* Constructor for X.509 certificates.
	*/
	@:overload private function new() : Void;
	
	/**
	* Checks that the certificate is currently valid. It is if
	* the current date and time are within the validity period given in the
	* certificate.
	* <p>
	* The validity period consists of two date/time values:
	* the first and last dates (and times) on which the certificate
	* is valid. It is defined in
	* ASN.1 as:
	* <pre>
	* validity             Validity<p>
	* Validity ::= SEQUENCE {
	*     notBefore      CertificateValidityDate,
	*     notAfter       CertificateValidityDate }<p>
	* CertificateValidityDate ::= CHOICE {
	*     utcTime        UTCTime,
	*     generalTime    GeneralizedTime }
	* </pre>
	*
	* @exception CertificateExpiredException if the certificate has expired.
	* @exception CertificateNotYetValidException if the certificate is not
	* yet valid.
	*/
	@:overload @:abstract public function checkValidity() : Void;
	
	/**
	* Checks that the given date is within the certificate's
	* validity period. In other words, this determines whether the
	* certificate would be valid at the given date/time.
	*
	* @param date the Date to check against to see if this certificate
	*        is valid at that date/time.
	*
	* @exception CertificateExpiredException if the certificate has expired
	* with respect to the <code>date</code> supplied.
	* @exception CertificateNotYetValidException if the certificate is not
	* yet valid with respect to the <code>date</code> supplied.
	*
	* @see #checkValidity()
	*/
	@:overload @:abstract public function checkValidity(date : java.util.Date) : Void;
	
	/**
	* Gets the <code>version</code> (version number) value from the
	* certificate.
	* The ASN.1 definition for this is:
	* <pre>
	* version  [0] EXPLICIT Version DEFAULT v1<p>
	* Version ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
	* </pre>
	* @return the version number, i.e. 1, 2 or 3.
	*/
	@:overload @:abstract public function getVersion() : Int;
	
	/**
	* Gets the <code>serialNumber</code> value from the certificate.
	* The serial number is an integer assigned by the certification
	* authority to each certificate. It must be unique for each
	* certificate issued by a given CA (i.e., the issuer name and
	* serial number identify a unique certificate).
	* The ASN.1 definition for this is:
	* <pre>
	* serialNumber     CertificateSerialNumber<p>
	*
	* CertificateSerialNumber  ::=  INTEGER
	* </pre>
	*
	* @return the serial number.
	*/
	@:overload @:abstract public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* <strong>Denigrated</strong>, replaced by {@linkplain
	* #getIssuerX500Principal()}. This method returns the <code>issuer</code>
	* as an implementation specific Principal object, which should not be
	* relied upon by portable code.
	*
	* <p>
	* Gets the <code>issuer</code> (issuer distinguished name) value from
	* the certificate. The issuer name identifies the entity that signed (and
	* issued) the certificate.
	*
	* <p>The issuer name field contains an
	* X.500 distinguished name (DN).
	* The ASN.1 definition for this is:
	* <pre>
	* issuer    Name<p>
	*
	* Name ::= CHOICE { RDNSequence }
	* RDNSequence ::= SEQUENCE OF RelativeDistinguishedName
	* RelativeDistinguishedName ::=
	*     SET OF AttributeValueAssertion
	*
	* AttributeValueAssertion ::= SEQUENCE {
	*                               AttributeType,
	*                               AttributeValue }
	* AttributeType ::= OBJECT IDENTIFIER
	* AttributeValue ::= ANY
	* </pre>
	* The <code>Name</code> describes a hierarchical name composed of
	* attributes,
	* such as country name, and corresponding values, such as US.
	* The type of the <code>AttributeValue</code> component is determined by
	* the <code>AttributeType</code>; in general it will be a
	* <code>directoryString</code>. A <code>directoryString</code> is usually
	* one of <code>PrintableString</code>,
	* <code>TeletexString</code> or <code>UniversalString</code>.
	*
	* @return a Principal whose name is the issuer distinguished name.
	*/
	@:overload @:abstract public function getIssuerDN() : java.security.Principal;
	
	/**
	* Returns the issuer (issuer distinguished name) value from the
	* certificate as an <code>X500Principal</code>.
	* <p>
	* It is recommended that subclasses override this method.
	*
	* @return an <code>X500Principal</code> representing the issuer
	*          distinguished name
	* @since 1.4
	*/
	@:require(java4) @:overload public function getIssuerX500Principal() : javax.security.auth.x500.X500Principal;
	
	/**
	* <strong>Denigrated</strong>, replaced by {@linkplain
	* #getSubjectX500Principal()}. This method returns the <code>subject</code>
	* as an implementation specific Principal object, which should not be
	* relied upon by portable code.
	*
	* <p>
	* Gets the <code>subject</code> (subject distinguished name) value
	* from the certificate.  If the <code>subject</code> value is empty,
	* then the <code>getName()</code> method of the returned
	* <code>Principal</code> object returns an empty string ("").
	*
	* <p> The ASN.1 definition for this is:
	* <pre>
	* subject    Name
	* </pre>
	*
	* <p>See {@link #getIssuerDN() getIssuerDN} for <code>Name</code>
	* and other relevant definitions.
	*
	* @return a Principal whose name is the subject name.
	*/
	@:overload @:abstract public function getSubjectDN() : java.security.Principal;
	
	/**
	* Returns the subject (subject distinguished name) value from the
	* certificate as an <code>X500Principal</code>.  If the subject value
	* is empty, then the <code>getName()</code> method of the returned
	* <code>X500Principal</code> object returns an empty string ("").
	* <p>
	* It is recommended that subclasses override this method.
	*
	* @return an <code>X500Principal</code> representing the subject
	*          distinguished name
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSubjectX500Principal() : javax.security.auth.x500.X500Principal;
	
	/**
	* Gets the <code>notBefore</code> date from the validity period of
	* the certificate.
	* The relevant ASN.1 definitions are:
	* <pre>
	* validity             Validity<p>
	*
	* Validity ::= SEQUENCE {
	*     notBefore      CertificateValidityDate,
	*     notAfter       CertificateValidityDate }<p>
	* CertificateValidityDate ::= CHOICE {
	*     utcTime        UTCTime,
	*     generalTime    GeneralizedTime }
	* </pre>
	*
	* @return the start date of the validity period.
	* @see #checkValidity
	*/
	@:overload @:abstract public function getNotBefore() : java.util.Date;
	
	/**
	* Gets the <code>notAfter</code> date from the validity period of
	* the certificate. See {@link #getNotBefore() getNotBefore}
	* for relevant ASN.1 definitions.
	*
	* @return the end date of the validity period.
	* @see #checkValidity
	*/
	@:overload @:abstract public function getNotAfter() : java.util.Date;
	
	/**
	* Gets the DER-encoded certificate information, the
	* <code>tbsCertificate</code> from this certificate.
	* This can be used to verify the signature independently.
	*
	* @return the DER-encoded certificate information.
	* @exception CertificateEncodingException if an encoding error occurs.
	*/
	@:overload @:abstract public function getTBSCertificate() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the <code>signature</code> value (the raw signature bits) from
	* the certificate.
	* The ASN.1 definition for this is:
	* <pre>
	* signature     BIT STRING
	* </pre>
	*
	* @return the signature.
	*/
	@:overload @:abstract public function getSignature() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the signature algorithm name for the certificate
	* signature algorithm. An example is the string "SHA256withRSA".
	* The ASN.1 definition for this is:
	* <pre>
	* signatureAlgorithm   AlgorithmIdentifier<p>
	* AlgorithmIdentifier  ::=  SEQUENCE  {
	*     algorithm               OBJECT IDENTIFIER,
	*     parameters              ANY DEFINED BY algorithm OPTIONAL  }
	*                             -- contains a value of the type
	*                             -- registered for use with the
	*                             -- algorithm object identifier value
	* </pre>
	*
	* <p>The algorithm name is determined from the <code>algorithm</code>
	* OID string.
	*
	* @return the signature algorithm name.
	*/
	@:overload @:abstract public function getSigAlgName() : String;
	
	/**
	* Gets the signature algorithm OID string from the certificate.
	* An OID is represented by a set of nonnegative whole numbers separated
	* by periods.
	* For example, the string "1.2.840.10040.4.3" identifies the SHA-1
	* with DSA signature algorithm defined in
	* <a href="http://www.ietf.org/rfc/rfc3279.txt">RFC 3279: Algorithms and
	* Identifiers for the Internet X.509 Public Key Infrastructure Certificate
	* and CRL Profile</a>.
	*
	* <p>See {@link #getSigAlgName() getSigAlgName} for
	* relevant ASN.1 definitions.
	*
	* @return the signature algorithm OID string.
	*/
	@:overload @:abstract public function getSigAlgOID() : String;
	
	/**
	* Gets the DER-encoded signature algorithm parameters from this
	* certificate's signature algorithm. In most cases, the signature
	* algorithm parameters are null; the parameters are usually
	* supplied with the certificate's public key.
	* If access to individual parameter values is needed then use
	* {@link java.security.AlgorithmParameters AlgorithmParameters}
	* and instantiate with the name returned by
	* {@link #getSigAlgName() getSigAlgName}.
	*
	* <p>See {@link #getSigAlgName() getSigAlgName} for
	* relevant ASN.1 definitions.
	*
	* @return the DER-encoded signature algorithm parameters, or
	*         null if no parameters are present.
	*/
	@:overload @:abstract public function getSigAlgParams() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the <code>issuerUniqueID</code> value from the certificate.
	* The issuer unique identifier is present in the certificate
	* to handle the possibility of reuse of issuer names over time.
	* RFC 3280 recommends that names not be reused and that
	* conforming certificates not make use of unique identifiers.
	* Applications conforming to that profile should be capable of
	* parsing unique identifiers and making comparisons.
	*
	* <p>The ASN.1 definition for this is:
	* <pre>
	* issuerUniqueID  [1]  IMPLICIT UniqueIdentifier OPTIONAL<p>
	* UniqueIdentifier  ::=  BIT STRING
	* </pre>
	*
	* @return the issuer unique identifier or null if it is not
	* present in the certificate.
	*/
	@:overload @:abstract public function getIssuerUniqueID() : java.NativeArray<Bool>;
	
	/**
	* Gets the <code>subjectUniqueID</code> value from the certificate.
	*
	* <p>The ASN.1 definition for this is:
	* <pre>
	* subjectUniqueID  [2]  IMPLICIT UniqueIdentifier OPTIONAL<p>
	* UniqueIdentifier  ::=  BIT STRING
	* </pre>
	*
	* @return the subject unique identifier or null if it is not
	* present in the certificate.
	*/
	@:overload @:abstract public function getSubjectUniqueID() : java.NativeArray<Bool>;
	
	/**
	* Gets a boolean array representing bits of
	* the <code>KeyUsage</code> extension, (OID = 2.5.29.15).
	* The key usage extension defines the purpose (e.g., encipherment,
	* signature, certificate signing) of the key contained in the
	* certificate.
	* The ASN.1 definition for this is:
	* <pre>
	* KeyUsage ::= BIT STRING {
	*     digitalSignature        (0),
	*     nonRepudiation          (1),
	*     keyEncipherment         (2),
	*     dataEncipherment        (3),
	*     keyAgreement            (4),
	*     keyCertSign             (5),
	*     cRLSign                 (6),
	*     encipherOnly            (7),
	*     decipherOnly            (8) }
	* </pre>
	* RFC 3280 recommends that when used, this be marked
	* as a critical extension.
	*
	* @return the KeyUsage extension of this certificate, represented as
	* an array of booleans. The order of KeyUsage values in the array is
	* the same as in the above ASN.1 definition. The array will contain a
	* value for each KeyUsage defined above. If the KeyUsage list encoded
	* in the certificate is longer than the above list, it will not be
	* truncated. Returns null if this certificate does not
	* contain a KeyUsage extension.
	*/
	@:overload @:abstract public function getKeyUsage() : java.NativeArray<Bool>;
	
	/**
	* Gets an unmodifiable list of Strings representing the OBJECT
	* IDENTIFIERs of the <code>ExtKeyUsageSyntax</code> field of the
	* extended key usage extension, (OID = 2.5.29.37).  It indicates
	* one or more purposes for which the certified public key may be
	* used, in addition to or in place of the basic purposes
	* indicated in the key usage extension field.  The ASN.1
	* definition for this is:
	* <pre>
	* ExtKeyUsageSyntax ::= SEQUENCE SIZE (1..MAX) OF KeyPurposeId<p>
	*
	* KeyPurposeId ::= OBJECT IDENTIFIER<p>
	* </pre>
	*
	* Key purposes may be defined by any organization with a
	* need. Object identifiers used to identify key purposes shall be
	* assigned in accordance with IANA or ITU-T Rec. X.660 |
	* ISO/IEC/ITU 9834-1.
	* <p>
	* This method was added to version 1.4 of the Java 2 Platform Standard
	* Edition. In order to maintain backwards compatibility with existing
	* service providers, this method is not <code>abstract</code>
	* and it provides a default implementation. Subclasses
	* should override this method with a correct implementation.
	*
	* @return the ExtendedKeyUsage extension of this certificate,
	*         as an unmodifiable list of object identifiers represented
	*         as Strings. Returns null if this certificate does not
	*         contain an ExtendedKeyUsage extension.
	* @throws CertificateParsingException if the extension cannot be decoded
	* @since 1.4
	*/
	@:require(java4) @:overload public function getExtendedKeyUsage() : java.util.List<String>;
	
	/**
	* Gets the certificate constraints path length from the
	* critical <code>BasicConstraints</code> extension, (OID = 2.5.29.19).
	* <p>
	* The basic constraints extension identifies whether the subject
	* of the certificate is a Certificate Authority (CA) and
	* how deep a certification path may exist through that CA. The
	* <code>pathLenConstraint</code> field (see below) is meaningful
	* only if <code>cA</code> is set to TRUE. In this case, it gives the
	* maximum number of CA certificates that may follow this certificate in a
	* certification path. A value of zero indicates that only an end-entity
	* certificate may follow in the path.
	* <p>
	* The ASN.1 definition for this is:
	* <pre>
	* BasicConstraints ::= SEQUENCE {
	*     cA                  BOOLEAN DEFAULT FALSE,
	*     pathLenConstraint   INTEGER (0..MAX) OPTIONAL }
	* </pre>
	*
	* @return the value of <code>pathLenConstraint</code> if the
	* BasicConstraints extension is present in the certificate and the
	* subject of the certificate is a CA, otherwise -1.
	* If the subject of the certificate is a CA and
	* <code>pathLenConstraint</code> does not appear,
	* <code>Integer.MAX_VALUE</code> is returned to indicate that there is no
	* limit to the allowed length of the certification path.
	*/
	@:overload @:abstract public function getBasicConstraints() : Int;
	
	/**
	* Gets an immutable collection of subject alternative names from the
	* <code>SubjectAltName</code> extension, (OID = 2.5.29.17).
	* <p>
	* The ASN.1 definition of the <code>SubjectAltName</code> extension is:
	* <pre>
	* SubjectAltName ::= GeneralNames
	*
	* GeneralNames :: = SEQUENCE SIZE (1..MAX) OF GeneralName
	*
	* GeneralName ::= CHOICE {
	*      otherName                       [0]     OtherName,
	*      rfc822Name                      [1]     IA5String,
	*      dNSName                         [2]     IA5String,
	*      x400Address                     [3]     ORAddress,
	*      directoryName                   [4]     Name,
	*      ediPartyName                    [5]     EDIPartyName,
	*      uniformResourceIdentifier       [6]     IA5String,
	*      iPAddress                       [7]     OCTET STRING,
	*      registeredID                    [8]     OBJECT IDENTIFIER}
	* </pre>
	* <p>
	* If this certificate does not contain a <code>SubjectAltName</code>
	* extension, <code>null</code> is returned. Otherwise, a
	* <code>Collection</code> is returned with an entry representing each
	* <code>GeneralName</code> included in the extension. Each entry is a
	* <code>List</code> whose first entry is an <code>Integer</code>
	* (the name type, 0-8) and whose second entry is a <code>String</code>
	* or a byte array (the name, in string or ASN.1 DER encoded form,
	* respectively).
	* <p>
	* <a href="http://www.ietf.org/rfc/rfc822.txt">RFC 822</a>, DNS, and URI
	* names are returned as <code>String</code>s,
	* using the well-established string formats for those types (subject to
	* the restrictions included in RFC 3280). IPv4 address names are
	* returned using dotted quad notation. IPv6 address names are returned
	* in the form "a1:a2:...:a8", where a1-a8 are hexadecimal values
	* representing the eight 16-bit pieces of the address. OID names are
	* returned as <code>String</code>s represented as a series of nonnegative
	* integers separated by periods. And directory names (distinguished names)
	* are returned in <a href="http://www.ietf.org/rfc/rfc2253.txt">
	* RFC 2253</a> string format. No standard string format is
	* defined for otherNames, X.400 names, EDI party names, or any
	* other type of names. They are returned as byte arrays
	* containing the ASN.1 DER encoded form of the name.
	* <p>
	* Note that the <code>Collection</code> returned may contain more
	* than one name of the same type. Also, note that the returned
	* <code>Collection</code> is immutable and any entries containing byte
	* arrays are cloned to protect against subsequent modifications.
	* <p>
	* This method was added to version 1.4 of the Java 2 Platform Standard
	* Edition. In order to maintain backwards compatibility with existing
	* service providers, this method is not <code>abstract</code>
	* and it provides a default implementation. Subclasses
	* should override this method with a correct implementation.
	*
	* @return an immutable <code>Collection</code> of subject alternative
	* names (or <code>null</code>)
	* @throws CertificateParsingException if the extension cannot be decoded
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSubjectAlternativeNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	/**
	* Gets an immutable collection of issuer alternative names from the
	* <code>IssuerAltName</code> extension, (OID = 2.5.29.18).
	* <p>
	* The ASN.1 definition of the <code>IssuerAltName</code> extension is:
	* <pre>
	* IssuerAltName ::= GeneralNames
	* </pre>
	* The ASN.1 definition of <code>GeneralNames</code> is defined
	* in {@link #getSubjectAlternativeNames getSubjectAlternativeNames}.
	* <p>
	* If this certificate does not contain an <code>IssuerAltName</code>
	* extension, <code>null</code> is returned. Otherwise, a
	* <code>Collection</code> is returned with an entry representing each
	* <code>GeneralName</code> included in the extension. Each entry is a
	* <code>List</code> whose first entry is an <code>Integer</code>
	* (the name type, 0-8) and whose second entry is a <code>String</code>
	* or a byte array (the name, in string or ASN.1 DER encoded form,
	* respectively). For more details about the formats used for each
	* name type, see the <code>getSubjectAlternativeNames</code> method.
	* <p>
	* Note that the <code>Collection</code> returned may contain more
	* than one name of the same type. Also, note that the returned
	* <code>Collection</code> is immutable and any entries containing byte
	* arrays are cloned to protect against subsequent modifications.
	* <p>
	* This method was added to version 1.4 of the Java 2 Platform Standard
	* Edition. In order to maintain backwards compatibility with existing
	* service providers, this method is not <code>abstract</code>
	* and it provides a default implementation. Subclasses
	* should override this method with a correct implementation.
	*
	* @return an immutable <code>Collection</code> of issuer alternative
	* names (or <code>null</code>)
	* @throws CertificateParsingException if the extension cannot be decoded
	* @since 1.4
	*/
	@:require(java4) @:overload public function getIssuerAlternativeNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	/**
	* Gets a Set of the OID strings for the extension(s) marked
	* NON-CRITICAL in the certificate/CRL managed by the object
	* implementing this interface.
	*
	* Here is sample code to get a Set of non-critical extensions from an
	* X509CRL revoked certificate entry and print the OIDs:
	* <pre><code>
	* InputStream inStrm = null;
	* CertificateFactory cf = null;
	* X509CRL crl = null;
	* try {
	*     inStrm = new FileInputStream("DER-encoded-CRL");
	*     cf = CertificateFactory.getInstance("X.509");
	*     crl = (X509CRL)cf.generateCRL(inStrm);
	* } finally {
	*     if (inStrm != null) {
	*         inStrm.close();
	*     }
	* }<p>
	*
	* byte[] certData = &lt;DER-encoded certificate data&gt;
	* ByteArrayInputStream bais = new ByteArrayInputStream(certData);
	* X509Certificate cert = (X509Certificate)cf.generateCertificate(bais);
	* bais.close();
	* X509CRLEntry badCert =
	*              crl.getRevokedCertificate(cert.getSerialNumber());<p>
	*
	* if (badCert != null) {
	*     Set<String> nonCritSet = badCert.getNonCriticalExtensionOIDs();<p>
	*     if (nonCritSet != null)
	*         for (String oid : nonCritSet) {
	*             System.out.println(oid);
	*         }
	* }
	* </code></pre>
	*
	* @return a Set (or an empty Set if none are marked non-critical) of
	* the extension OID strings for extensions that are marked non-critical.
	* If there are no extensions present at all, then this method returns
	* null.
	*/
	@:overload @:public @:public public function getNonCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets a Set of the OID strings for the extension(s) marked
	* CRITICAL in the certificate/CRL managed by the object
	* implementing this interface.
	*
	* Here is sample code to get a Set of critical extensions from an
	* X509Certificate and print the OIDs:
	* <pre><code>
	* InputStream inStrm = null;
	* X509Certificate cert = null;
	* try {
	*     inStrm = new FileInputStream("DER-encoded-Cert");
	*     CertificateFactory cf = CertificateFactory.getInstance("X.509");
	*     cert = (X509Certificate)cf.generateCertificate(inStrm);
	* } finally {
	*     if (inStrm != null) {
	*         inStrm.close();
	*     }
	* }<p>
	*
	* Set<String> critSet = cert.getCriticalExtensionOIDs();
	* if (critSet != null && !critSet.isEmpty()) {
	*     System.out.println("Set of critical extensions:");
	*     for (String oid : critSet) {
	*         System.out.println(oid);
	*     }
	* }
	* </code></pre>
	* @return a Set (or an empty Set if none are marked critical) of
	* the extension OID strings for extensions that are marked critical.
	* If there are no extensions present at all, then this method returns
	* null.
	*/
	@:overload @:public @:public public function getCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets the DER-encoded OCTET string for the extension value
	* (<em>extnValue</em>) identified by the passed-in <code>oid</code>
	* String.
	* The <code>oid</code> string is
	* represented by a set of nonnegative whole numbers separated
	* by periods.
	*
	* <p>For example:<br>
	* <table border=groove summary="Examples of OIDs and extension names">
	* <tr>
	* <th>OID <em>(Object Identifier)</em></th>
	* <th>Extension Name</th></tr>
	* <tr><td>2.5.29.14</td>
	* <td>SubjectKeyIdentifier</td></tr>
	* <tr><td>2.5.29.15</td>
	* <td>KeyUsage</td></tr>
	* <tr><td>2.5.29.16</td>
	* <td>PrivateKeyUsage</td></tr>
	* <tr><td>2.5.29.17</td>
	* <td>SubjectAlternativeName</td></tr>
	* <tr><td>2.5.29.18</td>
	* <td>IssuerAlternativeName</td></tr>
	* <tr><td>2.5.29.19</td>
	* <td>BasicConstraints</td></tr>
	* <tr><td>2.5.29.30</td>
	* <td>NameConstraints</td></tr>
	* <tr><td>2.5.29.33</td>
	* <td>PolicyMappings</td></tr>
	* <tr><td>2.5.29.35</td>
	* <td>AuthorityKeyIdentifier</td></tr>
	* <tr><td>2.5.29.36</td>
	* <td>PolicyConstraints</td></tr>
	* </table>
	*
	* @param oid the Object Identifier value for the extension.
	* @return the DER-encoded octet string of the extension value or
	* null if it is not present.
	*/
	@:overload @:public @:public public function getExtensionValue(oid : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Check if there is a critical extension that is not supported.
	*
	* @return <tt>true</tt> if a critical extension is found that is
	* not supported, otherwise <tt>false</tt>.
	*/
	@:overload @:public @:public public function hasUnsupportedCriticalExtension() : Bool;
	
	
}
