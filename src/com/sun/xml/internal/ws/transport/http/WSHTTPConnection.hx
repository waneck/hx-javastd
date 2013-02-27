package com.sun.xml.internal.ws.transport.http;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class WSHTTPConnection extends com.sun.xml.internal.ws.api.PropertySet
{
	/**
	* The view of an HTTP exchange from the point of view of JAX-WS.
	*
	* <p>
	* Different HTTP server layer uses different implementations of this class
	* so that JAX-WS can be shielded from individuality of such layers.
	* This is an interface implemented as an abstract class, so that
	* future versions of the JAX-WS RI can add new methods.
	*
	* <p>
	* This class extends {@link PropertySet} so that a transport can
	* expose its properties to the appliation and pipes. (This object
	* will be added to {@link Packet#addSatellite(PropertySet)}.)
	*
	* @author Jitendra Kotamraju
	*/
	public static var OK(default, null) : Int;
	
	public static var ONEWAY(default, null) : Int;
	
	public static var UNSUPPORTED_MEDIA(default, null) : Int;
	
	public static var MALFORMED_XML(default, null) : Int;
	
	public static var INTERNAL_ERR(default, null) : Int;
	
	/**
	* Overwrites all the HTTP response headers written thus far.
	*
	* <p>
	* The implementation should copy the contents of the {@link Map},
	* rather than retaining a reference. The {@link Map} passed as a
	* parameter may change after this method is invoked.
	*
	* <p>
	* This method may be called repeatedly, although in normal use
	* case that's rare (so the implementation is encourage to take
	* advantage of this usage pattern to improve performance, if possible.)
	*
	* <p>
	* Initially, no header is set.
	*
	* <p>
	* This parameter is usually exposed to {@link WebServiceContext}
	* as {@link Packet#OUTBOUND_TRANSPORT_HEADERS}, and thus it
	* should ignore <tt>Content-Type</tt> and <tt>Content-Length</tt> headers.
	*
	* @param headers
	*      See {@link HttpURLConnection#getHeaderFields()} for the format.
	*      This parameter may not be null, but since the user application
	*      code may invoke this method, a graceful error checking with
	*      an helpful error message should be provided if it's actually null.
	* @see #setContentTypeResponseHeader(String)
	*/
	@:overload @:abstract public function setResponseHeaders(headers : java.util.Map<String, java.util.List<String>>) : Void;
	
	/**
	* Sets the <tt>"Content-Type"</tt> header.
	*
	* <p>
	* If the Content-Type header has already been set, this method will overwrite
	* the previously set value. If not, this method adds it.
	*
	* <p>
	* Note that this method and {@link #setResponseHeaders(Map&lt;String,List&lt;String>>)}
	* may be invoked in any arbitrary order.
	*
	* @param value
	*      strings like <tt>"application/xml; charset=UTF-8"</tt> or
	*      <tt>"image/jpeg"</tt>.
	*/
	@:overload @:abstract public function setContentTypeResponseHeader(value : String) : Void;
	
	/**
	* Sets the HTTP response code like {@link #OK}.
	*
	* <p>
	* While JAX-WS processes a {@link WSHTTPConnection}, it
	* will at least call this method once to set a valid HTTP response code.
	* Note that this method may be invoked multiple times (from user code),
	* so do not consider the value to be final until {@link #getOutput()}
	* is invoked.
	*/
	@:overload @:abstract public function setStatus(status : Int) : Void;
	
	/**
	* Gets the last value set by {@link #setStatus(int)}.
	*
	* @return
	*      if {@link #setStatus(int)} has not been invoked yet,
	*      return 0.
	*/
	@:overload @:abstract public function getStatus() : Int;
	
	/**
	* Transport's underlying input stream.
	*
	* <p>
	* This method will be invoked at most once by the JAX-WS RI to
	* read the request body. If there's no request body, this method
	* should return an empty {@link InputStream}.
	*
	* @return
	*      the stream from which the request body will be read.
	*/
	@:overload @:abstract public function getInput() : java.io.InputStream;
	
	/**
	* Transport's underlying output stream
	*
	* <p>
	* This method will be invoked exactly once by the JAX-WS RI
	* to start writing the response body (unless the processing aborts abnormally.)
	* Even if there's no response body to write, this method will
	* still be invoked only to be closed immediately.
	*
	* <p>
	* Once this method is called, the status code and response
	* headers will never change (IOW {@link #setStatus(int)},
	* {@link #setResponseHeaders}, and {@link #setContentTypeResponseHeader(String)}
	* will never be invoked.
	*/
	@:overload @:abstract public function getOutput() : java.io.OutputStream;
	
	/**
	* Returns the {@link WebServiceContextDelegate} for this connection.
	*/
	@:overload @:abstract public function getWebServiceContextDelegate() : com.sun.xml.internal.ws.api.server.WebServiceContextDelegate;
	
	/**
	* HTTP request method, such as "GET" or "POST".
	*/
	@:overload @:abstract public function getRequestMethod() : String;
	
	/**
	* HTTP request headers.
	*
	* @deprecated
	*      This is a potentially expensive operation.
	*      Programs that want to access HTTP headers should consider using
	*      other methods such as {@link #getRequestHeader(String)}.
	*
	* @return
	*      can be empty but never null.
	*/
	@:overload @:abstract public function getRequestHeaders() : java.util.Map<String, java.util.List<String>>;
	
	/**
	* @return
	*      HTTP response headers.
	*/
	@:overload @:abstract public function getResponseHeaders() : java.util.Map<String, java.util.List<String>>;
	
	/**
	* Gets an HTTP request header.
	*
	* <p>
	* if multiple headers are present, this method returns one of them.
	* (The implementation is free to choose which one it returns.)
	*
	* @return
	*      null if no header exists.
	*/
	@:overload @:abstract public function getRequestHeader(headerName : String) : String;
	
	/**
	* HTTP Query string, such as "foo=bar", or null if none exists.
	*/
	@:overload @:abstract public function getQueryString() : String;
	
	/**
	* Requested path. A string like "/foo/bar/baz"
	*/
	@:overload @:abstract public function getPathInfo() : String;
	
	/**
	* Gets the absolute URL up to the context path.
	* @return
	*      String like "http://myhost/myapp"
	* @since 2.1.2
	*/
	@:require(java1) @:overload public function getBaseAddress() : String;
	
	/**
	* Whether connection is HTTPS or not
	*
	* @return if the received request is on HTTPS, return true
	*         else false
	*/
	@:overload @:abstract public function isSecure() : Bool;
	
	/**
	* Close the connection
	*/
	@:overload public function close() : Void;
	
	/**
	* Retuns whether connection is closed or not.
	*/
	@:overload public function isClosed() : Bool;
	
	/**
	* Subclasses are expected to override
	*
	* @return
	*/
	@:overload public function getProtocol() : String;
	
	/**
	* Subclasses are expected to override
	*
	* @since JAX-WS RI 2.2.2
	* @return
	*/
	@:require(java2) @:overload public function getCookie(name : String) : String;
	
	/**
	* Subclasses are expected to override
	*
	*
	* @since JAX-WS RI 2.2.2
	*/
	@:require(java2) @:overload public function setCookie(name : String, value : String) : Void;
	
	/**
	* Subclasses are expected to override
	*
	* @return
	*/
	@:overload public function setContentLengthResponseHeader(value : Int) : Void;
	
	
}
