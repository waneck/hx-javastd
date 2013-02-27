package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLStreamFilterImpl implements javax.xml.stream.XMLStreamReader
{
	/** Creates a new instance of XMLStreamFilterImpl */
	@:overload public function new(reader : javax.xml.stream.XMLStreamReader, filter : javax.xml.stream.StreamFilter) : Void;
	
	/**
	*
	* @param sf
	*/
	@:overload private function setStreamFilter(sf : javax.xml.stream.StreamFilter) : Void;
	
	/**
	*
	* @return
	* @throws XMLStreamException
	*/
	@:overload public function next() : Int;
	
	/**
	*
	* @throws XMLStreamException
	* @return
	*/
	@:overload public function nextTag() : Int;
	
	/**
	*
	* @throws XMLStreamException
	* @return
	*/
	@:overload public function hasNext() : Bool;
	
	/**
	*
	* @throws XMLStreamException
	*/
	@:overload public function close() : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getAttributeCount() : Int;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getAttributeName(index : Int) : javax.xml.namespace.QName;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getAttributeNamespace(index : Int) : String;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getAttributePrefix(index : Int) : String;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getAttributeType(index : Int) : String;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getAttributeValue(index : Int) : String;
	
	/**
	*
	* @param namespaceURI
	* @param localName
	* @return
	*/
	@:overload public function getAttributeValue(namespaceURI : String, localName : String) : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getCharacterEncodingScheme() : String;
	
	/**
	*
	* @throws XMLStreamException
	* @return
	*/
	@:overload public function getElementText() : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getEncoding() : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getEventType() : Int;
	
	/**
	*
	* @return
	*/
	@:overload public function getLocalName() : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getLocation() : javax.xml.stream.Location;
	
	/**
	*
	* @return
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	*
	* @return
	*/
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	*
	* @return
	*/
	@:overload public function getNamespaceCount() : Int;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getNamespacePrefix(index : Int) : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getNamespaceURI() : String;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getNamespaceURI(index : Int) : String;
	
	/**
	*
	* @param prefix
	* @return
	*/
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getPIData() : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getPITarget() : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getPrefix() : String;
	
	/**
	*
	* @param name
	* @throws IllegalArgumentException
	* @return
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	*
	* @return
	*/
	@:overload public function getText() : String;
	
	/**
	*
	* @return
	*/
	@:overload public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	*
	* @param sourceStart
	* @param target
	* @param targetStart
	* @param length
	* @throws XMLStreamException
	* @return
	*/
	@:overload public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	/**
	*
	* @return
	*/
	@:overload public function getTextLength() : Int;
	
	/**
	*
	* @return
	*/
	@:overload public function getTextStart() : Int;
	
	/**
	*
	* @return
	*/
	@:overload public function getVersion() : String;
	
	/**
	*
	* @return
	*/
	@:overload public function hasName() : Bool;
	
	/**
	*
	* @return
	*/
	@:overload public function hasText() : Bool;
	
	/**
	*
	* @return
	* @param index
	*/
	@:overload public function isAttributeSpecified(index : Int) : Bool;
	
	/**
	*
	* @return
	*/
	@:overload public function isCharacters() : Bool;
	
	/**
	*
	* @return
	*/
	@:overload public function isEndElement() : Bool;
	
	/**
	*
	* @return
	*/
	@:overload public function isStandalone() : Bool;
	
	/**
	*
	* @return
	*/
	@:overload public function isStartElement() : Bool;
	
	/**
	*
	* @return
	*/
	@:overload public function isWhiteSpace() : Bool;
	
	/**
	*
	* @param type
	* @param namespaceURI
	* @param localName
	* @throws XMLStreamException
	*/
	@:overload public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function standaloneSet() : Bool;
	
	/**
	*
	* @param index
	* @return
	*/
	@:overload public function getAttributeLocalName(index : Int) : String;
	
	
}
