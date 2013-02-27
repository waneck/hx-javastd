package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern class AttributeMap extends com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl
{
	/** Constructs a named node map. */
	@:overload private function new(ownerNode : com.sun.org.apache.xerces.internal.dom.ElementImpl, defaults : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl) : Void;
	
	/**
	* Adds an attribute using its nodeName attribute.
	* @see org.w3c.dom.NamedNodeMap#setNamedItem
	* @return If the new Node replaces an existing node the replaced Node is
	*      returned, otherwise null is returned.
	* @param arg
	*      An Attr node to store in this map.
	* @exception org.w3c.dom.DOMException The exception description.
	*/
	@:overload override public function setNamedItem(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Adds an attribute using its namespaceURI and localName.
	* @see org.w3c.dom.NamedNodeMap#setNamedItem
	* @return If the new Node replaces an existing node the replaced Node is
	*      returned, otherwise null is returned.
	* @param arg A node to store in a named node map.
	*/
	@:overload override public function setNamedItemNS(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/***/
	@:overload override public function removeNamedItem(name : String) : org.w3c.dom.Node;
	
	/**
	* NON-DOM: Remove the node object
	*
	* NOTE: Specifically removes THIS NODE -- not the node with this
	* name, nor the node with these contents. If node does not belong to
	* this named node map, we throw a DOMException.
	*
	* @param item       The node to remove
	* @param addDefault true -- magically add default attribute
	* @return Removed node
	* @exception DOMException
	*/
	@:overload private function removeItem(item : org.w3c.dom.Node, addDefault : Bool) : org.w3c.dom.Node;
	
	/**
	* Internal removeNamedItem method allowing to specify whether an exception
	* must be thrown if the specified name is not found.
	*/
	@:overload @:final private function internalRemoveNamedItem(name : String, raiseEx : Bool) : org.w3c.dom.Node;
	
	/**
	* Introduced in DOM Level 2. <p>
	* Removes an attribute specified by local name and namespace URI.
	* @param namespaceURI
	*                      The namespace URI of the node to remove.
	*                      When it is null or an empty string, this
	*                      method behaves like removeNamedItem.
	* @param name          The local name of the node to remove. If the
	*                      removed attribute is known to have a default
	*                      value, an attribute immediately appears
	*                      containing the default value.
	* @return Node         The node removed from the map if a node with such
	*                      a local name and namespace URI exists.
	* @throws              NOT_FOUND_ERR: Raised if there is no node named
	*                      name in the map.
	*/
	@:overload override public function removeNamedItemNS(namespaceURI : String, name : String) : org.w3c.dom.Node;
	
	/**
	* Internal removeNamedItemNS method allowing to specify whether an
	* exception must be thrown if the specified local name and namespace URI
	* is not found.
	*/
	@:overload @:final private function internalRemoveNamedItemNS(namespaceURI : String, name : String, raiseEx : Bool) : org.w3c.dom.Node;
	
	/**
	* Cloning a NamedNodeMap is a DEEP OPERATION; it always clones
	* all the nodes contained in the map.
	*/
	@:overload override public function cloneMap(ownerNode : com.sun.org.apache.xerces.internal.dom.NodeImpl) : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl;
	
	/**
	* Override parent's method to set the ownerNode correctly
	*/
	@:overload override private function cloneContent(srcmap : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl) : Void;
	
	/**
	* Get this AttributeMap in sync with the given "defaults" map.
	* @param defaults The default attributes map to sync with.
	*/
	@:overload private function reconcileDefaults(defaults : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl) : Void;
	
	@:overload @:final override private function addItem(arg : org.w3c.dom.Node) : Int;
	
	
}
