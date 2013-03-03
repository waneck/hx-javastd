package java.security.cert;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class X509CRLEntry implements java.security.cert.X509Extension
{
	/**
	* Compares this CRL entry for equality with the given
	* object. If the <code>other</code> object is an
	* <code>instanceof</code> <code>X509CRLEntry</code>, then
	* its encoded form (the inner SEQUENCE) is retrieved and compared
	* with the encoded form of this CRL entry.
	*
	* @param other the object to test for equality with this CRL entry.
	* @return true iff the encoded forms of the two CRL entries
	* match, false otherwise.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this CRL entry from its
	* encoded form.
	*
	* @return the hashcode value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the ASN.1 DER-encoded form of this CRL Entry,
	* that is the inner SEQUENCE.
	*
	* @return the encoded form of this certificate
	* @exception CRLException if an encoding error occurs.
	*/
	@:overload @:public @:abstract public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the serial number from this X509CRLEntry,
	* the <em>userCertificate</em>.
	*
	* @return the serial number.
	*/
	@:overload @:public @:abstract public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* Get the issuer of the X509Certificate described by this entry. If
	* the certificate issuer is also the CRL issuer, this method returns
	* null.
	*
	* <p>This method is used with indirect CRLs. The default implementation
	* always returns null. Subclasses that wish to support indirect CRLs
	* should override it.
	*
	* @return the issuer of the X509Certificate described by this entry
	* or null if it is issued by the CRL issuer.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getCertificateIssuer() : javax.security.auth.x500.X500Principal;
	
	/**
	* Gets the revocation date from this X509CRLEntry,
	* the <em>revocationDate</em>.
	*
	* @return the revocation date.
	*/
	@:overload @:public @:abstract public function getRevocationDate() : java.util.Date;
	
	/**
	* Returns true if this CRL entry has extensions.
	*
	* @return true if this entry has extensions, false otherwise.
	*/
	@:overload @:public @:abstract public function hasExtensions() : Bool;
	
	/**
	* Returns a string representation of this CRL entry.
	*
	* @return a string representation of this CRL entry.
	*/
	@:overload @:public @:abstract public function toString() : String;
	
	/**
	* Returns the reason the certificate has been revoked, as specified
	* in the Reason Code extension of this CRL entry.
	*
	* @return the reason the certificate has been revoked, or
	*    <code>null</code> if this CRL entry does not have
	*    a Reason Code extension
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function getRevocationReason() : java.security.cert.CRLReason;
	
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
