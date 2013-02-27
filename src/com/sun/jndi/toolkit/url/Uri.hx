package com.sun.jndi.toolkit.url;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class Uri
{
	/**
	* A Uri object represents an absolute Uniform Resource Identifier
	* (URI) as defined by RFC 2396 and updated by RFC 2373 and RFC 2732.
	* The most commonly used form of URI is the Uniform Resource Locator (URL).
	*
	* <p> The java.net.URL class cannot be used to parse URIs since it
	* requires the installation of URL stream handlers that may not be
	* available.  The hack of getting around this by temporarily
	* replacing the scheme part of a URI is not appropriate here: JNDI
	* service providers must work on older Java platforms, and we want
	* new features and bug fixes that are not available in old versions
	* of the URL class.
	*
	* <p> It may be appropriate to drop this code in favor of the
	* java.net.URI class.  The changes would need to be written so as to
	* still run on pre-1.4 platforms not containing that class.
	*
	* <p> The format of an absolute URI (see the RFCs mentioned above) is:
	* <p><blockquote><pre>
	*      absoluteURI   = scheme ":" ( hier_part | opaque_part )
	*
	*      scheme        = alpha *( alpha | digit | "+" | "-" | "." )
	*
	*      hier_part     = ( net_path | abs_path ) [ "?" query ]
	*      opaque_part   = uric_no_slash *uric
	*
	*      net_path      = "//" authority [ abs_path ]
	*      abs_path      = "/"  path_segments
	*
	*      authority     = server | reg_name
	*      reg_name      = 1*( unreserved | escaped | "$" | "," |
	*                          ";" | ":" | "@" | "&" | "=" | "+" )
	*      server        = [ [ userinfo "@" ] hostport ]
	*      userinfo      = *( unreserved | escaped |
	*                         ";" | ":" | "&" | "=" | "+" | "$" | "," )
	*
	*      hostport      = host [ ":" port ]
	*      host          = hostname | IPv4address | IPv6reference
	*      port          = *digit
	*
	*      IPv6reference = "[" IPv6address "]"
	*      IPv6address   = hexpart [ ":" IPv4address ]
	*      IPv4address   = 1*3digit "." 1*3digit "." 1*3digit "." 1*3digit
	*      hexpart       = hexseq | hexseq "::" [ hexseq ] | "::" [ hexseq ]
	*      hexseq        = hex4 *( ":" hex4)
	*      hex4          = 1*4hex
	*
	*      path          = [ abs_path | opaque_part ]
	*      path_segments = segment *( "/" segment )
	*      segment       = *pchar *( ";" param )
	*      param         = *pchar
	*      pchar         = unreserved | escaped |
	*                      ":" | "@" | "&" | "=" | "+" | "$" | ","
	*
	*      query         = *uric
	*
	*      uric          = reserved | unreserved | escaped
	*      uric_no_slash = unreserved | escaped | ";" | "?" | ":" | "@" |
	*                      "&" | "=" | "+" | "$" | ","
	*      reserved      = ";" | "/" | "?" | ":" | "@" | "&" | "=" | "+" |
	*                      "$" | "," | "[" | "]"
	*      unreserved    = alphanum | mark
	*      mark          = "-" | "_" | "." | "!" | "~" | "*" | "'" | "(" | ")"
	*      escaped       = "%" hex hex
	*      unwise        = "{" | "}" | "|" | "\" | "^" | "`"
	* </pre></blockquote>
	*
	* <p> Currently URIs containing <tt>userinfo</tt> or <tt>reg_name</tt>
	* are not supported.
	* The <tt>opaque_part</tt> of a non-hierarchical URI is treated as if
	* if were a <tt>path</tt> without a leading slash.
	*/
	private var uri : String;
	
	private var scheme : String;
	
	private var host : String;
	
	private var port : Int;
	
	private var hasAuthority : Bool;
	
	private var path : String;
	
	private var query : String;
	
	/**
	* Creates a Uri object given a URI string.
	*/
	@:overload public function new(uri : String) : Void;
	
	/**
	* Creates an uninitialized Uri object. The init() method must
	* be called before any other Uri methods.
	*/
	@:overload private function new() : Void;
	
	/**
	* Initializes a Uri object given a URI string.
	* This method must be called exactly once, and before any other Uri
	* methods.
	*/
	@:overload private function init(uri : String) : Void;
	
	/**
	* Returns the URI's scheme.
	*/
	@:overload public function getScheme() : String;
	
	/**
	* Returns the host from the URI's authority part, or null
	* if no host is provided.  If the host is an IPv6 literal, the
	* delimiting brackets are part of the returned value (see
	* {@link java.net.URI#getHost}).
	*/
	@:overload public function getHost() : String;
	
	/**
	* Returns the port from the URI's authority part, or -1 if
	* no port is provided.
	*/
	@:overload public function getPort() : Int;
	
	/**
	* Returns the URI's path.  The path is never null.  Note that a
	* slash following the authority part (or the scheme if there is
	* no authority part) is part of the path.  For example, the path
	* of "http://host/a/b" is "/a/b".
	*/
	@:overload public function getPath() : String;
	
	/**
	* Returns the URI's query part, or null if no query is provided.
	* Note that a query always begins with a leading "?".
	*/
	@:overload public function getQuery() : String;
	
	/**
	* Returns the URI as a string.
	*/
	@:overload public function toString() : String;
	
	
}
