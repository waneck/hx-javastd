package com.sun.xml.internal.stream.events;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLEventFactoryImpl extends javax.xml.stream.XMLEventFactory
{
	/** Creates a new instance of XMLEventFactory */
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function createAttribute(localName : String, value : String) : javax.xml.stream.events.Attribute;
	
	@:overload @:public override public function createAttribute(name : javax.xml.namespace.QName, value : String) : javax.xml.stream.events.Attribute;
	
	@:overload @:public override public function createAttribute(prefix : String, namespaceURI : String, localName : String, value : String) : javax.xml.stream.events.Attribute;
	
	@:overload @:public override public function createCData(content : String) : javax.xml.stream.events.Characters;
	
	@:overload @:public override public function createCharacters(content : String) : javax.xml.stream.events.Characters;
	
	@:overload @:public override public function createComment(text : String) : javax.xml.stream.events.Comment;
	
	@:overload @:public override public function createDTD(dtd : String) : javax.xml.stream.events.DTD;
	
	@:overload @:public override public function createEndDocument() : javax.xml.stream.events.EndDocument;
	
	@:overload @:public override public function createEndElement(name : javax.xml.namespace.QName, namespaces : java.util.Iterator<Dynamic>) : javax.xml.stream.events.EndElement;
	
	@:overload @:public override public function createEndElement(prefix : String, namespaceUri : String, localName : String) : javax.xml.stream.events.EndElement;
	
	@:overload @:public override public function createEndElement(prefix : String, namespaceUri : String, localName : String, namespaces : java.util.Iterator<Dynamic>) : javax.xml.stream.events.EndElement;
	
	@:overload @:public override public function createEntityReference(name : String, entityDeclaration : javax.xml.stream.events.EntityDeclaration) : javax.xml.stream.events.EntityReference;
	
	@:overload @:public override public function createIgnorableSpace(content : String) : javax.xml.stream.events.Characters;
	
	@:overload @:public override public function createNamespace(namespaceURI : String) : javax.xml.stream.events.Namespace;
	
	@:overload @:public override public function createNamespace(prefix : String, namespaceURI : String) : javax.xml.stream.events.Namespace;
	
	@:overload @:public override public function createProcessingInstruction(target : String, data : String) : javax.xml.stream.events.ProcessingInstruction;
	
	@:overload @:public override public function createSpace(content : String) : javax.xml.stream.events.Characters;
	
	@:overload @:public override public function createStartDocument() : javax.xml.stream.events.StartDocument;
	
	@:overload @:public override public function createStartDocument(encoding : String) : javax.xml.stream.events.StartDocument;
	
	@:overload @:public override public function createStartDocument(encoding : String, version : String) : javax.xml.stream.events.StartDocument;
	
	@:overload @:public override public function createStartDocument(encoding : String, version : String, standalone : Bool) : javax.xml.stream.events.StartDocument;
	
	@:overload @:public override public function createStartElement(name : javax.xml.namespace.QName, attributes : java.util.Iterator<Dynamic>, namespaces : java.util.Iterator<Dynamic>) : javax.xml.stream.events.StartElement;
	
	@:overload @:public override public function createStartElement(prefix : String, namespaceUri : String, localName : String) : javax.xml.stream.events.StartElement;
	
	@:overload @:public override public function createStartElement(prefix : String, namespaceUri : String, localName : String, attributes : java.util.Iterator<Dynamic>, namespaces : java.util.Iterator<Dynamic>) : javax.xml.stream.events.StartElement;
	
	@:overload @:public override public function createStartElement(prefix : String, namespaceUri : String, localName : String, attributes : java.util.Iterator<Dynamic>, namespaces : java.util.Iterator<Dynamic>, context : javax.xml.namespace.NamespaceContext) : javax.xml.stream.events.StartElement;
	
	@:overload @:public override public function setLocation(location : javax.xml.stream.Location) : Void;
	
	
}
