package javax.security.cert;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class X509Certificate extends javax.security.cert.Certificate
{
	/**
	* Instantiates an X509Certificate object, and initializes it with
	* the data read from the input stream <code>inStream</code>.
	* The implementation (X509Certificate is an abstract class) is
	* provided by the class specified as the value of the
	* <code>cert.provider.x509v1</code>
	* property in the security properties file.
	*
	* <p>Note: Only one DER-encoded
	* certificate is expected to be in the input stream.
	* Also, all X509Certificate
	* subclasses must provide a constructor of the form:
	* <code><pre>
	* public &lt;subClass&gt;(InputStream inStream) ...
	* </pre></code>
	*
	* @param inStream an input stream with the data to be read to
	*        initialize the certificate.
	* @return an X509Certificate object initialized with the data
	*         from the input stream.
	* @exception CertificateException if a class initialization
	*            or certificate parsing error occurs.
	*/
	@:overload @:final public static function getInstance(inStream : java.io.InputStream) : javax.security.cert.X509Certificate;
	
	/**
	* Instantiates an X509Certificate object, and initializes it with
	* the specified byte array.
	* The implementation (X509Certificate is an abstract class) is
	* provided by the class specified as the value of the
	* <code>cert.provider.x509v1</code>
	* property in the security properties file.
	*
	* <p>Note: All X509Certificate
	* subclasses must provide a constructor of the form:
	* <code><pre>
	* public &lt;subClass&gt;(InputStream inStream) ...
	* </pre></code>
	*
	* @param certData a byte array containing the DER-encoded
	*        certificate.
	* @return an X509Certificate object initialized with the data
	*         from <code>certData</code>.
	* @exception CertificateException if a class initialization
	*            or certificate parsing error occurs.
	*/
	@:overload @:final public static function getInstance(certData : java.NativeArray<java.StdTypes.Int8>) : javax.security.cert.X509Certificate;
	
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
	*            yet valid.
	*/
	@:overload @:abstract public function checkValidity() : Void;
	
	/**
	* Checks that the specified date is within the certificate's
	* validity period. In other words, this determines whether the
	* certificate would be valid at the specified date/time.
	*
	* @param date the Date to check against to see if this certificate
	*        is valid at that date/time.
	* @exception CertificateExpiredException if the certificate has expired
	*            with respect to the <code>date</code> supplied.
	* @exception CertificateNotYetValidException if the certificate is not
	*            yet valid with respect to the <code>date</code> supplied.
	* @see #checkValidity()
	*/
	@:overload @:abstract public function checkValidity(date : java.util.Date) : Void;
	
	/**
	* Gets the <code>version</code> (version number) value from the
	* certificate. The ASN.1 definition for this is:
	* <pre>
	* version         [0]  EXPLICIT Version DEFAULT v1<p>
	* Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
	* </pre>
	*
	* @return the version number from the ASN.1 encoding, i.e. 0, 1 or 2.
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
	* attributes, such as country name, and corresponding values, such as US.
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
	* Gets the <code>subject</code> (subject distinguished name) value
	* from the certificate.
	* The ASN.1 definition for this is:
	* <pre>
	* subject    Name
	* </pre>
	*
	* <p>See {@link #getIssuerDN() getIssuerDN} for <code>Name</code>
	* and other relevant definitions.
	*
	* @return a Principal whose name is the subject name.
	* @see #getIssuerDN()
	*/
	@:overload @:abstract public function getSubjectDN() : java.security.Principal;
	
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
	* @see #checkValidity()
	*/
	@:overload @:abstract public function getNotBefore() : java.util.Date;
	
	/**
	* Gets the <code>notAfter</code> date from the validity period of
	* the certificate. See {@link #getNotBefore() getNotBefore}
	* for relevant ASN.1 definitions.
	*
	* @return the end date of the validity period.
	* @see #checkValidity()
	*/
	@:overload @:abstract public function getNotAfter() : java.util.Date;
	
	/**
	* Gets the signature algorithm name for the certificate
	* signature algorithm. An example is the string "SHA-1/DSA".
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
	* An OID is represented by a set of positive whole numbers separated
	* by periods.
	* For example, the string "1.2.840.10040.4.3" identifies the SHA-1
	* with DSA signature algorithm, as per the PKIX part I.
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
	*
	* <p>See {@link #getSigAlgName() getSigAlgName} for
	* relevant ASN.1 definitions.
	*
	* @return the DER-encoded signature algorithm parameters, or
	*         null if no parameters are present.
	*/
	@:overload @:abstract public function getSigAlgParams() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
