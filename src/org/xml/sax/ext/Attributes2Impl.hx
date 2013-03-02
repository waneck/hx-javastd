package org.xml.sax.ext;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// Attributes2Impl.java - extended AttributesImpl
//// http://www.saxproject.org
//// Public Domain: no warranty.
//// $Id: Attributes2Impl.java,v 1.3 2005/02/24 11:20:18 gg156739 Exp $
extern class Attributes2Impl extends org.xml.sax.helpers.AttributesImpl implements org.xml.sax.ext.Attributes2
{
	/**
	* Construct a new, empty Attributes2Impl object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Copy an existing Attributes or Attributes2 object.
	* If the object implements Attributes2, values of the
	* <em>specified</em> and <em>declared</em> flags for each
	* attribute are copied.
	* Otherwise the flag values are defaulted to assume no DTD was used,
	* unless there is evidence to the contrary (such as attributes with
	* type other than CDATA, which must have been <em>declared</em>).
	*
	* <p>This constructor is especially useful inside a
	* {@link org.xml.sax.ContentHandler#startElement startElement} event.</p>
	*
	* @param atts The existing Attributes object.
	*/
	@:overload public function new(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Returns the current value of the attribute's "declared" flag.
	*/
	@:overload public function isDeclared(index : Int) : Bool;
	
	/**
	* Returns the current value of the attribute's "declared" flag.
	*/
	@:overload public function isDeclared(uri : String, localName : String) : Bool;
	
	/**
	* Returns the current value of the attribute's "declared" flag.
	*/
	@:overload public function isDeclared(qName : String) : Bool;
	
	/**
	* Returns the current value of an attribute's "specified" flag.
	*
	* @param index The attribute index (zero-based).
	* @return current flag value
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not identify an attribute.
	*/
	@:overload public function isSpecified(index : Int) : Bool;
	
	/**
	* Returns the current value of an attribute's "specified" flag.
	*
	* @param uri The Namespace URI, or the empty string if
	*        the name has no Namespace URI.
	* @param localName The attribute's local name.
	* @return current flag value
	* @exception java.lang.IllegalArgumentException When the
	*            supplied names do not identify an attribute.
	*/
	@:overload public function isSpecified(uri : String, localName : String) : Bool;
	
	/**
	* Returns the current value of an attribute's "specified" flag.
	*
	* @param qName The XML qualified (prefixed) name.
	* @return current flag value
	* @exception java.lang.IllegalArgumentException When the
	*            supplied name does not identify an attribute.
	*/
	@:overload public function isSpecified(qName : String) : Bool;
	
	/**
	* Copy an entire Attributes object.  The "specified" flags are
	* assigned as true, and "declared" flags as false (except when
	* an attribute's type is not CDATA),
	* unless the object is an Attributes2 object.
	* In that case those flag values are all copied.
	*
	* @see AttributesImpl#setAttributes
	*/
	@:overload public function setAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Add an attribute to the end of the list, setting its
	* "specified" flag to true.  To set that flag's value
	* to false, use {@link #setSpecified}.
	*
	* <p>Unless the attribute <em>type</em> is CDATA, this attribute
	* is marked as being declared in the DTD.  To set that flag's value
	* to true for CDATA attributes, use {@link #setDeclared}.
	*
	* @see AttributesImpl#addAttribute
	*/
	@:overload public function addAttribute(uri : String, localName : String, qName : String, type : String, value : String) : Void;
	
	@:overload public function removeAttribute(index : Int) : Void;
	
	/**
	* Assign a value to the "declared" flag of a specific attribute.
	* This is normally needed only for attributes of type CDATA,
	* including attributes whose type is changed to or from CDATA.
	*
	* @param index The index of the attribute (zero-based).
	* @param value The desired flag value.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not identify an attribute.
	* @see #setType
	*/
	@:overload public function setDeclared(index : Int, value : Bool) : Void;
	
	/**
	* Assign a value to the "specified" flag of a specific attribute.
	* This is the only way this flag can be cleared, except clearing
	* by initialization with the copy constructor.
	*
	* @param index The index of the attribute (zero-based).
	* @param value The desired flag value.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not identify an attribute.
	*/
	@:overload public function setSpecified(index : Int, value : Bool) : Void;
	
	
}
