package sun.security.pkcs;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PKCS9Attributes
{
	/**
	* Construct a set of PKCS9 Attributes from its
	* DER encoding on a DerInputStream, accepting only attributes
	* with OIDs on the given
	* list.  If the array is null, accept all attributes supported by
	* class PKCS9Attribute.
	*
	* @param permittedAttributes
	* Array of attribute OIDs that will be accepted.
	* @param in
	* the contents of the DER encoding of the attribute set.
	*
	* @exception IOException
	* on i/o error, encoding syntax error, unacceptable or
	* unsupported attribute, or duplicate attribute.
	*
	* @see PKCS9Attribute
	*/
	@:overload public function new(permittedAttributes : java.NativeArray<sun.security.util.ObjectIdentifier>, _in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Construct a set of PKCS9 Attributes from the contents of its
	* DER encoding on a DerInputStream.  Accept all attributes
	* supported by class PKCS9Attribute and reject any unsupported
	* attributes.
	*
	* @param in the contents of the DER encoding of the attribute set.
	* @exception IOException
	* on i/o error, encoding syntax error, or unsupported or
	* duplicate attribute.
	*
	* @see PKCS9Attribute
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Construct a set of PKCS9 Attributes from the contents of its
	* DER encoding on a DerInputStream.  Accept all attributes
	* supported by class PKCS9Attribute and ignore any unsupported
	* attributes, if directed.
	*
	* @param in the contents of the DER encoding of the attribute set.
	* @param ignoreUnsupportedAttributes If true then any attributes
	* not supported by the PKCS9Attribute class are ignored. Otherwise
	* unsupported attributes cause an exception to be thrown.
	* @exception IOException
	* on i/o error, encoding syntax error, or unsupported or
	* duplicate attribute.
	*
	* @see PKCS9Attribute
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream, ignoreUnsupportedAttributes : Bool) : Void;
	
	/**
	* Construct a set of PKCS9 Attributes from the given array of
	* PKCS9 attributes.
	* DER encoding on a DerInputStream.  All attributes in
	* <code>attribs</code> must be
	* supported by class PKCS9Attribute.
	*
	* @exception IOException
	* on i/o error, encoding syntax error, or unsupported or
	* duplicate attribute.
	*
	* @see PKCS9Attribute
	*/
	@:overload public function new(attribs : java.NativeArray<sun.security.pkcs.PKCS9Attribute>) : Void;
	
	/**
	* Put the DER encoding of this PKCS9 attribute set on an
	* DerOutputStream, tagged with the given implicit tag.
	*
	* @param tag the implicit tag to use in the DER encoding.
	* @param out the output stream on which to put the DER encoding.
	*
	* @exception IOException  on output error.
	*/
	@:overload public function encode(tag : java.StdTypes.Int8, out : java.io.OutputStream) : Void;
	
	/**
	* Return the DER encoding of this attribute set, tagged with
	* DerValue.tag_SetOf.
	*/
	@:overload public function getDerEncoding() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get an attribute from this set.
	*/
	@:overload public function getAttribute(oid : sun.security.util.ObjectIdentifier) : sun.security.pkcs.PKCS9Attribute;
	
	/**
	* Get an attribute from this set.
	*/
	@:overload public function getAttribute(name : String) : sun.security.pkcs.PKCS9Attribute;
	
	/**
	* Get an array of all attributes in this set, in order of OID.
	*/
	@:overload public function getAttributes() : java.NativeArray<sun.security.pkcs.PKCS9Attribute>;
	
	/**
	* Get an attribute value by OID.
	*/
	@:overload public function getAttributeValue(oid : sun.security.util.ObjectIdentifier) : Dynamic;
	
	/**
	*  Get an attribute value by type name.
	*/
	@:overload public function getAttributeValue(name : String) : Dynamic;
	
	/**
	* Returns the PKCS9 block in a printable string form.
	*/
	@:overload public function toString() : String;
	
	
}
