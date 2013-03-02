package sun.net.www.protocol.http;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpURLConnection extends java.net.HttpURLConnection
{
	public static var userAgent(default, null) : String;
	
	private var http : sun.net.www.http.HttpClient;
	
	private var handler : sun.net.www.protocol.http.Handler;
	
	private var instProxy : java.net.Proxy;
	
	private var cachedResponse : java.net.CacheResponse;
	
	/* output stream to server */
	private var ps : java.io.PrintStream;
	
	/* Progress source */
	private var pi : sun.net.ProgressSource;
	
	/* Logging support */
	@:overload public static function getHttpLogger() : sun.util.logging.PlatformLogger;
	
	/* Used for Windows NTLM implementation */
	@:overload public function authObj() : Dynamic;
	
	@:overload public function authObj(authObj : Dynamic) : Void;
	
	/**
	* Create a new HttpClient object, bypassing the cache of
	* HTTP client objects/connections.
	*
	* @param url       the URL being accessed
	*/
	@:overload private function setNewClient(url : java.net.URL) : Void;
	
	/**
	* Obtain a HttpsClient object. Use the cached copy if specified.
	*
	* @param url       the URL being accessed
	* @param useCache  whether the cached connection should be used
	*        if present
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
	*        if present
	*/
	@:overload private function setProxiedClient(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool) : Void;
	
	@:overload private function proxiedConnect(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool) : Void;
	
	@:overload private function new(u : java.net.URL, handler : sun.net.www.protocol.http.Handler) : Void;
	
	@:overload public function new(u : java.net.URL, host : String, port : Int) : Void;
	
	/** this constructor is used by other protocol handlers such as ftp
	that want to use http to fetch urls on their behalf.*/
	@:overload public function new(u : java.net.URL, p : java.net.Proxy) : Void;
	
	@:overload private function new(u : java.net.URL, p : java.net.Proxy, handler : sun.net.www.protocol.http.Handler) : Void;
	
	/**
	* @deprecated.  Use java.net.Authenticator.setDefault() instead.
	*/
	@:overload public static function setDefaultAuthenticator(a : sun.net.www.protocol.http.HttpAuthenticator) : Void;
	
	/**
	* opens a stream allowing redirects only to the same host.
	*/
	@:overload public static function openConnectionCheckRedirects(c : java.net.URLConnection) : java.io.InputStream;
	
	@:overload override public function connect() : Void;
	
	@:overload private function plainConnect() : Void;
	
	@:overload private function getNewHttpClient(url : java.net.URL, p : java.net.Proxy, connectTimeout : Int) : sun.net.www.http.HttpClient;
	
	@:overload private function getNewHttpClient(url : java.net.URL, p : java.net.Proxy, connectTimeout : Int, useCache : Bool) : sun.net.www.http.HttpClient;
	
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
	* establish a tunnel through proxy server
	*/
	@:overload @:synchronized public function doTunneling() : Void;
	
	/**
	* Disconnect from the server (public API)
	*/
	@:overload override public function disconnect() : Void;
	
	@:overload override public function usingProxy() : Bool;
	
	/**
	* Gets a header field by name. Returns null if not known.
	* @param name the name of the header field
	*/
	@:overload override public function getHeaderField(name : String) : String;
	
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
	
	@:overload public function setAuthenticationProperty(key : String, value : String) : Void;
	
	@:overload @:synchronized override public function getRequestProperty(key : String) : String;
	
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
	@:require(java4) @:overload @:synchronized override public function getRequestProperties() : java.util.Map<String, java.util.List<String>>;
	
	@:overload override public function setConnectTimeout(timeout : Int) : Void;
	
	/**
	* Returns setting for connect timeout.
	* <p>
	* 0 return implies that the option is disabled
	* (i.e., timeout of infinity).
	*
	* @return an <code>int</code> that indicates the connect timeout
	*         value in milliseconds
	* @see java.net.URLConnection#setConnectTimeout(int)
	* @see java.net.URLConnection#connect()
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getConnectTimeout() : Int;
	
	/**
	* Sets the read timeout to a specified timeout, in
	* milliseconds. A non-zero value specifies the timeout when
	* reading from Input stream when a connection is established to a
	* resource. If the timeout expires before there is data available
	* for read, a java.net.SocketTimeoutException is raised. A
	* timeout of zero is interpreted as an infinite timeout.
	*
	* <p> Some non-standard implementation of this method ignores the
	* specified timeout. To see the read timeout set, please call
	* getReadTimeout().
	*
	* @param timeout an <code>int</code> that specifies the timeout
	* value to be used in milliseconds
	* @throws IllegalArgumentException if the timeout parameter is negative
	*
	* @see java.net.URLConnectiongetReadTimeout()
	* @see java.io.InputStream#read()
	* @since 1.5
	*/
	@:require(java5) @:overload override public function setReadTimeout(timeout : Int) : Void;
	
	/**
	* Returns setting for read timeout. 0 return implies that the
	* option is disabled (i.e., timeout of infinity).
	*
	* @return an <code>int</code> that indicates the read timeout
	*         value in milliseconds
	*
	* @see java.net.URLConnection#setReadTimeout(int)
	* @see java.io.InputStream#read()
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getReadTimeout() : Int;
	
	@:overload public function getCookieHandler() : java.net.CookieHandler;
	
	
}
/* Tunnel states */
@:native('sun$net$www$protocol$http$HttpURLConnection$TunnelState') extern enum HttpURLConnection_TunnelState
{
	/* No tunnel */
	NONE;
	/* Setting up a tunnel */
	SETUP;
	/* Tunnel has been successfully setup */
	TUNNELING;
	
}

/* The purpose of this wrapper is just to capture the close() call
* so we can check authentication information that may have
* arrived in a Trailer field
*/
@:native('sun$net$www$protocol$http$HttpURLConnection$HttpInputStream') @:internal extern class HttpURLConnection_HttpInputStream extends java.io.FilterInputStream
{
	@:overload public function new(is : java.io.InputStream) : Void;
	
	@:overload public function new(is : java.io.InputStream, cacheRequest : java.net.CacheRequest) : Void;
	
	/**
	* Marks the current position in this input stream. A subsequent
	* call to the <code>reset</code> method repositions this stream at
	* the last marked position so that subsequent reads re-read the same
	* bytes.
	* <p>
	* The <code>readlimit</code> argument tells this input stream to
	* allow that many bytes to be read before the mark position gets
	* invalidated.
	* <p>
	* This method simply performs <code>in.mark(readlimit)</code>.
	*
	* @param   readlimit   the maximum limit of bytes that can be read before
	*                      the mark position becomes invalid.
	* @see     java.io.FilterInputStream#in
	* @see     java.io.FilterInputStream#reset()
	*/
	@:overload @:synchronized override public function mark(readlimit : Int) : Void;
	
	/**
	* Repositions this stream to the position at the time the
	* <code>mark</code> method was last called on this input stream.
	* <p>
	* This method
	* simply performs <code>in.reset()</code>.
	* <p>
	* Stream marks are intended to be used in
	* situations where you need to read ahead a little to see what's in
	* the stream. Often this is most easily done by invoking some
	* general parser. If the stream is of the type handled by the
	* parse, it just chugs along happily. If the stream is not of
	* that type, the parser should toss an exception when it fails.
	* If this happens within readlimit bytes, it allows the outer
	* code to reset the stream and try another parser.
	*
	* @exception  IOException  if the stream has not been marked or if the
	*               mark has been invalidated.
	* @see        java.io.FilterInputStream#in
	* @see        java.io.FilterInputStream#mark(int)
	*/
	@:overload @:synchronized override public function reset() : Void;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload override public function close() : Void;
	
	
}
@:native('sun$net$www$protocol$http$HttpURLConnection$StreamingOutputStream') @:internal extern class HttpURLConnection_StreamingOutputStream extends java.io.FilterOutputStream
{
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function close() : Void;
	
	
}
@:native('sun$net$www$protocol$http$HttpURLConnection$ErrorStream') @:internal extern class HttpURLConnection_ErrorStream extends java.io.InputStream
{
	@:overload public static function getErrorStream(is : java.io.InputStream, cl : haxe.Int64, http : sun.net.www.http.HttpClient) : java.io.InputStream;
	
	@:overload override public function available() : Int;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function close() : Void;
	
	
}
@:internal extern class EmptyInputStream extends java.io.InputStream
{
	/** An input stream that just returns EOF.  This is for
	* HTTP URLConnections that are KeepAlive && use the
	* HEAD method - i.e., stream not dead, but nothing to be read.
	*/
	@:overload override public function available() : Int;
	
	@:overload override public function read() : Int;
	
	
}
