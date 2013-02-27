package com.sun.org.apache.xml.internal.dtm.ref;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
* $Id: DTMNamedNodeMap.java,v 1.2.4.1 2005/09/15 08:15:03 suresh_emailid Exp $
*/
extern class DTMNamedNodeMap implements org.w3c.dom.NamedNodeMap
{
	/**
	* Create a getAttributes NamedNodeMap for a given DTM element node
	*
	* @param dtm The DTM Reference, must be non-null.
	* @param element The DTM element handle.
	*/
	@:overload public function new(dtm : com.sun.org.apache.xml.internal.dtm.DTM, element : Int) : Void;
	
	/**
	* Return the number of Attributes on this Element
	*
	* @return The number of nodes in this map.
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Retrieves a node specified by name.
	* @param name The <code>nodeName</code> of a node to retrieve.
	* @return A <code>Node</code> (of any type) with the specified
	*   <code>nodeName</code>, or <code>null</code> if it does not identify
	*   any node in this map.
	*/
	@:overload public function getNamedItem(name : String) : org.w3c.dom.Node;
	
	/**
	* Returns the <code>index</code>th item in the map. If <code>index</code>
	* is greater than or equal to the number of nodes in this map, this
	* returns <code>null</code>.
	* @param i The index of the requested item.
	* @return The node at the <code>index</code>th position in the map, or
	*   <code>null</code> if that is not a valid index.
	*/
	@:overload public function item(i : Int) : org.w3c.dom.Node;
	
	/**
	* Adds a node using its <code>nodeName</code> attribute. If a node with
	* that name is already present in this map, it is replaced by the new
	* one.
	* <br>As the <code>nodeName</code> attribute is used to derive the name
	* which the node must be stored under, multiple nodes of certain types
	* (those that have a "special" string value) cannot be stored as the
	* names would clash. This is seen as preferable to allowing nodes to be
	* aliased.
	* @param newNode node to store in this map. The node will later be
	*   accessible using the value of its <code>nodeName</code> attribute.
	*
	* @return If the new <code>Node</code> replaces an existing node the
	*   replaced <code>Node</code> is returned, otherwise <code>null</code>
	*   is returned.
	* @exception DOMException
	*   WRONG_DOCUMENT_ERR: Raised if <code>arg</code> was created from a
	*   different document than the one that created this map.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this map is readonly.
	*   <br>INUSE_ATTRIBUTE_ERR: Raised if <code>arg</code> is an
	*   <code>Attr</code> that is already an attribute of another
	*   <code>Element</code> object. The DOM user must explicitly clone
	*   <code>Attr</code> nodes to re-use them in other elements.
	*/
	@:overload public function setNamedItem(newNode : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Removes a node specified by name. When this map contains the attributes
	* attached to an element, if the removed attribute is known to have a
	* default value, an attribute immediately appears containing the
	* default value as well as the corresponding namespace URI, local name,
	* and prefix when applicable.
	* @param name The <code>nodeName</code> of the node to remove.
	*
	* @return The node removed from this map if a node with such a name
	*   exists.
	* @exception DOMException
	*   NOT_FOUND_ERR: Raised if there is no node named <code>name</code> in
	*   this map.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this map is readonly.
	*/
	@:overload public function removeNamedItem(name : String) : org.w3c.dom.Node;
	
	/**
	* Retrieves a node specified by local name and namespace URI. HTML-only
	* DOM implementations do not need to implement this method.
	* @param namespaceURI The namespace URI of the node to retrieve.
	* @param localName The local name of the node to retrieve.
	*
	* @return A <code>Node</code> (of any type) with the specified local
	*   name and namespace URI, or <code>null</code> if they do not
	*   identify any node in this map.
	* @since DOM Level 2
	*/
	@:overload public function getNamedItemNS(namespaceURI : String, localName : String) : org.w3c.dom.Node;
	
	/**
	* Adds a node using its <code>namespaceURI</code> and
	* <code>localName</code>. If a node with that namespace URI and that
	* local name is already present in this map, it is replaced by the new
	* one.
	* <br>HTML-only DOM implementations do not need to implement this method.
	* @param arg A node to store in this map. The node will later be
	*   accessible using the value of its <code>namespaceURI</code> and
	*   <code>localName</code> attributes.
	*
	* @return If the new <code>Node</code> replaces an existing node the
	*   replaced <code>Node</code> is returned, otherwise <code>null</code>
	*   is returned.
	* @exception DOMException
	*   WRONG_DOCUMENT_ERR: Raised if <code>arg</code> was created from a
	*   different document than the one that created this map.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this map is readonly.
	*   <br>INUSE_ATTRIBUTE_ERR: Raised if <code>arg</code> is an
	*   <code>Attr</code> that is already an attribute of another
	*   <code>Element</code> object. The DOM user must explicitly clone
	*   <code>Attr</code> nodes to re-use them in other elements.
	* @since DOM Level 2
	*/
	@:overload public function setNamedItemNS(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Removes a node specified by local name and namespace URI. A removed
	* attribute may be known to have a default value when this map contains
	* the attributes attached to an element, as returned by the attributes
	* attribute of the <code>Node</code> interface. If so, an attribute
	* immediately appears containing the default value as well as the
	* corresponding namespace URI, local name, and prefix when applicable.
	* <br>HTML-only DOM implementations do not need to implement this method.
	*
	* @param namespaceURI The namespace URI of the node to remove.
	* @param localName The local name of the node to remove.
	*
	* @return The node removed from this map if a node with such a local
	*   name and namespace URI exists.
	* @exception DOMException
	*   NOT_FOUND_ERR: Raised if there is no node with the specified
	*   <code>namespaceURI</code> and <code>localName</code> in this map.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this map is readonly.
	* @since DOM Level 2
	*/
	@:overload public function removeNamedItemNS(namespaceURI : String, localName : String) : org.w3c.dom.Node;
	
	
}
/**
* Simple implementation of DOMException.
* @xsl.usage internal
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMNamedNodeMap$DTMException') extern class DTMNamedNodeMap_DTMException extends org.w3c.dom.DOMException
{
	/**
	* Constructs a DOM/DTM exception.
	*
	* @param code
	* @param message
	*/
	@:overload public function new(code : java.StdTypes.Int16, message : String) : Void;
	
	/**
	* Constructor DTMException
	*
	*
	* @param code
	*/
	@:overload public function new(code : java.StdTypes.Int16) : Void;
	
	
}
