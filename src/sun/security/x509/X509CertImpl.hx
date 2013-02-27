package sun.security.x509;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class X509CertImpl extends java.security.cert.X509Certificate implements sun.security.util.DerEncoder
{
	/**
	* Public attribute names.
	*/
	public static var NAME(default, null) : String;
	
	public static var INFO(default, null) : String;
	
	public static var ALG_ID(default, null) : String;
	
	public static var SIGNATURE(default, null) : String;
	
	public static var SIGNED_CERT(default, null) : String;
	
	/**
	* The following are defined for ease-of-use. These
	* are the most frequently retrieved attributes.
	*/
	public static var SUBJECT_DN(default, null) : String;
	
	public static var ISSUER_DN(default, null) : String;
	
	public static var SERIAL_ID(default, null) : String;
	
	public static var PUBLIC_KEY(default, null) : String;
	
	public static var VERSION(default, null) : String;
	
	public static var SIG_ALG(default, null) : String;
	
	public static var SIG(default, null) : String;
	
	private var info : sun.security.x509.X509CertInfo;
	
	private var algId : sun.security.x509.AlgorithmId;
	
	private var signature : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Unmarshals a certificate from its encoded form, parsing the
	* encoded bytes.  This form of constructor is used by agents which
	* need to examine and use certificate contents.  That is, this is
	* one of the more commonly used constructors.  Note that the buffer
	* must include only a certificate, and no "garbage" may be left at
	* the end.  If you need to ignore data at the end of a certificate,
	* use another constructor.
	*
	* @param certData the encoded bytes, with no trailing padding.
	* @exception CertificateException on parsing and initialization errors.
	*/
	@:overload public function new(certData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* unmarshals an X.509 certificate from an input stream.  If the
	* certificate is RFC1421 hex-encoded, then it must begin with
	* the line X509Factory.BEGIN_CERT and end with the line
	* X509Factory.END_CERT.
	*
	* @param in an input stream holding at least one certificate that may
	*        be either DER-encoded or RFC1421 hex-encoded version of the
	*        DER-encoded certificate.
	* @exception CertificateException on parsing and initialization errors.
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Construct an initialized X509 Certificate. The certificate is stored
	* in raw form and has to be signed to be useful.
	*
	* @params info the X509CertificateInfo which the Certificate is to be
	*              created from.
	*/
	@:overload public function new(certInfo : sun.security.x509.X509CertInfo) : Void;
	
	/**
	* Unmarshal a certificate from its encoded form, parsing a DER value.
	* This form of constructor is used by agents which need to examine
	* and use certificate contents.
	*
	* @param derVal the der value containing the encoded cert.
	* @exception CertificateException on parsing and initialization errors.
	*/
	@:overload public function new(derVal : sun.security.util.DerValue) : Void;
	
	/**
	* Appends the certificate to an output stream.
	*
	* @param out an input stream to which the certificate is appended.
	* @exception CertificateEncodingException on encoding errors.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* DER encode this object onto an output stream.
	* Implements the <code>DerEncoder</code> interface.
	*
	* @param out the output stream on which to write the DER encoding.
	*
	* @exception IOException on encoding error.
	*/
	@:overload public function derEncode(out : java.io.OutputStream) : Void;
	
	/**
	* Returns the encoded form of this certificate. It is
	* assumed that each certificate type would have only a single
	* form of encoding; for example, X.509 certificates would
	* be encoded as ASN.1 DER.
	*
	* @exception CertificateEncodingException if an encoding error occurs.
	*/
	@:overload override public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returned the encoding as an uncloned byte array. Callers must
	* guarantee that they neither modify it nor expose it to untrusted
	* code.
	*/
	@:overload public function getEncodedInternal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Throws an exception if the certificate was not signed using the
	* verification key provided.  Successfully verifying a certificate
	* does <em>not</em> indicate that one should trust the entity which
	* it represents.
	*
	* @param key the public key used for verification.
	*
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception NoSuchProviderException if there's no default provider.
	* @exception SignatureException on signature errors.
	* @exception CertificateException on encoding errors.
	*/
	@:overload override public function verify(key : java.security.PublicKey) : Void;
	
	/**
	* Throws an exception if the certificate was not signed using the
	* verification key provided.  Successfully verifying a certificate
	* does <em>not</em> indicate that one should trust the entity which
	* it represents.
	*
	* @param key the public key used for verification.
	* @param sigProvider the name of the provider.
	*
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchProviderException on incorrect provider.
	* @exception SignatureException on signature errors.
	* @exception CertificateException on encoding errors.
	*/
	@:overload @:synchronized override public function verify(key : java.security.PublicKey, sigProvider : String) : Void;
	
	/**
	* Creates an X.509 certificate, and signs it using the given key
	* (associating a signature algorithm and an X.500 name).
	* This operation is used to implement the certificate generation
	* functionality of a certificate authority.
	*
	* @param key the private key used for signing.
	* @param algorithm the name of the signature algorithm used.
	*
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception NoSuchProviderException if there's no default provider.
	* @exception SignatureException on signature errors.
	* @exception CertificateException on encoding errors.
	*/
	@:overload public function sign(key : java.security.PrivateKey, algorithm : String) : Void;
	
	/**
	* Creates an X.509 certificate, and signs it using the given key
	* (associating a signature algorithm and an X.500 name).
	* This operation is used to implement the certificate generation
	* functionality of a certificate authority.
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
	* @exception CertificateException on encoding errors.
	*/
	@:overload public function sign(key : java.security.PrivateKey, algorithm : String, provider : String) : Void;
	
	/**
	* Checks that the certificate is currently valid, i.e. the current
	* time is within the specified validity period.
	*
	* @exception CertificateExpiredException if the certificate has expired.
	* @exception CertificateNotYetValidException if the certificate is not
	* yet valid.
	*/
	@:overload override public function checkValidity() : Void;
	
	/**
	* Checks that the specified date is within the certificate's
	* validity period, or basically if the certificate would be
	* valid at the specified date/time.
	*
	* @param date the Date to check against to see if this certificate
	*        is valid at that date/time.
	*
	* @exception CertificateExpiredException if the certificate has expired
	* with respect to the <code>date</code> supplied.
	* @exception CertificateNotYetValidException if the certificate is not
	* yet valid with respect to the <code>date</code> supplied.
	*/
	@:overload override public function checkValidity(date : java.util.Date) : Void;
	
	/**
	* Return the requested attribute from the certificate.
	*
	* Note that the X509CertInfo is not cloned for performance reasons.
	* Callers must ensure that they do not modify it. All other
	* attributes are cloned.
	*
	* @param name the name of the attribute.
	* @exception CertificateParsingException on invalid attribute identifier.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Set the requested attribute in the certificate.
	*
	* @param name the name of the attribute.
	* @param obj the value of the attribute.
	* @exception CertificateException on invalid attribute identifier.
	* @exception IOException on encoding error of attribute.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Delete the requested attribute from the certificate.
	*
	* @param name the name of the attribute.
	* @exception CertificateException on invalid attribute identifier.
	* @exception IOException on other errors.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns a printable representation of the certificate.  This does not
	* contain all the information available to distinguish this from any
	* other certificate.  The certificate must be fully constructed
	* before this function may be called.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Gets the publickey from this certificate.
	*
	* @return the publickey.
	*/
	@:overload override public function getPublicKey() : java.security.PublicKey;
	
	/**
	* Gets the version number from the certificate.
	*
	* @return the version number, i.e. 1, 2 or 3.
	*/
	@:overload override public function getVersion() : Int;
	
	/**
	* Gets the serial number from the certificate.
	*
	* @return the serial number.
	*/
	@:overload override public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* Gets the serial number from the certificate as
	* a SerialNumber object.
	*
	* @return the serial number.
	*/
	@:overload public function getSerialNumberObject() : sun.security.x509.SerialNumber;
	
	/**
	* Gets the subject distinguished name from the certificate.
	*
	* @return the subject name.
	*/
	@:overload override public function getSubjectDN() : java.security.Principal;
	
	/**
	* Get subject name as X500Principal. Overrides implementation in
	* X509Certificate with a slightly more efficient version that is
	* also aware of X509CertImpl mutability.
	*/
	@:overload override public function getSubjectX500Principal() : javax.security.auth.x500.X500Principal;
	
	/**
	* Gets the issuer distinguished name from the certificate.
	*
	* @return the issuer name.
	*/
	@:overload override public function getIssuerDN() : java.security.Principal;
	
	/**
	* Get issuer name as X500Principal. Overrides implementation in
	* X509Certificate with a slightly more efficient version that is
	* also aware of X509CertImpl mutability.
	*/
	@:overload override public function getIssuerX500Principal() : javax.security.auth.x500.X500Principal;
	
	/**
	* Gets the notBefore date from the validity period of the certificate.
	*
	* @return the start date of the validity period.
	*/
	@:overload override public function getNotBefore() : java.util.Date;
	
	/**
	* Gets the notAfter date from the validity period of the certificate.
	*
	* @return the end date of the validity period.
	*/
	@:overload override public function getNotAfter() : java.util.Date;
	
	/**
	* Gets the DER encoded certificate informations, the
	* <code>tbsCertificate</code> from this certificate.
	* This can be used to verify the signature independently.
	*
	* @return the DER encoded certificate information.
	* @exception CertificateEncodingException if an encoding error occurs.
	*/
	@:overload override public function getTBSCertificate() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the raw Signature bits from the certificate.
	*
	* @return the signature.
	*/
	@:overload override public function getSignature() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the signature algorithm name for the certificate
	* signature algorithm.
	* For example, the string "SHA-1/DSA" or "DSS".
	*
	* @return the signature algorithm name.
	*/
	@:overload override public function getSigAlgName() : String;
	
	/**
	* Gets the signature algorithm OID string from the certificate.
	* For example, the string "1.2.840.10040.4.3"
	*
	* @return the signature algorithm oid string.
	*/
	@:overload override public function getSigAlgOID() : String;
	
	/**
	* Gets the DER encoded signature algorithm parameters from this
	* certificate's signature algorithm.
	*
	* @return the DER encoded signature algorithm parameters, or
	*         null if no parameters are present.
	*/
	@:overload override public function getSigAlgParams() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the Issuer Unique Identity from the certificate.
	*
	* @return the Issuer Unique Identity.
	*/
	@:overload override public function getIssuerUniqueID() : java.NativeArray<Bool>;
	
	/**
	* Gets the Subject Unique Identity from the certificate.
	*
	* @return the Subject Unique Identity.
	*/
	@:overload override public function getSubjectUniqueID() : java.NativeArray<Bool>;
	
	/**
	* Get AuthorityKeyIdentifier extension
	* @return AuthorityKeyIdentifier object or null (if no such object
	* in certificate)
	*/
	@:overload public function getAuthorityKeyIdentifierExtension() : sun.security.x509.AuthorityKeyIdentifierExtension;
	
	/**
	* Return the issuing authority's key identifier bytes, or null
	*/
	@:overload public function getIssuerKeyIdentifier() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get BasicConstraints extension
	* @return BasicConstraints object or null (if no such object in
	* certificate)
	*/
	@:overload public function getBasicConstraintsExtension() : sun.security.x509.BasicConstraintsExtension;
	
	/**
	* Get CertificatePoliciesExtension
	* @return CertificatePoliciesExtension or null (if no such object in
	* certificate)
	*/
	@:overload public function getCertificatePoliciesExtension() : sun.security.x509.CertificatePoliciesExtension;
	
	/**
	* Get ExtendedKeyUsage extension
	* @return ExtendedKeyUsage extension object or null (if no such object
	* in certificate)
	*/
	@:overload public function getExtendedKeyUsageExtension() : sun.security.x509.ExtendedKeyUsageExtension;
	
	/**
	* Get IssuerAlternativeName extension
	* @return IssuerAlternativeName object or null (if no such object in
	* certificate)
	*/
	@:overload public function getIssuerAlternativeNameExtension() : sun.security.x509.IssuerAlternativeNameExtension;
	
	/**
	* Get NameConstraints extension
	* @return NameConstraints object or null (if no such object in certificate)
	*/
	@:overload public function getNameConstraintsExtension() : sun.security.x509.NameConstraintsExtension;
	
	/**
	* Get PolicyConstraints extension
	* @return PolicyConstraints object or null (if no such object in
	* certificate)
	*/
	@:overload public function getPolicyConstraintsExtension() : sun.security.x509.PolicyConstraintsExtension;
	
	/**
	* Get PolicyMappingsExtension extension
	* @return PolicyMappingsExtension object or null (if no such object
	* in certificate)
	*/
	@:overload public function getPolicyMappingsExtension() : sun.security.x509.PolicyMappingsExtension;
	
	/**
	* Get PrivateKeyUsage extension
	* @return PrivateKeyUsage object or null (if no such object in certificate)
	*/
	@:overload public function getPrivateKeyUsageExtension() : sun.security.x509.PrivateKeyUsageExtension;
	
	/**
	* Get SubjectAlternativeName extension
	* @return SubjectAlternativeName object or null (if no such object in
	* certificate)
	*/
	@:overload public function getSubjectAlternativeNameExtension() : sun.security.x509.SubjectAlternativeNameExtension;
	
	/**
	* Get SubjectKeyIdentifier extension
	* @return SubjectKeyIdentifier object or null (if no such object in
	* certificate)
	*/
	@:overload public function getSubjectKeyIdentifierExtension() : sun.security.x509.SubjectKeyIdentifierExtension;
	
	/**
	* Returns the subject's key identifier bytes, or null
	*/
	@:overload public function getSubjectKeyIdentifier() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get CRLDistributionPoints extension
	* @return CRLDistributionPoints object or null (if no such object in
	* certificate)
	*/
	@:overload public function getCRLDistributionPointsExtension() : sun.security.x509.CRLDistributionPointsExtension;
	
	/**
	* Return true if a critical extension is found that is
	* not supported, otherwise return false.
	*/
	@:overload override public function hasUnsupportedCriticalExtension() : Bool;
	
	/**
	* Gets a Set of the extension(s) marked CRITICAL in the
	* certificate. In the returned set, each extension is
	* represented by its OID string.
	*
	* @return a set of the extension oid strings in the
	* certificate that are marked critical.
	*/
	@:overload override public function getCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets a Set of the extension(s) marked NON-CRITICAL in the
	* certificate. In the returned set, each extension is
	* represented by its OID string.
	*
	* @return a set of the extension oid strings in the
	* certificate that are NOT marked critical.
	*/
	@:overload override public function getNonCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets the extension identified by the given ObjectIdentifier
	*
	* @param oid the Object Identifier value for the extension.
	* @return Extension or null if certificate does not contain this
	*         extension
	*/
	@:overload public function getExtension(oid : sun.security.util.ObjectIdentifier) : java.security.cert.Extension;
	
	@:overload public function getUnparseableExtension(oid : sun.security.util.ObjectIdentifier) : java.security.cert.Extension;
	
	/**
	* Gets the DER encoded extension identified by the given
	* oid String.
	*
	* @param oid the Object Identifier value for the extension.
	*/
	@:overload override public function getExtensionValue(oid : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get a boolean array representing the bits of the KeyUsage extension,
	* (oid = 2.5.29.15).
	* @return the bit values of this extension as an array of booleans.
	*/
	@:overload override public function getKeyUsage() : java.NativeArray<Bool>;
	
	/**
	* This method are the overridden implementation of
	* getExtendedKeyUsage method in X509Certificate in the Sun
	* provider. It is better performance-wise since it returns cached
	* values.
	*/
	@:overload @:synchronized override public function getExtendedKeyUsage() : java.util.List<String>;
	
	/**
	* This static method is the default implementation of the
	* getExtendedKeyUsage method in X509Certificate. A
	* X509Certificate provider generally should overwrite this to
	* provide among other things caching for better performance.
	*/
	@:native('getExtendedKeyUsage') @:overload public static function _getExtendedKeyUsage(cert : java.security.cert.X509Certificate) : java.util.List<String>;
	
	/**
	* Get the certificate constraints path length from the
	* the critical BasicConstraints extension, (oid = 2.5.29.19).
	* @return the length of the constraint.
	*/
	@:overload override public function getBasicConstraints() : Int;
	
	/**
	* This method are the overridden implementation of
	* getSubjectAlternativeNames method in X509Certificate in the Sun
	* provider. It is better performance-wise since it returns cached
	* values.
	*/
	@:overload @:synchronized override public function getSubjectAlternativeNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	/**
	* This static method is the default implementation of the
	* getSubjectAlternaitveNames method in X509Certificate. A
	* X509Certificate provider generally should overwrite this to
	* provide among other things caching for better performance.
	*/
	@:native('getSubjectAlternativeNames') @:overload public static function _getSubjectAlternativeNames(cert : java.security.cert.X509Certificate) : java.util.Collection<java.util.List<Dynamic>>;
	
	/**
	* This method are the overridden implementation of
	* getIssuerAlternativeNames method in X509Certificate in the Sun
	* provider. It is better performance-wise since it returns cached
	* values.
	*/
	@:overload @:synchronized override public function getIssuerAlternativeNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	/**
	* This static method is the default implementation of the
	* getIssuerAlternaitveNames method in X509Certificate. A
	* X509Certificate provider generally should overwrite this to
	* provide among other things caching for better performance.
	*/
	@:native('getIssuerAlternativeNames') @:overload public static function _getIssuerAlternativeNames(cert : java.security.cert.X509Certificate) : java.util.Collection<java.util.List<Dynamic>>;
	
	@:overload public function getAuthorityInfoAccessExtension() : sun.security.x509.AuthorityInfoAccessExtension;
	
	/**
	* Extract the subject X500Principal from an X509Certificate.
	* Called from java.security.cert.X509Certificate.getSubjectX500Principal().
	*/
	@:native('getSubjectX500Principal') @:overload public static function _getSubjectX500Principal(cert : java.security.cert.X509Certificate) : javax.security.auth.x500.X500Principal;
	
	/**
	* Extract the issuer X500Principal from an X509Certificate.
	* Called from java.security.cert.X509Certificate.getIssuerX500Principal().
	*/
	@:native('getIssuerX500Principal') @:overload public static function _getIssuerX500Principal(cert : java.security.cert.X509Certificate) : javax.security.auth.x500.X500Principal;
	
	/**
	* Returned the encoding of the given certificate for internal use.
	* Callers must guarantee that they neither modify it nor expose it
	* to untrusted code. Uses getEncodedInternal() if the certificate
	* is instance of X509CertImpl, getEncoded() otherwise.
	*/
	@:native('getEncodedInternal') @:overload public static function _getEncodedInternal(cert : java.security.cert.Certificate) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Utility method to convert an arbitrary instance of X509Certificate
	* to a X509CertImpl. Does a cast if possible, otherwise reparses
	* the encoding.
	*/
	@:overload public static function toImpl(cert : java.security.cert.X509Certificate) : X509CertImpl;
	
	/**
	* Utility method to test if a certificate is self-issued. This is
	* the case iff the subject and issuer X500Principals are equal.
	*/
	@:overload public static function isSelfIssued(cert : java.security.cert.X509Certificate) : Bool;
	
	/**
	* Utility method to test if a certificate is self-signed. This is
	* the case iff the subject and issuer X500Principals are equal
	* AND the certificate's subject public key can be used to verify
	* the certificate. In case of exception, returns false.
	*/
	@:overload public static function isSelfSigned(cert : java.security.cert.X509Certificate, sigProvider : String) : Bool;
	
	
}
