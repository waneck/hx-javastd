package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMUtils.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMUtils
{
	/**
	* Returns the owner document of the specified node.
	*
	* @param node the node
	* @return the owner document
	*/
	@:overload public static function getOwnerDocument(node : org.w3c.dom.Node) : org.w3c.dom.Document;
	
	/**
	* Creates an element in the specified namespace, with the specified tag
	* and namespace prefix.
	*
	* @param doc the owner document
	* @param tag the tag
	* @param nsURI the namespace URI
	* @param prefix the namespace prefix
	* @return the newly created element
	*/
	@:overload public static function createElement(doc : org.w3c.dom.Document, tag : String, nsURI : String, prefix : String) : org.w3c.dom.Element;
	
	/**
	* Sets an element's attribute (using DOM level 2) with the
	* specified value and namespace prefix.
	*
	* @param elem the element to set the attribute on
	* @param name the name of the attribute
	* @param value the attribute value. If null, no attribute is set.
	*/
	@:overload public static function setAttribute(elem : org.w3c.dom.Element, name : String, value : String) : Void;
	
	/**
	* Sets an element's attribute (using DOM level 2) with the
	* specified value and namespace prefix AND registers the ID value with
	* the specified element. This is for resolving same-document
	* ID references.
	*
	* @param elem the element to set the attribute on
	* @param name the name of the attribute
	* @param value the attribute value. If null, no attribute is set.
	*/
	@:overload public static function setAttributeID(elem : org.w3c.dom.Element, name : String, value : String) : Void;
	
	/**
	* Returns the first child element of the specified node, or null if there
	* is no such element.
	*
	* @param node the node
	* @return the first child element of the specified node, or null if there
	*    is no such element
	* @throws NullPointerException if <code>node == null</code>
	*/
	@:overload public static function getFirstChildElement(node : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/**
	* Returns the last child element of the specified node, or null if there
	* is no such element.
	*
	* @param node the node
	* @return the last child element of the specified node, or null if there
	*    is no such element
	* @throws NullPointerException if <code>node == null</code>
	*/
	@:overload public static function getLastChildElement(node : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/**
	* Returns the next sibling element of the specified node, or null if there
	* is no such element.
	*
	* @param node the node
	* @return the next sibling element of the specified node, or null if there
	*    is no such element
	* @throws NullPointerException if <code>node == null</code>
	*/
	@:overload public static function getNextSiblingElement(node : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/**
	* Returns the attribute value for the attribute with the specified name.
	* Returns null if there is no such attribute, or
	* the empty string if the attribute value is empty.
	*
	* <p>This works around a limitation of the DOM
	* <code>Element.getAttributeNode</code> method, which does not distinguish
	* between an unspecified attribute and an attribute with a value of
	* "" (it returns "" for both cases).
	*
	* @param elem the element containing the attribute
	* @param name the name of the attribute
	* @return the attribute value (may be null if unspecified)
	*/
	@:overload public static function getAttributeValue(elem : org.w3c.dom.Element, name : String) : String;
	
	/**
	* Returns a Set of <code>Node</code>s, backed by the specified
	* <code>NodeList</code>.
	*
	* @param nl the NodeList
	* @return a Set of Nodes
	*/
	@:overload public static function nodeSet(nl : org.w3c.dom.NodeList) : java.util.Set<Dynamic>;
	
	/**
	* Returns the prefix associated with the specified namespace URI
	*
	* @param context contains the namespace map
	* @param nsURI the namespace URI
	* @return the prefix associated with the specified namespace URI, or
	*    null if not set
	*/
	@:overload public static function getNSPrefix(context : javax.xml.crypto.XMLCryptoContext, nsURI : String) : String;
	
	/**
	* Returns the prefix associated with the XML Signature namespace URI
	*
	* @param context contains the namespace map
	* @return the prefix associated with the specified namespace URI, or
	*    null if not set
	*/
	@:overload public static function getSignaturePrefix(context : javax.xml.crypto.XMLCryptoContext) : String;
	
	/**
	* Removes all children nodes from the specified node.
	*
	* @param node the parent node whose children are to be removed
	*/
	@:overload public static function removeAllChildren(node : org.w3c.dom.Node) : Void;
	
	/**
	* Compares 2 nodes for equality. Implementation is not complete.
	*/
	@:overload public static function nodesEqual(thisNode : org.w3c.dom.Node, otherNode : org.w3c.dom.Node) : Bool;
	
	/**
	* Checks if child element has same owner document before
	* appending to the parent, and imports it to the parent's document
	* if necessary.
	*/
	@:overload public static function appendChild(parent : org.w3c.dom.Node, child : org.w3c.dom.Node) : Void;
	
	@:overload public static function paramsEqual(spec1 : java.security.spec.AlgorithmParameterSpec, spec2 : java.security.spec.AlgorithmParameterSpec) : Bool;
	
	
}
@:native('org$jcp$xml$dsig$internal$dom$DOMUtils$NodeSet') @:internal extern class DOMUtils_NodeSet extends java.util.AbstractSet<Dynamic>
{
	@:overload public function new(nl : org.w3c.dom.NodeList) : Void;
	
	@:overload public function size() : Int;
	
	@:overload public function iterator() : java.util.Iterator<Dynamic>;
	
	
}
