package com.sun.xml.internal.messaging.saaj.soap.impl;
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
extern class ElementImpl extends com.sun.org.apache.xerces.internal.dom.ElementNSImpl implements javax.xml.soap.SOAPElement implements javax.xml.soap.SOAPBodyElement
{
	public static var DSIG_NS(default, null) : String;
	
	public static var XENC_NS(default, null) : String;
	
	public static var WSU_NS(default, null) : String;
	
	private var elementQName : javax.xml.namespace.QName;
	
	private static var log(default, null) : java.util.logging.Logger;
	
	/**
	* XML Information Set REC
	* all namespace attributes (including those named xmlns,
	* whose [prefix] property has no value) have a namespace URI of http://www.w3.org/2000/xmlns/
	*/
	public static var XMLNS_URI(default, null) : String;
	
	/**
	* The XML Namespace ("http://www.w3.org/XML/1998/namespace"). This is
	* the Namespace URI that is automatically mapped to the "xml" prefix.
	*/
	public static var XML_URI(default, null) : String;
	
	@:overload public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, name : javax.xml.soap.Name) : Void;
	
	@:overload public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, name : javax.xml.namespace.QName) : Void;
	
	@:overload public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, uri : String, qualifiedName : String) : Void;
	
	@:overload public function ensureNamespaceIsDeclared(prefix : String, uri : String) : Void;
	
	@:overload override public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload public function addChildElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	@:overload public function addChildElement(qname : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload public function addChildElement(localName : String) : javax.xml.soap.SOAPElement;
	
	@:overload public function addChildElement(localName : String, prefix : String) : javax.xml.soap.SOAPElement;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function setElementQName(newName : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload public function createQName(localName : String, prefix : String) : javax.xml.namespace.QName;
	
	@:overload public function getNamespacePrefix(uri : String) : String;
	
	@:overload private function getNamespaceAttr(prefix : String) : org.w3c.dom.Attr;
	
	@:overload public function getNamespaceContextNodes() : com.sun.xml.internal.messaging.saaj.util.NamespaceContextIterator;
	
	@:overload public function getNamespaceContextNodes(traverseStack : Bool) : com.sun.xml.internal.messaging.saaj.util.NamespaceContextIterator;
	
	@:overload public function addChildElement(localName : String, prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	@:overload public function addChildElement(element : javax.xml.soap.SOAPElement) : javax.xml.soap.SOAPElement;
	
	@:overload private function importElement(element : org.w3c.dom.Element) : org.w3c.dom.Element;
	
	@:overload private function addElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	@:overload private function addElement(name : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload private function createElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	@:overload private function createElement(name : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload private function addNode(newElement : org.w3c.dom.Node) : Void;
	
	@:overload private function findChild(name : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl) : javax.xml.soap.SOAPElement;
	
	@:overload public function addTextNode(text : String) : javax.xml.soap.SOAPElement;
	
	@:overload private function addCDATA(text : String) : javax.xml.soap.SOAPElement;
	
	@:overload private function addText(text : String) : javax.xml.soap.SOAPElement;
	
	@:overload public function addAttribute(name : javax.xml.soap.Name, value : String) : javax.xml.soap.SOAPElement;
	
	@:overload public function addAttribute(qname : javax.xml.namespace.QName, value : String) : javax.xml.soap.SOAPElement;
	
	@:overload public function addNamespaceDeclaration(prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	@:overload public function getAttributeValue(name : javax.xml.soap.Name) : String;
	
	@:overload public function getAttributeValue(qname : javax.xml.namespace.QName) : String;
	
	@:overload public function getAllAttributes() : java.util.Iterator<Dynamic>;
	
	@:overload public function getAllAttributesAsQNames() : java.util.Iterator<Dynamic>;
	
	@:overload public function getNamespacePrefixes() : java.util.Iterator<Dynamic>;
	
	@:overload public function getVisibleNamespacePrefixes() : java.util.Iterator<Dynamic>;
	
	@:overload private function doGetNamespacePrefixes(deep : Bool) : java.util.Iterator<Dynamic>;
	
	@:overload public function getElementName() : javax.xml.soap.Name;
	
	@:overload public function getElementQName() : javax.xml.namespace.QName;
	
	@:overload public function removeAttribute(name : javax.xml.soap.Name) : Bool;
	
	@:overload public function removeAttribute(name : javax.xml.namespace.QName) : Bool;
	
	@:overload public function removeNamespaceDeclaration(prefix : String) : Bool;
	
	@:overload public function getChildElements() : java.util.Iterator<Dynamic>;
	
	@:overload private function convertToSoapElement(element : org.w3c.dom.Element) : javax.xml.soap.SOAPElement;
	
	@:overload private static function replaceElementWithSOAPElement(element : org.w3c.dom.Element, copy : ElementImpl) : javax.xml.soap.SOAPElement;
	
	@:overload private function getChildElementNodes() : java.util.Iterator<Dynamic>;
	
	@:overload public function getChildElements(name : javax.xml.soap.Name) : java.util.Iterator<Dynamic>;
	
	@:overload public function getChildElements(qname : javax.xml.namespace.QName) : java.util.Iterator<Dynamic>;
	
	@:overload public function removeContents() : Void;
	
	@:overload public function setEncodingStyle(encodingStyle : String) : Void;
	
	@:overload public function getEncodingStyle() : String;
	
	@:overload public function getValue() : String;
	
	@:overload public function setValue(value : String) : Void;
	
	@:overload private function getValueNodeStrict() : org.w3c.dom.Node;
	
	@:overload private function getValueNode() : javax.xml.soap.Node;
	
	@:overload public function setParentElement(element : javax.xml.soap.SOAPElement) : Void;
	
	@:overload private function findEncodingStyleAttributeName() : Void;
	
	@:overload private function setEncodingStyleNamespace(soapNamespace : String, soapNamespacePrefix : String) : Void;
	
	@:overload public function getParentElement() : javax.xml.soap.SOAPElement;
	
	@:overload private function getSOAPNamespace() : String;
	
	@:overload public function detachNode() : Void;
	
	@:overload public function tryToFindEncodingStyleAttributeName() : Void;
	
	@:overload public function recycleNode() : Void;
	
	@:overload private static function getNamespaceAttrFrom(element : org.w3c.dom.Element, prefix : String) : org.w3c.dom.Attr;
	
	@:overload private static function getAllAttributesFrom(element : org.w3c.dom.Element) : java.util.Iterator<Dynamic>;
	
	@:overload private static function getAttributeValueFrom(element : org.w3c.dom.Element, name : javax.xml.soap.Name) : String;
	
	@:overload private static function getChildElementsFrom(element : org.w3c.dom.Element) : java.util.Iterator<Dynamic>;
	
	@:overload public static function getQualifiedName(name : javax.xml.namespace.QName) : String;
	
	@:overload public static function getLocalPart(qualifiedName : String) : String;
	
	@:native('getPrefix') @:overload public static function _getPrefix(qualifiedName : String) : String;
	
	@:overload private function isNamespaceQualified(name : javax.xml.soap.Name) : Bool;
	
	@:overload private function isNamespaceQualified(name : javax.xml.namespace.QName) : Bool;
	
	@:overload private function circumventBug5034339(element : javax.xml.soap.SOAPElement) : javax.xml.soap.SOAPElement;
	
	@:overload override public function setAttributeNS(namespaceURI : String, qualifiedName : String, value : String) : Void;
	
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$impl$ElementImpl$AttributeManager') @:internal extern class ElementImpl_AttributeManager
{
	@:overload public function setName(newName : javax.xml.soap.Name) : Void;
	
	@:overload public function clearName() : Void;
	
	@:overload public function setValue(value : String) : Void;
	
	@:overload public function getName() : javax.xml.soap.Name;
	
	@:overload public function getValue() : String;
	
	/** Note: to be used only in detachNode method */
	@:overload public function clearNameAndValue() : Void;
	
	
}
