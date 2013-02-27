package com.sun.net.ssl;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
* NOTE:  this file was copied from javax.net.ssl.HttpsURLConnection
*/
extern class HttpsURLConnection extends java.net.HttpURLConnection
{
	/*
	* Initialize an HTTPS URLConnection ... could check that the URL
	* is an "https" URL, and that the handler is also an HTTPS one,
	* but that's established by other code in this package.
	* @param url the URL
	*/
	@:overload public function new(url : java.net.URL) : Void;
	
	/**
	* Returns the cipher suite in use on this connection.
	* @return the cipher suite
	*/
	@:overload @:abstract public function getCipherSuite() : String;
	
	/**
	* Returns the server's X.509 certificate chain, or null if
	* the server did not authenticate.
	* @return the server certificate chain
	*/
	@:overload @:abstract public function getServerCertificateChain() : java.NativeArray<javax.security.cert.X509Certificate>;
	
	private var hostnameVerifier : com.sun.net.ssl.HostnameVerifier;
	
	/**
	* Sets the default HostnameVerifier inherited when an instance
	* of this class is created.
	* @param v the default host name verifier
	*/
	@:overload public static function setDefaultHostnameVerifier(v : com.sun.net.ssl.HostnameVerifier) : Void;
	
	/**
	* Gets the default HostnameVerifier.
	* @return the default host name verifier
	*/
	@:overload public static function getDefaultHostnameVerifier() : com.sun.net.ssl.HostnameVerifier;
	
	/**
	* Sets the HostnameVerifier.
	* @param v the host name verifier
	*/
	@:overload public function setHostnameVerifier(v : com.sun.net.ssl.HostnameVerifier) : Void;
	
	/**
	* Gets the HostnameVerifier.
	* @return the host name verifier
	*/
	@:overload public function getHostnameVerifier() : com.sun.net.ssl.HostnameVerifier;
	
	/**
	* Sets the default SSL socket factory inherited when an instance
	* of this class is created.
	* @param sf the default SSL socket factory
	*/
	@:overload public static function setDefaultSSLSocketFactory(sf : javax.net.ssl.SSLSocketFactory) : Void;
	
	/**
	* Gets the default SSL socket factory.
	* @return the default SSL socket factory
	*/
	@:overload public static function getDefaultSSLSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	/**
	* Sets the SSL socket factory.
	* @param sf the SSL socket factory
	*/
	@:overload public function setSSLSocketFactory(sf : javax.net.ssl.SSLSocketFactory) : Void;
	
	/**
	* Gets the SSL socket factory.
	* @return the SSL socket factory
	*/
	@:overload public function getSSLSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	
}
