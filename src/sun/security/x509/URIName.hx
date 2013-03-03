package sun.security.x509;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class implements the URIName as required by the GeneralNames
* ASN.1 object.
* <p>
* [RFC3280] When the subjectAltName extension contains a URI, the name MUST be
* stored in the uniformResourceIdentifier (an IA5String). The name MUST
* be a non-relative URL, and MUST follow the URL syntax and encoding
* rules specified in [RFC 1738].  The name must include both a scheme
* (e.g., "http" or "ftp") and a scheme-specific-part.  The scheme-
* specific-part must include a fully qualified domain name or IP
* address as the host.
* <p>
* As specified in [RFC 1738], the scheme name is not case-sensitive
* (e.g., "http" is equivalent to "HTTP").  The host part is also not
* case-sensitive, but other components of the scheme-specific-part may
* be case-sensitive. When comparing URIs, conforming implementations
* MUST compare the scheme and host without regard to case, but assume
* the remainder of the scheme-specific-part is case sensitive.
* <p>
* [RFC1738] In general, URLs are written as follows:
* <pre>
* <scheme>:<scheme-specific-part>
* </pre>
* A URL contains the name of the scheme being used (<scheme>) followed
* by a colon and then a string (the <scheme-specific-part>) whose
* interpretation depends on the scheme.
* <p>
* While the syntax for the rest of the URL may vary depending on the
* particular scheme selected, URL schemes that involve the direct use
* of an IP-based protocol to a specified host on the Internet use a
* common syntax for the scheme-specific data:
* <pre>
* //<user>:<password>@<host>:<port>/<url-path>
* </pre>
* [RFC2732] specifies that an IPv6 address contained inside a URL
* must be enclosed in square brackets (to allow distinguishing the
* colons that separate IPv6 components from the colons that separate
* scheme-specific data.
* <p>
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @author Sean Mullan
* @author Steve Hanna
* @see GeneralName
* @see GeneralNames
* @see GeneralNameInterface
*/
extern class URIName implements sun.security.x509.GeneralNameInterface
{
	/**
	* Create the URIName object from the passed encoded Der value.
	*
	* @param derValue the encoded DER URIName.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(derValue : sun.security.util.DerValue) : Void;
	
	/**
	* Create the URIName object with the specified name.
	*
	* @param name the URIName.
	* @throws IOException if name is not a proper URIName
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Create the URIName object with the specified name constraint. URI
	* name constraints syntax is different than SubjectAltNames, etc. See
	* 4.2.1.11 of RFC 3280.
	*
	* @param value the URI name constraint
	* @throws IOException if name is not a proper URI name constraint
	*/
	@:overload @:public @:static public static function nameConstraint(value : sun.security.util.DerValue) : sun.security.x509.URIName;
	
	/**
	* Return the type of the GeneralName.
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Encode the URI name into the DerOutputStream.
	*
	* @param out the DER stream to encode the URIName to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Convert the name into user readable string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Compares this name with another, for equality.
	*
	* @return true iff the names are equivalent according to RFC2459.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the URIName as a java.net.URI object
	*/
	@:overload @:public public function getURI() : java.net.URI;
	
	/**
	* Returns this URI name.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the scheme name portion of a URIName
	*
	* @returns scheme portion of full name
	*/
	@:overload @:public public function getScheme() : String;
	
	/**
	* Return the host name or IP address portion of the URIName
	*
	* @returns host name or IP address portion of full name
	*/
	@:overload @:public public function getHost() : String;
	
	/**
	* Return the host object type; if host name is a
	* DNSName, then this host object does not include any
	* initial "." on the name.
	*
	* @returns host name as DNSName or IPAddressName
	*/
	@:overload @:public public function getHostObject() : Dynamic;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Return type of constraint inputName places on this name:<ul>
	*   <li>NAME_DIFF_TYPE = -1: input name is different type from name
	*       (i.e. does not constrain).
	*   <li>NAME_MATCH = 0: input name matches name.
	*   <li>NAME_NARROWS = 1: input name narrows name (is lower in the naming
	*       subtree)
	*   <li>NAME_WIDENS = 2: input name widens name (is higher in the naming
	*       subtree)
	*   <li>NAME_SAME_TYPE = 3: input name does not match or narrow name, but
	*       is same type.
	* </ul>.
	* These results are used in checking NameConstraints during
	* certification path verification.
	* <p>
	* RFC3280: For URIs, the constraint applies to the host part of the name.
	* The constraint may specify a host or a domain.  Examples would be
	* "foo.bar.com";  and ".xyz.com".  When the the constraint begins with
	* a period, it may be expanded with one or more subdomains.  That is,
	* the constraint ".xyz.com" is satisfied by both abc.xyz.com and
	* abc.def.xyz.com.  However, the constraint ".xyz.com" is not satisfied
	* by "xyz.com".  When the constraint does not begin with a period, it
	* specifies a host.
	* <p>
	* @param inputName to be checked for being constrained
	* @returns constraint type above
	* @throws UnsupportedOperationException if name is not exact match, but
	*  narrowing and widening are not supported for this name type.
	*/
	@:overload @:public public function constrains(inputName : sun.security.x509.GeneralNameInterface) : Int;
	
	/**
	* Return subtree depth of this name for purposes of determining
	* NameConstraints minimum and maximum bounds and for calculating
	* path lengths in name subtrees.
	*
	* @returns distance of name from root
	* @throws UnsupportedOperationException if not supported for this name type
	*/
	@:overload @:public public function subtreeDepth() : Int;
	
	
}
