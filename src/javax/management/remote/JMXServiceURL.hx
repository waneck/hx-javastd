package javax.management.remote;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JMXServiceURL implements java.io.Serializable
{
	/**
	* <p>Constructs a <code>JMXServiceURL</code> by parsing a Service URL
	* string.</p>
	*
	* @param serviceURL the URL string to be parsed.
	*
	* @exception NullPointerException if <code>serviceURL</code> is
	* null.
	*
	* @exception MalformedURLException if <code>serviceURL</code>
	* does not conform to the syntax for an Abstract Service URL or
	* if it is not a valid name for a JMX Remote API service.  A
	* <code>JMXServiceURL</code> must begin with the string
	* <code>"service:jmx:"</code> (case-insensitive).  It must not
	* contain any characters that are not printable ASCII characters.
	*/
	@:overload public function new(serviceURL : String) : Void;
	
	/**
	* <p>Constructs a <code>JMXServiceURL</code> with the given protocol,
	* host, and port.  This constructor is equivalent to
	* {@link #JMXServiceURL(String, String, int, String)
	* JMXServiceURL(protocol, host, port, null)}.</p>
	*
	* @param protocol the protocol part of the URL.  If null, defaults
	* to <code>jmxmp</code>.
	*
	* @param host the host part of the URL.  If null, defaults to the
	* local host name, as determined by
	* <code>InetAddress.getLocalHost().getHostName()</code>.  If it
	* is a numeric IPv6 address, it can optionally be enclosed in
	* square brackets <code>[]</code>.
	*
	* @param port the port part of the URL.
	*
	* @exception MalformedURLException if one of the parts is
	* syntactically incorrect, or if <code>host</code> is null and it
	* is not possible to find the local host name, or if
	* <code>port</code> is negative.
	*/
	@:overload public function new(protocol : String, host : String, port : Int) : Void;
	
	/**
	* <p>Constructs a <code>JMXServiceURL</code> with the given parts.
	*
	* @param protocol the protocol part of the URL.  If null, defaults
	* to <code>jmxmp</code>.
	*
	* @param host the host part of the URL.  If null, defaults to the
	* local host name, as determined by
	* <code>InetAddress.getLocalHost().getHostName()</code>.  If it
	* is a numeric IPv6 address, it can optionally be enclosed in
	* square brackets <code>[]</code>.
	*
	* @param port the port part of the URL.
	*
	* @param urlPath the URL path part of the URL.  If null, defaults to
	* the empty string.
	*
	* @exception MalformedURLException if one of the parts is
	* syntactically incorrect, or if <code>host</code> is null and it
	* is not possible to find the local host name, or if
	* <code>port</code> is negative.
	*/
	@:overload public function new(protocol : String, host : String, port : Int, urlPath : String) : Void;
	
	/**
	* <p>The protocol part of the Service URL.
	*
	* @return the protocol part of the Service URL.  This is never null.
	*/
	@:overload public function getProtocol() : String;
	
	/**
	* <p>The host part of the Service URL.  If the Service URL was
	* constructed with the constructor that takes a URL string
	* parameter, the result is the substring specifying the host in
	* that URL.  If the Service URL was constructed with a
	* constructor that takes a separate host parameter, the result is
	* the string that was specified.  If that string was null, the
	* result is
	* <code>InetAddress.getLocalHost().getHostName()</code>.</p>
	*
	* <p>In either case, if the host was specified using the
	* <code>[...]</code> syntax for numeric IPv6 addresses, the
	* square brackets are not included in the return value here.</p>
	*
	* @return the host part of the Service URL.  This is never null.
	*/
	@:overload public function getHost() : String;
	
	/**
	* <p>The port of the Service URL.  If no port was
	* specified, the returned value is 0.</p>
	*
	* @return the port of the Service URL, or 0 if none.
	*/
	@:overload public function getPort() : Int;
	
	/**
	* <p>The URL Path part of the Service URL.  This is an empty
	* string, or a string beginning with a slash (<code>/</code>), or
	* a string beginning with a semicolon (<code>;</code>).
	*
	* @return the URL Path part of the Service URL.  This is never
	* null.
	*/
	@:overload public function getURLPath() : String;
	
	/**
	* <p>The string representation of this Service URL.  If the value
	* returned by this method is supplied to the
	* <code>JMXServiceURL</code> constructor, the resultant object is
	* equal to this one.</p>
	*
	* <p>The <code><em>host</em></code> part of the returned string
	* is the value returned by {@link #getHost()}.  If that value
	* specifies a numeric IPv6 address, it is surrounded by square
	* brackets <code>[]</code>.</p>
	*
	* <p>The <code><em>port</em></code> part of the returned string
	* is the value returned by {@link #getPort()} in its shortest
	* decimal form.  If the value is zero, it is omitted.</p>
	*
	* @return the string representation of this Service URL.
	*/
	@:overload public function toString() : String;
	
	/**
	* <p>Indicates whether some other object is equal to this one.
	* This method returns true if and only if <code>obj</code> is an
	* instance of <code>JMXServiceURL</code> whose {@link
	* #getProtocol()}, {@link #getHost()}, {@link #getPort()}, and
	* {@link #getURLPath()} methods return the same values as for
	* this object.  The values for {@link #getProtocol()} and {@link
	* #getHost()} can differ in case without affecting equality.
	*
	* @param obj the reference object with which to compare.
	*
	* @return <code>true</code> if this object is the same as the
	* <code>obj</code> argument; <code>false</code> otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
