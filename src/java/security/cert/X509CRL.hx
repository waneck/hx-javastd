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
extern class X509CRL extends java.security.cert.CRL implements java.security.cert.X509Extension
{
	/**
	* Constructor for X.509 CRLs.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Compares this CRL for equality with the given
	* object. If the <code>other</code> object is an
	* <code>instanceof</code> <code>X509CRL</code>, then
	* its encoded form is retrieved and compared with the
	* encoded form of this CRL.
	*
	* @param other the object to test for equality with this CRL.
	*
	* @return true iff the encoded forms of the two CRLs
	* match, false otherwise.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this CRL from its
	* encoded form.
	*
	* @return the hashcode value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the ASN.1 DER-encoded form of this CRL.
	*
	* @return the encoded form of this certificate
	* @exception CRLException if an encoding error occurs.
	*/
	@:overload @:public @:abstract public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Verifies that this CRL was signed using the
	* private key that corresponds to the given public key.
	*
	* @param key the PublicKey used to carry out the verification.
	*
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchProviderException if there's no default provider.
	* @exception SignatureException on signature errors.
	* @exception CRLException on encoding errors.
	*/
	@:overload @:public @:abstract public function verify(key : java.security.PublicKey) : Void;
	
	/**
	* Verifies that this CRL was signed using the
	* private key that corresponds to the given public key.
	* This method uses the signature verification engine
	* supplied by the given provider.
	*
	* @param key the PublicKey used to carry out the verification.
	* @param sigProvider the name of the signature provider.
	*
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchProviderException on incorrect provider.
	* @exception SignatureException on signature errors.
	* @exception CRLException on encoding errors.
	*/
	@:overload @:public @:abstract public function verify(key : java.security.PublicKey, sigProvider : String) : Void;
	
	/**
	* Gets the <code>version</code> (version number) value from the CRL.
	* The ASN.1 definition for this is:
	* <pre>
	* version    Version OPTIONAL,
	*             -- if present, must be v2<p>
	* Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
	*             -- v3 does not apply to CRLs but appears for consistency
	*             -- with definition of Version for certs
	* </pre>
	*
	* @return the version number, i.e. 1 or 2.
	*/
	@:overload @:public @:abstract public function getVersion() : Int;
	
	/**
	* <strong>Denigrated</strong>, replaced by {@linkplain
	* #getIssuerX500Principal()}. This method returns the <code>issuer</code>
	* as an implementation specific Principal object, which should not be
	* relied upon by portable code.
	*
	* <p>
	* Gets the <code>issuer</code> (issuer distinguished name) value from
	* the CRL. The issuer name identifies the entity that signed (and
	* issued) the CRL.
	*
	* <p>The issuer name field contains an
	* X.500 distinguished name (DN).
	* The ASN.1 definition for this is:
	* <pre>
	* issuer    Name
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
	@:overload @:public @:abstract public function getIssuerDN() : java.security.Principal;
	
	/**
	* Returns the issuer (issuer distinguished name) value from the
	* CRL as an <code>X500Principal</code>.
	* <p>
	* It is recommended that subclasses override this method.
	*
	* @return an <code>X500Principal</code> representing the issuer
	*          distinguished name
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getIssuerX500Principal() : javax.security.auth.x500.X500Principal;
	
	/**
	* Gets the <code>thisUpdate</code> date from the CRL.
	* The ASN.1 definition for this is:
	* <pre>
	* thisUpdate   ChoiceOfTime
	* ChoiceOfTime ::= CHOICE {
	*     utcTime        UTCTime,
	*     generalTime    GeneralizedTime }
	* </pre>
	*
	* @return the <code>thisUpdate</code> date from the CRL.
	*/
	@:overload @:public @:abstract public function getThisUpdate() : java.util.Date;
	
	/**
	* Gets the <code>nextUpdate</code> date from the CRL.
	*
	* @return the <code>nextUpdate</code> date from the CRL, or null if
	* not present.
	*/
	@:overload @:public @:abstract public function getNextUpdate() : java.util.Date;
	
	/**
	* Gets the CRL entry, if any, with the given certificate serialNumber.
	*
	* @param serialNumber the serial number of the certificate for which a CRL entry
	* is to be looked up
	* @return the entry with the given serial number, or null if no such entry
	* exists in this CRL.
	* @see X509CRLEntry
	*/
	@:overload @:public @:abstract public function getRevokedCertificate(serialNumber : java.math.BigInteger) : java.security.cert.X509CRLEntry;
	
	/**
	* Get the CRL entry, if any, for the given certificate.
	*
	* <p>This method can be used to lookup CRL entries in indirect CRLs,
	* that means CRLs that contain entries from issuers other than the CRL
	* issuer. The default implementation will only return entries for
	* certificates issued by the CRL issuer. Subclasses that wish to
	* support indirect CRLs should override this method.
	*
	* @param certificate the certificate for which a CRL entry is to be looked
	*   up
	* @return the entry for the given certificate, or null if no such entry
	*   exists in this CRL.
	* @exception NullPointerException if certificate is null
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getRevokedCertificate(certificate : java.security.cert.X509Certificate) : java.security.cert.X509CRLEntry;
	
	/**
	* Gets all the entries from this CRL.
	* This returns a Set of X509CRLEntry objects.
	*
	* @return all the entries or null if there are none present.
	* @see X509CRLEntry
	*/
	@:overload @:public @:abstract public function getRevokedCertificates() : java.util.Set<java.security.cert.X509CRLEntry>;
	
	/**
	* Gets the DER-encoded CRL information, the
	* <code>tbsCertList</code> from this CRL.
	* This can be used to verify the signature independently.
	*
	* @return the DER-encoded CRL information.
	* @exception CRLException if an encoding error occurs.
	*/
	@:overload @:public @:abstract public function getTBSCertList() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the <code>signature</code> value (the raw signature bits) from
	* the CRL.
	* The ASN.1 definition for this is:
	* <pre>
	* signature     BIT STRING
	* </pre>
	*
	* @return the signature.
	*/
	@:overload @:public @:abstract public function getSignature() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the signature algorithm name for the CRL
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
	@:overload @:public @:abstract public function getSigAlgName() : String;
	
	/**
	* Gets the signature algorithm OID string from the CRL.
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
	@:overload @:public @:abstract public function getSigAlgOID() : String;
	
	/**
	* Gets the DER-encoded signature algorithm parameters from this
	* CRL's signature algorithm. In most cases, the signature
	* algorithm parameters are null; the parameters are usually
	* supplied with the public key.
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
	@:overload @:public @:abstract public function getSigAlgParams() : java.NativeArray<java.StdTypes.Int8>;
	
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
	@:overload @:public public function getNonCriticalExtensionOIDs() : java.util.Set<String>;
	
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
	@:overload @:public public function getCriticalExtensionOIDs() : java.util.Set<String>;
	
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
	@:overload @:public public function getExtensionValue(oid : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Check if there is a critical extension that is not supported.
	*
	* @return <tt>true</tt> if a critical extension is found that is
	* not supported, otherwise <tt>false</tt>.
	*/
	@:overload @:public public function hasUnsupportedCriticalExtension() : Bool;
	
	
}
