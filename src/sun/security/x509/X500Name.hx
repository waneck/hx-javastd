package sun.security.x509;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class X500Name implements sun.security.x509.GeneralNameInterface implements java.security.Principal
{
	/**
	* Constructs a name from a conventionally formatted string, such
	* as "CN=Dave, OU=JavaSoft, O=Sun Microsystems, C=US".
	* (RFC 1779 or RFC 2253 style).
	*
	* @param DN X.500 Distinguished Name
	*/
	@:overload public function new(dname : String) : Void;
	
	/**
	* Constructs a name from a conventionally formatted string, such
	* as "CN=Dave, OU=JavaSoft, O=Sun Microsystems, C=US".
	* (RFC 1779 or RFC 2253 style).
	*
	* @param DN X.500 Distinguished Name
	* @param keywordMap an additional keyword/OID map
	*/
	@:overload public function new(dname : String, keywordMap : java.util.Map<String, String>) : Void;
	
	/**
	* Constructs a name from a string formatted according to format.
	* Currently, the formats DEFAULT and RFC2253 are supported.
	* DEFAULT is the default format used by the X500Name(String)
	* constructor. RFC2253 is format strictly according to RFC2253
	* without extensions.
	*
	* @param DN X.500 Distinguished Name
	*/
	@:overload public function new(dname : String, format : String) : Void;
	
	/**
	* Constructs a name from fields common in enterprise application
	* environments.
	*
	* <P><EM><STRONG>NOTE:</STRONG>  The behaviour when any of
	* these strings contain characters outside the ASCII range
	* is unspecified in currently relevant standards.</EM>
	*
	* @param commonName common name of a person, e.g. "Vivette Davis"
	* @param organizationUnit small organization name, e.g. "Purchasing"
	* @param organizationName large organization name, e.g. "Onizuka, Inc."
	* @param country two letter country code, e.g. "CH"
	*/
	@:overload public function new(commonName : String, organizationUnit : String, organizationName : String, country : String) : Void;
	
	/**
	* Constructs a name from fields common in Internet application
	* environments.
	*
	* <P><EM><STRONG>NOTE:</STRONG>  The behaviour when any of
	* these strings contain characters outside the ASCII range
	* is unspecified in currently relevant standards.</EM>
	*
	* @param commonName common name of a person, e.g. "Vivette Davis"
	* @param organizationUnit small organization name, e.g. "Purchasing"
	* @param organizationName large organization name, e.g. "Onizuka, Inc."
	* @param localityName locality (city) name, e.g. "Palo Alto"
	* @param stateName state name, e.g. "California"
	* @param country two letter country code, e.g. "CH"
	*/
	@:overload public function new(commonName : String, organizationUnit : String, organizationName : String, localityName : String, stateName : String, country : String) : Void;
	
	/**
	* Constructs a name from an array of relative distinguished names
	*
	* @param rdnArray array of relative distinguished names
	* @throws IOException on error
	*/
	@:overload public function new(rdnArray : java.NativeArray<sun.security.x509.RDN>) : Void;
	
	/**
	* Constructs a name from an ASN.1 encoded value.  The encoding
	* of the name in the stream uses DER (a BER/1 subset).
	*
	* @param value a DER-encoded value holding an X.500 name.
	*/
	@:overload public function new(value : sun.security.util.DerValue) : Void;
	
	/**
	* Constructs a name from an ASN.1 encoded input stream.  The encoding
	* of the name in the stream uses DER (a BER/1 subset).
	*
	* @param in DER-encoded data holding an X.500 name.
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	*  Constructs a name from an ASN.1 encoded byte array.
	*
	* @param name DER-encoded byte array holding an X.500 name.
	*/
	@:overload public function new(name : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Return an immutable List of all RDNs in this X500Name.
	*/
	@:overload public function rdns() : java.util.List<sun.security.x509.RDN>;
	
	/**
	* Return the number of RDNs in this X500Name.
	*/
	@:overload public function size() : Int;
	
	/**
	* Return an immutable List of the the AVAs contained in all the
	* RDNs of this X500Name.
	*/
	@:overload public function allAvas() : java.util.List<sun.security.x509.AVA>;
	
	/**
	* Return the total number of AVAs contained in all the RDNs of
	* this X500Name.
	*/
	@:overload public function avaSize() : Int;
	
	/**
	* Return whether this X500Name is empty. An X500Name is not empty
	* if it has at least one RDN containing at least one AVA.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Calculates a hash code value for the object.  Objects
	* which are equal will also have the same hashcode.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this name with another, for equality.
	*
	* @return true iff the names are identical.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return type of GeneralName.
	*/
	@:overload public function getType() : Int;
	
	/**
	* Returns a "Country" name component.  If more than one
	* such attribute exists, the topmost one is returned.
	*
	* @return "C=" component of the name, if any.
	*/
	@:overload public function getCountry() : String;
	
	/**
	* Returns an "Organization" name component.  If more than
	* one such attribute exists, the topmost one is returned.
	*
	* @return "O=" component of the name, if any.
	*/
	@:overload public function getOrganization() : String;
	
	/**
	* Returns an "Organizational Unit" name component.  If more
	* than one such attribute exists, the topmost one is returned.
	*
	* @return "OU=" component of the name, if any.
	*/
	@:overload public function getOrganizationalUnit() : String;
	
	/**
	* Returns a "Common Name" component.  If more than one such
	* attribute exists, the topmost one is returned.
	*
	* @return "CN=" component of the name, if any.
	*/
	@:overload public function getCommonName() : String;
	
	/**
	* Returns a "Locality" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "L=" component of the name, if any.
	*/
	@:overload public function getLocality() : String;
	
	/**
	* Returns a "State" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "S=" component of the name, if any.
	*/
	@:overload public function getState() : String;
	
	/**
	* Returns a "Domain" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "DC=" component of the name, if any.
	*/
	@:overload public function getDomain() : String;
	
	/**
	* Returns a "DN Qualifier" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "DNQ=" component of the name, if any.
	*/
	@:overload public function getDNQualifier() : String;
	
	/**
	* Returns a "Surname" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "SURNAME=" component of the name, if any.
	*/
	@:overload public function getSurname() : String;
	
	/**
	* Returns a "Given Name" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "GIVENNAME=" component of the name, if any.
	*/
	@:overload public function getGivenName() : String;
	
	/**
	* Returns an "Initials" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "INITIALS=" component of the name, if any.
	*/
	@:overload public function getInitials() : String;
	
	/**
	* Returns a "Generation Qualifier" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "GENERATION=" component of the name, if any.
	*/
	@:overload public function getGeneration() : String;
	
	/**
	* Returns an "IP address" name component.  If more than one
	* such component exists, the topmost one is returned.
	*
	* @return "IP=" component of the name, if any.
	*/
	@:overload public function getIP() : String;
	
	/**
	* Returns a string form of the X.500 distinguished name.
	* The format of the string is from RFC 1779. The returned string
	* may contain non-standardised keywords for more readability
	* (keywords from RFCs 1779, 2253, and 3280).
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a string form of the X.500 distinguished name
	* using the algorithm defined in RFC 1779. Only standard attribute type
	* keywords defined in RFC 1779 are emitted.
	*/
	@:overload public function getRFC1779Name() : String;
	
	/**
	* Returns a string form of the X.500 distinguished name
	* using the algorithm defined in RFC 1779. Attribute type
	* keywords defined in RFC 1779 are emitted, as well as additional
	* keywords contained in the OID/keyword map.
	*/
	@:overload public function getRFC1779Name(oidMap : java.util.Map<String, String>) : String;
	
	/**
	* Returns a string form of the X.500 distinguished name
	* using the algorithm defined in RFC 2253. Only standard attribute type
	* keywords defined in RFC 2253 are emitted.
	*/
	@:overload public function getRFC2253Name() : String;
	
	/**
	* Returns a string form of the X.500 distinguished name
	* using the algorithm defined in RFC 2253. Attribute type
	* keywords defined in RFC 2253 are emitted, as well as additional
	* keywords contained in the OID/keyword map.
	*/
	@:overload public function getRFC2253Name(oidMap : java.util.Map<String, String>) : String;
	
	@:overload public function getRFC2253CanonicalName() : String;
	
	/**
	* Returns the value of toString().  This call is needed to
	* implement the java.security.Principal interface.
	*/
	@:overload public function getName() : String;
	
	/**
	* Find the most specific ("last") attribute of the given
	* type.
	*/
	@:overload public function findMostSpecificAttribute(attribute : sun.security.util.ObjectIdentifier) : sun.security.util.DerValue;
	
	/**
	* Encodes the name in DER-encoded form.
	*
	* @deprecated Use encode() instead
	* @param out where to put the DER-encoded X.500 name
	*/
	@:overload public function emit(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Encodes the name in DER-encoded form.
	*
	* @param out where to put the DER-encoded X.500 name
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Returned the encoding as an uncloned byte array. Callers must
	* guarantee that they neither modify it not expose it to untrusted
	* code.
	*/
	@:overload public function getEncodedInternal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the name in DER-encoded form.
	*
	* @return the DER encoded byte array of this name.
	*/
	@:overload public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	public static var commonName_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var countryName_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var localityName_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var orgName_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var orgUnitName_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var stateName_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var streetAddress_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var title_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var DNQUALIFIER_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var SURNAME_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var GIVENNAME_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var INITIALS_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var GENERATIONQUALIFIER_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var ipAddress_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var DOMAIN_COMPONENT_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var userid_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var SERIALNUMBER_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Return constraint type:<ul>
	*   <li>NAME_DIFF_TYPE = -1: input name is different type from this name
	*       (i.e. does not constrain)
	*   <li>NAME_MATCH = 0: input name matches this name
	*   <li>NAME_NARROWS = 1: input name narrows this name
	*   <li>NAME_WIDENS = 2: input name widens this name
	*   <li>NAME_SAME_TYPE = 3: input name does not match or narrow this name,
	&       but is same type
	* </ul>.  These results are used in checking NameConstraints during
	* certification path verification.
	*
	* @param inputName to be checked for being constrained
	* @returns constraint type above
	* @throws UnsupportedOperationException if name is not exact match, but
	*         narrowing and widening are not supported for this name type.
	*/
	@:overload public function constrains(inputName : sun.security.x509.GeneralNameInterface) : Int;
	
	/**
	* Return subtree depth of this name for purposes of determining
	* NameConstraints minimum and maximum bounds and for calculating
	* path lengths in name subtrees.
	*
	* @returns distance of name from root
	* @throws UnsupportedOperationException if not supported for this name type
	*/
	@:overload public function subtreeDepth() : Int;
	
	/**
	* Return lowest common ancestor of this name and other name
	*
	* @param other another X500Name
	* @return X500Name of lowest common ancestor; null if none
	*/
	@:overload public function commonAncestor(other : X500Name) : X500Name;
	
	/**
	* Get an X500Principal backed by this X500Name.
	*
	* Note that we are using privileged reflection to access the hidden
	* package private constructor in X500Principal.
	*/
	@:overload public function asX500Principal() : javax.security.auth.x500.X500Principal;
	
	/**
	* Get the X500Name contained in the given X500Principal.
	*
	* Note that the X500Name is retrieved using reflection.
	*/
	@:overload public static function asX500Name(p : javax.security.auth.x500.X500Principal) : X500Name;
	
	
}
