package com.sun.xml.internal.messaging.saaj.util;
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
//// Imported from: org.apache.xerces.util
//// Needed to work around differences in JDK1.2 and 1.3 and deal with userInfo
extern class JaxmURI implements java.io.Serializable
{
	/**
	* Construct a new and uninitialized URI.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a new URI from another URI. All fields for this URI are
	* set equal to the fields of the URI passed in.
	*
	* @param p_other the URI to copy (cannot be null)
	*/
	@:overload @:public public function new(p_other : com.sun.xml.internal.messaging.saaj.util.JaxmURI) : Void;
	
	/**
	* Construct a new URI from a URI specification string. If the
	* specification follows the "generic URI" syntax, (two slashes
	* following the first colon), the specification will be parsed
	* accordingly - setting the scheme, userinfo, host,port, path, query
	* string and fragment fields as necessary. If the specification does
	* not follow the "generic URI" syntax, the specification is parsed
	* into a scheme and scheme-specific part (stored as the path) only.
	*
	* @param p_uriSpec the URI specification string (cannot be null or
	*                  empty)
	*
	* @exception MalformedURIException if p_uriSpec violates any syntax
	*                                   rules
	*/
	@:overload @:public public function new(p_uriSpec : String) : Void;
	
	/**
	* Construct a new URI from a base URI and a URI specification string.
	* The URI specification string may be a relative URI.
	*
	* @param p_base the base URI (cannot be null if p_uriSpec is null or
	*               empty)
	* @param p_uriSpec the URI specification string (cannot be null or
	*                  empty if p_base is null)
	*
	* @exception MalformedURIException if p_uriSpec violates any syntax
	*                                  rules
	*/
	@:overload @:public public function new(p_base : com.sun.xml.internal.messaging.saaj.util.JaxmURI, p_uriSpec : String) : Void;
	
	/**
	* Construct a new URI that does not follow the generic URI syntax.
	* Only the scheme and scheme-specific part (stored as the path) are
	* initialized.
	*
	* @param p_scheme the URI scheme (cannot be null or empty)
	* @param p_schemeSpecificPart the scheme-specific part (cannot be
	*                             null or empty)
	*
	* @exception MalformedURIException if p_scheme violates any
	*                                  syntax rules
	*/
	@:overload @:public public function new(p_scheme : String, p_schemeSpecificPart : String) : Void;
	
	/**
	* Construct a new URI that follows the generic URI syntax from its
	* component parts. Each component is validated for syntax and some
	* basic semantic checks are performed as well.  See the individual
	* setter methods for specifics.
	*
	* @param p_scheme the URI scheme (cannot be null or empty)
	* @param p_host the hostname or IPv4 address for the URI
	* @param p_path the URI path - if the path contains '?' or '#',
	*               then the query string and/or fragment will be
	*               set from the path; however, if the query and
	*               fragment are specified both in the path and as
	*               separate parameters, an exception is thrown
	* @param p_queryString the URI query string (cannot be specified
	*                      if path is null)
	* @param p_fragment the URI fragment (cannot be specified if path
	*                   is null)
	*
	* @exception MalformedURIException if any of the parameters violates
	*                                  syntax rules or semantic rules
	*/
	@:overload @:public public function new(p_scheme : String, p_host : String, p_path : String, p_queryString : String, p_fragment : String) : Void;
	
	/**
	* Construct a new URI that follows the generic URI syntax from its
	* component parts. Each component is validated for syntax and some
	* basic semantic checks are performed as well.  See the individual
	* setter methods for specifics.
	*
	* @param p_scheme the URI scheme (cannot be null or empty)
	* @param p_userinfo the URI userinfo (cannot be specified if host
	*                   is null)
	* @param p_host the hostname or IPv4 address for the URI
	* @param p_port the URI port (may be -1 for "unspecified"; cannot
	*               be specified if host is null)
	* @param p_path the URI path - if the path contains '?' or '#',
	*               then the query string and/or fragment will be
	*               set from the path; however, if the query and
	*               fragment are specified both in the path and as
	*               separate parameters, an exception is thrown
	* @param p_queryString the URI query string (cannot be specified
	*                      if path is null)
	* @param p_fragment the URI fragment (cannot be specified if path
	*                   is null)
	*
	* @exception MalformedURIException if any of the parameters violates
	*                                  syntax rules or semantic rules
	*/
	@:overload @:public public function new(p_scheme : String, p_userinfo : String, p_host : String, p_port : Int, p_path : String, p_queryString : String, p_fragment : String) : Void;
	
	/**
	* Get the scheme for this URI.
	*
	* @return the scheme for this URI
	*/
	@:overload @:public public function getScheme() : String;
	
	/**
	* Get the scheme-specific part for this URI (everything following the
	* scheme and the first colon). See RFC 2396 Section 5.2 for spec.
	*
	* @return the scheme-specific part for this URI
	*/
	@:overload @:public public function getSchemeSpecificPart() : String;
	
	/**
	* Get the userinfo for this URI.
	*
	* @return the userinfo for this URI (null if not specified).
	*/
	@:overload @:public public function getUserinfo() : String;
	
	/**
	* Get the host for this URI.
	*
	* @return the host for this URI (null if not specified).
	*/
	@:overload @:public public function getHost() : String;
	
	/**
	* Get the port for this URI.
	*
	* @return the port for this URI (-1 if not specified).
	*/
	@:overload @:public public function getPort() : Int;
	
	/**
	* Get the path for this URI (optionally with the query string and
	* fragment).
	*
	* @param p_includeQueryString if true (and query string is not null),
	*                             then a "?" followed by the query string
	*                             will be appended
	* @param p_includeFragment if true (and fragment is not null),
	*                             then a "#" followed by the fragment
	*                             will be appended
	*
	* @return the path for this URI possibly including the query string
	*         and fragment
	*/
	@:overload @:public public function getPath(p_includeQueryString : Bool, p_includeFragment : Bool) : String;
	
	/**
	* Get the path for this URI. Note that the value returned is the path
	* only and does not include the query string or fragment.
	*
	* @return the path for this URI.
	*/
	@:overload @:public public function getPath() : String;
	
	/**
	* Get the query string for this URI.
	*
	* @return the query string for this URI. Null is returned if there
	*         was no "?" in the URI spec, empty string if there was a
	*         "?" but no query string following it.
	*/
	@:overload @:public public function getQueryString() : String;
	
	/**
	* Get the fragment for this URI.
	*
	* @return the fragment for this URI. Null is returned if there
	*         was no "#" in the URI spec, empty string if there was a
	*         "#" but no fragment following it.
	*/
	@:overload @:public public function getFragment() : String;
	
	/**
	* Set the scheme for this URI. The scheme is converted to lowercase
	* before it is set.
	*
	* @param p_scheme the scheme for this URI (cannot be null)
	*
	* @exception MalformedURIException if p_scheme is not a conformant
	*                                  scheme name
	*/
	@:overload @:public public function setScheme(p_scheme : String) : Void;
	
	/**
	* Set the userinfo for this URI. If a non-null value is passed in and
	* the host value is null, then an exception is thrown.
	*
	* @param p_userinfo the userinfo for this URI
	*
	* @exception MalformedURIException if p_userinfo contains invalid
	*                                  characters
	*/
	@:overload @:public public function setUserinfo(p_userinfo : String) : Void;
	
	/**
	* Set the host for this URI. If null is passed in, the userinfo
	* field is also set to null and the port is set to -1.
	*
	* @param p_host the host for this URI
	*
	* @exception MalformedURIException if p_host is not a valid IP
	*                                  address or DNS hostname.
	*/
	@:overload @:public public function setHost(p_host : String) : Void;
	
	/**
	* Set the port for this URI. -1 is used to indicate that the port is
	* not specified, otherwise valid port numbers are  between 0 and 65535.
	* If a valid port number is passed in and the host field is null,
	* an exception is thrown.
	*
	* @param p_port the port number for this URI
	*
	* @exception MalformedURIException if p_port is not -1 and not a
	*                                  valid port number
	*/
	@:overload @:public public function setPort(p_port : Int) : Void;
	
	/**
	* Set the path for this URI. If the supplied path is null, then the
	* query string and fragment are set to null as well. If the supplied
	* path includes a query string and/or fragment, these fields will be
	* parsed and set as well. Note that, for URIs following the "generic
	* URI" syntax, the path specified should start with a slash.
	* For URIs that do not follow the generic URI syntax, this method
	* sets the scheme-specific part.
	*
	* @param p_path the path for this URI (may be null)
	*
	* @exception MalformedURIException if p_path contains invalid
	*                                  characters
	*/
	@:overload @:public public function setPath(p_path : String) : Void;
	
	/**
	* Append to the end of the path of this URI. If the current path does
	* not end in a slash and the path to be appended does not begin with
	* a slash, a slash will be appended to the current path before the
	* new segment is added. Also, if the current path ends in a slash
	* and the new segment begins with a slash, the extra slash will be
	* removed before the new segment is appended.
	*
	* @param p_addToPath the new segment to be added to the current path
	*
	* @exception MalformedURIException if p_addToPath contains syntax
	*                                  errors
	*/
	@:overload @:public public function appendPath(p_addToPath : String) : Void;
	
	/**
	* Set the query string for this URI. A non-null value is valid only
	* if this is an URI conforming to the generic URI syntax and
	* the path value is not null.
	*
	* @param p_queryString the query string for this URI
	*
	* @exception MalformedURIException if p_queryString is not null and this
	*                                  URI does not conform to the generic
	*                                  URI syntax or if the path is null
	*/
	@:overload @:public public function setQueryString(p_queryString : String) : Void;
	
	/**
	* Set the fragment for this URI. A non-null value is valid only
	* if this is a URI conforming to the generic URI syntax and
	* the path value is not null.
	*
	* @param p_fragment the fragment for this URI
	*
	* @exception MalformedURIException if p_fragment is not null and this
	*                                  URI does not conform to the generic
	*                                  URI syntax or if the path is null
	*/
	@:overload @:public public function setFragment(p_fragment : String) : Void;
	
	/**
	* Determines if the passed-in Object is equivalent to this URI.
	*
	* @param p_test the Object to test for equality.
	*
	* @return true if p_test is a URI with all values equal to this
	*         URI, false otherwise
	*/
	@:overload @:public public function equals(p_test : Dynamic) : Bool;
	
	/**
	* Get the URI as a string specification. See RFC 2396 Section 5.2.
	*
	* @return the URI string specification
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Get the indicator as to whether this URI uses the "generic URI"
	* syntax.
	*
	* @return true if this URI uses the "generic URI" syntax, false
	*         otherwise
	*/
	@:overload @:public public function isGenericURI() : Bool;
	
	/**
	* Determine whether a scheme conforms to the rules for a scheme name.
	* A scheme is conformant if it starts with an alphanumeric, and
	* contains only alphanumerics, '+','-' and '.'.
	*
	* @return true if the scheme is conformant, false otherwise
	*/
	@:overload @:public @:static public static function isConformantSchemeName(p_scheme : String) : Bool;
	
	/**
	* Determine whether a string is syntactically capable of representing
	* a valid IPv4 address or the domain name of a network host. A valid
	* IPv4 address consists of four decimal digit groups separated by a
	* '.'. A hostname consists of domain labels (each of which must
	* begin and end with an alphanumeric but may contain '-') separated
	& by a '.'. See RFC 2396 Section 3.2.2.
	*
	* @return true if the string is a syntactically valid IPv4 address
	*              or hostname
	*/
	@:overload @:public @:static public static function isWellFormedAddress(p_address : String) : Bool;
	
	
}
/*******************************************************************
* MalformedURIExceptions are thrown in the process of building a URI
* or setting fields on a URI when an operation would result in an
* invalid URI specification.
*
********************************************************************/
@:native('com$sun$xml$internal$messaging$saaj$util$JaxmURI$MalformedURIException') extern class JaxmURI_MalformedURIException extends java.io.IOException
{
	/******************************************************************
	* Constructs a <code>MalformedURIException</code> with no specified
	* detail message.
	******************************************************************/
	@:overload @:public public function new() : Void;
	
	/*****************************************************************
	* Constructs a <code>MalformedURIException</code> with the
	* specified detail message.
	*
	* @param p_msg the detail message.
	******************************************************************/
	@:overload @:public public function new(p_msg : String) : Void;
	
	
}
