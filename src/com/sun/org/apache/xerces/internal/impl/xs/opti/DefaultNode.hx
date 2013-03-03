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
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getNodeName() : String;
	
	@:overload @:public public function getNodeValue() : String;
	
	@:overload @:public public function getNodeType() : java.StdTypes.Int16;
	
	@:overload @:public public function getParentNode() : org.w3c.dom.Node;
	
	@:overload @:public public function getChildNodes() : org.w3c.dom.NodeList;
	
	@:overload @:public public function getFirstChild() : org.w3c.dom.Node;
	
	@:overload @:public public function getLastChild() : org.w3c.dom.Node;
	
	@:overload @:public public function getPreviousSibling() : org.w3c.dom.Node;
	
	@:overload @:public public function getNextSibling() : org.w3c.dom.Node;
	
	@:overload @:public public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	@:overload @:public public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload @:public public function hasChildNodes() : Bool;
	
	@:overload @:public public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	@:overload @:public public function normalize() : Void;
	
	@:overload @:public public function isSupported(feature : String, version : String) : Bool;
	
	@:overload @:public public function getNamespaceURI() : String;
	
	@:overload @:public public function getPrefix() : String;
	
	@:overload @:public public function getLocalName() : String;
	
	/** DOM Level 3*/
	@:overload @:public public function getBaseURI() : String;
	
	@:overload @:public public function hasAttributes() : Bool;
	
	@:overload @:public public function setNodeValue(nodeValue : String) : Void;
	
	@:overload @:public public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function setPrefix(prefix : String) : Void;
	
	@:overload @:public public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	@:overload @:public public function getTextContent() : String;
	
	@:overload @:public public function setTextContent(textContent : String) : Void;
	
	@:overload @:public public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
	@:overload @:public public function lookupPrefix(namespaceURI : String) : String;
	
	@:overload @:public public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	@:overload @:public public function lookupNamespaceURI(prefix : String) : String;
	
	@:overload @:public public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	@:overload @:public public function getFeature(feature : String, version : String) : Dynamic;
	
	@:overload @:public public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	@:overload @:public public function getUserData(key : String) : Dynamic;
	
	
}
