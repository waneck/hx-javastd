package javax.security.auth.x500;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
* <p> This class represents an X.500 <code>Principal</code>.
* <code>X500Principal</code>s are represented by distinguished names such as
* "CN=Duke, OU=JavaSoft, O=Sun Microsystems, C=US".
*
* <p> This class can be instantiated by using a string representation
* of the distinguished name, or by using the ASN.1 DER encoded byte
* representation of the distinguished name.  The current specification
* for the string representation of a distinguished name is defined in
* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253: Lightweight
* Directory Access Protocol (v3): UTF-8 String Representation of
* Distinguished Names</a>. This class, however, accepts string formats from
* both RFC 2253 and <a href="http://www.ietf.org/rfc/rfc1779.txt">RFC 1779:
* A String Representation of Distinguished Names</a>, and also recognizes
* attribute type keywords whose OIDs (Object Identifiers) are defined in
* <a href="http://www.ietf.org/rfc/rfc3280.txt">RFC 3280: Internet X.509
* Public Key Infrastructure Certificate and CRL Profile</a>.
*
* <p> The string representation for this <code>X500Principal</code>
* can be obtained by calling the <code>getName</code> methods.
*
* <p> Note that the <code>getSubjectX500Principal</code> and
* <code>getIssuerX500Principal</code> methods of
* <code>X509Certificate</code> return X500Principals representing the
* issuer and subject fields of the certificate.
*
* @see java.security.cert.X509Certificate
* @since 1.4
*/
@:require(java4) extern class X500Principal implements java.security.Principal implements java.io.Serializable
{
	/**
	* RFC 1779 String format of Distinguished Names.
	*/
	public static var RFC1779(default, null) : String;
	
	/**
	* RFC 2253 String format of Distinguished Names.
	*/
	public static var RFC2253(default, null) : String;
	
	/**
	* Canonical String format of Distinguished Names.
	*/
	public static var CANONICAL(default, null) : String;
	
	/**
	* Creates an <code>X500Principal</code> from a string representation of
	* an X.500 distinguished name (ex:
	* "CN=Duke, OU=JavaSoft, O=Sun Microsystems, C=US").
	* The distinguished name must be specified using the grammar defined in
	* RFC 1779 or RFC 2253 (either format is acceptable).
	*
	* <p>This constructor recognizes the attribute type keywords
	* defined in RFC 1779 and RFC 2253
	* (and listed in {@link #getName(String format) getName(String format)}),
	* as well as the T, DNQ or DNQUALIFIER, SURNAME, GIVENNAME, INITIALS,
	* GENERATION, EMAILADDRESS, and SERIALNUMBER keywords whose OIDs are
	* defined in RFC 3280 and its successor.
	* Any other attribute type must be specified as an OID.
	*
	* @param name an X.500 distinguished name in RFC 1779 or RFC 2253 format
	* @exception NullPointerException if the <code>name</code>
	*                  is <code>null</code>
	* @exception IllegalArgumentException if the <code>name</code>
	*                  is improperly specified
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Creates an <code>X500Principal</code> from a string representation of
	* an X.500 distinguished name (ex:
	* "CN=Duke, OU=JavaSoft, O=Sun Microsystems, C=US").
	* The distinguished name must be specified using the grammar defined in
	* RFC 1779 or RFC 2253 (either format is acceptable).
	*
	* <p> This constructor recognizes the attribute type keywords specified
	* in {@link #X500Principal(String)} and also recognizes additional
	* keywords that have entries in the <code>keywordMap</code> parameter.
	* Keyword entries in the keywordMap take precedence over the default
	* keywords recognized by <code>X500Principal(String)</code>. Keywords
	* MUST be specified in all upper-case, otherwise they will be ignored.
	* Improperly specified keywords are ignored; however if a keyword in the
	* name maps to an improperly specified OID, an
	* <code>IllegalArgumentException</code> is thrown. It is permissible to
	* have 2 different keywords that map to the same OID.
	*
	* @param name an X.500 distinguished name in RFC 1779 or RFC 2253 format
	* @param keywordMap an attribute type keyword map, where each key is a
	*   keyword String that maps to a corresponding object identifier in String
	*   form (a sequence of nonnegative integers separated by periods). The map
	*   may be empty but never <code>null</code>.
	* @exception NullPointerException if <code>name</code> or
	*   <code>keywordMap</code> is <code>null</code>
	* @exception IllegalArgumentException if the <code>name</code> is
	*   improperly specified or a keyword in the <code>name</code> maps to an
	*   OID that is not in the correct form
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(name : String, keywordMap : java.util.Map<String, String>) : Void;
	
	/**
	* Creates an <code>X500Principal</code> from a distinguished name in
	* ASN.1 DER encoded form. The ASN.1 notation for this structure is as
	* follows.
	* <pre><code>
	* Name ::= CHOICE {
	*   RDNSequence }
	*
	* RDNSequence ::= SEQUENCE OF RelativeDistinguishedName
	*
	* RelativeDistinguishedName ::=
	*   SET SIZE (1 .. MAX) OF AttributeTypeAndValue
	*
	* AttributeTypeAndValue ::= SEQUENCE {
	*   type     AttributeType,
	*   value    AttributeValue }
	*
	* AttributeType ::= OBJECT IDENTIFIER
	*
	* AttributeValue ::= ANY DEFINED BY AttributeType
	* ....
	* DirectoryString ::= CHOICE {
	*       teletexString           TeletexString (SIZE (1..MAX)),
	*       printableString         PrintableString (SIZE (1..MAX)),
	*       universalString         UniversalString (SIZE (1..MAX)),
	*       utf8String              UTF8String (SIZE (1.. MAX)),
	*       bmpString               BMPString (SIZE (1..MAX)) }
	* </code></pre>
	*
	* @param name a byte array containing the distinguished name in ASN.1
	* DER encoded form
	* @throws IllegalArgumentException if an encoding error occurs
	*          (incorrect form for DN)
	*/
	@:overload public function new(name : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Creates an <code>X500Principal</code> from an <code>InputStream</code>
	* containing the distinguished name in ASN.1 DER encoded form.
	* The ASN.1 notation for this structure is supplied in the
	* documentation for
	* {@link #X500Principal(byte[] name) X500Principal(byte[] name)}.
	*
	* <p> The read position of the input stream is positioned
	* to the next available byte after the encoded distinguished name.
	*
	* @param is an <code>InputStream</code> containing the distinguished
	*          name in ASN.1 DER encoded form
	*
	* @exception NullPointerException if the <code>InputStream</code>
	*          is <code>null</code>
	* @exception IllegalArgumentException if an encoding error occurs
	*          (incorrect form for DN)
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Returns a string representation of the X.500 distinguished name using
	* the format defined in RFC 2253.
	*
	* <p>This method is equivalent to calling
	* <code>getName(X500Principal.RFC2253)</code>.
	*
	* @return the distinguished name of this <code>X500Principal</code>
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns a string representation of the X.500 distinguished name
	* using the specified format. Valid values for the format are
	* "RFC1779", "RFC2253", and "CANONICAL" (case insensitive).
	*
	* <p> If "RFC1779" is specified as the format,
	* this method emits the attribute type keywords defined in
	* RFC 1779 (CN, L, ST, O, OU, C, STREET).
	* Any other attribute type is emitted as an OID.
	*
	* <p> If "RFC2253" is specified as the format,
	* this method emits the attribute type keywords defined in
	* RFC 2253 (CN, L, ST, O, OU, C, STREET, DC, UID).
	* Any other attribute type is emitted as an OID.
	* Under a strict reading, RFC 2253 only specifies a UTF-8 string
	* representation. The String returned by this method is the
	* Unicode string achieved by decoding this UTF-8 representation.
	*
	* <p> If "CANONICAL" is specified as the format,
	* this method returns an RFC 2253 conformant string representation
	* with the following additional canonicalizations:
	*
	* <p><ol>
	* <li> Leading zeros are removed from attribute types
	*          that are encoded as dotted decimal OIDs
	* <li> DirectoryString attribute values of type
	*          PrintableString and UTF8String are not
	*          output in hexadecimal format
	* <li> DirectoryString attribute values of types
	*          other than PrintableString and UTF8String
	*          are output in hexadecimal format
	* <li> Leading and trailing white space characters
	*          are removed from non-hexadecimal attribute values
	*          (unless the value consists entirely of white space characters)
	* <li> Internal substrings of one or more white space characters are
	*          converted to a single space in non-hexadecimal
	*          attribute values
	* <li> Relative Distinguished Names containing more than one
	*          Attribute Value Assertion (AVA) are output in the
	*          following order: an alphabetical ordering of AVAs
	*          containing standard keywords, followed by a numeric
	*          ordering of AVAs containing OID keywords.
	* <li> The only characters in attribute values that are escaped are
	*          those which section 2.4 of RFC 2253 states must be escaped
	*          (they are escaped using a preceding backslash character)
	* <li> The entire name is converted to upper case
	*          using <code>String.toUpperCase(Locale.US)</code>
	* <li> The entire name is converted to lower case
	*          using <code>String.toLowerCase(Locale.US)</code>
	* <li> The name is finally normalized using normalization form KD,
	*          as described in the Unicode Standard and UAX #15
	* </ol>
	*
	* <p> Additional standard formats may be introduced in the future.
	*
	* @param format the format to use
	*
	* @return a string representation of this <code>X500Principal</code>
	*          using the specified format
	* @throws IllegalArgumentException if the specified format is invalid
	*          or null
	*/
	@:overload public function getName(format : String) : String;
	
	/**
	* Returns a string representation of the X.500 distinguished name
	* using the specified format. Valid values for the format are
	* "RFC1779" and "RFC2253" (case insensitive). "CANONICAL" is not
	* permitted and an <code>IllegalArgumentException</code> will be thrown.
	*
	* <p>This method returns Strings in the format as specified in
	* {@link #getName(String)} and also emits additional attribute type
	* keywords for OIDs that have entries in the <code>oidMap</code>
	* parameter. OID entries in the oidMap take precedence over the default
	* OIDs recognized by <code>getName(String)</code>.
	* Improperly specified OIDs are ignored; however if an OID
	* in the name maps to an improperly specified keyword, an
	* <code>IllegalArgumentException</code> is thrown.
	*
	* <p> Additional standard formats may be introduced in the future.
	*
	* <p> Warning: additional attribute type keywords may not be recognized
	* by other implementations; therefore do not use this method if
	* you are unsure if these keywords will be recognized by other
	* implementations.
	*
	* @param format the format to use
	* @param oidMap an OID map, where each key is an object identifier in
	*  String form (a sequence of nonnegative integers separated by periods)
	*  that maps to a corresponding attribute type keyword String.
	*  The map may be empty but never <code>null</code>.
	* @return a string representation of this <code>X500Principal</code>
	*          using the specified format
	* @throws IllegalArgumentException if the specified format is invalid,
	*  null, or an OID in the name maps to an improperly specified keyword
	* @throws NullPointerException if <code>oidMap</code> is <code>null</code>
	* @since 1.6
	*/
	@:require(java6) @:overload public function getName(format : String, oidMap : java.util.Map<String, String>) : String;
	
	/**
	* Returns the distinguished name in ASN.1 DER encoded form. The ASN.1
	* notation for this structure is supplied in the documentation for
	* {@link #X500Principal(byte[] name) X500Principal(byte[] name)}.
	*
	* <p>Note that the byte array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return a byte array containing the distinguished name in ASN.1 DER
	* encoded form
	*/
	@:overload public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return a user-friendly string representation of this
	* <code>X500Principal</code>.
	*
	* @return a string representation of this <code>X500Principal</code>
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares the specified <code>Object</code> with this
	* <code>X500Principal</code> for equality.
	*
	* <p> Specifically, this method returns <code>true</code> if
	* the <code>Object</code> <i>o</i> is an <code>X500Principal</code>
	* and if the respective canonical string representations
	* (obtained via the <code>getName(X500Principal.CANONICAL)</code> method)
	* of this object and <i>o</i> are equal.
	*
	* <p> This implementation is compliant with the requirements of RFC 3280.
	*
	* @param o Object to be compared for equality with this
	*          <code>X500Principal</code>
	*
	* @return <code>true</code> if the specified <code>Object</code> is equal
	*          to this <code>X500Principal</code>, <code>false</code> otherwise
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Return a hash code for this <code>X500Principal</code>.
	*
	* <p> The hash code is calculated via:
	* <code>getName(X500Principal.CANONICAL).hashCode()</code>
	*
	* @return a hash code for this <code>X500Principal</code>
	*/
	@:overload public function hashCode() : Int;
	
	
}
