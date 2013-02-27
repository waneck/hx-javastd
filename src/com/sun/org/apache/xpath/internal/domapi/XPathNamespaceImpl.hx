package com.sun.org.apache.xpath.internal.domapi;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XPathNamespaceImpl.java,v 1.2.4.1 2005/09/10 04:10:02 jeffsuttor Exp $
*/
@:internal extern class XPathNamespaceImpl implements org.w3c.dom.xpath.XPathNamespace
{
	/**
	* @see com.sun.org.apache.xalan.internal.dom3.xpath.XPathNamespace#getOwnerElement()
	*/
	@:overload public function getOwnerElement() : org.w3c.dom.Element;
	
	/**
	* @see org.w3c.dom.Node#getNodeName()
	*/
	@:overload public function getNodeName() : String;
	
	/**
	* @see org.w3c.dom.Node#getNodeValue()
	*/
	@:overload public function getNodeValue() : String;
	
	/**
	* @see org.w3c.dom.Node#setNodeValue(String)
	*/
	@:overload public function setNodeValue(arg0 : String) : Void;
	
	/**
	* @see org.w3c.dom.Node#getNodeType()
	*/
	@:overload public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* @see org.w3c.dom.Node#getParentNode()
	*/
	@:overload public function getParentNode() : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#getChildNodes()
	*/
	@:overload public function getChildNodes() : org.w3c.dom.NodeList;
	
	/**
	* @see org.w3c.dom.Node#getFirstChild()
	*/
	@:overload public function getFirstChild() : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#getLastChild()
	*/
	@:overload public function getLastChild() : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#getPreviousSibling()
	*/
	@:overload public function getPreviousSibling() : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#getNextSibling()
	*/
	@:overload public function getNextSibling() : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#getAttributes()
	*/
	@:overload public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	/**
	* @see org.w3c.dom.Node#getOwnerDocument()
	*/
	@:overload public function getOwnerDocument() : org.w3c.dom.Document;
	
	/**
	* @see org.w3c.dom.Node#insertBefore(Node, Node)
	*/
	@:overload public function insertBefore(arg0 : org.w3c.dom.Node, arg1 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#replaceChild(Node, Node)
	*/
	@:overload public function replaceChild(arg0 : org.w3c.dom.Node, arg1 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#removeChild(Node)
	*/
	@:overload public function removeChild(arg0 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#appendChild(Node)
	*/
	@:overload public function appendChild(arg0 : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#hasChildNodes()
	*/
	@:overload public function hasChildNodes() : Bool;
	
	/**
	* @see org.w3c.dom.Node#cloneNode(boolean)
	*/
	@:overload public function cloneNode(arg0 : Bool) : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.Node#normalize()
	*/
	@:overload public function normalize() : Void;
	
	/**
	* @see org.w3c.dom.Node#isSupported(String, String)
	*/
	@:overload public function isSupported(arg0 : String, arg1 : String) : Bool;
	
	/**
	* @see org.w3c.dom.Node#getNamespaceURI()
	*/
	@:overload public function getNamespaceURI() : String;
	
	/**
	* @see org.w3c.dom.Node#getPrefix()
	*/
	@:overload public function getPrefix() : String;
	
	/**
	* @see org.w3c.dom.Node#setPrefix(String)
	*/
	@:overload public function setPrefix(arg0 : String) : Void;
	
	/**
	* @see org.w3c.dom.Node#getLocalName()
	*/
	@:overload public function getLocalName() : String;
	
	/**
	* @see org.w3c.dom.Node#hasAttributes()
	*/
	@:overload public function hasAttributes() : Bool;
	
	@:overload public function getBaseURI() : String;
	
	@:overload public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	@:overload public function getTextContent() : String;
	
	@:overload public function setTextContent(textContent : String) : Void;
	
	@:overload public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
	@:overload public function lookupPrefix(namespaceURI : String) : String;
	
	@:overload public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	@:overload public function lookupNamespaceURI(prefix : String) : String;
	
	@:overload public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	@:overload public function getFeature(feature : String, version : String) : Dynamic;
	
	@:overload public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	@:overload public function getUserData(key : String) : Dynamic;
	
	
}
