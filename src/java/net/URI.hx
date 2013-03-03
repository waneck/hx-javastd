package java.net;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class URI implements java.lang.Comparable<java.net.URI> implements java.io.Serializable
{
	/**
	* Constructs a URI by parsing the given string.
	*
	* <p> This constructor parses the given string exactly as specified by the
	* grammar in <a
	* href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>,
	* Appendix&nbsp;A, <b><i>except for the following deviations:</i></b> </p>
	*
	* <ul type=disc>
	*
	*   <li><p> An empty authority component is permitted as long as it is
	*   followed by a non-empty path, a query component, or a fragment
	*   component.  This allows the parsing of URIs such as
	*   <tt>"file:///foo/bar"</tt>, which seems to be the intent of
	*   RFC&nbsp;2396 although the grammar does not permit it.  If the
	*   authority component is empty then the user-information, host, and port
	*   components are undefined. </p></li>
	*
	*   <li><p> Empty relative paths are permitted; this seems to be the
	*   intent of RFC&nbsp;2396 although the grammar does not permit it.  The
	*   primary consequence of this deviation is that a standalone fragment
	*   such as <tt>"#foo"</tt> parses as a relative URI with an empty path
	*   and the given fragment, and can be usefully <a
	*   href="#resolve-frag">resolved</a> against a base URI.
	*
	*   <li><p> IPv4 addresses in host components are parsed rigorously, as
	*   specified by <a
	*   href="http://www.ietf.org/rfc/rfc2732.txt">RFC&nbsp;2732</a>: Each
	*   element of a dotted-quad address must contain no more than three
	*   decimal digits.  Each element is further constrained to have a value
	*   no greater than 255. </p></li>
	*
	*   <li> <p> Hostnames in host components that comprise only a single
	*   domain label are permitted to start with an <i>alphanum</i>
	*   character. This seems to be the intent of <a
	*   href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>
	*   section&nbsp;3.2.2 although the grammar does not permit it. The
	*   consequence of this deviation is that the authority component of a
	*   hierarchical URI such as <tt>s://123</tt>, will parse as a server-based
	*   authority. </p></li>
	*
	*   <li><p> IPv6 addresses are permitted for the host component.  An IPv6
	*   address must be enclosed in square brackets (<tt>'['</tt> and
	*   <tt>']'</tt>) as specified by <a
	*   href="http://www.ietf.org/rfc/rfc2732.txt">RFC&nbsp;2732</a>.  The
	*   IPv6 address itself must parse according to <a
	*   href="http://www.ietf.org/rfc/rfc2373.txt">RFC&nbsp;2373</a>.  IPv6
	*   addresses are further constrained to describe no more than sixteen
	*   bytes of address information, a constraint implicit in RFC&nbsp;2373
	*   but not expressible in the grammar. </p></li>
	*
	*   <li><p> Characters in the <i>other</i> category are permitted wherever
	*   RFC&nbsp;2396 permits <i>escaped</i> octets, that is, in the
	*   user-information, path, query, and fragment components, as well as in
	*   the authority component if the authority is registry-based.  This
	*   allows URIs to contain Unicode characters beyond those in the US-ASCII
	*   character set. </p></li>
	*
	* </ul>
	*
	* @param  str   The string to be parsed into a URI
	*
	* @throws  NullPointerException
	*          If <tt>str</tt> is <tt>null</tt>
	*
	* @throws  URISyntaxException
	*          If the given string violates RFC&nbsp;2396, as augmented
	*          by the above deviations
	*/
	@:overload @:public public function new(str : String) : Void;
	
	/**
	* Constructs a hierarchical URI from the given components.
	*
	* <p> If a scheme is given then the path, if also given, must either be
	* empty or begin with a slash character (<tt>'/'</tt>).  Otherwise a
	* component of the new URI may be left undefined by passing <tt>null</tt>
	* for the corresponding parameter or, in the case of the <tt>port</tt>
	* parameter, by passing <tt>-1</tt>.
	*
	* <p> This constructor first builds a URI string from the given components
	* according to the rules specified in <a
	* href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>,
	* section&nbsp;5.2, step&nbsp;7: </p>
	*
	* <ol>
	*
	*   <li><p> Initially, the result string is empty. </p></li>
	*
	*   <li><p> If a scheme is given then it is appended to the result,
	*   followed by a colon character (<tt>':'</tt>).  </p></li>
	*
	*   <li><p> If user information, a host, or a port are given then the
	*   string <tt>"//"</tt> is appended.  </p></li>
	*
	*   <li><p> If user information is given then it is appended, followed by
	*   a commercial-at character (<tt>'@'</tt>).  Any character not in the
	*   <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, or <i>other</i>
	*   categories is <a href="#quote">quoted</a>.  </p></li>
	*
	*   <li><p> If a host is given then it is appended.  If the host is a
	*   literal IPv6 address but is not enclosed in square brackets
	*   (<tt>'['</tt> and <tt>']'</tt>) then the square brackets are added.
	*   </p></li>
	*
	*   <li><p> If a port number is given then a colon character
	*   (<tt>':'</tt>) is appended, followed by the port number in decimal.
	*   </p></li>
	*
	*   <li><p> If a path is given then it is appended.  Any character not in
	*   the <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, or <i>other</i>
	*   categories, and not equal to the slash character (<tt>'/'</tt>) or the
	*   commercial-at character (<tt>'@'</tt>), is quoted.  </p></li>
	*
	*   <li><p> If a query is given then a question-mark character
	*   (<tt>'?'</tt>) is appended, followed by the query.  Any character that
	*   is not a <a href="#legal-chars">legal URI character</a> is quoted.
	*   </p></li>
	*
	*   <li><p> Finally, if a fragment is given then a hash character
	*   (<tt>'#'</tt>) is appended, followed by the fragment.  Any character
	*   that is not a legal URI character is quoted.  </p></li>
	*
	* </ol>
	*
	* <p> The resulting URI string is then parsed as if by invoking the {@link
	* #URI(String)} constructor and then invoking the {@link
	* #parseServerAuthority()} method upon the result; this may cause a {@link
	* URISyntaxException} to be thrown.  </p>
	*
	* @param   scheme    Scheme name
	* @param   userInfo  User name and authorization information
	* @param   host      Host name
	* @param   port      Port number
	* @param   path      Path
	* @param   query     Query
	* @param   fragment  Fragment
	*
	* @throws URISyntaxException
	*         If both a scheme and a path are given but the path is relative,
	*         if the URI string constructed from the given components violates
	*         RFC&nbsp;2396, or if the authority component of the string is
	*         present but cannot be parsed as a server-based authority
	*/
	@:overload @:public public function new(scheme : String, userInfo : String, host : String, port : Int, path : String, query : String, fragment : String) : Void;
	
	/**
	* Constructs a hierarchical URI from the given components.
	*
	* <p> If a scheme is given then the path, if also given, must either be
	* empty or begin with a slash character (<tt>'/'</tt>).  Otherwise a
	* component of the new URI may be left undefined by passing <tt>null</tt>
	* for the corresponding parameter.
	*
	* <p> This constructor first builds a URI string from the given components
	* according to the rules specified in <a
	* href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>,
	* section&nbsp;5.2, step&nbsp;7: </p>
	*
	* <ol>
	*
	*   <li><p> Initially, the result string is empty.  </p></li>
	*
	*   <li><p> If a scheme is given then it is appended to the result,
	*   followed by a colon character (<tt>':'</tt>).  </p></li>
	*
	*   <li><p> If an authority is given then the string <tt>"//"</tt> is
	*   appended, followed by the authority.  If the authority contains a
	*   literal IPv6 address then the address must be enclosed in square
	*   brackets (<tt>'['</tt> and <tt>']'</tt>).  Any character not in the
	*   <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, or <i>other</i>
	*   categories, and not equal to the commercial-at character
	*   (<tt>'@'</tt>), is <a href="#quote">quoted</a>.  </p></li>
	*
	*   <li><p> If a path is given then it is appended.  Any character not in
	*   the <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, or <i>other</i>
	*   categories, and not equal to the slash character (<tt>'/'</tt>) or the
	*   commercial-at character (<tt>'@'</tt>), is quoted.  </p></li>
	*
	*   <li><p> If a query is given then a question-mark character
	*   (<tt>'?'</tt>) is appended, followed by the query.  Any character that
	*   is not a <a href="#legal-chars">legal URI character</a> is quoted.
	*   </p></li>
	*
	*   <li><p> Finally, if a fragment is given then a hash character
	*   (<tt>'#'</tt>) is appended, followed by the fragment.  Any character
	*   that is not a legal URI character is quoted.  </p></li>
	*
	* </ol>
	*
	* <p> The resulting URI string is then parsed as if by invoking the {@link
	* #URI(String)} constructor and then invoking the {@link
	* #parseServerAuthority()} method upon the result; this may cause a {@link
	* URISyntaxException} to be thrown.  </p>
	*
	* @param   scheme     Scheme name
	* @param   authority  Authority
	* @param   path       Path
	* @param   query      Query
	* @param   fragment   Fragment
	*
	* @throws URISyntaxException
	*         If both a scheme and a path are given but the path is relative,
	*         if the URI string constructed from the given components violates
	*         RFC&nbsp;2396, or if the authority component of the string is
	*         present but cannot be parsed as a server-based authority
	*/
	@:overload @:public public function new(scheme : String, authority : String, path : String, query : String, fragment : String) : Void;
	
	/**
	* Constructs a hierarchical URI from the given components.
	*
	* <p> A component may be left undefined by passing <tt>null</tt>.
	*
	* <p> This convenience constructor works as if by invoking the
	* seven-argument constructor as follows:
	*
	* <blockquote><tt>
	* new&nbsp;{@link #URI(String, String, String, int, String, String, String)
	* URI}(scheme,&nbsp;null,&nbsp;host,&nbsp;-1,&nbsp;path,&nbsp;null,&nbsp;fragment);
	* </tt></blockquote>
	*
	* @param   scheme    Scheme name
	* @param   host      Host name
	* @param   path      Path
	* @param   fragment  Fragment
	*
	* @throws  URISyntaxException
	*          If the URI string constructed from the given components
	*          violates RFC&nbsp;2396
	*/
	@:overload @:public public function new(scheme : String, host : String, path : String, fragment : String) : Void;
	
	/**
	* Constructs a URI from the given components.
	*
	* <p> A component may be left undefined by passing <tt>null</tt>.
	*
	* <p> This constructor first builds a URI in string form using the given
	* components as follows:  </p>
	*
	* <ol>
	*
	*   <li><p> Initially, the result string is empty.  </p></li>
	*
	*   <li><p> If a scheme is given then it is appended to the result,
	*   followed by a colon character (<tt>':'</tt>).  </p></li>
	*
	*   <li><p> If a scheme-specific part is given then it is appended.  Any
	*   character that is not a <a href="#legal-chars">legal URI character</a>
	*   is <a href="#quote">quoted</a>.  </p></li>
	*
	*   <li><p> Finally, if a fragment is given then a hash character
	*   (<tt>'#'</tt>) is appended to the string, followed by the fragment.
	*   Any character that is not a legal URI character is quoted.  </p></li>
	*
	* </ol>
	*
	* <p> The resulting URI string is then parsed in order to create the new
	* URI instance as if by invoking the {@link #URI(String)} constructor;
	* this may cause a {@link URISyntaxException} to be thrown.  </p>
	*
	* @param   scheme    Scheme name
	* @param   ssp       Scheme-specific part
	* @param   fragment  Fragment
	*
	* @throws  URISyntaxException
	*          If the URI string constructed from the given components
	*          violates RFC&nbsp;2396
	*/
	@:overload @:public public function new(scheme : String, ssp : String, fragment : String) : Void;
	
	/**
	* Creates a URI by parsing the given string.
	*
	* <p> This convenience factory method works as if by invoking the {@link
	* #URI(String)} constructor; any {@link URISyntaxException} thrown by the
	* constructor is caught and wrapped in a new {@link
	* IllegalArgumentException} object, which is then thrown.
	*
	* <p> This method is provided for use in situations where it is known that
	* the given string is a legal URI, for example for URI constants declared
	* within in a program, and so it would be considered a programming error
	* for the string not to parse as such.  The constructors, which throw
	* {@link URISyntaxException} directly, should be used situations where a
	* URI is being constructed from user input or from some other source that
	* may be prone to errors.  </p>
	*
	* @param  str   The string to be parsed into a URI
	* @return The new URI
	*
	* @throws  NullPointerException
	*          If <tt>str</tt> is <tt>null</tt>
	*
	* @throws  IllegalArgumentException
	*          If the given string violates RFC&nbsp;2396
	*/
	@:overload @:public @:static public static function create(str : String) : java.net.URI;
	
	/**
	* Attempts to parse this URI's authority component, if defined, into
	* user-information, host, and port components.
	*
	* <p> If this URI's authority component has already been recognized as
	* being server-based then it will already have been parsed into
	* user-information, host, and port components.  In this case, or if this
	* URI has no authority component, this method simply returns this URI.
	*
	* <p> Otherwise this method attempts once more to parse the authority
	* component into user-information, host, and port components, and throws
	* an exception describing why the authority component could not be parsed
	* in that way.
	*
	* <p> This method is provided because the generic URI syntax specified in
	* <a href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>
	* cannot always distinguish a malformed server-based authority from a
	* legitimate registry-based authority.  It must therefore treat some
	* instances of the former as instances of the latter.  The authority
	* component in the URI string <tt>"//foo:bar"</tt>, for example, is not a
	* legal server-based authority but it is legal as a registry-based
	* authority.
	*
	* <p> In many common situations, for example when working URIs that are
	* known to be either URNs or URLs, the hierarchical URIs being used will
	* always be server-based.  They therefore must either be parsed as such or
	* treated as an error.  In these cases a statement such as
	*
	* <blockquote>
	* <tt>URI </tt><i>u</i><tt> = new URI(str).parseServerAuthority();</tt>
	* </blockquote>
	*
	* <p> can be used to ensure that <i>u</i> always refers to a URI that, if
	* it has an authority component, has a server-based authority with proper
	* user-information, host, and port components.  Invoking this method also
	* ensures that if the authority could not be parsed in that way then an
	* appropriate diagnostic message can be issued based upon the exception
	* that is thrown. </p>
	*
	* @return  A URI whose authority field has been parsed
	*          as a server-based authority
	*
	* @throws  URISyntaxException
	*          If the authority component of this URI is defined
	*          but cannot be parsed as a server-based authority
	*          according to RFC&nbsp;2396
	*/
	@:overload @:public public function parseServerAuthority() : java.net.URI;
	
	/**
	* Normalizes this URI's path.
	*
	* <p> If this URI is opaque, or if its path is already in normal form,
	* then this URI is returned.  Otherwise a new URI is constructed that is
	* identical to this URI except that its path is computed by normalizing
	* this URI's path in a manner consistent with <a
	* href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>,
	* section&nbsp;5.2, step&nbsp;6, sub-steps&nbsp;c through&nbsp;f; that is:
	* </p>
	*
	* <ol>
	*
	*   <li><p> All <tt>"."</tt> segments are removed. </p></li>
	*
	*   <li><p> If a <tt>".."</tt> segment is preceded by a non-<tt>".."</tt>
	*   segment then both of these segments are removed.  This step is
	*   repeated until it is no longer applicable. </p></li>
	*
	*   <li><p> If the path is relative, and if its first segment contains a
	*   colon character (<tt>':'</tt>), then a <tt>"."</tt> segment is
	*   prepended.  This prevents a relative URI with a path such as
	*   <tt>"a:b/c/d"</tt> from later being re-parsed as an opaque URI with a
	*   scheme of <tt>"a"</tt> and a scheme-specific part of <tt>"b/c/d"</tt>.
	*   <b><i>(Deviation from RFC&nbsp;2396)</i></b> </p></li>
	*
	* </ol>
	*
	* <p> A normalized path will begin with one or more <tt>".."</tt> segments
	* if there were insufficient non-<tt>".."</tt> segments preceding them to
	* allow their removal.  A normalized path will begin with a <tt>"."</tt>
	* segment if one was inserted by step 3 above.  Otherwise, a normalized
	* path will not contain any <tt>"."</tt> or <tt>".."</tt> segments. </p>
	*
	* @return  A URI equivalent to this URI,
	*          but whose path is in normal form
	*/
	@:overload @:public public function normalize() : java.net.URI;
	
	/**
	* Resolves the given URI against this URI.
	*
	* <p> If the given URI is already absolute, or if this URI is opaque, then
	* the given URI is returned.
	*
	* <p><a name="resolve-frag"></a> If the given URI's fragment component is
	* defined, its path component is empty, and its scheme, authority, and
	* query components are undefined, then a URI with the given fragment but
	* with all other components equal to those of this URI is returned.  This
	* allows a URI representing a standalone fragment reference, such as
	* <tt>"#foo"</tt>, to be usefully resolved against a base URI.
	*
	* <p> Otherwise this method constructs a new hierarchical URI in a manner
	* consistent with <a
	* href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>,
	* section&nbsp;5.2; that is: </p>
	*
	* <ol>
	*
	*   <li><p> A new URI is constructed with this URI's scheme and the given
	*   URI's query and fragment components. </p></li>
	*
	*   <li><p> If the given URI has an authority component then the new URI's
	*   authority and path are taken from the given URI. </p></li>
	*
	*   <li><p> Otherwise the new URI's authority component is copied from
	*   this URI, and its path is computed as follows: </p>
	*
	*   <ol type=a>
	*
	*     <li><p> If the given URI's path is absolute then the new URI's path
	*     is taken from the given URI. </p></li>
	*
	*     <li><p> Otherwise the given URI's path is relative, and so the new
	*     URI's path is computed by resolving the path of the given URI
	*     against the path of this URI.  This is done by concatenating all but
	*     the last segment of this URI's path, if any, with the given URI's
	*     path and then normalizing the result as if by invoking the {@link
	*     #normalize() normalize} method. </p></li>
	*
	*   </ol></li>
	*
	* </ol>
	*
	* <p> The result of this method is absolute if, and only if, either this
	* URI is absolute or the given URI is absolute.  </p>
	*
	* @param  uri  The URI to be resolved against this URI
	* @return The resulting URI
	*
	* @throws  NullPointerException
	*          If <tt>uri</tt> is <tt>null</tt>
	*/
	@:overload @:public public function resolve(uri : java.net.URI) : java.net.URI;
	
	/**
	* Constructs a new URI by parsing the given string and then resolving it
	* against this URI.
	*
	* <p> This convenience method works as if invoking it were equivalent to
	* evaluating the expression <tt>{@link #resolve(java.net.URI)
	* resolve}(URI.{@link #create(String) create}(str))</tt>. </p>
	*
	* @param  str   The string to be parsed into a URI
	* @return The resulting URI
	*
	* @throws  NullPointerException
	*          If <tt>str</tt> is <tt>null</tt>
	*
	* @throws  IllegalArgumentException
	*          If the given string violates RFC&nbsp;2396
	*/
	@:overload @:public public function resolve(str : String) : java.net.URI;
	
	/**
	* Relativizes the given URI against this URI.
	*
	* <p> The relativization of the given URI against this URI is computed as
	* follows: </p>
	*
	* <ol>
	*
	*   <li><p> If either this URI or the given URI are opaque, or if the
	*   scheme and authority components of the two URIs are not identical, or
	*   if the path of this URI is not a prefix of the path of the given URI,
	*   then the given URI is returned. </p></li>
	*
	*   <li><p> Otherwise a new relative hierarchical URI is constructed with
	*   query and fragment components taken from the given URI and with a path
	*   component computed by removing this URI's path from the beginning of
	*   the given URI's path. </p></li>
	*
	* </ol>
	*
	* @param  uri  The URI to be relativized against this URI
	* @return The resulting URI
	*
	* @throws  NullPointerException
	*          If <tt>uri</tt> is <tt>null</tt>
	*/
	@:overload @:public public function relativize(uri : java.net.URI) : java.net.URI;
	
	/**
	* Constructs a URL from this URI.
	*
	* <p> This convenience method works as if invoking it were equivalent to
	* evaluating the expression <tt>new&nbsp;URL(this.toString())</tt> after
	* first checking that this URI is absolute. </p>
	*
	* @return  A URL constructed from this URI
	*
	* @throws  IllegalArgumentException
	*          If this URL is not absolute
	*
	* @throws  MalformedURLException
	*          If a protocol handler for the URL could not be found,
	*          or if some other error occurred while constructing the URL
	*/
	@:overload @:public public function toURL() : java.net.URL;
	
	/**
	* Returns the scheme component of this URI.
	*
	* <p> The scheme component of a URI, if defined, only contains characters
	* in the <i>alphanum</i> category and in the string <tt>"-.+"</tt>.  A
	* scheme always starts with an <i>alpha</i> character. <p>
	*
	* The scheme component of a URI cannot contain escaped octets, hence this
	* method does not perform any decoding.
	*
	* @return  The scheme component of this URI,
	*          or <tt>null</tt> if the scheme is undefined
	*/
	@:overload @:public public function getScheme() : String;
	
	/**
	* Tells whether or not this URI is absolute.
	*
	* <p> A URI is absolute if, and only if, it has a scheme component. </p>
	*
	* @return  <tt>true</tt> if, and only if, this URI is absolute
	*/
	@:overload @:public public function isAbsolute() : Bool;
	
	/**
	* Tells whether or not this URI is opaque.
	*
	* <p> A URI is opaque if, and only if, it is absolute and its
	* scheme-specific part does not begin with a slash character ('/').
	* An opaque URI has a scheme, a scheme-specific part, and possibly
	* a fragment; all other components are undefined. </p>
	*
	* @return  <tt>true</tt> if, and only if, this URI is opaque
	*/
	@:overload @:public public function isOpaque() : Bool;
	
	/**
	* Returns the raw scheme-specific part of this URI.  The scheme-specific
	* part is never undefined, though it may be empty.
	*
	* <p> The scheme-specific part of a URI only contains legal URI
	* characters. </p>
	*
	* @return  The raw scheme-specific part of this URI
	*          (never <tt>null</tt>)
	*/
	@:overload @:public public function getRawSchemeSpecificPart() : String;
	
	/**
	* Returns the decoded scheme-specific part of this URI.
	*
	* <p> The string returned by this method is equal to that returned by the
	* {@link #getRawSchemeSpecificPart() getRawSchemeSpecificPart} method
	* except that all sequences of escaped octets are <a
	* href="#decode">decoded</a>.  </p>
	*
	* @return  The decoded scheme-specific part of this URI
	*          (never <tt>null</tt>)
	*/
	@:overload @:public public function getSchemeSpecificPart() : String;
	
	/**
	* Returns the raw authority component of this URI.
	*
	* <p> The authority component of a URI, if defined, only contains the
	* commercial-at character (<tt>'@'</tt>) and characters in the
	* <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, and <i>other</i>
	* categories.  If the authority is server-based then it is further
	* constrained to have valid user-information, host, and port
	* components. </p>
	*
	* @return  The raw authority component of this URI,
	*          or <tt>null</tt> if the authority is undefined
	*/
	@:overload @:public public function getRawAuthority() : String;
	
	/**
	* Returns the decoded authority component of this URI.
	*
	* <p> The string returned by this method is equal to that returned by the
	* {@link #getRawAuthority() getRawAuthority} method except that all
	* sequences of escaped octets are <a href="#decode">decoded</a>.  </p>
	*
	* @return  The decoded authority component of this URI,
	*          or <tt>null</tt> if the authority is undefined
	*/
	@:overload @:public public function getAuthority() : String;
	
	/**
	* Returns the raw user-information component of this URI.
	*
	* <p> The user-information component of a URI, if defined, only contains
	* characters in the <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, and
	* <i>other</i> categories. </p>
	*
	* @return  The raw user-information component of this URI,
	*          or <tt>null</tt> if the user information is undefined
	*/
	@:overload @:public public function getRawUserInfo() : String;
	
	/**
	* Returns the decoded user-information component of this URI.
	*
	* <p> The string returned by this method is equal to that returned by the
	* {@link #getRawUserInfo() getRawUserInfo} method except that all
	* sequences of escaped octets are <a href="#decode">decoded</a>.  </p>
	*
	* @return  The decoded user-information component of this URI,
	*          or <tt>null</tt> if the user information is undefined
	*/
	@:overload @:public public function getUserInfo() : String;
	
	/**
	* Returns the host component of this URI.
	*
	* <p> The host component of a URI, if defined, will have one of the
	* following forms: </p>
	*
	* <ul type=disc>
	*
	*   <li><p> A domain name consisting of one or more <i>labels</i>
	*   separated by period characters (<tt>'.'</tt>), optionally followed by
	*   a period character.  Each label consists of <i>alphanum</i> characters
	*   as well as hyphen characters (<tt>'-'</tt>), though hyphens never
	*   occur as the first or last characters in a label. The rightmost
	*   label of a domain name consisting of two or more labels, begins
	*   with an <i>alpha</i> character. </li>
	*
	*   <li><p> A dotted-quad IPv4 address of the form
	*   <i>digit</i><tt>+.</tt><i>digit</i><tt>+.</tt><i>digit</i><tt>+.</tt><i>digit</i><tt>+</tt>,
	*   where no <i>digit</i> sequence is longer than three characters and no
	*   sequence has a value larger than 255. </p></li>
	*
	*   <li><p> An IPv6 address enclosed in square brackets (<tt>'['</tt> and
	*   <tt>']'</tt>) and consisting of hexadecimal digits, colon characters
	*   (<tt>':'</tt>), and possibly an embedded IPv4 address.  The full
	*   syntax of IPv6 addresses is specified in <a
	*   href="http://www.ietf.org/rfc/rfc2373.txt"><i>RFC&nbsp;2373: IPv6
	*   Addressing Architecture</i></a>.  </p></li>
	*
	* </ul>
	*
	* The host component of a URI cannot contain escaped octets, hence this
	* method does not perform any decoding.
	*
	* @return  The host component of this URI,
	*          or <tt>null</tt> if the host is undefined
	*/
	@:overload @:public public function getHost() : String;
	
	/**
	* Returns the port number of this URI.
	*
	* <p> The port component of a URI, if defined, is a non-negative
	* integer. </p>
	*
	* @return  The port component of this URI,
	*          or <tt>-1</tt> if the port is undefined
	*/
	@:overload @:public public function getPort() : Int;
	
	/**
	* Returns the raw path component of this URI.
	*
	* <p> The path component of a URI, if defined, only contains the slash
	* character (<tt>'/'</tt>), the commercial-at character (<tt>'@'</tt>),
	* and characters in the <i>unreserved</i>, <i>punct</i>, <i>escaped</i>,
	* and <i>other</i> categories. </p>
	*
	* @return  The path component of this URI,
	*          or <tt>null</tt> if the path is undefined
	*/
	@:overload @:public public function getRawPath() : String;
	
	/**
	* Returns the decoded path component of this URI.
	*
	* <p> The string returned by this method is equal to that returned by the
	* {@link #getRawPath() getRawPath} method except that all sequences of
	* escaped octets are <a href="#decode">decoded</a>.  </p>
	*
	* @return  The decoded path component of this URI,
	*          or <tt>null</tt> if the path is undefined
	*/
	@:overload @:public public function getPath() : String;
	
	/**
	* Returns the raw query component of this URI.
	*
	* <p> The query component of a URI, if defined, only contains legal URI
	* characters. </p>
	*
	* @return  The raw query component of this URI,
	*          or <tt>null</tt> if the query is undefined
	*/
	@:overload @:public public function getRawQuery() : String;
	
	/**
	* Returns the decoded query component of this URI.
	*
	* <p> The string returned by this method is equal to that returned by the
	* {@link #getRawQuery() getRawQuery} method except that all sequences of
	* escaped octets are <a href="#decode">decoded</a>.  </p>
	*
	* @return  The decoded query component of this URI,
	*          or <tt>null</tt> if the query is undefined
	*/
	@:overload @:public public function getQuery() : String;
	
	/**
	* Returns the raw fragment component of this URI.
	*
	* <p> The fragment component of a URI, if defined, only contains legal URI
	* characters. </p>
	*
	* @return  The raw fragment component of this URI,
	*          or <tt>null</tt> if the fragment is undefined
	*/
	@:overload @:public public function getRawFragment() : String;
	
	/**
	* Returns the decoded fragment component of this URI.
	*
	* <p> The string returned by this method is equal to that returned by the
	* {@link #getRawFragment() getRawFragment} method except that all
	* sequences of escaped octets are <a href="#decode">decoded</a>.  </p>
	*
	* @return  The decoded fragment component of this URI,
	*          or <tt>null</tt> if the fragment is undefined
	*/
	@:overload @:public public function getFragment() : String;
	
	/**
	* Tests this URI for equality with another object.
	*
	* <p> If the given object is not a URI then this method immediately
	* returns <tt>false</tt>.
	*
	* <p> For two URIs to be considered equal requires that either both are
	* opaque or both are hierarchical.  Their schemes must either both be
	* undefined or else be equal without regard to case. Their fragments
	* must either both be undefined or else be equal.
	*
	* <p> For two opaque URIs to be considered equal, their scheme-specific
	* parts must be equal.
	*
	* <p> For two hierarchical URIs to be considered equal, their paths must
	* be equal and their queries must either both be undefined or else be
	* equal.  Their authorities must either both be undefined, or both be
	* registry-based, or both be server-based.  If their authorities are
	* defined and are registry-based, then they must be equal.  If their
	* authorities are defined and are server-based, then their hosts must be
	* equal without regard to case, their port numbers must be equal, and
	* their user-information components must be equal.
	*
	* <p> When testing the user-information, path, query, fragment, authority,
	* or scheme-specific parts of two URIs for equality, the raw forms rather
	* than the encoded forms of these components are compared and the
	* hexadecimal digits of escaped octets are compared without regard to
	* case.
	*
	* <p> This method satisfies the general contract of the {@link
	* java.lang.Object#equals(Object) Object.equals} method. </p>
	*
	* @param   ob   The object to which this object is to be compared
	*
	* @return  <tt>true</tt> if, and only if, the given object is a URI that
	*          is identical to this URI
	*/
	@:overload @:public public function equals(ob : Dynamic) : Bool;
	
	/**
	* Returns a hash-code value for this URI.  The hash code is based upon all
	* of the URI's components, and satisfies the general contract of the
	* {@link java.lang.Object#hashCode() Object.hashCode} method.
	*
	* @return  A hash-code value for this URI
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this URI to another object, which must be a URI.
	*
	* <p> When comparing corresponding components of two URIs, if one
	* component is undefined but the other is defined then the first is
	* considered to be less than the second.  Unless otherwise noted, string
	* components are ordered according to their natural, case-sensitive
	* ordering as defined by the {@link java.lang.String#compareTo(Object)
	* String.compareTo} method.  String components that are subject to
	* encoding are compared by comparing their raw forms rather than their
	* encoded forms.
	*
	* <p> The ordering of URIs is defined as follows: </p>
	*
	* <ul type=disc>
	*
	*   <li><p> Two URIs with different schemes are ordered according the
	*   ordering of their schemes, without regard to case. </p></li>
	*
	*   <li><p> A hierarchical URI is considered to be less than an opaque URI
	*   with an identical scheme. </p></li>
	*
	*   <li><p> Two opaque URIs with identical schemes are ordered according
	*   to the ordering of their scheme-specific parts. </p></li>
	*
	*   <li><p> Two opaque URIs with identical schemes and scheme-specific
	*   parts are ordered according to the ordering of their
	*   fragments. </p></li>
	*
	*   <li><p> Two hierarchical URIs with identical schemes are ordered
	*   according to the ordering of their authority components: </p>
	*
	*   <ul type=disc>
	*
	*     <li><p> If both authority components are server-based then the URIs
	*     are ordered according to their user-information components; if these
	*     components are identical then the URIs are ordered according to the
	*     ordering of their hosts, without regard to case; if the hosts are
	*     identical then the URIs are ordered according to the ordering of
	*     their ports. </p></li>
	*
	*     <li><p> If one or both authority components are registry-based then
	*     the URIs are ordered according to the ordering of their authority
	*     components. </p></li>
	*
	*   </ul></li>
	*
	*   <li><p> Finally, two hierarchical URIs with identical schemes and
	*   authority components are ordered according to the ordering of their
	*   paths; if their paths are identical then they are ordered according to
	*   the ordering of their queries; if the queries are identical then they
	*   are ordered according to the order of their fragments. </p></li>
	*
	* </ul>
	*
	* <p> This method satisfies the general contract of the {@link
	* java.lang.Comparable#compareTo(Object) Comparable.compareTo}
	* method. </p>
	*
	* @param   that
	*          The object to which this URI is to be compared
	*
	* @return  A negative integer, zero, or a positive integer as this URI is
	*          less than, equal to, or greater than the given URI
	*
	* @throws  ClassCastException
	*          If the given object is not a URI
	*/
	@:overload @:public public function compareTo(that : java.net.URI) : Int;
	
	/**
	* Returns the content of this URI as a string.
	*
	* <p> If this URI was created by invoking one of the constructors in this
	* class then a string equivalent to the original input string, or to the
	* string computed from the originally-given components, as appropriate, is
	* returned.  Otherwise this URI was created by normalization, resolution,
	* or relativization, and so a string is constructed from this URI's
	* components according to the rules specified in <a
	* href="http://www.ietf.org/rfc/rfc2396.txt">RFC&nbsp;2396</a>,
	* section&nbsp;5.2, step&nbsp;7. </p>
	*
	* @return  The string form of this URI
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns the content of this URI as a US-ASCII string.
	*
	* <p> If this URI does not contain any characters in the <i>other</i>
	* category then an invocation of this method will return the same value as
	* an invocation of the {@link #toString() toString} method.  Otherwise
	* this method works as if by invoking that method and then <a
	* href="#encode">encoding</a> the result.  </p>
	*
	* @return  The string form of this URI, encoded as needed
	*          so that it only contains characters in the US-ASCII
	*          charset
	*/
	@:overload @:public public function toASCIIString() : String;
	
	
}
@:native('java$net$URI$Parser') @:internal extern class URI_Parser
{
	
}
