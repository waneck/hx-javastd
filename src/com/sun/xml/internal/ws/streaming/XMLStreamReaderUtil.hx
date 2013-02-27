package com.sun.xml.internal.ws.streaming;
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
extern class XMLStreamReaderUtil
{
	@:overload public static function close(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public static function readRest(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public static function next(reader : javax.xml.stream.XMLStreamReader) : Int;
	
	@:overload public static function nextElementContent(reader : javax.xml.stream.XMLStreamReader) : Int;
	
	@:overload public static function nextContent(reader : javax.xml.stream.XMLStreamReader) : Int;
	
	/**
	* Skip current element, leaving the cursor at END_ELEMENT of
	* current element.
	*/
	@:overload public static function skipElement(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* Skip following siblings, leaving cursor at END_ELEMENT of
	* parent element.
	*/
	@:overload public static function skipSiblings(reader : javax.xml.stream.XMLStreamReader, parent : javax.xml.namespace.QName) : Void;
	
	/*
	* Get the text of an element
	*/
	@:overload public static function getElementText(reader : javax.xml.stream.XMLStreamReader) : String;
	
	/*
	* Get a QName with 'someUri' and 'localname' from an
	* element of qname type:
	* <xyz xmlns:ns1="someUri">ns1:localname</xyz>
	*/
	@:overload public static function getElementQName(reader : javax.xml.stream.XMLStreamReader) : javax.xml.namespace.QName;
	
	/**
	* Read all attributes into an data structure. Note that this method cannot
	* be called multiple times to get the same list of attributes.
	*/
	@:overload public static function getAttributes(reader : javax.xml.stream.XMLStreamReader) : com.sun.xml.internal.ws.streaming.Attributes;
	
	@:overload public static function verifyReaderState(reader : javax.xml.stream.XMLStreamReader, expectedState : Int) : Void;
	
	@:overload public static function verifyTag(reader : javax.xml.stream.XMLStreamReader, namespaceURI : String, localName : String) : Void;
	
	@:overload public static function verifyTag(reader : javax.xml.stream.XMLStreamReader, name : javax.xml.namespace.QName) : Void;
	
	@:overload public static function getStateName(reader : javax.xml.stream.XMLStreamReader) : String;
	
	@:overload public static function getStateName(state : Int) : String;
	
	
}
/**
* AttributesImpl class copied from old StAXReader. This class is used to implement
* getAttributes() on a StAX Reader.
*/
@:native('com$sun$xml$internal$ws$streaming$XMLStreamReaderUtil$AttributesImpl') extern class XMLStreamReaderUtil_AttributesImpl implements com.sun.xml.internal.ws.streaming.Attributes
{
	/*
	* Will create a list that contains the namespace declarations
	* as well as the other attributes.
	*/
	@:overload public function new(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function getLength() : Int;
	
	@:overload public function getLocalName(index : Int) : String;
	
	@:overload public function getName(index : Int) : javax.xml.namespace.QName;
	
	@:overload public function getPrefix(index : Int) : String;
	
	@:overload public function getURI(index : Int) : String;
	
	@:overload public function getValue(index : Int) : String;
	
	@:overload public function getValue(name : javax.xml.namespace.QName) : String;
	
	@:overload public function getValue(localName : String) : String;
	
	@:overload public function getValue(uri : String, localName : String) : String;
	
	@:overload public function isNamespaceDeclaration(index : Int) : Bool;
	
	@:overload public function getIndex(name : javax.xml.namespace.QName) : Int;
	
	@:overload public function getIndex(localName : String) : Int;
	
	@:overload public function getIndex(uri : String, localName : String) : Int;
	
	
}
@:native('com$sun$xml$internal$ws$streaming$XMLStreamReaderUtil$AttributesImpl$AttributeInfo') @:internal extern class XMLStreamReaderUtil_AttributesImpl_AttributeInfo
{
	@:overload public function new(name : javax.xml.namespace.QName, value : String) : Void;
	
	
}
