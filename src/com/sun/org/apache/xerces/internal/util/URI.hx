package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class URI implements java.io.Serializable
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
	@:overload @:public public function new(p_other : com.sun.org.apache.xerces.internal.util.URI) : Void;
	
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
	* Construct a new URI from a URI specification string. If the
	* specification follows the "generic URI" syntax, (two slashes
	* following the first colon), the specification will be parsed
	* accordingly - setting the scheme, userinfo, host,port, path, query
	* string and fragment fields as necessary. If the specification does
	* not follow the "generic URI" syntax, the specification is parsed
	* into a scheme and scheme-specific part (stored as the path) only.
	* Construct a relative URI if boolean is assigned to "true"
	* and p_uriSpec is not valid absolute URI, instead of throwing an exception.
	*
	* @param p_uriSpec the URI specification string (cannot be null or
	*                  empty)
	* @param allowNonAbsoluteURI true to permit non-absolute URIs,
	*                            false otherwise.
	*
	* @exception MalformedURIException if p_uriSpec violates any syntax
	*                                   rules
	*/
	@:overload @:public public function new(p_uriSpec : String, allowNonAbsoluteURI : Bool) : Void;
	
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
	@:overload @:public public function new(p_base : com.sun.org.apache.xerces.internal.util.URI, p_uriSpec : String) : Void;
	
	/**
	* Construct a new URI from a base URI and a URI specification string.
	* The URI specification string may be a relative URI.
	* Construct a relative URI if boolean is assigned to "true"
	* and p_uriSpec is not valid absolute URI and p_base is null
	* instead of throwing an exception.
	*
	* @param p_base the base URI (cannot be null if p_uriSpec is null or
	*               empty)
	* @param p_uriSpec the URI specification string (cannot be null or
	*                  empty if p_base is null)
	* @param allowNonAbsoluteURI true to permit non-absolute URIs,
	*                            false otherwise.
	*
	* @exception MalformedURIException if p_uriSpec violates any syntax
	*                                  rules
	*/
	@:overload @:public public function new(p_base : com.sun.org.apache.xerces.internal.util.URI, p_uriSpec : String, allowNonAbsoluteURI : Bool) : Void;
	
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
	* @param p_host the hostname, IPv4 address or IPv6 reference for the URI
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
	* @param p_host the hostname, IPv4 address or IPv6 reference for the URI
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
	* Absolutize URI with given base URI.
	*
	* @param p_base base URI for absolutization
	*/
	@:overload @:public public function absolutize(p_base : com.sun.org.apache.xerces.internal.util.URI) : Void;
	
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
	* Get the registry based authority for this URI.
	*
	* @return the registry based authority (null if not specified).
	*/
	@:overload @:public public function getRegBasedAuthority() : String;
	
	/**
	* Get the authority for this URI.
	*
	* @return the authority
	*/
	@:overload @:public public function getAuthority() : String;
	
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
	* <p>Set the host for this URI. If null is passed in, the userinfo
	* field is also set to null and the port is set to -1.</p>
	*
	* <p>Note: This method overwrites registry based authority if it
	* previously existed in this URI.</p>
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
	* <p>Sets the registry based authority for this URI.</p>
	*
	* <p>Note: This method overwrites server based authority
	* if it previously existed in this URI.</p>
	*
	* @param authority the registry based authority for this URI
	*
	* @exception MalformedURIException it authority is not a
	* well formed registry based authority
	*/
	@:overload @:public public function setRegBasedAuthority(authority : String) : Void;
	
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
	* Returns whether this URI represents an absolute URI.
	*
	* @return true if this URI represents an absolute URI, false
	*         otherwise
	*/
	@:overload @:public public function isAbsoluteURI() : Bool;
	
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
	* a valid IPv4 address, IPv6 reference or the domain name of a network host.
	* A valid IPv4 address consists of four decimal digit groups separated by a
	* '.'. Each group must consist of one to three digits. See RFC 2732 Section 3,
	* and RFC 2373 Section 2.2, for the definition of IPv6 references. A hostname
	* consists of domain labels (each of which must begin and end with an alphanumeric
	* but may contain '-') separated & by a '.'. See RFC 2396 Section 3.2.2.
	*
	* @return true if the string is a syntactically valid IPv4 address,
	* IPv6 reference or hostname
	*/
	@:overload @:public @:static public static function isWellFormedAddress(address : String) : Bool;
	
	/**
	* <p>Determines whether a string is an IPv4 address as defined by
	* RFC 2373, and under the further constraint that it must be a 32-bit
	* address. Though not expressed in the grammar, in order to satisfy
	* the 32-bit address constraint, each segment of the address cannot
	* be greater than 255 (8 bits of information).</p>
	*
	* <p><code>IPv4address = 1*3DIGIT "." 1*3DIGIT "." 1*3DIGIT "." 1*3DIGIT</code></p>
	*
	* @return true if the string is a syntactically valid IPv4 address
	*/
	@:overload @:public @:static public static function isWellFormedIPv4Address(address : String) : Bool;
	
	/**
	* <p>Determines whether a string is an IPv6 reference as defined
	* by RFC 2732, where IPv6address is defined in RFC 2373. The
	* IPv6 address is parsed according to Section 2.2 of RFC 2373,
	* with the additional constraint that the address be composed of
	* 128 bits of information.</p>
	*
	* <p><code>IPv6reference = "[" IPv6address "]"</code></p>
	*
	* <p>Note: The BNF expressed in RFC 2373 Appendix B does not
	* accurately describe section 2.2, and was in fact removed from
	* RFC 3513, the successor of RFC 2373.</p>
	*
	* @return true if the string is a syntactically valid IPv6 reference
	*/
	@:overload @:public @:static public static function isWellFormedIPv6Reference(address : String) : Bool;
	
	
}
/*******************************************************************
* MalformedURIExceptions are thrown in the process of building a URI
* or setting fields on a URI when an operation would result in an
* invalid URI specification.
*
********************************************************************/
@:native('com$sun$org$apache$xerces$internal$util$URI$MalformedURIException') extern class URI_MalformedURIException extends java.io.IOException
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
