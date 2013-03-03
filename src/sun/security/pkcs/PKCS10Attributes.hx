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
/**
* This class defines the PKCS10 attributes for the request.
* The ASN.1 syntax for this is:
* <pre>
* Attributes ::= SET OF Attribute
* </pre>
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see PKCS10
* @see PKCS10Attribute
*/
extern class PKCS10Attributes implements sun.security.util.DerEncoder
{
	/**
	* Default constructor for the PKCS10 attribute.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create the object from the array of PKCS10Attribute objects.
	*
	* @param attrs the array of PKCS10Attribute objects.
	*/
	@:overload @:public public function new(attrs : java.NativeArray<sun.security.pkcs.PKCS10Attribute>) : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	* The DER stream contains the SET OF Attribute.
	*
	* @param in the DerInputStream to read the attributes from.
	* @exception IOException on decoding errors.
	*/
	@:overload @:public public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Encode the attributes in DER form to the stream.
	*
	* @param out the OutputStream to marshal the contents to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Encode the attributes in DER form to the stream.
	* Implements the <code>DerEncoder</code> interface.
	*
	* @param out the OutputStream to marshal the contents to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function derEncode(out : java.io.OutputStream) : Void;
	
	/**
	* Set the attribute value.
	*/
	@:overload @:public public function setAttribute(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	*/
	@:overload @:public public function getAttribute(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	*/
	@:overload @:public public function deleteAttribute(name : String) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload @:public public function getElements() : java.util.Enumeration<sun.security.pkcs.PKCS10Attribute>;
	
	/**
	* Return a Collection of attributes existing within this
	* PKCS10Attributes object.
	*/
	@:overload @:public public function getAttributes() : java.util.Collection<sun.security.pkcs.PKCS10Attribute>;
	
	/**
	* Compares this PKCS10Attributes for equality with the specified
	* object. If the <code>other</code> object is an
	* <code>instanceof</code> <code>PKCS10Attributes</code>, then
	* all the entries are compared with the entries from this.
	*
	* @param other the object to test for equality with this PKCS10Attributes.
	* @return true if all the entries match that of the Other,
	* false otherwise.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this PKCS10Attributes.
	*
	* @return the hashcode value.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <tt>PKCS10Attributes</tt> object
	* in the form of a set of entries, enclosed in braces and separated
	* by the ASCII characters "<tt>,&nbsp;</tt>" (comma and space).
	* <p>Overrides the <tt>toString</tt> method of <tt>Object</tt>.
	*
	* @return  a string representation of this PKCS10Attributes.
	*/
	@:overload @:public public function toString() : String;
	
	
}
