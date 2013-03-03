package java.security.cert;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface X509Extension
{
	/**
	* Check if there is a critical extension that is not supported.
	*
	* @return <tt>true</tt> if a critical extension is found that is
	* not supported, otherwise <tt>false</tt>.
	*/
	@:overload @:public @:public @:public @:public public function hasUnsupportedCriticalExtension() : Bool;
	
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
	@:overload @:public @:public @:public @:public public function getCriticalExtensionOIDs() : java.util.Set<String>;
	
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
	@:overload @:public @:public @:public @:public public function getNonCriticalExtensionOIDs() : java.util.Set<String>;
	
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
	@:overload @:public @:public @:public @:public public function getExtensionValue(oid : String) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
