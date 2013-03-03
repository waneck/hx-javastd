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
	@:public @:static @:final public static var DSIG_NS(default, null) : String;
	
	@:public @:static @:final public static var XENC_NS(default, null) : String;
	
	@:public @:static @:final public static var WSU_NS(default, null) : String;
	
	@:protected private var elementQName : javax.xml.namespace.QName;
	
	@:protected @:static @:final private static var log(default, null) : java.util.logging.Logger;
	
	/**
	* XML Information Set REC
	* all namespace attributes (including those named xmlns,
	* whose [prefix] property has no value) have a namespace URI of http://www.w3.org/2000/xmlns/
	*/
	@:public @:final @:static public static var XMLNS_URI(default, null) : String;
	
	/**
	* The XML Namespace ("http://www.w3.org/XML/1998/namespace"). This is
	* the Namespace URI that is automatically mapped to the "xml" prefix.
	*/
	@:public @:final @:static public static var XML_URI(default, null) : String;
	
	@:overload @:public public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, name : javax.xml.soap.Name) : Void;
	
	@:overload @:public public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, name : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, uri : String, qualifiedName : String) : Void;
	
	@:overload @:public public function ensureNamespaceIsDeclared(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload @:public public function addChildElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addChildElement(qname : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addChildElement(localName : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addChildElement(localName : String, prefix : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:public public function setElementQName(newName : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function createQName(localName : String, prefix : String) : javax.xml.namespace.QName;
	
	@:overload @:public public function getNamespacePrefix(uri : String) : String;
	
	@:overload @:protected private function getNamespaceAttr(prefix : String) : org.w3c.dom.Attr;
	
	@:overload @:public public function getNamespaceContextNodes() : com.sun.xml.internal.messaging.saaj.util.NamespaceContextIterator;
	
	@:overload @:public public function getNamespaceContextNodes(traverseStack : Bool) : com.sun.xml.internal.messaging.saaj.util.NamespaceContextIterator;
	
	@:overload @:public public function addChildElement(localName : String, prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addChildElement(element : javax.xml.soap.SOAPElement) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function importElement(element : org.w3c.dom.Element) : org.w3c.dom.Element;
	
	@:overload @:protected private function addElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function addElement(name : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function createElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function createElement(name : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function addNode(newElement : org.w3c.dom.Node) : Void;
	
	@:overload @:protected private function findChild(name : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addTextNode(text : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function addCDATA(text : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function addText(text : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addAttribute(name : javax.xml.soap.Name, value : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addAttribute(qname : javax.xml.namespace.QName, value : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function addNamespaceDeclaration(prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	@:overload @:public public function getAttributeValue(name : javax.xml.soap.Name) : String;
	
	@:overload @:public public function getAttributeValue(qname : javax.xml.namespace.QName) : String;
	
	@:overload @:public public function getAllAttributes() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getAllAttributesAsQNames() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getNamespacePrefixes() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getVisibleNamespacePrefixes() : java.util.Iterator<Dynamic>;
	
	@:overload @:protected private function doGetNamespacePrefixes(deep : Bool) : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getElementName() : javax.xml.soap.Name;
	
	@:overload @:public public function getElementQName() : javax.xml.namespace.QName;
	
	@:overload @:public public function removeAttribute(name : javax.xml.soap.Name) : Bool;
	
	@:overload @:public public function removeAttribute(name : javax.xml.namespace.QName) : Bool;
	
	@:overload @:public public function removeNamespaceDeclaration(prefix : String) : Bool;
	
	@:overload @:public public function getChildElements() : java.util.Iterator<Dynamic>;
	
	@:overload @:protected private function convertToSoapElement(element : org.w3c.dom.Element) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected @:static private static function replaceElementWithSOAPElement(element : org.w3c.dom.Element, copy : com.sun.org.apache.xerces.internal.dom.ElementImpl) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function getChildElementNodes() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getChildElements(name : javax.xml.soap.Name) : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getChildElements(qname : javax.xml.namespace.QName) : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function removeContents() : Void;
	
	@:overload @:public public function setEncodingStyle(encodingStyle : String) : Void;
	
	@:overload @:public public function getEncodingStyle() : String;
	
	@:overload @:public public function getValue() : String;
	
	@:overload @:public public function setValue(value : String) : Void;
	
	@:overload @:protected private function getValueNodeStrict() : org.w3c.dom.Node;
	
	@:overload @:protected private function getValueNode() : javax.xml.soap.Node;
	
	@:overload @:public public function setParentElement(element : javax.xml.soap.SOAPElement) : Void;
	
	@:overload @:protected private function findEncodingStyleAttributeName() : Void;
	
	@:overload @:protected private function setEncodingStyleNamespace(soapNamespace : String, soapNamespacePrefix : String) : Void;
	
	@:overload @:public public function getParentElement() : javax.xml.soap.SOAPElement;
	
	@:overload @:protected private function getSOAPNamespace() : String;
	
	@:overload @:public public function detachNode() : Void;
	
	@:overload @:public public function tryToFindEncodingStyleAttributeName() : Void;
	
	@:overload @:public public function recycleNode() : Void;
	
	@:overload @:protected @:static private static function getNamespaceAttrFrom(element : org.w3c.dom.Element, prefix : String) : org.w3c.dom.Attr;
	
	@:overload @:protected @:static private static function getAllAttributesFrom(element : org.w3c.dom.Element) : java.util.Iterator<Dynamic>;
	
	@:overload @:protected @:static private static function getAttributeValueFrom(element : org.w3c.dom.Element, name : javax.xml.soap.Name) : String;
	
	@:overload @:protected @:static private static function getChildElementsFrom(element : org.w3c.dom.Element) : java.util.Iterator<Dynamic>;
	
	@:overload @:public @:static public static function getQualifiedName(name : javax.xml.namespace.QName) : String;
	
	@:overload @:public @:static public static function getLocalPart(qualifiedName : String) : String;
	
	@:native('getPrefix') @:overload @:public @:static public static function _getPrefix(qualifiedName : String) : String;
	
	@:overload @:protected private function isNamespaceQualified(name : javax.xml.soap.Name) : Bool;
	
	@:overload @:protected private function isNamespaceQualified(name : javax.xml.namespace.QName) : Bool;
	
	@:overload @:protected private function circumventBug5034339(element : javax.xml.soap.SOAPElement) : javax.xml.soap.SOAPElement;
	
	@:overload @:public override public function setAttributeNS(namespaceURI : String, qualifiedName : String, value : String) : Void;
	
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$impl$ElementImpl$AttributeManager') @:internal extern class ElementImpl_AttributeManager
{
	@:overload @:public public function setName(newName : javax.xml.soap.Name) : Void;
	
	@:overload @:public public function clearName() : Void;
	
	@:overload @:public public function setValue(value : String) : Void;
	
	@:overload @:public public function getName() : javax.xml.soap.Name;
	
	@:overload @:public public function getValue() : String;
	
	/** Note: to be used only in detachNode method */
	@:overload @:public public function clearNameAndValue() : Void;
	
	
}
