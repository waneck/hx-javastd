package com.sun.rowset.internal;
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
extern class XmlReaderContentHandler extends org.xml.sax.helpers.DefaultHandler
{
	/**
	* Constructs a new <code>XmlReaderContentHandler</code> object that will
	* assist the SAX parser in reading a <code>WebRowSet</code> object in the
	* format of an XML document. In addition to setting some default values,
	* this constructor creates three <code>HashMap</code> objects, one for
	* properties, one for metadata, and one for data.  These hash maps map the
	* strings sent by the SAX parser to integer constants so that they can be
	* compared more efficiently in <code>switch</code> statements.
	*
	* @param r the <code>RowSet</code> object in XML format that will be read
	*/
	@:overload public function new(r : javax.sql.RowSet) : Void;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	/**
	* Sets this <code>XmlReaderContentHandler</code> object's <code>tag</code>
	* field if the given name is the key for a tag and this object's state
	* is not <code>INITIAL</code>.  The field is set
	* to the constant that corresponds to the given element name.
	* If the state is <code>INITIAL</code>, the state is set to the given
	* name, which will be one of the sections <code>PROPERTIES</code>,
	* <code>METADATA</code>, or <code>DATA</code>.  In either case, this
	* method puts this document handler in the proper state for calling
	* the method <code>endElement</code>.
	* <P>
	* If the state is <code>DATA</code> and the tag is <code>RowTag</code>,
	* <code>DelTag</code>, or <code>InsTag</code>, this method moves the
	* rowset's cursor to the insert row and sets this
	* <code>XmlReaderContentHandler</code> object's <code>idx</code>
	* field to <code>0</code> so that it will be in the proper
	* state when the parser calls the method <code>endElement</code>.
	*
	* @param lName the name of the element; either (1) one of the array
	*        elements in the fields <code>properties</code>,
	*        <code>colDef</code>, or <code>data</code> or
	*        (2) one of the <code>RowSet</code> elements
	*        <code>"properties"</code>, <code>"metadata"</code>, or
	*        <code>"data"</code>
	* @param attributes <code>org.xml.sax.AttributeList</code> objects that are
	*             attributes of the named section element; may be <code>null</code>
	*             if there are no attributes, which is the case for
	*             <code>WebRowSet</code> objects
	* @exception SAXException if a general SAX error occurs
	*/
	@:overload override public function startElement(uri : String, lName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Sets the value for the given element if <code>name</code> is one of
	* the array elements in the fields <code>properties</code>,
	* <code>colDef</code>, or <code>data</code> and this
	* <code>XmlReaderContentHandler</code> object's state is not
	* <code>INITIAL</code>. If the state is <code>INITIAL</code>,
	* this method does nothing.
	* <P>
	* If the state is <code>METADATA</code> and
	* the argument supplied is <code>"metadata"</code>, the rowset's
	* metadata is set. If the state is <code>PROPERTIES</code>, the
	* appropriate property is set using the given name to determine
	* the appropriate value. If the state is <code>DATA</code> and
	* the argument supplied is <code>"data"</code>, this method sets
	* the state to <code>INITIAL</code> and returns.  If the argument
	* supplied is one of the elements in the field <code>data</code>,
	* this method makes the appropriate changes to the rowset's data.
	*
	* @param lName the name of the element; either (1) one of the array
	*        elements in the fields <code>properties</code>,
	*        <code>colDef</code>, or <code>data</code> or
	*        (2) one of the <code>RowSet</code> elements
	*        <code>"properties"</code>, <code>"metadata"</code>, or
	*        <code>"data"</code>
	*
	* @exception SAXException if a general SAX error occurs
	*/
	@:overload override public function endElement(uri : String, lName : String, qName : String) : Void;
	
	/**
	* Sets a property, metadata, or data value with the characters in
	* the given array of characters, starting with the array element
	* indicated by <code>start</code> and continuing for <code>length</code>
	* number of characters.
	* <P>
	* The SAX parser invokes this method and supplies
	* the character array, start position, and length parameter values it
	* got from parsing the XML document.  An application programmer never
	* invokes this method directly.
	*
	* @param ch an array of characters supplied by the SAX parser, all or part of
	*         which will be used to set a value
	* @param start the position in the given array at which to start
	* @param length the number of consecutive characters to use
	*/
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Throws the given <code>SAXParseException</code> object. This
	* exception was originally thrown by the SAX parser and is passed
	* to the method <code>error</code> when the SAX parser invokes it.
	*
	* @param e the <code>SAXParseException</code> object to throw
	*/
	@:overload override public function error(e : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Prints a warning message to <code>System.out</code> giving the line
	* number and uri for what caused the warning plus a message explaining
	* the reason for the warning. This method is invoked by the SAX parser.
	*
	* @param err a warning generated by the SAX parser
	*/
	@:overload override public function warning(err : org.xml.sax.SAXParseException) : Void;
	
	/**
	*
	*/
	@:overload override public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	*
	*/
	@:overload override public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	
}
