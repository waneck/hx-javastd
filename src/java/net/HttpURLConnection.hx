package java.net;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpURLConnection extends java.net.URLConnection
{
	/**
	* The HTTP method (GET,POST,PUT,etc.).
	*/
	@:protected private var method : String;
	
	/**
	* The chunk-length when using chunked encoding streaming mode for output.
	* A value of <code>-1</code> means chunked encoding is disabled for output.
	* @since 1.5
	*/
	@:require(java5) @:protected private var chunkLength : Int;
	
	/**
	* The fixed content-length when using fixed-length streaming mode.
	* A value of <code>-1</code> means fixed-length streaming mode is disabled
	* for output.
	*
	* <P> <B>NOTE:</B> {@link #fixedContentLengthLong} is recommended instead
	* of this field, as it allows larger content lengths to be set.
	*
	* @since 1.5
	*/
	@:require(java5) @:protected private var fixedContentLength : Int;
	
	/**
	* The fixed content-length when using fixed-length streaming mode.
	* A value of {@code -1} means fixed-length streaming mode is disabled
	* for output.
	*
	* @since 1.7
	*/
	@:require(java7) @:protected private var fixedContentLengthLong : haxe.Int64;
	
	/**
	* Returns the key for the <code>n</code><sup>th</sup> header field.
	* Some implementations may treat the <code>0</code><sup>th</sup>
	* header field as special, i.e. as the status line returned by the HTTP
	* server. In this case, {@link #getHeaderField(int) getHeaderField(0)} returns the status
	* line, but <code>getHeaderFieldKey(0)</code> returns null.
	*
	* @param   n   an index, where n >=0.
	* @return  the key for the <code>n</code><sup>th</sup> header field,
	*          or <code>null</code> if the key does not exist.
	*/
	@:overload @:public override public function getHeaderFieldKey(n : Int) : String;
	
	/**
	* This method is used to enable streaming of a HTTP request body
	* without internal buffering, when the content length is known in
	* advance.
	* <p>
	* An exception will be thrown if the application
	* attempts to write more data than the indicated
	* content-length, or if the application closes the OutputStream
	* before writing the indicated amount.
	* <p>
	* When output streaming is enabled, authentication
	* and redirection cannot be handled automatically.
	* A HttpRetryException will be thrown when reading
	* the response if authentication or redirection are required.
	* This exception can be queried for the details of the error.
	* <p>
	* This method must be called before the URLConnection is connected.
	* <p>
	* <B>NOTE:</B> {@link #setFixedLengthStreamingMode(long)} is recommended
	* instead of this method as it allows larger content lengths to be set.
	*
	* @param   contentLength The number of bytes which will be written
	*          to the OutputStream.
	*
	* @throws  IllegalStateException if URLConnection is already connected
	*          or if a different streaming mode is already enabled.
	*
	* @throws  IllegalArgumentException if a content length less than
	*          zero is specified.
	*
	* @see     #setChunkedStreamingMode(int)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function setFixedLengthStreamingMode(contentLength : Int) : Void;
	
	/**
	* This method is used to enable streaming of a HTTP request body
	* without internal buffering, when the content length is known in
	* advance.
	*
	* <P> An exception will be thrown if the application attempts to write
	* more data than the indicated content-length, or if the application
	* closes the OutputStream before writing the indicated amount.
	*
	* <P> When output streaming is enabled, authentication and redirection
	* cannot be handled automatically. A {@linkplain HttpRetryException} will
	* be thrown when reading the response if authentication or redirection
	* are required. This exception can be queried for the details of the
	* error.
	*
	* <P> This method must be called before the URLConnection is connected.
	*
	* <P> The content length set by invoking this method takes precedence
	* over any value set by {@link #setFixedLengthStreamingMode(int)}.
	*
	* @param  contentLength
	*         The number of bytes which will be written to the OutputStream.
	*
	* @throws  IllegalStateException
	*          if URLConnection is already connected or if a different
	*          streaming mode is already enabled.
	*
	* @throws  IllegalArgumentException
	*          if a content length less than zero is specified.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function setFixedLengthStreamingMode(contentLength : haxe.Int64) : Void;
	
	/**
	* This method is used to enable streaming of a HTTP request body
	* without internal buffering, when the content length is <b>not</b>
	* known in advance. In this mode, chunked transfer encoding
	* is used to send the request body. Note, not all HTTP servers
	* support this mode.
	* <p>
	* When output streaming is enabled, authentication
	* and redirection cannot be handled automatically.
	* A HttpRetryException will be thrown when reading
	* the response if authentication or redirection are required.
	* This exception can be queried for the details of the error.
	* <p>
	* This method must be called before the URLConnection is connected.
	*
	* @param   chunklen The number of bytes to write in each chunk.
	*          If chunklen is less than or equal to zero, a default
	*          value will be used.
	*
	* @throws  IllegalStateException if URLConnection is already connected
	*          or if a different streaming mode is already enabled.
	*
	* @see     #setFixedLengthStreamingMode(int)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function setChunkedStreamingMode(chunklen : Int) : Void;
	
	/**
	* Returns the value for the <code>n</code><sup>th</sup> header field.
	* Some implementations may treat the <code>0</code><sup>th</sup>
	* header field as special, i.e. as the status line returned by the HTTP
	* server.
	* <p>
	* This method can be used in conjunction with the
	* {@link #getHeaderFieldKey getHeaderFieldKey} method to iterate through all
	* the headers in the message.
	*
	* @param   n   an index, where n>=0.
	* @return  the value of the <code>n</code><sup>th</sup> header field,
	*          or <code>null</code> if the value does not exist.
	* @see     java.net.HttpURLConnection#getHeaderFieldKey(int)
	*/
	@:overload @:public override public function getHeaderField(n : Int) : String;
	
	/**
	* An <code>int</code> representing the three digit HTTP Status-Code.
	* <ul>
	* <li> 1xx: Informational
	* <li> 2xx: Success
	* <li> 3xx: Redirection
	* <li> 4xx: Client Error
	* <li> 5xx: Server Error
	* </ul>
	*/
	@:protected private var responseCode : Int;
	
	/**
	* The HTTP response message.
	*/
	@:protected private var responseMessage : String;
	
	/**
	* If <code>true</code>, the protocol will automatically follow redirects.
	* If <code>false</code>, the protocol will not automatically follow
	* redirects.
	* <p>
	* This field is set by the <code>setInstanceFollowRedirects</code>
	* method. Its value is returned by the <code>getInstanceFollowRedirects</code>
	* method.
	* <p>
	* Its default value is based on the value of the static followRedirects
	* at HttpURLConnection construction time.
	*
	* @see     java.net.HttpURLConnection#setInstanceFollowRedirects(boolean)
	* @see     java.net.HttpURLConnection#getInstanceFollowRedirects()
	* @see     java.net.HttpURLConnection#setFollowRedirects(boolean)
	*/
	@:protected private var instanceFollowRedirects : Bool;
	
	/**
	* Constructor for the HttpURLConnection.
	* @param u the URL
	*/
	@:overload @:protected private function new(u : java.net.URL) : Void;
	
	/**
	* Sets whether HTTP redirects  (requests with response code 3xx) should
	* be automatically followed by this class.  True by default.  Applets
	* cannot change this variable.
	* <p>
	* If there is a security manager, this method first calls
	* the security manager's <code>checkSetFactory</code> method
	* to ensure the operation is allowed.
	* This could result in a SecurityException.
	*
	* @param set a <code>boolean</code> indicating whether or not
	* to follow HTTP redirects.
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkSetFactory</code> method doesn't
	*             allow the operation.
	* @see        SecurityManager#checkSetFactory
	* @see #getFollowRedirects()
	*/
	@:overload @:public @:static public static function setFollowRedirects(set : Bool) : Void;
	
	/**
	* Returns a <code>boolean</code> indicating
	* whether or not HTTP redirects (3xx) should
	* be automatically followed.
	*
	* @return <code>true</code> if HTTP redirects should
	* be automatically followed, <tt>false</tt> if not.
	* @see #setFollowRedirects(boolean)
	*/
	@:overload @:public @:static public static function getFollowRedirects() : Bool;
	
	/**
	* Sets whether HTTP redirects (requests with response code 3xx) should
	* be automatically followed by this <code>HttpURLConnection</code>
	* instance.
	* <p>
	* The default value comes from followRedirects, which defaults to
	* true.
	*
	* @param followRedirects a <code>boolean</code> indicating
	* whether or not to follow HTTP redirects.
	*
	* @see    java.net.HttpURLConnection#instanceFollowRedirects
	* @see #getInstanceFollowRedirects
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setInstanceFollowRedirects(followRedirects : Bool) : Void;
	
	/**
	* Returns the value of this <code>HttpURLConnection</code>'s
	* <code>instanceFollowRedirects</code> field.
	*
	* @return  the value of this <code>HttpURLConnection</code>'s
	*          <code>instanceFollowRedirects</code> field.
	* @see     java.net.HttpURLConnection#instanceFollowRedirects
	* @see #setInstanceFollowRedirects(boolean)
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getInstanceFollowRedirects() : Bool;
	
	/**
	* Set the method for the URL request, one of:
	* <UL>
	*  <LI>GET
	*  <LI>POST
	*  <LI>HEAD
	*  <LI>OPTIONS
	*  <LI>PUT
	*  <LI>DELETE
	*  <LI>TRACE
	* </UL> are legal, subject to protocol restrictions.  The default
	* method is GET.
	*
	* @param method the HTTP method
	* @exception ProtocolException if the method cannot be reset or if
	*              the requested method isn't valid for HTTP.
	* @exception SecurityException if a security manager is set and the
	*              method is "TRACE", but the "allowHttpTrace"
	*              NetPermission is not granted.
	* @see #getRequestMethod()
	*/
	@:overload @:public public function setRequestMethod(method : String) : Void;
	
	/**
	* Get the request method.
	* @return the HTTP request method
	* @see #setRequestMethod(java.lang.String)
	*/
	@:overload @:public public function getRequestMethod() : String;
	
	/**
	* Gets the status code from an HTTP response message.
	* For example, in the case of the following status lines:
	* <PRE>
	* HTTP/1.0 200 OK
	* HTTP/1.0 401 Unauthorized
	* </PRE>
	* It will return 200 and 401 respectively.
	* Returns -1 if no code can be discerned
	* from the response (i.e., the response is not valid HTTP).
	* @throws IOException if an error occurred connecting to the server.
	* @return the HTTP Status-Code, or -1
	*/
	@:overload @:public public function getResponseCode() : Int;
	
	/**
	* Gets the HTTP response message, if any, returned along with the
	* response code from a server.  From responses like:
	* <PRE>
	* HTTP/1.0 200 OK
	* HTTP/1.0 404 Not Found
	* </PRE>
	* Extracts the Strings "OK" and "Not Found" respectively.
	* Returns null if none could be discerned from the responses
	* (the result was not valid HTTP).
	* @throws IOException if an error occurred connecting to the server.
	* @return the HTTP response message, or <code>null</code>
	*/
	@:overload @:public public function getResponseMessage() : String;
	
	@:overload @:public override public function getHeaderFieldDate(name : String, Default : haxe.Int64) : haxe.Int64;
	
	/**
	* Indicates that other requests to the server
	* are unlikely in the near future. Calling disconnect()
	* should not imply that this HttpURLConnection
	* instance can be reused for other requests.
	*/
	@:overload @:public @:abstract public function disconnect() : Void;
	
	/**
	* Indicates if the connection is going through a proxy.
	* @return a boolean indicating if the connection is
	* using a proxy.
	*/
	@:overload @:public @:abstract public function usingProxy() : Bool;
	
	/**
	* Returns a {@link SocketPermission} object representing the
	* permission necessary to connect to the destination host and port.
	*
	* @exception IOException if an error occurs while computing
	*            the permission.
	*
	* @return a <code>SocketPermission</code> object representing the
	*         permission necessary to connect to the destination
	*         host and port.
	*/
	@:overload @:public override public function getPermission() : java.security.Permission;
	
	/**
	* Returns the error stream if the connection failed
	* but the server sent useful data nonetheless. The
	* typical example is when an HTTP server responds
	* with a 404, which will cause a FileNotFoundException
	* to be thrown in connect, but the server sent an HTML
	* help page with suggestions as to what to do.
	*
	* <p>This method will not cause a connection to be initiated.  If
	* the connection was not connected, or if the server did not have
	* an error while connecting or if the server had an error but
	* no error data was sent, this method will return null. This is
	* the default.
	*
	* @return an error stream if any, null if there have been no
	* errors, the connection is not connected or the server sent no
	* useful data.
	*/
	@:overload @:public public function getErrorStream() : java.io.InputStream;
	
	/**
	* HTTP Status-Code 200: OK.
	*/
	@:public @:static @:final public static var HTTP_OK(default, null) : Int;
	
	/**
	* HTTP Status-Code 201: Created.
	*/
	@:public @:static @:final public static var HTTP_CREATED(default, null) : Int;
	
	/**
	* HTTP Status-Code 202: Accepted.
	*/
	@:public @:static @:final public static var HTTP_ACCEPTED(default, null) : Int;
	
	/**
	* HTTP Status-Code 203: Non-Authoritative Information.
	*/
	@:public @:static @:final public static var HTTP_NOT_AUTHORITATIVE(default, null) : Int;
	
	/**
	* HTTP Status-Code 204: No Content.
	*/
	@:public @:static @:final public static var HTTP_NO_CONTENT(default, null) : Int;
	
	/**
	* HTTP Status-Code 205: Reset Content.
	*/
	@:public @:static @:final public static var HTTP_RESET(default, null) : Int;
	
	/**
	* HTTP Status-Code 206: Partial Content.
	*/
	@:public @:static @:final public static var HTTP_PARTIAL(default, null) : Int;
	
	/**
	* HTTP Status-Code 300: Multiple Choices.
	*/
	@:public @:static @:final public static var HTTP_MULT_CHOICE(default, null) : Int;
	
	/**
	* HTTP Status-Code 301: Moved Permanently.
	*/
	@:public @:static @:final public static var HTTP_MOVED_PERM(default, null) : Int;
	
	/**
	* HTTP Status-Code 302: Temporary Redirect.
	*/
	@:public @:static @:final public static var HTTP_MOVED_TEMP(default, null) : Int;
	
	/**
	* HTTP Status-Code 303: See Other.
	*/
	@:public @:static @:final public static var HTTP_SEE_OTHER(default, null) : Int;
	
	/**
	* HTTP Status-Code 304: Not Modified.
	*/
	@:public @:static @:final public static var HTTP_NOT_MODIFIED(default, null) : Int;
	
	/**
	* HTTP Status-Code 305: Use Proxy.
	*/
	@:public @:static @:final public static var HTTP_USE_PROXY(default, null) : Int;
	
	/**
	* HTTP Status-Code 400: Bad Request.
	*/
	@:public @:static @:final public static var HTTP_BAD_REQUEST(default, null) : Int;
	
	/**
	* HTTP Status-Code 401: Unauthorized.
	*/
	@:public @:static @:final public static var HTTP_UNAUTHORIZED(default, null) : Int;
	
	/**
	* HTTP Status-Code 402: Payment Required.
	*/
	@:public @:static @:final public static var HTTP_PAYMENT_REQUIRED(default, null) : Int;
	
	/**
	* HTTP Status-Code 403: Forbidden.
	*/
	@:public @:static @:final public static var HTTP_FORBIDDEN(default, null) : Int;
	
	/**
	* HTTP Status-Code 404: Not Found.
	*/
	@:public @:static @:final public static var HTTP_NOT_FOUND(default, null) : Int;
	
	/**
	* HTTP Status-Code 405: Method Not Allowed.
	*/
	@:public @:static @:final public static var HTTP_BAD_METHOD(default, null) : Int;
	
	/**
	* HTTP Status-Code 406: Not Acceptable.
	*/
	@:public @:static @:final public static var HTTP_NOT_ACCEPTABLE(default, null) : Int;
	
	/**
	* HTTP Status-Code 407: Proxy Authentication Required.
	*/
	@:public @:static @:final public static var HTTP_PROXY_AUTH(default, null) : Int;
	
	/**
	* HTTP Status-Code 408: Request Time-Out.
	*/
	@:public @:static @:final public static var HTTP_CLIENT_TIMEOUT(default, null) : Int;
	
	/**
	* HTTP Status-Code 409: Conflict.
	*/
	@:public @:static @:final public static var HTTP_CONFLICT(default, null) : Int;
	
	/**
	* HTTP Status-Code 410: Gone.
	*/
	@:public @:static @:final public static var HTTP_GONE(default, null) : Int;
	
	/**
	* HTTP Status-Code 411: Length Required.
	*/
	@:public @:static @:final public static var HTTP_LENGTH_REQUIRED(default, null) : Int;
	
	/**
	* HTTP Status-Code 412: Precondition Failed.
	*/
	@:public @:static @:final public static var HTTP_PRECON_FAILED(default, null) : Int;
	
	/**
	* HTTP Status-Code 413: Request Entity Too Large.
	*/
	@:public @:static @:final public static var HTTP_ENTITY_TOO_LARGE(default, null) : Int;
	
	/**
	* HTTP Status-Code 414: Request-URI Too Large.
	*/
	@:public @:static @:final public static var HTTP_REQ_TOO_LONG(default, null) : Int;
	
	/**
	* HTTP Status-Code 415: Unsupported Media Type.
	*/
	@:public @:static @:final public static var HTTP_UNSUPPORTED_TYPE(default, null) : Int;
	
	/**
	* HTTP Status-Code 500: Internal Server Error.
	* @deprecated   it is misplaced and shouldn't have existed.
	*/
	@:public @:static @:final public static var HTTP_SERVER_ERROR(default, null) : Int;
	
	/**
	* HTTP Status-Code 500: Internal Server Error.
	*/
	@:public @:static @:final public static var HTTP_INTERNAL_ERROR(default, null) : Int;
	
	/**
	* HTTP Status-Code 501: Not Implemented.
	*/
	@:public @:static @:final public static var HTTP_NOT_IMPLEMENTED(default, null) : Int;
	
	/**
	* HTTP Status-Code 502: Bad Gateway.
	*/
	@:public @:static @:final public static var HTTP_BAD_GATEWAY(default, null) : Int;
	
	/**
	* HTTP Status-Code 503: Service Unavailable.
	*/
	@:public @:static @:final public static var HTTP_UNAVAILABLE(default, null) : Int;
	
	/**
	* HTTP Status-Code 504: Gateway Timeout.
	*/
	@:public @:static @:final public static var HTTP_GATEWAY_TIMEOUT(default, null) : Int;
	
	/**
	* HTTP Status-Code 505: HTTP Version Not Supported.
	*/
	@:public @:static @:final public static var HTTP_VERSION(default, null) : Int;
	
	
}
