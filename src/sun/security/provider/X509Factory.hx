package sun.security.provider;
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
extern class X509Factory extends java.security.cert.CertificateFactorySpi
{
	/**
	* This class defines a certificate factory for X.509 v3 certificates &
	* certification paths, and X.509 v2 certificate revocation lists (CRLs).
	*
	* @author Jan Luehe
	* @author Hemma Prafullchandra
	* @author Sean Mullan
	*
	*
	* @see java.security.cert.CertificateFactorySpi
	* @see java.security.cert.Certificate
	* @see java.security.cert.CertPath
	* @see java.security.cert.CRL
	* @see java.security.cert.X509Certificate
	* @see java.security.cert.X509CRL
	* @see sun.security.x509.X509CertImpl
	* @see sun.security.x509.X509CRLImpl
	*/
	public static var BEGIN_CERT(default, null) : String;
	
	public static var END_CERT(default, null) : String;
	
	/**
	* Generates an X.509 certificate object and initializes it with
	* the data read from the input stream <code>is</code>.
	*
	* @param is an input stream with the certificate data.
	*
	* @return an X.509 certificate object initialized with the data
	* from the input stream.
	*
	* @exception CertificateException on parsing errors.
	*/
	@:overload override public function engineGenerateCertificate(is : java.io.InputStream) : java.security.cert.Certificate;
	
	/**
	* Return an interned X509CertImpl for the given certificate.
	* If the given X509Certificate or X509CertImpl is already present
	* in the cert cache, the cached object is returned. Otherwise,
	* if it is a X509Certificate, it is first converted to a X509CertImpl.
	* Then the X509CertImpl is added to the cache and returned.
	*
	* Note that all certificates created via generateCertificate(InputStream)
	* are already interned and this method does not need to be called.
	* It is useful for certificates that cannot be created via
	* generateCertificate() and for converting other X509Certificate
	* implementations to an X509CertImpl.
	*/
	@:overload @:synchronized public static function intern(c : java.security.cert.X509Certificate) : sun.security.x509.X509CertImpl;
	
	/**
	* Return an interned X509CRLImpl for the given certificate.
	* For more information, see intern(X509Certificate).
	*/
	@:overload @:synchronized public static function intern(c : java.security.cert.X509CRL) : sun.security.x509.X509CRLImpl;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* the data read from the <code>InputStream</code> inStream. The data
	* is assumed to be in the default encoding.
	*
	* @param inStream an <code>InputStream</code> containing the data
	* @return a <code>CertPath</code> initialized with the data from the
	*   <code>InputStream</code>
	* @exception CertificateException if an exception occurs while decoding
	* @since 1.4
	*/
	@:require(java4) @:overload override public function engineGenerateCertPath(inStream : java.io.InputStream) : java.security.cert.CertPath;
	
	/**
	* Generates a <code>CertPath</code> object and initializes it with
	* the data read from the <code>InputStream</code> inStream. The data
	* is assumed to be in the specified encoding.
	*
	* @param inStream an <code>InputStream</code> containing the data
	* @param encoding the encoding used for the data
	* @return a <code>CertPath</code> initialized with the data from the
	*   <code>InputStream</code>
	* @exception CertificateException if an exception occurs while decoding or
	*   the encoding requested is not supported
	* @since 1.4
	*/
	@:require(java4) @:overload override public function engineGenerateCertPath(inStream : java.io.InputStream, encoding : String) : java.security.cert.CertPath;
	
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
	@:require(java4) @:overload override public function engineGenerateCertPath(certificates : java.util.List<java.security.cert.Certificate>) : java.security.cert.CertPath;
	
	/**
	* Returns an iteration of the <code>CertPath</code> encodings supported
	* by this certificate factory, with the default encoding first.
	* <p>
	* Attempts to modify the returned <code>Iterator</code> via its
	* <code>remove</code> method result in an
	* <code>UnsupportedOperationException</code>.
	*
	* @return an <code>Iterator</code> over the names of the supported
	*         <code>CertPath</code> encodings (as <code>String</code>s)
	* @since 1.4
	*/
	@:require(java4) @:overload override public function engineGetCertPathEncodings() : java.util.Iterator<String>;
	
	/**
	* Returns a (possibly empty) collection view of X.509 certificates read
	* from the given input stream <code>is</code>.
	*
	* @param is the input stream with the certificates.
	*
	* @return a (possibly empty) collection view of X.509 certificate objects
	* initialized with the data from the input stream.
	*
	* @exception CertificateException on parsing errors.
	*/
	@:overload override public function engineGenerateCertificates(is : java.io.InputStream) : java.util.Collection<java.security.cert.Certificate>;
	
	/**
	* Generates an X.509 certificate revocation list (CRL) object and
	* initializes it with the data read from the given input stream
	* <code>is</code>.
	*
	* @param is an input stream with the CRL data.
	*
	* @return an X.509 CRL object initialized with the data
	* from the input stream.
	*
	* @exception CRLException on parsing errors.
	*/
	@:overload override public function engineGenerateCRL(is : java.io.InputStream) : java.security.cert.CRL;
	
	/**
	* Returns a (possibly empty) collection view of X.509 CRLs read
	* from the given input stream <code>is</code>.
	*
	* @param is the input stream with the CRLs.
	*
	* @return a (possibly empty) collection view of X.509 CRL objects
	* initialized with the data from the input stream.
	*
	* @exception CRLException on parsing errors.
	*/
	@:overload override public function engineGenerateCRLs(is : java.io.InputStream) : java.util.Collection<java.security.cert.CRL>;
	
	
}
