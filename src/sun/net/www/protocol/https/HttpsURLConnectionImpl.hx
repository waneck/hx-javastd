package sun.net.www.protocol.https;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// package com.sun.net.ssl.internal.www.protocol.https;
extern class HttpsURLConnectionImpl extends javax.net.ssl.HttpsURLConnection
{
	/**
	* A class to represent an HTTP connection to a remote object.
	*
	* Ideally, this class should subclass and inherit the http handler
	* implementation, but it can't do so because that class have the
	* wrong Java Type.  Thus it uses the delegate (aka, the
	* Adapter/Wrapper design pattern) to reuse code from the http
	* handler.
	*
	* Since it would use a delegate to access
	* sun.net.www.protocol.http.HttpURLConnection functionalities, it
	* needs to implement all public methods in it's super class and all
	* the way to Object.
	*
	*/
	@:protected private var delegate : sun.net.www.protocol.https.DelegateHttpsURLConnection;
	
	@:overload @:protected private function new(u : java.net.URL) : Void;
	
	/**
	* Create a new HttpClient object, bypassing the cache of
	* HTTP client objects/connections.
	*
	* @param url       the URL being accessed
	*/
	@:overload @:protected private function setNewClient(url : java.net.URL) : Void;
	
	/**
	* Obtain a HttpClient object. Use the cached copy if specified.
	*
	* @param url       the URL being accessed
	* @param useCache  whether the cached connection should be used
	*                  if present
	*/
	@:overload @:protected private function setNewClient(url : java.net.URL, useCache : Bool) : Void;
	
	/**
	* Create a new HttpClient object, set up so that it uses
	* per-instance proxying to the given HTTP proxy.  This
	* bypasses the cache of HTTP client objects/connections.
	*
	* @param url       the URL being accessed
	* @param proxyHost the proxy host to use
	* @param proxyPort the proxy port to use
	*/
	@:overload @:protected private function setProxiedClient(url : java.net.URL, proxyHost : String, proxyPort : Int) : Void;
	
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
	@:overload @:protected private function setProxiedClient(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool) : Void;
	
	/**
	* Implements the HTTP protocol handler's "connect" method,
	* establishing an SSL connection to the server as necessary.
	*/
	@:overload @:public override public function connect() : Void;
	
	/**
	* Used by subclass to access "connected" variable.  Since we are
	* delegating the actual implementation to "delegate", we need to
	* delegate the access of "connected" as well.
	*/
	@:overload @:protected private function isConnected() : Bool;
	
	/**
	* Used by subclass to access "connected" variable.  Since we are
	* delegating the actual implementation to "delegate", we need to
	* delegate the access of "connected" as well.
	*/
	@:overload @:protected private function setConnected(conn : Bool) : Void;
	
	/**
	* Returns the cipher suite in use on this connection.
	*/
	@:overload @:public override public function getCipherSuite() : String;
	
	/**
	* Returns the certificate chain the client sent to the
	* server, or null if the client did not authenticate.
	*/
	@:overload @:public override public function getLocalCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the server's certificate chain, or throws
	* SSLPeerUnverified Exception if
	* the server did not authenticate.
	*/
	@:overload @:public override public function getServerCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the server's X.509 certificate chain, or null if
	* the server did not authenticate.
	*
	* NOTE: This method is not necessary for the version of this class
	* implementing javax.net.ssl.HttpsURLConnection, but provided for
	* compatibility with the com.sun.net.ssl.HttpsURLConnection version.
	*/
	@:overload @:public public function getServerCertificateChain() : java.NativeArray<javax.security.cert.X509Certificate>;
	
	/**
	* Returns the principal with which the server authenticated itself,
	* or throw a SSLPeerUnverifiedException if the server did not authenticate.
	*/
	@:overload @:public override public function getPeerPrincipal() : java.security.Principal;
	
	/**
	* Returns the principal the client sent to the
	* server, or null if the client did not authenticate.
	*/
	@:overload @:public override public function getLocalPrincipal() : java.security.Principal;
	
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
	@:overload @:public @:synchronized override public function getOutputStream() : java.io.OutputStream;
	
	@:overload @:public @:synchronized override public function getInputStream() : java.io.InputStream;
	
	@:overload @:public override public function getErrorStream() : java.io.InputStream;
	
	/**
	* Disconnect from the server.
	*/
	@:overload @:public override public function disconnect() : Void;
	
	@:overload @:public override public function usingProxy() : Bool;
	
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
	@:require(java4) @:overload @:public override public function getHeaderFields() : java.util.Map<String, java.util.List<String>>;
	
	/**
	* Gets a header field by name. Returns null if not known.
	* @param name the name of the header field
	*/
	@:overload @:public override public function getHeaderField(name : String) : String;
	
	/**
	* Gets a header field by index. Returns null if not known.
	* @param n the index of the header field
	*/
	@:overload @:public override public function getHeaderField(n : Int) : String;
	
	/**
	* Gets a header field by index. Returns null if not known.
	* @param n the index of the header field
	*/
	@:overload @:public override public function getHeaderFieldKey(n : Int) : String;
	
	/**
	* Sets request property. If a property with the key already
	* exists, overwrite its value with the new value.
	* @param value the value to be set
	*/
	@:overload @:public override public function setRequestProperty(key : String, value : String) : Void;
	
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
	@:require(java4) @:overload @:public override public function addRequestProperty(key : String, value : String) : Void;
	
	/**
	* Overwrite super class method
	*/
	@:overload @:public override public function getResponseCode() : Int;
	
	@:overload @:public override public function getRequestProperty(key : String) : String;
	
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
	@:require(java4) @:overload @:public override public function getRequestProperties() : java.util.Map<String, java.util.List<String>>;
	
	/*
	* We support JDK 1.2.x so we can't count on these from JDK 1.3.
	* We override and supply our own version.
	*/
	@:overload @:public override public function setInstanceFollowRedirects(shouldFollow : Bool) : Void;
	
	@:overload @:public override public function getInstanceFollowRedirects() : Bool;
	
	@:overload @:public override public function setRequestMethod(method : String) : Void;
	
	@:overload @:public override public function getRequestMethod() : String;
	
	@:overload @:public override public function getResponseMessage() : String;
	
	@:overload @:public override public function getHeaderFieldDate(name : String, Default : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function getPermission() : java.security.Permission;
	
	@:overload @:public override public function getURL() : java.net.URL;
	
	@:overload @:public override public function getContentLength() : Int;
	
	@:overload @:public override public function getContentLengthLong() : haxe.Int64;
	
	@:overload @:public override public function getContentType() : String;
	
	@:overload @:public override public function getContentEncoding() : String;
	
	@:overload @:public override public function getExpiration() : haxe.Int64;
	
	@:overload @:public override public function getDate() : haxe.Int64;
	
	@:overload @:public override public function getLastModified() : haxe.Int64;
	
	@:overload @:public override public function getHeaderFieldInt(name : String, Default : Int) : Int;
	
	@:overload @:public override public function getHeaderFieldLong(name : String, Default : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function getContent() : Dynamic;
	
	@:overload @:public override public function getContent(classes : java.NativeArray<Class<Dynamic>>) : Dynamic;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function setDoInput(doinput : Bool) : Void;
	
	@:overload @:public override public function getDoInput() : Bool;
	
	@:overload @:public override public function setDoOutput(dooutput : Bool) : Void;
	
	@:overload @:public override public function getDoOutput() : Bool;
	
	@:overload @:public override public function setAllowUserInteraction(allowuserinteraction : Bool) : Void;
	
	@:overload @:public override public function getAllowUserInteraction() : Bool;
	
	@:overload @:public override public function setUseCaches(usecaches : Bool) : Void;
	
	@:overload @:public override public function getUseCaches() : Bool;
	
	@:overload @:public override public function setIfModifiedSince(ifmodifiedsince : haxe.Int64) : Void;
	
	@:overload @:public override public function getIfModifiedSince() : haxe.Int64;
	
	@:overload @:public override public function getDefaultUseCaches() : Bool;
	
	@:overload @:public override public function setDefaultUseCaches(defaultusecaches : Bool) : Void;
	
	/*
	* finalize (dispose) the delegated object.  Otherwise
	* sun.net.www.protocol.http.HttpURLConnection's finalize()
	* would have to be made public.
	*/
	@:overload @:protected private function finalize() : Void;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public override public function setConnectTimeout(timeout : Int) : Void;
	
	@:overload @:public override public function getConnectTimeout() : Int;
	
	@:overload @:public override public function setReadTimeout(timeout : Int) : Void;
	
	@:overload @:public override public function getReadTimeout() : Int;
	
	@:overload @:public override public function setFixedLengthStreamingMode(contentLength : Int) : Void;
	
	@:overload @:public override public function setFixedLengthStreamingMode(contentLength : haxe.Int64) : Void;
	
	@:overload @:public override public function setChunkedStreamingMode(chunklen : Int) : Void;
	
	
}
