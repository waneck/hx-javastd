package com.sun.xml.internal.ws.util.xml;
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
extern class XMLStreamReaderFilter implements com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.XMLStreamReaderFactory_RecycleAware implements javax.xml.stream.XMLStreamReader
{
	/**
	* The underlying {@link XMLStreamReader} that does the parsing of the root part.
	*/
	private var reader : javax.xml.stream.XMLStreamReader;
	
	@:overload public function new(core : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function onRecycled() : Void;
	
	@:overload public function getAttributeCount() : Int;
	
	@:overload public function getEventType() : Int;
	
	@:overload public function getNamespaceCount() : Int;
	
	@:overload public function getTextLength() : Int;
	
	@:overload public function getTextStart() : Int;
	
	@:overload public function next() : Int;
	
	@:overload public function nextTag() : Int;
	
	@:overload public function close() : Void;
	
	@:overload public function hasName() : Bool;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function hasText() : Bool;
	
	@:overload public function isCharacters() : Bool;
	
	@:overload public function isEndElement() : Bool;
	
	@:overload public function isStandalone() : Bool;
	
	@:overload public function isStartElement() : Bool;
	
	@:overload public function isWhiteSpace() : Bool;
	
	@:overload public function standaloneSet() : Bool;
	
	@:overload public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function isAttributeSpecified(index : Int) : Bool;
	
	@:overload public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	@:overload public function getCharacterEncodingScheme() : String;
	
	@:overload public function getElementText() : String;
	
	@:overload public function getEncoding() : String;
	
	@:overload public function getLocalName() : String;
	
	@:overload public function getNamespaceURI() : String;
	
	@:overload public function getPIData() : String;
	
	@:overload public function getPITarget() : String;
	
	@:overload public function getPrefix() : String;
	
	@:overload public function getText() : String;
	
	@:overload public function getVersion() : String;
	
	@:overload public function getAttributeLocalName(index : Int) : String;
	
	@:overload public function getAttributeNamespace(index : Int) : String;
	
	@:overload public function getAttributePrefix(index : Int) : String;
	
	@:overload public function getAttributeType(index : Int) : String;
	
	@:overload public function getAttributeValue(index : Int) : String;
	
	@:overload public function getNamespacePrefix(index : Int) : String;
	
	@:overload public function getNamespaceURI(index : Int) : String;
	
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function getAttributeName(index : Int) : javax.xml.namespace.QName;
	
	@:overload public function getLocation() : javax.xml.stream.Location;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getAttributeValue(namespaceURI : String, localName : String) : String;
	
	
}
