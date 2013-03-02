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
extern class SOAPPartImpl extends javax.xml.soap.SOAPPart implements com.sun.xml.internal.messaging.saaj.soap.SOAPDocument
{
	/**
	* SOAPPartImpl is the first attachment. This contains the XML/SOAP document.
	*
	* @author Anil Vijendran (anil@sun.com)
	*/
	private static var log(default, null) : java.util.logging.Logger;
	
	private var headers : javax.xml.soap.MimeHeaders;
	
	private var envelope : com.sun.xml.internal.messaging.saaj.soap.Envelope;
	
	private var source : javax.xml.transform.Source;
	
	private var document : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl;
	
	private var omitXmlDecl : Bool;
	
	private var sourceCharsetEncoding : String;
	
	/**
	* Reference to containing message (may be null)
	*/
	private var message : com.sun.xml.internal.messaging.saaj.soap.MessageImpl;
	
	@:overload private function new() : Void;
	
	@:overload private function new(message : com.sun.xml.internal.messaging.saaj.soap.MessageImpl) : Void;
	
	@:overload @:abstract private function getContentType() : String;
	
	@:overload @:abstract private function createEnvelopeFromSource() : com.sun.xml.internal.messaging.saaj.soap.Envelope;
	
	@:overload @:abstract private function createEmptyEnvelope(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.Envelope;
	
	@:overload @:abstract private function duplicateType() : com.sun.xml.internal.messaging.saaj.soap.SOAPPartImpl;
	
	@:overload private function getContentTypeString() : String;
	
	@:overload public function isFastInfoset() : Bool;
	
	@:overload public function getEnvelope() : javax.xml.soap.SOAPEnvelope;
	
	@:overload private function lookForEnvelope() : Void;
	
	@:overload public function removeAllMimeHeaders() : Void;
	
	@:overload public function removeMimeHeader(header : String) : Void;
	
	@:overload public function getMimeHeader(name : String) : java.NativeArray<String>;
	
	@:overload public function setMimeHeader(name : String, value : String) : Void;
	
	@:overload public function addMimeHeader(name : String, value : String) : Void;
	
	@:overload public function getAllMimeHeaders() : java.util.Iterator<Dynamic>;
	
	@:overload public function getMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	@:overload public function getNonMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	@:overload public function getContent() : javax.xml.transform.Source;
	
	@:overload public function setContent(source : javax.xml.transform.Source) : Void;
	
	@:overload public function getContentAsStream() : java.io.InputStream;
	
	@:overload public function getDocument() : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl;
	
	@:overload public function getSOAPPart() : com.sun.xml.internal.messaging.saaj.soap.SOAPPartImpl;
	
	@:overload public function getDoctype() : org.w3c.dom.DocumentType;
	
	@:overload public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	@:overload public function getDocumentElement() : org.w3c.dom.Element;
	
	@:overload private function doGetDocumentElement() : Void;
	
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
	
	@:overload override public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	@:overload private function doCloneNode() : com.sun.xml.internal.messaging.saaj.soap.SOAPPartImpl;
	
	@:overload override public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	@:overload override public function getChildNodes() : org.w3c.dom.NodeList;
	
	@:overload override public function getFirstChild() : org.w3c.dom.Node;
	
	@:overload override public function getLastChild() : org.w3c.dom.Node;
	
	@:overload override public function getLocalName() : String;
	
	@:overload override public function getNamespaceURI() : String;
	
	@:overload override public function getNextSibling() : org.w3c.dom.Node;
	
	@:overload override public function getNodeName() : String;
	
	@:overload override public function getNodeType() : java.StdTypes.Int16;
	
	@:overload override public function getNodeValue() : String;
	
	@:overload override public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload override public function getParentNode() : org.w3c.dom.Node;
	
	@:overload override public function getPrefix() : String;
	
	@:overload override public function getPreviousSibling() : org.w3c.dom.Node;
	
	@:overload override public function hasAttributes() : Bool;
	
	@:overload override public function hasChildNodes() : Bool;
	
	@:overload override public function insertBefore(arg0 : org.w3c.dom.Node, arg1 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function isSupported(arg0 : String, arg1 : String) : Bool;
	
	@:overload override public function normalize() : Void;
	
	@:overload override public function removeChild(arg0 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function replaceChild(arg0 : org.w3c.dom.Node, arg1 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function setNodeValue(arg0 : String) : Void;
	
	@:overload override public function setPrefix(arg0 : String) : Void;
	
	@:overload private function lookForXmlDecl() : com.sun.xml.internal.messaging.saaj.util.XMLDeclarationParser;
	
	@:overload public function setSourceCharsetEncoding(charset : String) : Void;
	
	@:overload public function renameNode(n : org.w3c.dom.Node, namespaceURI : String, qualifiedName : String) : org.w3c.dom.Node;
	
	@:overload public function normalizeDocument() : Void;
	
	@:overload public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	@:overload public function adoptNode(source : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function setDocumentURI(documentURI : String) : Void;
	
	@:overload public function getDocumentURI() : String;
	
	@:overload public function setStrictErrorChecking(strictErrorChecking : Bool) : Void;
	
	@:overload public function getInputEncoding() : String;
	
	@:overload public function getXmlEncoding() : String;
	
	@:overload public function getXmlStandalone() : Bool;
	
	@:overload public function setXmlStandalone(xmlStandalone : Bool) : Void;
	
	@:overload public function getXmlVersion() : String;
	
	@:overload public function setXmlVersion(xmlVersion : String) : Void;
	
	@:overload public function getStrictErrorChecking() : Bool;
	
	@:overload override public function getBaseURI() : String;
	
	@:overload override public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	@:overload override public function getTextContent() : String;
	
	@:overload override public function setTextContent(textContent : String) : Void;
	
	@:overload override public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
	@:overload override public function lookupPrefix(namespaceURI : String) : String;
	
	@:overload override public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	@:overload override public function lookupNamespaceURI(prefix : String) : String;
	
	@:overload override public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	@:overload override public function getFeature(feature : String, version : String) : Dynamic;
	
	@:overload override public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	@:overload override public function getUserData(key : String) : Dynamic;
	
	@:overload public function recycleNode() : Void;
	
	@:overload public function getValue() : String;
	
	@:overload public function setValue(value : String) : Void;
	
	@:overload public function setParentElement(parent : javax.xml.soap.SOAPElement) : Void;
	
	@:overload public function getParentElement() : javax.xml.soap.SOAPElement;
	
	@:overload public function detachNode() : Void;
	
	@:overload public function getSourceCharsetEncoding() : String;
	
	
}
