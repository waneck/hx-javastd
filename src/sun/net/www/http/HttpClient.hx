package sun.net.www.http;
/*
* Copyright (c) 1994, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpClient extends sun.net.NetworkClient
{
	/**
	* @author Herb Jellinek
	* @author Dave Brown
	*/
	private var cachedHttpClient : Bool;
	
	/** return default port number (subclasses may override) */
	@:overload private function getDefaultPort() : Int;
	
	/* All proxying (generic as well as instance-specific) may be
	* disabled through use of this flag
	*/
	private var proxyDisabled : Bool;
	
	public var usingProxy : Bool;
	
	private var host : String;
	
	private var port : Int;
	
	/* where we cache currently open, persistent connections */
	private static var kac : sun.net.www.http.KeepAliveCache;
	
	/** Url being fetched. */
	private var url : java.net.URL;
	
	/* if set, the client will be reused and must not be put in cache */
	public var reuse : Bool;
	
	/**
	* A NOP method kept for backwards binary compatibility
	* @deprecated -- system properties are no longer cached.
	*/
	@:overload @:synchronized public static function resetProperties() : Void;
	
	/**
	* @return true iff http keep alive is set (i.e. enabled).  Defaults
	*          to true if the system property http.keepAlive isn't set.
	*/
	@:overload public function getHttpKeepAliveSet() : Bool;
	
	@:overload private function new() : Void;
	
	@:overload private function new(url : java.net.URL, proxyDisabled : Bool) : Void;
	
	/* This package-only CTOR should only be used for FTP piggy-backed on HTTP
	* HTTP URL's that use this won't take advantage of keep-alive.
	* Additionally, this constructor may be used as a last resort when the
	* first HttpClient gotten through New() failed (probably b/c of a
	* Keep-Alive mismatch).
	*
	* XXX That documentation is wrong ... it's not package-private any more
	*/
	@:overload public function new(url : java.net.URL, proxyHost : String, proxyPort : Int) : Void;
	
	@:overload private function new(url : java.net.URL, p : java.net.Proxy, to : Int) : Void;
	
	@:overload private static function newHttpProxy(proxyHost : String, proxyPort : Int, proto : String) : java.net.Proxy;
	
	@:overload public function new(url : java.net.URL, proxyHost : String, proxyPort : Int, proxyDisabled : Bool, to : Int) : Void;
	
	/* This class has no public constructor for HTTP.  This method is used to
	* get an HttpClient to the specifed URL.  If there's currently an
	* active HttpClient to that server/port, you'll get that one.
	*/
	@:overload public static function New(url : java.net.URL) : sun.net.www.http.HttpClient;
	
	@:overload public static function New(url : java.net.URL, useCache : Bool) : sun.net.www.http.HttpClient;
	
	@:overload public static function New(url : java.net.URL, p : java.net.Proxy, to : Int, useCache : Bool) : sun.net.www.http.HttpClient;
	
	@:overload public static function New(url : java.net.URL, p : java.net.Proxy, to : Int) : sun.net.www.http.HttpClient;
	
	@:overload public static function New(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool) : sun.net.www.http.HttpClient;
	
	@:overload public static function New(url : java.net.URL, proxyHost : String, proxyPort : Int, useCache : Bool, to : Int) : sun.net.www.http.HttpClient;
	
	/* return it to the cache as still usable, if:
	* 1) It's keeping alive, AND
	* 2) It still has some connections left, AND
	* 3) It hasn't had a error (PrintStream.checkError())
	* 4) It hasn't timed out
	*
	* If this client is not keepingAlive, it should have been
	* removed from the cache in the parseHeaders() method.
	*/
	@:overload public function finished() : Void;
	
	@:overload @:synchronized private function putInKeepAliveCache() : Void;
	
	@:overload @:synchronized private function isInKeepAliveCache() : Bool;
	
	/*
	* Close an idle connection to this URL (if it exists in the
	* cache).
	*/
	@:overload public function closeIdleConnection() : Void;
	
	/* We're very particular here about what our InputStream to the server
	* looks like for reasons that are apparent if you can decipher the
	* method parseHTTP().  That's why this method is overidden from the
	* superclass.
	*/
	@:overload override public function openServer(server : String, port : Int) : Void;
	
	/*
	* Returns true if the http request should be tunneled through proxy.
	* An example where this is the case is Https.
	*/
	@:overload public function needsTunneling() : Bool;
	
	/*
	* Returns true if this httpclient is from cache
	*/
	@:overload @:synchronized public function isCachedConnection() : Bool;
	
	/*
	* Finish any work left after the socket connection is
	* established.  In the normal http case, it's a NO-OP. Subclass
	* may need to override this. An example is Https, where for
	* direct connection to the origin server, ssl handshake needs to
	* be done; for proxy tunneling, the socket needs to be converted
	* into an SSL socket before ssl handshake can take place.
	*/
	@:overload public function afterConnect() : Void;
	
	/*
	*/
	@:overload @:synchronized private function openServer() : Void;
	
	@:overload public function getURLFile() : String;
	
	/**
	* @deprecated
	*/
	@:overload public function writeRequests(head : sun.net.www.MessageHeader) : Void;
	
	@:overload public function writeRequests(head : sun.net.www.MessageHeader, pos : sun.net.www.http.PosterOutputStream) : Void;
	
	@:overload public function writeRequests(head : sun.net.www.MessageHeader, pos : sun.net.www.http.PosterOutputStream, streaming : Bool) : Void;
	
	/** Parse the first line of the HTTP request.  It usually looks
	something like: "HTTP/1.0 <number> comment\r\n". */
	@:overload public function parseHTTP(responses : sun.net.www.MessageHeader, pi : sun.net.ProgressSource, httpuc : sun.net.www.protocol.http.HttpURLConnection) : Bool;
	
	@:overload @:synchronized public function getInputStream() : java.io.InputStream;
	
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	@:overload public function toString() : String;
	
	@:overload @:final public function isKeepingAlive() : Bool;
	
	@:overload public function setCacheRequest(cacheRequest : java.net.CacheRequest) : Void;
	
	@:overload private function finalize() : Void;
	
	@:overload public function setDoNotRetry(value : Bool) : Void;
	
	@:overload public function setIgnoreContinue(value : Bool) : Void;
	
	/* Use only on connections in error. */
	@:overload override public function closeServer() : Void;
	
	/**
	* @return the proxy host being used for this client, or null
	*          if we're not going through a proxy
	*/
	@:overload public function getProxyHostUsed() : String;
	
	/**
	* @return the proxy port being used for this client.  Meaningless
	*          if getProxyHostUsed() gives null.
	*/
	@:overload public function getProxyPortUsed() : Int;
	
	
}
