package com.sun.jarsigner;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface ContentSignerParameters
{
	/**
	* Retrieves the command-line arguments passed to the jarsigner tool.
	*
	* @return The command-line arguments. May be null.
	*/
	@:overload public function getCommandLine() : java.NativeArray<String>;
	
	/**
	* Retrieves the identifier for a Timestamping Authority (TSA).
	*
	* @return The TSA identifier. May be null.
	*/
	@:overload public function getTimestampingAuthority() : java.net.URI;
	
	/**
	* Retrieves the certificate for a Timestamping Authority (TSA).
	*
	* @return The TSA certificate. May be null.
	*/
	@:overload public function getTimestampingAuthorityCertificate() : java.security.cert.X509Certificate;
	
	/**
	* Retrieves the JAR file's signature.
	*
	* @return The non-null array of signature bytes.
	*/
	@:overload public function getSignature() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the name of the signature algorithm.
	*
	* @return The non-null string name of the signature algorithm.
	*/
	@:overload public function getSignatureAlgorithm() : String;
	
	/**
	* Retrieves the signer's X.509 certificate chain.
	*
	* @return The non-null array of X.509 public-key certificates.
	*/
	@:overload public function getSignerCertificateChain() : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Retrieves the content that was signed.
	* The content is the JAR file's signature file.
	*
	* @return The content bytes. May be null.
	*/
	@:overload public function getContent() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the original source ZIP file before it was signed.
	*
	* @return The original ZIP file. May be null.
	*/
	@:overload public function getSource() : java.util.zip.ZipFile;
	
	
}
