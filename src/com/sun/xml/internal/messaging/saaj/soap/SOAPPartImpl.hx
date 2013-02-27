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
	
	@:overload @:abstract private function duplicateType() : SOAPPartImpl;
	
	@:overload private function getContentTypeString() : String;
	
	@:overload public function isFastInfoset() : Bool;
	
	@:overload override public function getEnvelope() : javax.xml.soap.SOAPEnvelope;
	
	@:overload private function lookForEnvelope() : Void;
	
	@:overload override public function removeAllMimeHeaders() : Void;
	
	@:overload override public function removeMimeHeader(header : String) : Void;
	
	@:overload override public function getMimeHeader(name : String) : java.NativeArray<String>;
	
	@:overload override public function setMimeHeader(name : String, value : String) : Void;
	
	@:overload override public function addMimeHeader(name : String, value : String) : Void;
	
	@:overload override public function getAllMimeHeaders() : java.util.Iterator<Dynamic>;
	
	@:overload override public function getMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	@:overload override public function getNonMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	@:overload override public function getContent() : javax.xml.transform.Source;
	
	@:overload override public function setContent(source : javax.xml.transform.Source) : Void;
	
	@:overload public function getContentAsStream() : java.io.InputStream;
	
	@:overload public function getDocument() : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl;
	
	@:overload public function getSOAPPart() : SOAPPartImpl;
	
	@:overload override public function getDoctype() : org.w3c.dom.DocumentType;
	
	@:overload override public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	@:overload override public function getDocumentElement() : org.w3c.dom.Element;
	
	@:overload private function doGetDocumentElement() : Void;
	
	@:overload override public function createElement(tagName : String) : org.w3c.dom.Element;
	
	@:overload override public function createDocumentFragment() : org.w3c.dom.DocumentFragment;
	
	@:overload override public function createTextNode(data : String) : org.w3c.dom.Text;
	
	@:overload override public function createComment(data : String) : org.w3c.dom.Comment;
	
	@:overload override public function createCDATASection(data : String) : org.w3c.dom.CDATASection;
	
	@:overload override public function createProcessingInstruction(target : String, data : String) : org.w3c.dom.ProcessingInstruction;
	
	@:overload override public function createAttribute(name : String) : org.w3c.dom.Attr;
	
	@:overload override public function createEntityReference(name : String) : org.w3c.dom.EntityReference;
	
	@:overload override public function getElementsByTagName(tagname : String) : org.w3c.dom.NodeList;
	
	@:overload override public function importNode(importedNode : org.w3c.dom.Node, deep : Bool) : org.w3c.dom.Node;
	
	@:overload override public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	@:overload override public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	@:overload override public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	@:overload override public function getElementById(elementId : String) : org.w3c.dom.Element;
	
	@:overload public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	@:overload private function doCloneNode() : SOAPPartImpl;
	
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
	
	@:overload public function insertBefore(arg0 : org.w3c.dom.Node, arg1 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function isSupported(arg0 : String, arg1 : String) : Bool;
	
	@:overload override public function normalize() : Void;
	
	@:overload public function removeChild(arg0 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function replaceChild(arg0 : org.w3c.dom.Node, arg1 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function setNodeValue(arg0 : String) : Void;
	
	@:overload override public function setPrefix(arg0 : String) : Void;
	
	@:overload private function lookForXmlDecl() : com.sun.xml.internal.messaging.saaj.util.XMLDeclarationParser;
	
	@:overload public function setSourceCharsetEncoding(charset : String) : Void;
	
	@:overload override public function renameNode(n : org.w3c.dom.Node, namespaceURI : String, qualifiedName : String) : org.w3c.dom.Node;
	
	@:overload override public function normalizeDocument() : Void;
	
	@:overload override public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	@:overload override public function adoptNode(source : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload override public function setDocumentURI(documentURI : String) : Void;
	
	@:overload override public function getDocumentURI() : String;
	
	@:overload override public function setStrictErrorChecking(strictErrorChecking : Bool) : Void;
	
	@:overload override public function getInputEncoding() : String;
	
	@:overload override public function getXmlEncoding() : String;
	
	@:overload override public function getXmlStandalone() : Bool;
	
	@:overload override public function setXmlStandalone(xmlStandalone : Bool) : Void;
	
	@:overload override public function getXmlVersion() : String;
	
	@:overload override public function setXmlVersion(xmlVersion : String) : Void;
	
	@:overload override public function getStrictErrorChecking() : Bool;
	
	@:overload override public function getBaseURI() : String;
	
	@:overload public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	@:overload override public function getTextContent() : String;
	
	@:overload override public function setTextContent(textContent : String) : Void;
	
	@:overload public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
	@:overload override public function lookupPrefix(namespaceURI : String) : String;
	
	@:overload override public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	@:overload override public function lookupNamespaceURI(prefix : String) : String;
	
	@:overload public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	@:overload override public function getFeature(feature : String, version : String) : Dynamic;
	
	@:overload override public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	@:overload override public function getUserData(key : String) : Dynamic;
	
	@:overload override public function recycleNode() : Void;
	
	@:overload override public function getValue() : String;
	
	@:overload override public function setValue(value : String) : Void;
	
	@:overload override public function setParentElement(parent : javax.xml.soap.SOAPElement) : Void;
	
	@:overload override public function getParentElement() : javax.xml.soap.SOAPElement;
	
	@:overload override public function detachNode() : Void;
	
	@:overload public function getSourceCharsetEncoding() : String;
	
	
}
