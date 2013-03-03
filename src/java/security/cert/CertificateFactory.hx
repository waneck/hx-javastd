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
extern class CertificateFactory
{
	/**
	* Creates a CertificateFactory object of the given type, and encapsulates
	* the given provider implementation (SPI object) in it.
	*
	* @param certFacSpi the provider implementation.
	* @param provider the provider.
	* @param type the certificate type.
	*/
	@:overload @:protected private function new(certFacSpi : java.security.cert.CertificateFactorySpi, provider : java.security.Provider, type : String) : Void;
	
	/**
	* Returns a certificate factory object that implements the
	* specified certificate type.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new CertificateFactory object encapsulating the
	* CertificateFactorySpi implementation from the first
	* Provider that supports the specified type is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the name of the requested certificate type.
	* See the CertificateFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertificateFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard certificate types.
	*
	* @return a certificate factory object for the specified type.
	*
	* @exception CertificateException if no Provider supports a
	*          CertificateFactorySpi implementation for the
	*          specified type.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(type : String) : java.security.cert.CertificateFactory;
	
	/**
	* Returns a certificate factory object for the specified
	* certificate type.
	*
	* <p> A new CertificateFactory object encapsulating the
	* CertificateFactorySpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the certificate type.
	* See the CertificateFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertificateFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard certificate types.
	*
	* @param provider the name of the provider.
	*
	* @return a certificate factory object for the specified type.
	*
	* @exception CertificateException if a CertificateFactorySpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the provider name is null
	*          or empty.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(type : String, provider : String) : java.security.cert.CertificateFactory;
	
	/**
	* Returns a certificate factory object for the specified
	* certificate type.
	*
	* <p> A new CertificateFactory object encapsulating the
	* CertificateFactorySpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param type the certificate type.
	* See the CertificateFactory section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertificateFactory">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard certificate types.
	* @param provider the provider.
	*
	* @return a certificate factory object for the specified type.
	*
	* @exception CertificateException if a CertificateFactorySpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the <code>provider</code> is
	*          null.
	*
	* @see java.security.Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static @:final public static function getInstance(type : String, provider : java.security.Provider) : java.security.cert.CertificateFactory;
	
	/**
	* Returns the provider of this certificate factory.
	*
	* @return the provider of this certificate factory.
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the name of the certificate type associated with this
	* certificate factory.
	*
	* @return the name of the certificate type associated with this
	* certificate factory.
	*/
	@:overload @:public @:final public function getType() : String;
	
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
	* method consumes one certificate and the read position of the
	* input stream is positioned to the next available byte after
	* the inherent end-of-certificate marker. If the data in the input stream
	* does not contain an inherent end-of-certificate marker (other
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
	@:overload @:public @:final public function generateCertificate(inStream : java.io.InputStream) : java.security.cert.Certificate;
	
	/**
	* Returns an iteration of the <code>CertPath</code> encodings supported
	* by this certificate factory, with the default encoding first. See
	* the CertPath Encodings section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertPathEncodings">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard encoding names and their formats.
	* <p>
	* Attempts to modify the returned <code>Iterator</code> via its
	* <code>remove</code> method result in an
	* <code>UnsupportedOperationException</code>.
	*
	* @return an <code>Iterator</code> over the names of the supported
	*         <code>CertPath</code> encodings (as <code>String</code>s)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:final public function getCertPathEncodings() : java.util.Iterator<String>;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* the data read from the <code>InputStream</code> inStream. The data
	* is assumed to be in the default encoding. The name of the default
	* encoding is the first element of the <code>Iterator</code> returned by
	* the {@link #getCertPathEncodings getCertPathEncodings} method.
	*
	* @param inStream an <code>InputStream</code> containing the data
	* @return a <code>CertPath</code> initialized with the data from the
	*   <code>InputStream</code>
	* @exception CertificateException if an exception occurs while decoding
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:final public function generateCertPath(inStream : java.io.InputStream) : java.security.cert.CertPath;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* the data read from the <code>InputStream</code> inStream. The data
	* is assumed to be in the specified encoding. See
	* the CertPath Encodings section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertPathEncodings">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard encoding names and their formats.
	*
	* @param inStream an <code>InputStream</code> containing the data
	* @param encoding the encoding used for the data
	* @return a <code>CertPath</code> initialized with the data from the
	*   <code>InputStream</code>
	* @exception CertificateException if an exception occurs while decoding or
	*   the encoding requested is not supported
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:final public function generateCertPath(inStream : java.io.InputStream, encoding : String) : java.security.cert.CertPath;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* a <code>List</code> of <code>Certificate</code>s.
	* <p>
	* The certificates supplied must be of a type supported by the
	* <code>CertificateFactory</code>. They will be copied out of the supplied
	* <code>List</code> object.
	*
	* @param certificates a <code>List</code> of <code>Certificate</code>s
	* @return a <code>CertPath</code> initialized with the supplied list of
	*   certificates
	* @exception CertificateException if an exception occurs
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:final public function generateCertPath(certificates : java.util.List<java.security.cert.Certificate>) : java.security.cert.CertPath;
	
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
	* <code>inStream</code> may contain a sequence of DER-encoded certificates
	* in the formats described for
	* {@link #generateCertificate(java.io.InputStream) generateCertificate}.
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
	@:overload @:public @:final public function generateCertificates(inStream : java.io.InputStream) : java.util.Collection<java.security.cert.Certificate>;
	
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
	@:overload @:public @:final public function generateCRL(inStream : java.io.InputStream) : java.security.cert.CRL;
	
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
	* <code>inStream</code> may contain a sequence of DER-encoded CRLs.
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
	@:overload @:public @:final public function generateCRLs(inStream : java.io.InputStream) : java.util.Collection<java.security.cert.CRL>;
	
	
}
