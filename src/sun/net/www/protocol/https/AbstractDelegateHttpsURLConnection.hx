package sun.net.www.protocol.https;
/*
* Copyright (c) 2001, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractDelegateHttpsURLConnection extends java.net.HttpURLConnection
{
	/**
	* HTTPS URL connection support.
	* We need this delegate because HttpsURLConnection is a subclass of
	* java.net.HttpURLConnection. We will avoid copying over the code from
	* sun.net.www.protocol.http.HttpURLConnection by having this class
	*
	*/
	@:overload private function new(url : java.net.URL, handler : sun.net.www.protocol.http.Handler) : Void;
	
	@:overload private function new(url : java.net.URL, p : java.net.Proxy, handler : sun.net.www.protocol.http.Handler) : Void;
	
	@:overload @:abstract private function getSSLSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	@:overload @:abstract private function getHostnameVerifier() : javax.net.ssl.HostnameVerifier;
	
	/**
	* Create a new HttpClient object, bypassing the cache of
	* HTTP client objects/connections.
	*
	* Note: this method is changed from protected to public because
	* the com.sun.ssl.internal.www.protocol.https handler reuses this
	* class for its actual implemantation
	*
	* @param url the URL being accessed
	*/
	@:overload public function setNewClient(url : java.net.URL) : Void;
	
	/**
	* Obtain a HttpClient object. Use the cached copy if specified.
	*
	* Note: this method is changed from protected to public because
	* the com.sun.ssl.internal.www.protocol.https handler reuses this
	* class for its actual implemantation
	*
	* @param url       the URL being accessed
	* @param useCache  whether the cached connection should be used
	*        if present
	*/
	@:overload public function setNewClient(url : java.net.URL, useCache : Bool) : Void;
	
	/**
	* Create a new HttpClient object, set up so that it uses
	* per-instance proxying to the given HTTP proxy.  This
	* bypasses the cache of HTTP client objects/connections.
	*
	* Note: this method is changed from protected to public because
	* the com.sun.ssl.internal.www.protocol.https handler reuses this
	* class for its actual implemantation
	*
	* @param url       the URL being accessed
	* @param proxyHost the proxy host to use
	* @param proxyPort the proxy port to use
	*/
	@:overload public function setProxiedClient(url : java.net.URL, proxyHost : String, proxyPort : Int) : Void;
	
	/**
	* Obtain a HttpClient object, set up so that it uses per-instance
	* proxying to the given HTTP proxy. Use the cached copy of HTTP
	* client objects/connections if specified.
	*
	* Note: this method is changed from protected to public because
	* the com.sun.ssl.internal.www.protocol.https handler reuses this
	* class for its actual implemantation
	*
	* @param url       the URL being accessed
	* @param proxyHost the proxy host to use
	* @param proxyPort the proxy port to use
	* @param useCache  whether the cached connection should be used
	*        if present
	*/
	@:overload public function setProxiedClient(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool) : Void;
	
	@:overload private function proxiedConnect(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool) : Void;
	
	/**
	* Used by subclass to access "connected" variable.
	*/
	@:overload public function isConnected() : Bool;
	
	/**
	* Used by subclass to access "connected" variable.
	*/
	@:overload public function setConnected(conn : Bool) : Void;
	
	/**
	* Implements the HTTP protocol handler's "connect" method,
	* establishing an SSL connection to the server as necessary.
	*/
	@:overload override public function connect() : Void;
	
	@:overload private function getNewHttpClient(url : java.net.URL, p : java.net.Proxy, connectTimeout : Int) : sun.net.www.http.HttpClient;
	
	@:overload private function getNewHttpClient(url : java.net.URL, p : java.net.Proxy, connectTimeout : Int, useCache : Bool) : sun.net.www.http.HttpClient;
	
	/**
	* Returns the cipher suite in use on this connection.
	*/
	@:overload public function getCipherSuite() : String;
	
	/**
	* Returns the certificate chain the client sent to the
	* server, or null if the client did not authenticate.
	*/
	@:overload public function getLocalCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the server's certificate chain, or throws
	* SSLPeerUnverified Exception if
	* the server did not authenticate.
	*/
	@:overload public function getServerCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the server's X.509 certificate chain, or null if
	* the server did not authenticate.
	*/
	@:overload public function getServerCertificateChain() : java.NativeArray<javax.security.cert.X509Certificate>;
	
	
}
