package sun.security.pkcs;
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
extern class PKCS9Attribute implements sun.security.util.DerEncoder
{
	@:public @:static @:final public static var EMAIL_ADDRESS_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var UNSTRUCTURED_NAME_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var CONTENT_TYPE_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var MESSAGE_DIGEST_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var SIGNING_TIME_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var COUNTERSIGNATURE_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var CHALLENGE_PASSWORD_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var UNSTRUCTURED_ADDRESS_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var EXTENDED_CERTIFICATE_ATTRIBUTES_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var ISSUER_SERIALNUMBER_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var EXTENSION_REQUEST_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var SMIME_CAPABILITY_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var SIGNING_CERTIFICATE_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var SIGNATURE_TIMESTAMP_TOKEN_OID(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var EMAIL_ADDRESS_STR(default, null) : String;
	
	@:public @:static @:final public static var UNSTRUCTURED_NAME_STR(default, null) : String;
	
	@:public @:static @:final public static var CONTENT_TYPE_STR(default, null) : String;
	
	@:public @:static @:final public static var MESSAGE_DIGEST_STR(default, null) : String;
	
	@:public @:static @:final public static var SIGNING_TIME_STR(default, null) : String;
	
	@:public @:static @:final public static var COUNTERSIGNATURE_STR(default, null) : String;
	
	@:public @:static @:final public static var CHALLENGE_PASSWORD_STR(default, null) : String;
	
	@:public @:static @:final public static var UNSTRUCTURED_ADDRESS_STR(default, null) : String;
	
	@:public @:static @:final public static var EXTENDED_CERTIFICATE_ATTRIBUTES_STR(default, null) : String;
	
	@:public @:static @:final public static var ISSUER_SERIALNUMBER_STR(default, null) : String;
	
	@:public @:static @:final public static var EXTENSION_REQUEST_STR(default, null) : String;
	
	@:public @:static @:final public static var SMIME_CAPABILITY_STR(default, null) : String;
	
	@:public @:static @:final public static var SIGNING_CERTIFICATE_STR(default, null) : String;
	
	@:public @:static @:final public static var SIGNATURE_TIMESTAMP_TOKEN_STR(default, null) : String;
	
	/**
	* Construct an attribute object from the attribute's OID and
	* value.  If the attribute is single-valued, provide only one
	* value.  If the attribute is multi-valued, provide an array
	* containing all the values.
	* Arrays of length zero are accepted, though probably useless.
	*
	* <P> The
	* <a href=#classTable>table</a> gives the class that <code>value</code>
	* must have for a given attribute.
	*
	*/
	@:overload @:public public function new(oid : sun.security.util.ObjectIdentifier, value : Dynamic) : Void;
	
	/**
	* Construct an attribute object from the attribute's name and
	* value.  If the attribute is single-valued, provide only one
	* value.  If the attribute is multi-valued, provide an array
	* containing all the values.
	* Arrays of length zero are accepted, though probably useless.
	*
	* <P> The
	* <a href=#classTable>table</a> gives the class that <code>value</code>
	* must have for a given attribute. Reasonable variants of these
	* attributes are accepted; in particular, case does not matter.
	*
	* @exception IllegalArgumentException
	* if the <code>name</code> is not recognized of the
	* <code>value</code> has the wrong type.
	*/
	@:overload @:public public function new(name : String, value : Dynamic) : Void;
	
	/**
	* Construct a PKCS9Attribute from its encoding on an input
	* stream.
	*
	* @param val the DerValue representing the DER encoding of the attribute.
	* @exception IOException on parsing error.
	*/
	@:overload @:public public function new(derVal : sun.security.util.DerValue) : Void;
	
	/**
	* Write the DER encoding of this attribute to an output stream.
	*
	* <P> N.B.: This method always encodes values of
	* ChallengePassword and UnstructuredAddress attributes as ASN.1
	* <code>PrintableString</code>s, without checking whether they
	* should be encoded as <code>T61String</code>s.
	*/
	@:overload @:public public function derEncode(out : java.io.OutputStream) : Void;
	
	/**
	* Get the value of this attribute.  If the attribute is
	* single-valued, return just the one value.  If the attribute is
	* multi-valued, return an array containing all the values.
	* It is possible for this array to be of length 0.
	*
	* <P> The
	* <a href=#classTable>table</a> gives the class of the value returned,
	* depending on the type of this attribute.
	*/
	@:overload @:public public function getValue() : Dynamic;
	
	/**
	* Show whether this attribute is single-valued.
	*/
	@:overload @:public public function isSingleValued() : Bool;
	
	/**
	*  Return the OID of this attribute.
	*/
	@:overload @:public public function getOID() : sun.security.util.ObjectIdentifier;
	
	/**
	*  Return the name of this attribute.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the OID for a given attribute name or null if we don't recognize
	* the name.
	*/
	@:native('getOID') @:overload @:public @:static public static function _getOID(name : String) : sun.security.util.ObjectIdentifier;
	
	/**
	* Return the attribute name for a given OID or null if we don't recognize
	* the oid.
	*/
	@:native('getName') @:overload @:public @:static public static function _getName(oid : sun.security.util.ObjectIdentifier) : String;
	
	/**
	* Returns a string representation of this attribute.
	*/
	@:overload @:public public function toString() : String;
	
	
}
