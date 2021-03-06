package java.security.cert;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CertificateFactorySpi
{
	/**
	* Generates a certificate object and initializes it with
	* the data read from the input stream <code>inStream</code>.
	*
	* <p>In order to take advantage of the specialized certificate format
	* supported by this certificate factory,
	* the returned certificate object can be typecast to the corresponding
	* certificate class. For example, if this certificate
	* factory implements X.509 certificates, the returned certificate object
	* can be typecast to the <code>X509Certificate</code> class.
	*
	* <p>In the case of a certificate factory for X.509 certificates, the
	* certificate provided in <code>inStream</code> must be DER-encoded and
	* may be supplied in binary or printable (Base64) encoding. If the
	* certificate is provided in Base64 encoding, it must be bounded at
	* the beginning by -----BEGIN CERTIFICATE-----, and must be bounded at
	* the end by -----END CERTIFICATE-----.
	*
	* <p>Note that if the given input stream does not support
	* {@link java.io.InputStream#mark(int) mark} and
	* {@link java.io.InputStream#reset() reset}, this method will
	* consume the entire input stream. Otherwise, each call to this
	* method consumes one certificate and the read position of the input stream
	* is positioned to the next available byte after the inherent
	* end-of-certificate marker. If the data in the
	* input stream does not contain an inherent end-of-certificate marker (other
	* than EOF) and there is trailing data after the certificate is parsed, a
	* <code>CertificateException</code> is thrown.
	*
	* @param inStream an input stream with the certificate data.
	*
	* @return a certificate object initialized with the data
	* from the input stream.
	*
	* @exception CertificateException on parsing errors.
	*/
	@:overload @:public @:abstract public function engineGenerateCertificate(inStream : java.io.InputStream) : java.security.cert.Certificate;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* the data read from the <code>InputStream</code> inStream. The data
	* is assumed to be in the default encoding.
	*
	* <p> This method was added to version 1.4 of the Java 2 Platform
	* Standard Edition. In order to maintain backwards compatibility with
	* existing service providers, this method cannot be <code>abstract</code>
	* and by default throws an <code>UnsupportedOperationException</code>.
	*
	* @param inStream an <code>InputStream</code> containing the data
	* @return a <code>CertPath</code> initialized with the data from the
	*   <code>InputStream</code>
	* @exception CertificateException if an exception occurs while decoding
	* @exception UnsupportedOperationException if the method is not supported
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function engineGenerateCertPath(inStream : java.io.InputStream) : java.security.cert.CertPath;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* the data read from the <code>InputStream</code> inStream. The data
	* is assumed to be in the specified encoding.
	*
	* <p> This method was added to version 1.4 of the Java 2 Platform
	* Standard Edition. In order to maintain backwards compatibility with
	* existing service providers, this method cannot be <code>abstract</code>
	* and by default throws an <code>UnsupportedOperationException</code>.
	*
	* @param inStream an <code>InputStream</code> containing the data
	* @param encoding the encoding used for the data
	* @return a <code>CertPath</code> initialized with the data from the
	*   <code>InputStream</code>
	* @exception CertificateException if an exception occurs while decoding or
	*   the encoding requested is not supported
	* @exception UnsupportedOperationException if the method is not supported
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function engineGenerateCertPath(inStream : java.io.InputStream, encoding : String) : java.security.cert.CertPath;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* a <code>List</code> of <code>Certificate</code>s.
	* <p>
	* The certificates supplied must be of a type supported by the
	* <code>CertificateFactory</code>. They will be copied out of the supplied
	* <code>List</code> object.
	*
	* <p> This method was added to version 1.4 of the Java 2 Platform
	* Standard Edition. In order to maintain backwards compatibility with
	* existing service providers, this method cannot be <code>abstract</code>
	* and by default throws an <code>UnsupportedOperationException</code>.
	*
	* @param certificates a <code>List</code> of <code>Certificate</code>s
	* @return a <code>CertPath</code> initialized with the supplied list of
	*   certificates
	* @exception CertificateException if an exception occurs
	* @exception UnsupportedOperationException if the method is not supported
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function engineGenerateCertPath(certificates : java.util.List<java.security.cert.Certificate>) : java.security.cert.CertPath;
	
	/**
	* Returns an iteration of the <code>CertPath</code> encodings supported
	* by this certificate factory, with the default encoding first. See
	* the CertPath Encodings section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertPathEncodings">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard encoding names.
	* <p>
	* Attempts to modify the returned <code>Iterator</code> via its
	* <code>remove</code> method result in an
	* <code>UnsupportedOperationException</code>.
	*
	* <p> This method was added to version 1.4 of the Java 2 Platform
	* Standard Edition. In order to maintain backwards compatibility with
	* existing service providers, this method cannot be <code>abstract</code>
	* and by default throws an <code>UnsupportedOperationException</code>.
	*
	* @return an <code>Iterator</code> over the names of the supported
	*         <code>CertPath</code> encodings (as <code>String</code>s)
	* @exception UnsupportedOperationException if the method is not supported
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function engineGetCertPathEncodings() : java.util.Iterator<String>;
	
	/**
	* Returns a (possibly empty) collection view of the certificates read
	* from the given input stream <code>inStream</code>.
	*
	* <p>In order to take advantage of the specialized certificate format
	* supported by this certificate factory, each element in
	* the returned collection view can be typecast to the corresponding
	* certificate class. For example, if this certificate
	* factory implements X.509 certificates, the elements in the returned
	* collection can be typecast to the <code>X509Certificate</code> class.
	*
	* <p>In the case of a certificate factory for X.509 certificates,
	* <code>inStream</code> may contain a single DER-encoded certificate
	* in the formats described for
	* {@link CertificateFactory#generateCertificate(java.io.InputStream)
	* generateCertificate}.
	* In addition, <code>inStream</code> may contain a PKCS#7 certificate
	* chain. This is a PKCS#7 <i>SignedData</i> object, with the only
	* significant field being <i>certificates</i>. In particular, the
	* signature and the contents are ignored. This format allows multiple
	* certificates to be downloaded at once. If no certificates are present,
	* an empty collection is returned.
	*
	* <p>Note that if the given input stream does not support
	* {@link java.io.InputStream#mark(int) mark} and
	* {@link java.io.InputStream#reset() reset}, this method will
	* consume the entire input stream.
	*
	* @param inStream the input stream with the certificates.
	*
	* @return a (possibly empty) collection view of
	* java.security.cert.Certificate objects
	* initialized with the data from the input stream.
	*
	* @exception CertificateException on parsing errors.
	*/
	@:overload @:public @:abstract public function engineGenerateCertificates(inStream : java.io.InputStream) : java.util.Collection<java.security.cert.Certificate>;
	
	/**
	* Generates a certificate revocation list (CRL) object and initializes it
	* with the data read from the input stream <code>inStream</code>.
	*
	* <p>In order to take advantage of the specialized CRL format
	* supported by this certificate factory,
	* the returned CRL object can be typecast to the corresponding
	* CRL class. For example, if this certificate
	* factory implements X.509 CRLs, the returned CRL object
	* can be typecast to the <code>X509CRL</code> class.
	*
	* <p>Note that if the given input stream does not support
	* {@link java.io.InputStream#mark(int) mark} and
	* {@link java.io.InputStream#reset() reset}, this method will
	* consume the entire input stream. Otherwise, each call to this
	* method consumes one CRL and the read position of the input stream
	* is positioned to the next available byte after the inherent
	* end-of-CRL marker. If the data in the
	* input stream does not contain an inherent end-of-CRL marker (other
	* than EOF) and there is trailing data after the CRL is parsed, a
	* <code>CRLException</code> is thrown.
	*
	* @param inStream an input stream with the CRL data.
	*
	* @return a CRL object initialized with the data
	* from the input stream.
	*
	* @exception CRLException on parsing errors.
	*/
	@:overload @:public @:abstract public function engineGenerateCRL(inStream : java.io.InputStream) : java.security.cert.CRL;
	
	/**
	* Returns a (possibly empty) collection view of the CRLs read
	* from the given input stream <code>inStream</code>.
	*
	* <p>In order to take advantage of the specialized CRL format
	* supported by this certificate factory, each element in
	* the returned collection view can be typecast to the corresponding
	* CRL class. For example, if this certificate
	* factory implements X.509 CRLs, the elements in the returned
	* collection can be typecast to the <code>X509CRL</code> class.
	*
	* <p>In the case of a certificate factory for X.509 CRLs,
	* <code>inStream</code> may contain a single DER-encoded CRL.
	* In addition, <code>inStream</code> may contain a PKCS#7 CRL
	* set. This is a PKCS#7 <i>SignedData</i> object, with the only
	* significant field being <i>crls</i>. In particular, the
	* signature and the contents are ignored. This format allows multiple
	* CRLs to be downloaded at once. If no CRLs are present,
	* an empty collection is returned.
	*
	* <p>Note that if the given input stream does not support
	* {@link java.io.InputStream#mark(int) mark} and
	* {@link java.io.InputStream#reset() reset}, this method will
	* consume the entire input stream.
	*
	* @param inStream the input stream with the CRLs.
	*
	* @return a (possibly empty) collection view of
	* java.security.cert.CRL objects initialized with the data from the input
	* stream.
	*
	* @exception CRLException on parsing errors.
	*/
	@:overload @:public @:abstract public function engineGenerateCRLs(inStream : java.io.InputStream) : java.util.Collection<java.security.cert.CRL>;
	
	
}
