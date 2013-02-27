package com.sun.net.httpserver;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpExchange
{
	/**
	* This class encapsulates a HTTP request received and a
	* response to be generated in one exchange. It provides methods
	* for examining the request from the client, and for building and
	* sending the response.
	* <p>
	* The typical life-cycle of a HttpExchange is shown in the sequence
	* below.
	* <ol><li>{@link #getRequestMethod()} to determine the command
	* <li>{@link #getRequestHeaders()} to examine the request headers (if needed)
	* <li>{@link #getRequestBody()} returns a {@link java.io.InputStream} for reading the request body.
	*     After reading the request body, the stream is close.
	* <li>{@link #getResponseHeaders()} to set any response headers, except content-length
	* <li>{@link #sendResponseHeaders(int,long)} to send the response headers. Must be called before
	* next step.
	* <li>{@link #getResponseBody()} to get a {@link java.io.OutputStream} to send the response body.
	*      When the response body has been written, the stream must be closed to terminate the exchange.
	* </ol>
	* <b>Terminating exchanges</b>
	* <br>
	* Exchanges are terminated when both the request InputStream and response OutputStream are closed.
	* Closing the OutputStream, implicitly closes the InputStream (if it is not already closed).
	* However, it is recommended
	* to consume all the data from the InputStream before closing it.
	* The convenience method {@link #close()} does all of these tasks.
	* Closing an exchange without consuming all of the request body is not an error
	* but may make the underlying TCP connection unusable for following exchanges.
	* The effect of failing to terminate an exchange is undefined, but will typically
	* result in resources failing to be freed/reused.
	* @since 1.6
	*/
	@:require(java6) @:overload private function new() : Void;
	
	/**
	* Returns an immutable Map containing the HTTP headers that were
	* included with this request. The keys in this Map will be the header
	* names, while the values will be a List of Strings containing each value
	* that was included (either for a header that was listed several times,
	* or one that accepts a comma-delimited list of values on a single line).
	* In either of these cases, the values for the header name will be
	* presented in the order that they were included in the request.
	* <p>
	* The keys in Map are case-insensitive.
	* @return a read-only Map which can be used to access request headers
	*/
	@:overload @:abstract public function getRequestHeaders() : com.sun.net.httpserver.Headers;
	
	/**
	* Returns a mutable Map into which the HTTP response headers can be stored
	* and which will be transmitted as part of this response. The keys in the
	* Map will be the header names, while the values must be a List of Strings
	* containing each value that should be included multiple times
	* (in the order that they should be included).
	* <p>
	* The keys in Map are case-insensitive.
	* @return a writable Map which can be used to set response headers.
	*/
	@:overload @:abstract public function getResponseHeaders() : com.sun.net.httpserver.Headers;
	
	/**
	* Get the request URI
	*
	* @return the request URI
	*/
	@:overload @:abstract public function getRequestURI() : java.net.URI;
	
	/**
	* Get the request method
	* @return the request method
	*/
	@:overload @:abstract public function getRequestMethod() : String;
	
	/**
	* Get the HttpContext for this exchange
	* @return the HttpContext
	*/
	@:overload @:abstract public function getHttpContext() : com.sun.net.httpserver.HttpContext;
	
	/**
	* Ends this exchange by doing the following in sequence:<p><ol>
	* <li>close the request InputStream, if not already closed<p></li>
	* <li>close the response OutputStream, if not already closed. </li>
	* </ol>
	*/
	@:overload @:abstract public function close() : Void;
	
	/**
	* returns a stream from which the request body can be read.
	* Multiple calls to this method will return the same stream.
	* It is recommended that applications should consume (read) all of the
	* data from this stream before closing it. If a stream is closed
	* before all data has been read, then the close() call will
	* read and discard remaining data (up to an implementation specific
	* number of bytes).
	* @return the stream from which the request body can be read.
	*/
	@:overload @:abstract public function getRequestBody() : java.io.InputStream;
	
	/**
	* returns a stream to which the response body must be
	* written. {@link #sendResponseHeaders(int,long)}) must be called prior to calling
	* this method. Multiple calls to this method (for the same exchange)
	* will return the same stream. In order to correctly terminate
	* each exchange, the output stream must be closed, even if no
	* response body is being sent.
	* <p>
	* Closing this stream implicitly
	* closes the InputStream returned from {@link #getRequestBody()}
	* (if it is not already closed).
	* <P>
	* If the call to sendResponseHeaders() specified a fixed response
	* body length, then the exact number of bytes specified in that
	* call must be written to this stream. If too many bytes are written,
	* then write() will throw an IOException. If too few bytes are written
	* then the stream close() will throw an IOException. In both cases,
	* the exchange is aborted and the underlying TCP connection closed.
	* @return the stream to which the response body is written
	*/
	@:overload @:abstract public function getResponseBody() : java.io.OutputStream;
	
	/**
	* Starts sending the response back to the client using the current set of response headers
	* and the numeric response code as specified in this method. The response body length is also specified
	* as follows. If the response length parameter is greater than zero, this specifies an exact
	* number of bytes to send and the application must send that exact amount of data.
	* If the response length parameter is <code>zero</code>, then chunked transfer encoding is
	* used and an arbitrary amount of data may be sent. The application terminates the
	* response body by closing the OutputStream. If response length has the value <code>-1</code>
	* then no response body is being sent.
	* <p>
	* If the content-length response header has not already been set then
	* this is set to the apropriate value depending on the response length parameter.
	* <p>
	* This method must be called prior to calling {@link #getResponseBody()}.
	* @param rCode the response code to send
	* @param responseLength if > 0, specifies a fixed response body length
	*        and that exact number of bytes must be written
	*        to the stream acquired from getResponseBody(), or else
	*        if equal to 0, then chunked encoding is used,
	*        and an arbitrary number of bytes may be written.
	*        if <= -1, then no response body length is specified and
	*        no response body may be written.
	* @see HttpExchange#getResponseBody()
	*/
	@:overload @:abstract public function sendResponseHeaders(rCode : Int, responseLength : haxe.Int64) : Void;
	
	/**
	* Returns the address of the remote entity invoking this request
	* @return the InetSocketAddress of the caller
	*/
	@:overload @:abstract public function getRemoteAddress() : java.net.InetSocketAddress;
	
	/**
	* Returns the response code, if it has already been set
	* @return the response code, if available. <code>-1</code> if not available yet.
	*/
	@:overload @:abstract public function getResponseCode() : Int;
	
	/**
	* Returns the local address on which the request was received
	* @return the InetSocketAddress of the local interface
	*/
	@:overload @:abstract public function getLocalAddress() : java.net.InetSocketAddress;
	
	/**
	* Returns the protocol string from the request in the form
	* <i>protocol/majorVersion.minorVersion</i>. For example,
	* "HTTP/1.1"
	* @return the protocol string from the request
	*/
	@:overload @:abstract public function getProtocol() : String;
	
	/**
	* Filter modules may store arbitrary objects with HttpExchange
	* instances as an out-of-band communication mechanism. Other Filters
	* or the exchange handler may then access these objects.
	* <p>
	* Each Filter class will document the attributes which they make
	* available.
	* @param name the name of the attribute to retrieve
	* @return the attribute object, or null if it does not exist
	* @throws NullPointerException if name is <code>null</code>
	*/
	@:overload @:abstract public function getAttribute(name : String) : Dynamic;
	
	/**
	* Filter modules may store arbitrary objects with HttpExchange
	* instances as an out-of-band communication mechanism. Other Filters
	* or the exchange handler may then access these objects.
	* <p>
	* Each Filter class will document the attributes which they make
	* available.
	* @param name the name to associate with the attribute value
	* @param value the object to store as the attribute value. <code>null</code>
	* value is permitted.
	* @throws NullPointerException if name is <code>null</code>
	*/
	@:overload @:abstract public function setAttribute(name : String, value : Dynamic) : Void;
	
	/**
	* Used by Filters to wrap either (or both) of this exchange's InputStream
	* and OutputStream, with the given filtered streams so
	* that subsequent calls to {@link #getRequestBody()} will
	* return the given {@link java.io.InputStream}, and calls to
	* {@link #getResponseBody()} will return the given
	* {@link java.io.OutputStream}. The streams provided to this
	* call must wrap the original streams, and may be (but are not
	* required to be) sub-classes of {@link java.io.FilterInputStream}
	* and {@link java.io.FilterOutputStream}.
	* @param i the filtered input stream to set as this object's inputstream,
	*          or <code>null</code> if no change.
	* @param o the filtered output stream to set as this object's outputstream,
	*          or <code>null</code> if no change.
	*/
	@:overload @:abstract public function setStreams(i : java.io.InputStream, o : java.io.OutputStream) : Void;
	
	/**
	* If an authenticator is set on the HttpContext that owns this exchange,
	* then this method will return the {@link HttpPrincipal} that represents
	* the authenticated user for this HttpExchange.
	* @return the HttpPrincipal, or <code>null</code> if no authenticator is set.
	*/
	@:overload @:abstract public function getPrincipal() : com.sun.net.httpserver.HttpPrincipal;
	
	
}
