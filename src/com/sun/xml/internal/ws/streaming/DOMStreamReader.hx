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
extern class DOMStreamReader implements javax.xml.stream.XMLStreamReader implements javax.xml.namespace.NamespaceContext
{
	@:overload public function new() : Void;
	
	@:overload public function new(node : org.w3c.dom.Node) : Void;
	
	@:overload public function setCurrentNode(node : org.w3c.dom.Node) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getAttributeCount() : Int;
	
	/**
	* Return an attribute's local name. Handle the case of DOM level 1 nodes.
	*/
	@:overload public function getAttributeLocalName(index : Int) : String;
	
	/**
	* Return an attribute's qname. Handle the case of DOM level 1 nodes.
	*/
	@:overload public function getAttributeName(index : Int) : javax.xml.namespace.QName;
	
	@:overload public function getAttributeNamespace(index : Int) : String;
	
	@:overload public function getAttributePrefix(index : Int) : String;
	
	@:overload public function getAttributeType(index : Int) : String;
	
	@:overload public function getAttributeValue(index : Int) : String;
	
	@:overload public function getAttributeValue(namespaceURI : String, localName : String) : String;
	
	@:overload public function getCharacterEncodingScheme() : String;
	
	@:overload public function getElementText() : String;
	
	@:overload public function getEncoding() : String;
	
	@:overload public function getEventType() : Int;
	
	/**
	* Return an element's local name. Handle the case of DOM level 1 nodes.
	*/
	@:overload public function getLocalName() : String;
	
	@:overload public function getLocation() : javax.xml.stream.Location;
	
	/**
	* Return an element's qname. Handle the case of DOM level 1 nodes.
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload public function getNamespaceCount() : Int;
	
	@:overload public function getNamespacePrefix(index : Int) : String;
	
	@:overload public function getNamespaceURI(index : Int) : String;
	
	@:overload public function getNamespaceURI() : String;
	
	/**
	* This method is not particularly fast, but shouldn't be called very
	* often. If we start to use it more, we should keep track of the
	* NS declarations using a NamespaceContext implementation instead.
	*/
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getPrefix(nsUri : String) : String;
	
	@:overload public function getPrefixes(nsUri : String) : java.util.Iterator<Dynamic>;
	
	@:overload public function getPIData() : String;
	
	@:overload public function getPITarget() : String;
	
	@:overload public function getPrefix() : String;
	
	@:overload public function getProperty(str : String) : Dynamic;
	
	@:overload public function getText() : String;
	
	@:overload public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, targetLength : Int) : Int;
	
	@:overload public function getTextLength() : Int;
	
	@:overload public function getTextStart() : Int;
	
	@:overload public function getVersion() : String;
	
	@:overload public function hasName() : Bool;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function hasText() : Bool;
	
	@:overload public function isAttributeSpecified(param : Int) : Bool;
	
	@:overload public function isCharacters() : Bool;
	
	@:overload public function isEndElement() : Bool;
	
	@:overload public function isStandalone() : Bool;
	
	@:overload public function isStartElement() : Bool;
	
	@:overload public function isWhiteSpace() : Bool;
	
	@:overload public function next() : Int;
	
	@:overload public function nextTag() : Int;
	
	@:overload public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	@:overload public function standaloneSet() : Bool;
	
	
}
/**
* Namespace declarations on one element.
*
* Instances are reused.
*/
@:native('com$sun$xml$internal$ws$streaming$DOMStreamReader$Scope') @:internal extern class DOMStreamReader_Scope
{
	
}
