package com.sun.net.ssl.internal.www.protocol.https;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
* NOTE: This class lives in the package sun.net.www.protocol.https.
* There is a copy in com.sun.net.ssl.internal.www.protocol.https for JSSE
* 1.0.2 compatibility. It is 100% identical except the package and extends
* lines. Any changes should be made to be class in sun.net.* and then copied
* to com.sun.net.*.
*/
//// For both copies of the file, uncomment one line and comment the other
//// package sun.net.www.protocol.https;
extern class HttpsURLConnectionOldImpl extends com.sun.net.ssl.HttpsURLConnection
{
	/**
	* Create a new HttpClient object, bypassing the cache of
	* HTTP client objects/connections.
	*
	* @param url       the URL being accessed
	*/
	@:overload private function setNewClient(url : java.net.URL) : Void;
	
	/**
	* Obtain a HttpClient object. Use the cached copy if specified.
	*
	* @param url       the URL being accessed
	* @param useCache  whether the cached connection should be used
	*                  if present
	*/
	@:overload private function setNewClient(url : java.net.URL, useCache : Bool) : Void;
	
	/**
	* Create a new HttpClient object, set up so that it uses
	* per-instance proxying to the given HTTP proxy.  This
	* bypasses the cache of HTTP client objects/connections.
	*
	* @param url       the URL being accessed
	* @param proxyHost the proxy host to use
	* @param proxyPort the proxy port to use
	*/
	@:overload private function setProxiedClient(url : java.net.URL, proxyHost : String, proxyPort : Int) : Void;
	
	/**
	* Obtain a HttpClient object, set up so that it uses per-instance
	* proxying to the given HTTP proxy. Use the cached copy of HTTP
	* client objects/connections if specified.
	*
	* @param url       the URL being accessed
	* @param proxyHost the proxy host to use
	* @param proxyPort the proxy port to use
	* @param useCache  whether the cached connection should be used
	*                  if present
	*/
	@:overload private function setProxiedClient(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool) : Void;
	
	/**
	* Implements the HTTP protocol handler's "connect" method,
	* establishing an SSL connection to the server as necessary.
	*/
	@:overload override public function connect() : Void;
	
	/**
	* Used by subclass to access "connected" variable.  Since we are
	* delegating the actual implementation to "delegate", we need to
	* delegate the access of "connected" as well.
	*/
	@:overload private function isConnected() : Bool;
	
	/**
	* Used by subclass to access "connected" variable.  Since we are
	* delegating the actual implementation to "delegate", we need to
	* delegate the access of "connected" as well.
	*/
	@:overload private function setConnected(conn : Bool) : Void;
	
	/**
	* Returns the cipher suite in use on this connection.
	*/
	@:overload override public function getCipherSuite() : String;
	
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
	*
	* NOTE: This method is not necessary for the version of this class
	* implementing javax.net.ssl.HttpsURLConnection, but provided for
	* compatibility with the com.sun.net.ssl.HttpsURLConnection version.
	*/
	@:overload override public function getServerCertificateChain() : java.NativeArray<javax.security.cert.X509Certificate>;
	
	/*
	* Allowable input/output sequences:
	* [interpreted as POST/PUT]
	* - get output, [write output,] get input, [read input]
	* - get output, [write output]
	* [interpreted as GET]
	* - get input, [read input]
	* Disallowed:
	* - get input, [read input,] get output, [write output]
	*/
	@:overload @:synchronized override public function getOutputStream() : java.io.OutputStream;
	
	@:overload @:synchronized override public function getInputStream() : java.io.InputStream;
	
	@:overload override public function getErrorStream() : java.io.InputStream;
	
	/**
	* Disconnect from the server.
	*/
	@:overload override public function disconnect() : Void;
	
	@:overload override public function usingProxy() : Bool;
	
	/**
	* Returns an unmodifiable Map of the header fields.
	* The Map keys are Strings that represent the
	* response-header field names. Each Map value is an
	* unmodifiable List of Strings that represents
	* the corresponding field values.
	*
	* @return a Map of header fields
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getHeaderFields() : java.util.Map<String, java.util.List<String>>;
	
	/**
	* Gets a header field by name. Returns null if not known.
	* @param name the name of the header field
	*/
	@:overload override public function getHeaderField(name : String) : String;
	
	/**
	* Gets a header field by index. Returns null if not known.
	* @param n the index of the header field
	*/
	@:overload override public function getHeaderField(n : Int) : String;
	
	/**
	* Gets a header field by index. Returns null if not known.
	* @param n the index of the header field
	*/
	@:overload override public function getHeaderFieldKey(n : Int) : String;
	
	/**
	* Sets request property. If a property with the key already
	* exists, overwrite its value with the new value.
	* @param value the value to be set
	*/
	@:overload override public function setRequestProperty(key : String, value : String) : Void;
	
	/**
	* Adds a general request property specified by a
	* key-value pair.  This method will not overwrite
	* existing values associated with the same key.
	*
	* @param   key     the keyword by which the request is known
	*                  (e.g., "<code>accept</code>").
	* @param   value  the value associated with it.
	* @see #getRequestProperties(java.lang.String)
	* @since 1.4
	*/
	@:require(java4) @:overload override public function addRequestProperty(key : String, value : String) : Void;
	
	/**
	* Overwrite super class method
	*/
	@:overload override public function getResponseCode() : Int;
	
	@:overload override public function getRequestProperty(key : String) : String;
	
	/**
	* Returns an unmodifiable Map of general request
	* properties for this connection. The Map keys
	* are Strings that represent the request-header
	* field names. Each Map value is a unmodifiable List
	* of Strings that represents the corresponding
	* field values.
	*
	* @return  a Map of the general request properties for this connection.
	* @throws IllegalStateException if already connected
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getRequestProperties() : java.util.Map<String, java.util.List<String>>;
	
	/*
	* We support JDK 1.2.x so we can't count on these from JDK 1.3.
	* We override and supply our own version.
	*/
	@:overload override public function setInstanceFollowRedirects(shouldFollow : Bool) : Void;
	
	@:overload override public function getInstanceFollowRedirects() : Bool;
	
	@:overload override public function setRequestMethod(method : String) : Void;
	
	@:overload override public function getRequestMethod() : String;
	
	@:overload override public function getResponseMessage() : String;
	
	@:overload override public function getHeaderFieldDate(name : String, Default : haxe.Int64) : haxe.Int64;
	
	@:overload override public function getPermission() : java.security.Permission;
	
	@:overload override public function getURL() : java.net.URL;
	
	@:overload override public function getContentLength() : Int;
	
	@:overload override public function getContentLengthLong() : haxe.Int64;
	
	@:overload override public function getContentType() : String;
	
	@:overload override public function getContentEncoding() : String;
	
	@:overload override public function getExpiration() : haxe.Int64;
	
	@:overload override public function getDate() : haxe.Int64;
	
	@:overload override public function getLastModified() : haxe.Int64;
	
	@:overload override public function getHeaderFieldInt(name : String, Default : Int) : Int;
	
	@:overload override public function getHeaderFieldLong(name : String, Default : haxe.Int64) : haxe.Int64;
	
	@:overload override public function getContent() : Dynamic;
	
	@:overload override public function getContent(classes : java.NativeArray<Class<Dynamic>>) : Dynamic;
	
	@:overload override public function toString() : String;
	
	@:overload override public function setDoInput(doinput : Bool) : Void;
	
	@:overload override public function getDoInput() : Bool;
	
	@:overload override public function setDoOutput(dooutput : Bool) : Void;
	
	@:overload override public function getDoOutput() : Bool;
	
	@:overload override public function setAllowUserInteraction(allowuserinteraction : Bool) : Void;
	
	@:overload override public function getAllowUserInteraction() : Bool;
	
	@:overload override public function setUseCaches(usecaches : Bool) : Void;
	
	@:overload override public function getUseCaches() : Bool;
	
	@:overload override public function setIfModifiedSince(ifmodifiedsince : haxe.Int64) : Void;
	
	@:overload override public function getIfModifiedSince() : haxe.Int64;
	
	@:overload override public function getDefaultUseCaches() : Bool;
	
	@:overload override public function setDefaultUseCaches(defaultusecaches : Bool) : Void;
	
	/*
	* finalize (dispose) the delegated object.  Otherwise
	* sun.net.www.protocol.http.HttpURLConnection's finalize()
	* would have to be made public.
	*/
	@:overload private function finalize() : Void;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload override public function setConnectTimeout(timeout : Int) : Void;
	
	@:overload override public function getConnectTimeout() : Int;
	
	@:overload override public function setReadTimeout(timeout : Int) : Void;
	
	@:overload override public function getReadTimeout() : Int;
	
	@:overload override public function setFixedLengthStreamingMode(contentLength : Int) : Void;
	
	@:overload override public function setFixedLengthStreamingMode(contentLength : haxe.Int64) : Void;
	
	@:overload override public function setChunkedStreamingMode(chunklen : Int) : Void;
	
	
}