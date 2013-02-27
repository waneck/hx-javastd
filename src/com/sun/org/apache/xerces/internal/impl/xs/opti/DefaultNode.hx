package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class DefaultNode implements org.w3c.dom.Node
{
	/**
	* @xerces.internal
	*
	* @author Rahul Srivastava, Sun Microsystems Inc.
	*
	*/
	@:overload public function new() : Void;
	
	@:overload public function getNodeName() : String;
	
	@:overload public function getNodeValue() : String;
	
	@:overload public function getNodeType() : java.StdTypes.Int16;
	
	@:overload public function getParentNode() : org.w3c.dom.Node;
	
	@:overload public function getChildNodes() : org.w3c.dom.NodeList;
	
	@:overload public function getFirstChild() : org.w3c.dom.Node;
	
	@:overload public function getLastChild() : org.w3c.dom.Node;
	
	@:overload public function getPreviousSibling() : org.w3c.dom.Node;
	
	@:overload public function getNextSibling() : org.w3c.dom.Node;
	
	@:overload public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	@:overload public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload public function hasChildNodes() : Bool;
	
	@:overload public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	@:overload public function normalize() : Void;
	
	@:overload public function isSupported(feature : String, version : String) : Bool;
	
	@:overload public function getNamespaceURI() : String;
	
	@:overload public function getPrefix() : String;
	
	@:overload public function getLocalName() : String;
	
	/** DOM Level 3*/
	@:overload public function getBaseURI() : String;
	
	@:overload public function hasAttributes() : Bool;
	
	@:overload public function setNodeValue(nodeValue : String) : Void;
	
	@:overload public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function setPrefix(prefix : String) : Void;
	
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
