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
//// SAX default implementation for AttributeList.
//// http://www.saxproject.org
//// No warranty; no copyright -- use this as you will.
//// $Id: AttributeListImpl.java,v 1.2 2004/11/03 22:53:08 jsuttor Exp $
extern class AttributeListImpl implements org.xml.sax.AttributeList
{
	/**
	* Create an empty attribute list.
	*
	* <p>This constructor is most useful for parser writers, who
	* will use it to create a single, reusable attribute list that
	* can be reset with the clear method between elements.</p>
	*
	* @see #addAttribute
	* @see #clear
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a persistent copy of an existing attribute list.
	*
	* <p>This constructor is most useful for application writers,
	* who will use it to create a persistent copy of an existing
	* attribute list.</p>
	*
	* @param atts The attribute list to copy
	* @see org.xml.sax.DocumentHandler#startElement
	*/
	@:overload public function new(atts : org.xml.sax.AttributeList) : Void;
	
	/**
	* Set the attribute list, discarding previous contents.
	*
	* <p>This method allows an application writer to reuse an
	* attribute list easily.</p>
	*
	* @param atts The attribute list to copy.
	*/
	@:overload public function setAttributeList(atts : org.xml.sax.AttributeList) : Void;
	
	/**
	* Add an attribute to an attribute list.
	*
	* <p>This method is provided for SAX parser writers, to allow them
	* to build up an attribute list incrementally before delivering
	* it to the application.</p>
	*
	* @param name The attribute name.
	* @param type The attribute type ("NMTOKEN" for an enumeration).
	* @param value The attribute value (must not be null).
	* @see #removeAttribute
	* @see org.xml.sax.DocumentHandler#startElement
	*/
	@:overload public function addAttribute(name : String, type : String, value : String) : Void;
	
	/**
	* Remove an attribute from the list.
	*
	* <p>SAX application writers can use this method to filter an
	* attribute out of an AttributeList.  Note that invoking this
	* method will change the length of the attribute list and
	* some of the attribute's indices.</p>
	*
	* <p>If the requested attribute is not in the list, this is
	* a no-op.</p>
	*
	* @param name The attribute name.
	* @see #addAttribute
	*/
	@:overload public function removeAttribute(name : String) : Void;
	
	/**
	* Clear the attribute list.
	*
	* <p>SAX parser writers can use this method to reset the attribute
	* list between DocumentHandler.startElement events.  Normally,
	* it will make sense to reuse the same AttributeListImpl object
	* rather than allocating a new one each time.</p>
	*
	* @see org.xml.sax.DocumentHandler#startElement
	*/
	@:overload public function clear() : Void;
	
	/**
	* Return the number of attributes in the list.
	*
	* @return The number of attributes in the list.
	* @see org.xml.sax.AttributeList#getLength
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Get the name of an attribute (by position).
	*
	* @param i The position of the attribute in the list.
	* @return The attribute name as a string, or null if there
	*         is no attribute at that position.
	* @see org.xml.sax.AttributeList#getName(int)
	*/
	@:overload public function getName(i : Int) : String;
	
	/**
	* Get the type of an attribute (by position).
	*
	* @param i The position of the attribute in the list.
	* @return The attribute type as a string ("NMTOKEN" for an
	*         enumeration, and "CDATA" if no declaration was
	*         read), or null if there is no attribute at
	*         that position.
	* @see org.xml.sax.AttributeList#getType(int)
	*/
	@:overload public function getType(i : Int) : String;
	
	/**
	* Get the value of an attribute (by position).
	*
	* @param i The position of the attribute in the list.
	* @return The attribute value as a string, or null if
	*         there is no attribute at that position.
	* @see org.xml.sax.AttributeList#getValue(int)
	*/
	@:overload public function getValue(i : Int) : String;
	
	/**
	* Get the type of an attribute (by name).
	*
	* @param name The attribute name.
	* @return The attribute type as a string ("NMTOKEN" for an
	*         enumeration, and "CDATA" if no declaration was
	*         read).
	* @see org.xml.sax.AttributeList#getType(java.lang.String)
	*/
	@:overload public function getType(name : String) : String;
	
	/**
	* Get the value of an attribute (by name).
	*
	* @param name The attribute name.
	* @see org.xml.sax.AttributeList#getValue(java.lang.String)
	*/
	@:overload public function getValue(name : String) : String;
	
	
}
