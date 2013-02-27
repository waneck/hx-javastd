package javax.xml.bind.helpers;
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
extern class ValidationEventLocatorImpl implements javax.xml.bind.ValidationEventLocator
{
	/**
	* Creates an object with all fields unavailable.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an object from an org.xml.sax.Locator.
	*
	* The object's ColumnNumber, LineNumber, and URL become available from the
	* values returned by the locator's getColumnNumber(), getLineNumber(), and
	* getSystemId() methods respectively. Node, Object, and Offset are not
	* available.
	*
	* @param loc the SAX Locator object that will be used to populate this
	* event locator.
	* @throws IllegalArgumentException if the Locator is null
	*/
	@:overload public function new(loc : org.xml.sax.Locator) : Void;
	
	/**
	* Constructs an object from the location information of a SAXParseException.
	*
	* The object's ColumnNumber, LineNumber, and URL become available from the
	* values returned by the locator's getColumnNumber(), getLineNumber(), and
	* getSystemId() methods respectively. Node, Object, and Offset are not
	* available.
	*
	* @param e the SAXParseException object that will be used to populate this
	* event locator.
	* @throws IllegalArgumentException if the SAXParseException is null
	*/
	@:overload public function new(e : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Constructs an object that points to a DOM Node.
	*
	* The object's Node becomes available.  ColumnNumber, LineNumber, Object,
	* Offset, and URL are not available.
	*
	* @param _node the DOM Node object that will be used to populate this
	* event locator.
	* @throws IllegalArgumentException if the Node is null
	*/
	@:overload public function new(_node : org.w3c.dom.Node) : Void;
	
	/**
	* Constructs an object that points to a JAXB content object.
	*
	* The object's Object becomes available. ColumnNumber, LineNumber, Node,
	* Offset, and URL are not available.
	*
	* @param _object the Object that will be used to populate this
	* event locator.
	* @throws IllegalArgumentException if the Object is null
	*/
	@:overload public function new(_object : Dynamic) : Void;
	
	/**
	* @see javax.xml.bind.ValidationEventLocator#getURL()
	*/
	@:overload public function getURL() : java.net.URL;
	
	/**
	* Set the URL field on this event locator.  Null values are allowed.
	*
	* @param _url the url
	*/
	@:overload public function setURL(_url : java.net.URL) : Void;
	
	/**
	* @see javax.xml.bind.ValidationEventLocator#getOffset()
	*/
	@:overload public function getOffset() : Int;
	
	/**
	* Set the offset field on this event locator.
	*
	* @param _offset the offset
	*/
	@:overload public function setOffset(_offset : Int) : Void;
	
	/**
	* @see javax.xml.bind.ValidationEventLocator#getLineNumber()
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* Set the lineNumber field on this event locator.
	*
	* @param _lineNumber the line number
	*/
	@:overload public function setLineNumber(_lineNumber : Int) : Void;
	
	/**
	* @see javax.xml.bind.ValidationEventLocator#getColumnNumber()
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* Set the columnNumber field on this event locator.
	*
	* @param _columnNumber the column number
	*/
	@:overload public function setColumnNumber(_columnNumber : Int) : Void;
	
	/**
	* @see javax.xml.bind.ValidationEventLocator#getObject()
	*/
	@:overload public function getObject() : Dynamic;
	
	/**
	* Set the Object field on this event locator.  Null values are allowed.
	*
	* @param _object the java content object
	*/
	@:overload public function setObject(_object : Dynamic) : Void;
	
	/**
	* @see javax.xml.bind.ValidationEventLocator#getNode()
	*/
	@:overload public function getNode() : org.w3c.dom.Node;
	
	/**
	* Set the Node field on this event locator.  Null values are allowed.
	*
	* @param _node the Node
	*/
	@:overload public function setNode(_node : org.w3c.dom.Node) : Void;
	
	/**
	* Returns a string representation of this object in a format
	* helpful to debugging.
	*
	* @see Object#equals(Object)
	*/
	@:overload public function toString() : String;
	
	
}
