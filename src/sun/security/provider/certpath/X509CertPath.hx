package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class X509CertPath extends java.security.cert.CertPath
{
	/**
	* Creates an <code>X509CertPath</code> from a <code>List</code> of
	* <code>X509Certificate</code>s.
	* <p>
	* The certificates are copied out of the supplied <code>List</code>
	* object.
	*
	* @param certs a <code>List</code> of <code>X509Certificate</code>s
	* @exception CertificateException if <code>certs</code> contains an element
	*                      that is not an <code>X509Certificate</code>
	*/
	@:overload public function new(certs : java.util.List<java.security.cert.Certificate>) : Void;
	
	/**
	* Creates an <code>X509CertPath</code>, reading the encoded form
	* from an <code>InputStream</code>. The data is assumed to be in
	* the default encoding.
	*
	* @param is the <code>InputStream</code> to read the data from
	* @exception CertificateException if an exception occurs while decoding
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Creates an <code>X509CertPath</code>, reading the encoded form
	* from an InputStream. The data is assumed to be in the specified
	* encoding.
	*
	* @param is the <code>InputStream</code> to read the data from
	* @param encoding the encoding used
	* @exception CertificateException if an exception occurs while decoding or
	*   the encoding requested is not supported
	*/
	@:overload public function new(is : java.io.InputStream, encoding : String) : Void;
	
	/**
	* Returns the encoded form of this certification path, using the
	* default encoding.
	*
	* @return the encoded bytes
	* @exception CertificateEncodingException if an encoding error occurs
	*/
	@:overload public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the encoded form of this certification path, using the
	* specified encoding.
	*
	* @param encoding the name of the encoding to use
	* @return the encoded bytes
	* @exception CertificateEncodingException if an encoding error occurs or
	*   the encoding requested is not supported
	*/
	@:overload public function getEncoded(encoding : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the encodings supported by this certification path, with the
	* default encoding first.
	*
	* @return an <code>Iterator</code> over the names of the supported
	*         encodings (as Strings)
	*/
	@:overload public static function getEncodingsStatic() : java.util.Iterator<String>;
	
	/**
	* Returns an iteration of the encodings supported by this certification
	* path, with the default encoding first.
	* <p>
	* Attempts to modify the returned <code>Iterator</code> via its
	* <code>remove</code> method result in an
	* <code>UnsupportedOperationException</code>.
	*
	* @return an <code>Iterator</code> over the names of the supported
	*         encodings (as Strings)
	*/
	@:overload public function getEncodings() : java.util.Iterator<String>;
	
	/**
	* Returns the list of certificates in this certification path.
	* The <code>List</code> returned must be immutable and thread-safe.
	*
	* @return an immutable <code>List</code> of <code>X509Certificate</code>s
	*         (may be empty, but not null)
	*/
	@:overload public function getCertificates() : java.util.List<java.security.cert.X509Certificate>;
	
	
}
