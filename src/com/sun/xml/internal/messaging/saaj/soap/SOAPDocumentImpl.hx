package com.sun.xml.internal.messaging.saaj.soap;
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
/**
*
* @author SAAJ RI Development Team
*/
extern class SOAPDocumentImpl extends com.sun.org.apache.xerces.internal.dom.DocumentImpl implements com.sun.xml.internal.messaging.saaj.soap.SOAPDocument
{
	private static var log(default, null) : java.util.logging.Logger;
	
	@:overload public function new(enclosingDocument : com.sun.xml.internal.messaging.saaj.soap.SOAPPartImpl) : Void;
	
	@:overload public function getSOAPPart() : com.sun.xml.internal.messaging.saaj.soap.SOAPPartImpl;
	
	@:overload public function getDocument() : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl;
	
	@:overload public function getDoctype() : org.w3c.dom.DocumentType;
	
	@:overload public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	@:overload public function getDocumentElement() : org.w3c.dom.Element;
	
	@:overload private function doGetDocumentElement() : org.w3c.dom.Element;
	
	@:overload public function createElement(tagName : String) : org.w3c.dom.Element;
	
	@:overload public function createDocumentFragment() : org.w3c.dom.DocumentFragment;
	
	@:overload public function createTextNode(data : String) : org.w3c.dom.Text;
	
	@:overload public function createComment(data : String) : org.w3c.dom.Comment;
	
	@:overload public function createCDATASection(data : String) : org.w3c.dom.CDATASection;
	
	@:overload public function createProcessingInstruction(target : String, data : String) : org.w3c.dom.ProcessingInstruction;
	
	@:overload public function createAttribute(name : String) : org.w3c.dom.Attr;
	
	@:overload public function createEntityReference(name : String) : org.w3c.dom.EntityReference;
	
	@:overload public function getElementsByTagName(tagname : String) : org.w3c.dom.NodeList;
	
	@:overload public function importNode(importedNode : org.w3c.dom.Node, deep : Bool) : org.w3c.dom.Node;
	
	@:overload public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	@:overload public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	@:overload public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	@:overload public function getElementById(elementId : String) : org.w3c.dom.Element;
	
	@:overload public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	@:overload public function cloneNode(newdoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, deep : Bool) : Void;
	
	
}
