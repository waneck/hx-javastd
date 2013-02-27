package javax.naming.ldap;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Rdn implements java.io.Serializable implements java.lang.Comparable<Dynamic>
{
	/**
	* Constructs an Rdn from the given attribute set. See
	* {@link javax.naming.directory.Attributes Attributes}.
	* <p>
	* The string attribute values are not interpretted as
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>
	* formatted RDN strings. That is, the values are used
	* literally (not parsed) and assumed to be unescaped.
	*
	* @param attrSet The non-null and non-empty attributes containing
	* type/value mappings.
	* @throws InvalidNameException If contents of <tt>attrSet</tt> cannot
	*          be used to construct a valid RDN.
	*/
	@:overload public function new(attrSet : javax.naming.directory.Attributes) : Void;
	
	/**
	* Constructs an Rdn from the given string.
	* This constructor takes a string formatted according to the rules
	* defined in <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>
	* and described in the class description for
	* {@link javax.naming.ldap.LdapName}.
	*
	* @param rdnString The non-null and non-empty RFC2253 formatted string.
	* @throws InvalidNameException If a syntax error occurs during
	*                  parsing of the rdnString.
	*/
	@:overload public function new(rdnString : String) : Void;
	
	/**
	* Constructs an Rdn from the given <tt>rdn</tt>.
	* The contents of the <tt>rdn</tt> are simply copied into the newly
	* created Rdn.
	* @param rdn The non-null Rdn to be copied.
	*/
	@:overload public function new(rdn : Rdn) : Void;
	
	/**
	* Constructs an Rdn from the given attribute type and
	* value.
	* The string attribute values are not interpretted as
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>
	* formatted RDN strings. That is, the values are used
	* literally (not parsed) and assumed to be unescaped.
	*
	* @param type The non-null and non-empty string attribute type.
	* @param value The non-null and non-empty attribute value.
	* @throws InvalidNameException If type/value cannot be used to
	*                  construct a valid RDN.
	* @see #toString()
	*/
	@:overload public function new(type : String, value : Dynamic) : Void;
	
	/**
	* Retrieves one of this Rdn's value.
	* This is a convenience method for obtaining the value,
	* when the RDN contains a single type and value mapping,
	* which is the common RDN usage.
	* <p>
	* For a multi-valued RDN, this method returns value corresponding
	* to the type returned by {@link #getType() getType()} method.
	*
	* @return The non-null attribute value.
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* Retrieves one of this Rdn's type.
	* This is a convenience method for obtaining the type,
	* when the RDN contains a single type and value mapping,
	* which is the common RDN usage.
	* <p>
	* For a multi-valued RDN, the type/value pairs have
	* no specific order defined on them. In that case, this method
	* returns type of one of the type/value pairs.
	* The {@link #getValue() getValue()} method returns the
	* value corresponding to the type returned by this method.
	*
	* @return The non-null attribute type.
	*/
	@:overload public function getType() : String;
	
	/**
	* Returns this Rdn as a string represented in a format defined by
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a> and described
	* in the class description for {@link javax.naming.ldap.LdapName LdapName}.
	*
	* @return The string representation of the Rdn.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares this Rdn with the specified Object for order.
	* Returns a negative integer, zero, or a positive integer as this
	* Rdn is less than, equal to, or greater than the given Object.
	* <p>
	* If obj is null or not an instance of Rdn, ClassCastException
	* is thrown.
	* <p>
	* The attribute type and value pairs of the RDNs are lined up
	* against each other and compared lexicographically. The order of
	* components in multi-valued Rdns (such as "ou=Sales+cn=Bob") is not
	* significant.
	*
	* @param obj The non-null object to compare against.
	* @return  A negative integer, zero, or a positive integer as this Rdn
	*          is less than, equal to, or greater than the given Object.
	* @exception ClassCastException if obj is null or not a Rdn.
	* <p>
	*/
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Compares the specified Object with this Rdn for equality.
	* Returns true if the given object is also a Rdn and the two Rdns
	* represent the same attribute type and value mappings. The order of
	* components in multi-valued Rdns (such as "ou=Sales+cn=Bob") is not
	* significant.
	* <p>
	* Type and value equalilty matching is done as below:
	* <ul>
	* <li> The types are compared for equality with their case ignored.
	* <li> String values with different but equivalent usage of quoting,
	* escaping, or UTF8-hex-encoding are considered equal.
	* The case of the values is ignored during the comparison.
	* </ul>
	* <p>
	* If obj is null or not an instance of Rdn, false is returned.
	* <p>
	* @param obj object to be compared for equality with this Rdn.
	* @return true if the specified object is equal to this Rdn.
	* @see #hashCode()
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code of this RDN. Two RDNs that are
	* equal (according to the equals method) will have the same
	* hash code.
	*
	* @return An int representing the hash code of this Rdn.
	* @see #equals
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Retrieves the {@link javax.naming.directory.Attributes Attributes}
	* view of the type/value mappings contained in this Rdn.
	*
	* @return  The non-null attributes containing the type/value
	*          mappings of this Rdn.
	*/
	@:overload public function toAttributes() : javax.naming.directory.Attributes;
	
	/**
	* Retrieves the number of attribute type/value pairs in this Rdn.
	* @return The non-negative number of type/value pairs in this Rdn.
	*/
	@:overload public function size() : Int;
	
	/**
	* Given the value of an attribute, returns a string escaped according
	* to the rules specified in
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>.
	* <p>
	* For example, if the val is "Sue, Grabbit and Runn", the escaped
	* value returned by this method is "Sue\, Grabbit and Runn".
	* <p>
	* A string value is represented as a String and binary value
	* as a byte array.
	*
	* @param val The non-null object to be escaped.
	* @return Escaped string value.
	* @throws ClassCastException if val is is not a String or byte array.
	*/
	@:overload public static function escapeValue(val : Dynamic) : String;
	
	/**
	* Given an attribute value string formated according to the rules
	* specified in
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>,
	* returns the unformated value.  Escapes and quotes are
	* stripped away, and hex-encoded UTF-8 is converted to equivalent
	* UTF-16 characters. Returns a string value as a String, and a
	* binary value as a byte array.
	* <p>
	* Legal and illegal values are defined in RFC 2253.
	* This method is generous in accepting the values and does not
	* catch all illegal values.
	* Therefore, passing in an illegal value might not necessarily
	* trigger an <tt>IllegalArgumentException</tt>.
	*
	* @param   val     The non-null string to be unescaped.
	* @return          Unescaped value.
	* @throws          IllegalArgumentException When an Illegal value
	*                  is provided.
	*/
	@:overload public static function unescapeValue(val : String) : Dynamic;
	
	
}
@:native('javax$naming$ldap$Rdn$RdnEntry') @:internal extern class Rdn_RdnEntry implements java.lang.Comparable<Dynamic>
{
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
