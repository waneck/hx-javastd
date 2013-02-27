package org.xml.sax.helpers;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// AttributesImpl.java - default implementation of Attributes.
//// http://www.saxproject.org
//// Written by David Megginson
//// NO WARRANTY!  This class is in the public domain.
//// $Id: AttributesImpl.java,v 1.2 2004/11/03 22:53:08 jsuttor Exp $
extern class AttributesImpl implements org.xml.sax.Attributes
{
	/**
	* Construct a new, empty AttributesImpl object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Copy an existing Attributes object.
	*
	* <p>This constructor is especially useful inside a
	* {@link org.xml.sax.ContentHandler#startElement startElement} event.</p>
	*
	* @param atts The existing Attributes object.
	*/
	@:overload public function new(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Return the number of attributes in the list.
	*
	* @return The number of attributes in the list.
	* @see org.xml.sax.Attributes#getLength
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Return an attribute's Namespace URI.
	*
	* @param index The attribute's index (zero-based).
	* @return The Namespace URI, the empty string if none is
	*         available, or null if the index is out of range.
	* @see org.xml.sax.Attributes#getURI
	*/
	@:overload public function getURI(index : Int) : String;
	
	/**
	* Return an attribute's local name.
	*
	* @param index The attribute's index (zero-based).
	* @return The attribute's local name, the empty string if
	*         none is available, or null if the index if out of range.
	* @see org.xml.sax.Attributes#getLocalName
	*/
	@:overload public function getLocalName(index : Int) : String;
	
	/**
	* Return an attribute's qualified (prefixed) name.
	*
	* @param index The attribute's index (zero-based).
	* @return The attribute's qualified name, the empty string if
	*         none is available, or null if the index is out of bounds.
	* @see org.xml.sax.Attributes#getQName
	*/
	@:overload public function getQName(index : Int) : String;
	
	/**
	* Return an attribute's type by index.
	*
	* @param index The attribute's index (zero-based).
	* @return The attribute's type, "CDATA" if the type is unknown, or null
	*         if the index is out of bounds.
	* @see org.xml.sax.Attributes#getType(int)
	*/
	@:overload public function getType(index : Int) : String;
	
	/**
	* Return an attribute's value by index.
	*
	* @param index The attribute's index (zero-based).
	* @return The attribute's value or null if the index is out of bounds.
	* @see org.xml.sax.Attributes#getValue(int)
	*/
	@:overload public function getValue(index : Int) : String;
	
	/**
	* Look up an attribute's index by Namespace name.
	*
	* <p>In many cases, it will be more efficient to look up the name once and
	* use the index query methods rather than using the name query methods
	* repeatedly.</p>
	*
	* @param uri The attribute's Namespace URI, or the empty
	*        string if none is available.
	* @param localName The attribute's local name.
	* @return The attribute's index, or -1 if none matches.
	* @see org.xml.sax.Attributes#getIndex(java.lang.String,java.lang.String)
	*/
	@:overload public function getIndex(uri : String, localName : String) : Int;
	
	/**
	* Look up an attribute's index by qualified (prefixed) name.
	*
	* @param qName The qualified name.
	* @return The attribute's index, or -1 if none matches.
	* @see org.xml.sax.Attributes#getIndex(java.lang.String)
	*/
	@:overload public function getIndex(qName : String) : Int;
	
	/**
	* Look up an attribute's type by Namespace-qualified name.
	*
	* @param uri The Namespace URI, or the empty string for a name
	*        with no explicit Namespace URI.
	* @param localName The local name.
	* @return The attribute's type, or null if there is no
	*         matching attribute.
	* @see org.xml.sax.Attributes#getType(java.lang.String,java.lang.String)
	*/
	@:overload public function getType(uri : String, localName : String) : String;
	
	/**
	* Look up an attribute's type by qualified (prefixed) name.
	*
	* @param qName The qualified name.
	* @return The attribute's type, or null if there is no
	*         matching attribute.
	* @see org.xml.sax.Attributes#getType(java.lang.String)
	*/
	@:overload public function getType(qName : String) : String;
	
	/**
	* Look up an attribute's value by Namespace-qualified name.
	*
	* @param uri The Namespace URI, or the empty string for a name
	*        with no explicit Namespace URI.
	* @param localName The local name.
	* @return The attribute's value, or null if there is no
	*         matching attribute.
	* @see org.xml.sax.Attributes#getValue(java.lang.String,java.lang.String)
	*/
	@:overload public function getValue(uri : String, localName : String) : String;
	
	/**
	* Look up an attribute's value by qualified (prefixed) name.
	*
	* @param qName The qualified name.
	* @return The attribute's value, or null if there is no
	*         matching attribute.
	* @see org.xml.sax.Attributes#getValue(java.lang.String)
	*/
	@:overload public function getValue(qName : String) : String;
	
	/**
	* Clear the attribute list for reuse.
	*
	* <p>Note that little memory is freed by this call:
	* the current array is kept so it can be
	* reused.</p>
	*/
	@:overload public function clear() : Void;
	
	/**
	* Copy an entire Attributes object.
	*
	* <p>It may be more efficient to reuse an existing object
	* rather than constantly allocating new ones.</p>
	*
	* @param atts The attributes to copy.
	*/
	@:overload public function setAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Add an attribute to the end of the list.
	*
	* <p>For the sake of speed, this method does no checking
	* to see if the attribute is already in the list: that is
	* the responsibility of the application.</p>
	*
	* @param uri The Namespace URI, or the empty string if
	*        none is available or Namespace processing is not
	*        being performed.
	* @param localName The local name, or the empty string if
	*        Namespace processing is not being performed.
	* @param qName The qualified (prefixed) name, or the empty string
	*        if qualified names are not available.
	* @param type The attribute type as a string.
	* @param value The attribute value.
	*/
	@:overload public function addAttribute(uri : String, localName : String, qName : String, type : String, value : String) : Void;
	
	/**
	* Set an attribute in the list.
	*
	* <p>For the sake of speed, this method does no checking
	* for name conflicts or well-formedness: such checks are the
	* responsibility of the application.</p>
	*
	* @param index The index of the attribute (zero-based).
	* @param uri The Namespace URI, or the empty string if
	*        none is available or Namespace processing is not
	*        being performed.
	* @param localName The local name, or the empty string if
	*        Namespace processing is not being performed.
	* @param qName The qualified name, or the empty string
	*        if qualified names are not available.
	* @param type The attribute type as a string.
	* @param value The attribute value.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not point to an attribute
	*            in the list.
	*/
	@:overload public function setAttribute(index : Int, uri : String, localName : String, qName : String, type : String, value : String) : Void;
	
	/**
	* Remove an attribute from the list.
	*
	* @param index The index of the attribute (zero-based).
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not point to an attribute
	*            in the list.
	*/
	@:overload public function removeAttribute(index : Int) : Void;
	
	/**
	* Set the Namespace URI of a specific attribute.
	*
	* @param index The index of the attribute (zero-based).
	* @param uri The attribute's Namespace URI, or the empty
	*        string for none.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not point to an attribute
	*            in the list.
	*/
	@:overload public function setURI(index : Int, uri : String) : Void;
	
	/**
	* Set the local name of a specific attribute.
	*
	* @param index The index of the attribute (zero-based).
	* @param localName The attribute's local name, or the empty
	*        string for none.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not point to an attribute
	*            in the list.
	*/
	@:overload public function setLocalName(index : Int, localName : String) : Void;
	
	/**
	* Set the qualified name of a specific attribute.
	*
	* @param index The index of the attribute (zero-based).
	* @param qName The attribute's qualified name, or the empty
	*        string for none.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not point to an attribute
	*            in the list.
	*/
	@:overload public function setQName(index : Int, qName : String) : Void;
	
	/**
	* Set the type of a specific attribute.
	*
	* @param index The index of the attribute (zero-based).
	* @param type The attribute's type.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not point to an attribute
	*            in the list.
	*/
	@:overload public function setType(index : Int, type : String) : Void;
	
	/**
	* Set the value of a specific attribute.
	*
	* @param index The index of the attribute (zero-based).
	* @param value The attribute's value.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not point to an attribute
	*            in the list.
	*/
	@:overload public function setValue(index : Int, value : String) : Void;
	
	
}
