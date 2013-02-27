package javax.xml.stream.util;
/*
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
/*
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
extern class StreamReaderDelegate implements javax.xml.stream.XMLStreamReader
{
	/**
	* Construct an empty filter with no parent.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct an filter with the specified parent.
	* @param reader the parent
	*/
	@:overload public function new(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* Set the parent of this instance.
	* @param reader the new parent
	*/
	@:overload public function setParent(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* Get the parent of this instance.
	* @return the parent or null if none is set
	*/
	@:overload public function getParent() : javax.xml.stream.XMLStreamReader;
	
	@:overload public function next() : Int;
	
	@:overload public function nextTag() : Int;
	
	@:overload public function getElementText() : String;
	
	@:overload public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function close() : Void;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload public function isStartElement() : Bool;
	
	@:overload public function isEndElement() : Bool;
	
	@:overload public function isCharacters() : Bool;
	
	@:overload public function isWhiteSpace() : Bool;
	
	@:overload public function getAttributeValue(namespaceUri : String, localName : String) : String;
	
	@:overload public function getAttributeCount() : Int;
	
	@:overload public function getAttributeName(index : Int) : javax.xml.namespace.QName;
	
	@:overload public function getAttributePrefix(index : Int) : String;
	
	@:overload public function getAttributeNamespace(index : Int) : String;
	
	@:overload public function getAttributeLocalName(index : Int) : String;
	
	@:overload public function getAttributeType(index : Int) : String;
	
	@:overload public function getAttributeValue(index : Int) : String;
	
	@:overload public function isAttributeSpecified(index : Int) : Bool;
	
	@:overload public function getNamespaceCount() : Int;
	
	@:overload public function getNamespacePrefix(index : Int) : String;
	
	@:overload public function getNamespaceURI(index : Int) : String;
	
	@:overload public function getEventType() : Int;
	
	@:overload public function getText() : String;
	
	@:overload public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	@:overload public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function getTextStart() : Int;
	
	@:overload public function getTextLength() : Int;
	
	@:overload public function getEncoding() : String;
	
	@:overload public function hasText() : Bool;
	
	@:overload public function getLocation() : javax.xml.stream.Location;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function getLocalName() : String;
	
	@:overload public function hasName() : Bool;
	
	@:overload public function getNamespaceURI() : String;
	
	@:overload public function getPrefix() : String;
	
	@:overload public function getVersion() : String;
	
	@:overload public function isStandalone() : Bool;
	
	@:overload public function standaloneSet() : Bool;
	
	@:overload public function getCharacterEncodingScheme() : String;
	
	@:overload public function getPITarget() : String;
	
	@:overload public function getPIData() : String;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	
}
