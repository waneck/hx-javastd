package sun.security.x509;
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
extern class X509CRLImpl extends java.security.cert.X509CRL implements sun.security.util.DerEncoder
{
	/**
	* Unmarshals an X.509 CRL from its encoded form, parsing the encoded
	* bytes.  This form of constructor is used by agents which
	* need to examine and use CRL contents. Note that the buffer
	* must include only one CRL, and no "garbage" may be left at
	* the end.
	*
	* @param crlData the encoded bytes, with no trailing padding.
	* @exception CRLException on parsing errors.
	*/
	@:overload public function new(crlData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Unmarshals an X.509 CRL from an DER value.
	*
	* @param val a DER value holding at least one CRL
	* @exception CRLException on parsing errors.
	*/
	@:overload public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Unmarshals an X.509 CRL from an input stream. Only one CRL
	* is expected at the end of the input stream.
	*
	* @param inStrm an input stream holding at least one CRL
	* @exception CRLException on parsing errors.
	*/
	@:overload public function new(inStrm : java.io.InputStream) : Void;
	
	/**
	* Initial CRL constructor, no revoked certs, and no extensions.
	*
	* @param issuer the name of the CA issuing this CRL.
	* @param thisUpdate the Date of this issue.
	* @param nextUpdate the Date of the next CRL.
	*/
	@:overload public function new(issuer : sun.security.x509.X500Name, thisDate : java.util.Date, nextDate : java.util.Date) : Void;
	
	/**
	* CRL constructor, revoked certs, no extensions.
	*
	* @param issuer the name of the CA issuing this CRL.
	* @param thisUpdate the Date of this issue.
	* @param nextUpdate the Date of the next CRL.
	* @param badCerts the array of CRL entries.
	*
	* @exception CRLException on parsing/construction errors.
	*/
	@:overload public function new(issuer : sun.security.x509.X500Name, thisDate : java.util.Date, nextDate : java.util.Date, badCerts : java.NativeArray<java.security.cert.X509CRLEntry>) : Void;
	
	/**
	* CRL constructor, revoked certs and extensions.
	*
	* @param issuer the name of the CA issuing this CRL.
	* @param thisUpdate the Date of this issue.
	* @param nextUpdate the Date of the next CRL.
	* @param badCerts the array of CRL entries.
	* @param crlExts the CRL extensions.
	*
	* @exception CRLException on parsing/construction errors.
	*/
	@:overload public function new(issuer : sun.security.x509.X500Name, thisDate : java.util.Date, nextDate : java.util.Date, badCerts : java.NativeArray<java.security.cert.X509CRLEntry>, crlExts : sun.security.x509.CRLExtensions) : Void;
	
	/**
	* Returned the encoding as an uncloned byte array. Callers must
	* guarantee that they neither modify it nor expose it to untrusted
	* code.
	*/
	@:overload public function getEncodedInternal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the ASN.1 DER encoded form of this CRL.
	*
	* @exception CRLException if an encoding error occurs.
	*/
	@:overload override public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encodes the "to-be-signed" CRL to the OutputStream.
	*
	* @param out the OutputStream to write to.
	* @exception CRLException on encoding errors.
	*/
	@:overload public function encodeInfo(out : java.io.OutputStream) : Void;
	
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
	@:overload override public function verify(key : java.security.PublicKey) : Void;
	
	/**
	* Verifies that this CRL was signed using the
	* private key that corresponds to the given public key,
	* and that the signature verification was computed by
	* the given provider.
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
	@:overload @:synchronized override public function verify(key : java.security.PublicKey, sigProvider : String) : Void;
	
	/**
	* Encodes an X.509 CRL, and signs it using the given key.
	*
	* @param key the private key used for signing.
	* @param algorithm the name of the signature algorithm used.
	*
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchProviderException on incorrect provider.
	* @exception SignatureException on signature errors.
	* @exception CRLException if any mandatory data was omitted.
	*/
	@:overload public function sign(key : java.security.PrivateKey, algorithm : String) : Void;
	
	/**
	* Encodes an X.509 CRL, and signs it using the given key.
	*
	* @param key the private key used for signing.
	* @param algorithm the name of the signature algorithm used.
	* @param provider the name of the provider.
	*
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchProviderException on incorrect provider.
	* @exception SignatureException on signature errors.
	* @exception CRLException if any mandatory data was omitted.
	*/
	@:overload public function sign(key : java.security.PrivateKey, algorithm : String, provider : String) : Void;
	
	/**
	* Returns a printable string of this CRL.
	*
	* @return value of this CRL in a printable form.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Checks whether the given certificate is on this CRL.
	*
	* @param cert the certificate to check for.
	* @return true if the given certificate is on this CRL,
	* false otherwise.
	*/
	@:overload override public function isRevoked(cert : java.security.cert.Certificate) : Bool;
	
	/**
	* Gets the version number from this CRL.
	* The ASN.1 definition for this is:
	* <pre>
	* Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
	*             -- v3 does not apply to CRLs but appears for consistency
	*             -- with definition of Version for certs
	* </pre>
	* @return the version number, i.e. 1 or 2.
	*/
	@:overload override public function getVersion() : Int;
	
	/**
	* Gets the issuer distinguished name from this CRL.
	* The issuer name identifies the entity who has signed (and
	* issued the CRL). The issuer name field contains an
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
	* The Name describes a hierarchical name composed of attributes,
	* such as country name, and corresponding values, such as US.
	* The type of the component AttributeValue is determined by the
	* AttributeType; in general it will be a directoryString.
	* A directoryString is usually one of PrintableString,
	* TeletexString or UniversalString.
	* @return the issuer name.
	*/
	@:overload override public function getIssuerDN() : java.security.Principal;
	
	/**
	* Return the issuer as X500Principal. Overrides method in X509CRL
	* to provide a slightly more efficient version.
	*/
	@:overload override public function getIssuerX500Principal() : javax.security.auth.x500.X500Principal;
	
	/**
	* Gets the thisUpdate date from the CRL.
	* The ASN.1 definition for this is:
	*
	* @return the thisUpdate date from the CRL.
	*/
	@:overload override public function getThisUpdate() : java.util.Date;
	
	/**
	* Gets the nextUpdate date from the CRL.
	*
	* @return the nextUpdate date from the CRL, or null if
	* not present.
	*/
	@:overload override public function getNextUpdate() : java.util.Date;
	
	/**
	* Gets the CRL entry with the given serial number from this CRL.
	*
	* @return the entry with the given serial number, or <code>null</code> if
	* no such entry exists in the CRL.
	* @see X509CRLEntry
	*/
	@:overload override public function getRevokedCertificate(serialNumber : java.math.BigInteger) : java.security.cert.X509CRLEntry;
	
	/**
	* Gets the CRL entry for the given certificate.
	*/
	@:overload override public function getRevokedCertificate(cert : java.security.cert.X509Certificate) : java.security.cert.X509CRLEntry;
	
	/**
	* Gets all the revoked certificates from the CRL.
	* A Set of X509CRLEntry.
	*
	* @return all the revoked certificates or <code>null</code> if there are
	* none.
	* @see X509CRLEntry
	*/
	@:overload override public function getRevokedCertificates() : java.util.Set<java.security.cert.X509CRLEntry>;
	
	/**
	* Gets the DER encoded CRL information, the
	* <code>tbsCertList</code> from this CRL.
	* This can be used to verify the signature independently.
	*
	* @return the DER encoded CRL information.
	* @exception CRLException on encoding errors.
	*/
	@:overload override public function getTBSCertList() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the raw Signature bits from the CRL.
	*
	* @return the signature.
	*/
	@:overload override public function getSignature() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the signature algorithm name for the CRL
	* signature algorithm. For example, the string "SHA1withDSA".
	* The ASN.1 definition for this is:
	* <pre>
	* AlgorithmIdentifier  ::=  SEQUENCE  {
	*     algorithm               OBJECT IDENTIFIER,
	*     parameters              ANY DEFINED BY algorithm OPTIONAL  }
	*                             -- contains a value of the type
	*                             -- registered for use with the
	*                             -- algorithm object identifier value
	* </pre>
	*
	* @return the signature algorithm name.
	*/
	@:overload override public function getSigAlgName() : String;
	
	/**
	* Gets the signature algorithm OID string from the CRL.
	* An OID is represented by a set of positive whole number separated
	* by ".", that means,<br>
	* &lt;positive whole number&gt;.&lt;positive whole number&gt;.&lt;...&gt;
	* For example, the string "1.2.840.10040.4.3" identifies the SHA-1
	* with DSA signature algorithm defined in
	* <a href="http://www.ietf.org/rfc/rfc3279.txt">RFC 3279: Algorithms and
	* Identifiers for the Internet X.509 Public Key Infrastructure Certificate
	* and CRL Profile</a>.
	*
	* @return the signature algorithm oid string.
	*/
	@:overload override public function getSigAlgOID() : String;
	
	/**
	* Gets the DER encoded signature algorithm parameters from this
	* CRL's signature algorithm. In most cases, the signature
	* algorithm parameters are null, the parameters are usually
	* supplied with the Public Key.
	*
	* @return the DER encoded signature algorithm parameters, or
	*         null if no parameters are present.
	*/
	@:overload override public function getSigAlgParams() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the signature AlgorithmId from the CRL.
	*
	* @return the signature AlgorithmId
	*/
	@:overload public function getSigAlgId() : sun.security.x509.AlgorithmId;
	
	/**
	* return the AuthorityKeyIdentifier, if any.
	*
	* @returns AuthorityKeyIdentifier or null
	*          (if no AuthorityKeyIdentifierExtension)
	* @throws IOException on error
	*/
	@:overload public function getAuthKeyId() : sun.security.x509.KeyIdentifier;
	
	/**
	* return the AuthorityKeyIdentifierExtension, if any.
	*
	* @returns AuthorityKeyIdentifierExtension or null (if no such extension)
	* @throws IOException on error
	*/
	@:overload public function getAuthKeyIdExtension() : sun.security.x509.AuthorityKeyIdentifierExtension;
	
	/**
	* return the CRLNumberExtension, if any.
	*
	* @returns CRLNumberExtension or null (if no such extension)
	* @throws IOException on error
	*/
	@:overload public function getCRLNumberExtension() : sun.security.x509.CRLNumberExtension;
	
	/**
	* return the CRL number from the CRLNumberExtension, if any.
	*
	* @returns number or null (if no such extension)
	* @throws IOException on error
	*/
	@:overload public function getCRLNumber() : java.math.BigInteger;
	
	/**
	* return the DeltaCRLIndicatorExtension, if any.
	*
	* @returns DeltaCRLIndicatorExtension or null (if no such extension)
	* @throws IOException on error
	*/
	@:overload public function getDeltaCRLIndicatorExtension() : sun.security.x509.DeltaCRLIndicatorExtension;
	
	/**
	* return the base CRL number from the DeltaCRLIndicatorExtension, if any.
	*
	* @returns number or null (if no such extension)
	* @throws IOException on error
	*/
	@:overload public function getBaseCRLNumber() : java.math.BigInteger;
	
	/**
	* return the IssuerAlternativeNameExtension, if any.
	*
	* @returns IssuerAlternativeNameExtension or null (if no such extension)
	* @throws IOException on error
	*/
	@:overload public function getIssuerAltNameExtension() : sun.security.x509.IssuerAlternativeNameExtension;
	
	/**
	* return the IssuingDistributionPointExtension, if any.
	*
	* @returns IssuingDistributionPointExtension or null
	*          (if no such extension)
	* @throws IOException on error
	*/
	@:overload public function getIssuingDistributionPointExtension() : sun.security.x509.IssuingDistributionPointExtension;
	
	/**
	* Return true if a critical extension is found that is
	* not supported, otherwise return false.
	*/
	@:overload override public function hasUnsupportedCriticalExtension() : Bool;
	
	/**
	* Gets a Set of the extension(s) marked CRITICAL in the
	* CRL. In the returned set, each extension is represented by
	* its OID string.
	*
	* @return a set of the extension oid strings in the
	* CRL that are marked critical.
	*/
	@:overload override public function getCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets a Set of the extension(s) marked NON-CRITICAL in the
	* CRL. In the returned set, each extension is represented by
	* its OID string.
	*
	* @return a set of the extension oid strings in the
	* CRL that are NOT marked critical.
	*/
	@:overload override public function getNonCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets the DER encoded OCTET string for the extension value
	* (<code>extnValue</code>) identified by the passed in oid String.
	* The <code>oid</code> string is
	* represented by a set of positive whole number separated
	* by ".", that means,<br>
	* &lt;positive whole number&gt;.&lt;positive whole number&gt;.&lt;...&gt;
	*
	* @param oid the Object Identifier value for the extension.
	* @return the der encoded octet string of the extension value.
	*/
	@:overload override public function getExtensionValue(oid : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* get an extension
	*
	* @param oid ObjectIdentifier of extension desired
	* @returns Object of type <extension> or null, if not found
	* @throws IOException on error
	*/
	@:overload public function getExtension(oid : sun.security.util.ObjectIdentifier) : Dynamic;
	
	/**
	* Extract the issuer X500Principal from an X509CRL. Parses the encoded
	* form of the CRL to preserve the principal's ASN.1 encoding.
	*
	* Called by java.security.cert.X509CRL.getIssuerX500Principal().
	*/
	@:native('getIssuerX500Principal') @:overload public static function _getIssuerX500Principal(crl : java.security.cert.X509CRL) : javax.security.auth.x500.X500Principal;
	
	/**
	* Returned the encoding of the given certificate for internal use.
	* Callers must guarantee that they neither modify it nor expose it
	* to untrusted code. Uses getEncodedInternal() if the certificate
	* is instance of X509CertImpl, getEncoded() otherwise.
	*/
	@:native('getEncodedInternal') @:overload public static function _getEncodedInternal(crl : java.security.cert.X509CRL) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Utility method to convert an arbitrary instance of X509CRL
	* to a X509CRLImpl. Does a cast if possible, otherwise reparses
	* the encoding.
	*/
	@:overload public static function toImpl(crl : java.security.cert.X509CRL) : X509CRLImpl;
	
	@:overload public function derEncode(out : java.io.OutputStream) : Void;
	
	
}
/**
* Immutable X.509 Certificate Issuer DN and serial number pair
*/
@:native('sun$security$x509$X509CRLImpl$X509IssuerSerial') @:internal extern class X509CRLImpl_X509IssuerSerial implements java.lang.Comparable<X509CRLImpl_X509IssuerSerial>
{
	/**
	* Compares this X509Serial with another and returns true if they
	* are equivalent.
	*
	* @param o the other object to compare with
	* @return true if equal, false otherwise
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this X509IssuerSerial.
	*
	* @return the hash code value
	*/
	@:overload public function hashCode() : Int;
	
	@:overload public function compareTo(another : X509CRLImpl_X509IssuerSerial) : Int;
	
	
}
