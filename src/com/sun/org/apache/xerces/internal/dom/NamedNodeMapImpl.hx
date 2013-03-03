package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004,2005 The Apache Software Foundation.
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
extern class NamedNodeMapImpl implements org.w3c.dom.NamedNodeMap implements java.io.Serializable
{
	@:protected private var flags : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var READONLY(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var CHANGED(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var HASDEFAULTS(default, null) : java.StdTypes.Int16;
	
	/** Nodes. */
	@:protected private var nodes : java.util.List<Dynamic>;
	
	@:protected private var ownerNode : com.sun.org.apache.xerces.internal.dom.NodeImpl;
	
	/** Constructs a named node map. */
	@:overload @:protected private function new(ownerNode : com.sun.org.apache.xerces.internal.dom.NodeImpl) : Void;
	
	/**
	* Report how many nodes are currently stored in this NamedNodeMap.
	* Caveat: This is a count rather than an index, so the
	* highest-numbered node at any time can be accessed via
	* item(getLength()-1).
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Retrieve an item from the map by 0-based index.
	*
	* @param index Which item to retrieve. Note that indices are just an
	* enumeration of the current contents; they aren't guaranteed to be
	* stable, nor do they imply any promises about the order of the
	* NamedNodeMap's contents. In other words, DO NOT assume either that
	* index(i) will always refer to the same entry, or that there is any
	* stable ordering of entries... and be prepared for double-reporting
	* or skips as insertion and deletion occur.
	*
	* @return the node which currenly has the specified index, or null if index
	* is greater than or equal to getLength().
	*/
	@:overload @:public public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* Retrieve a node by name.
	*
	* @param name Name of a node to look up.
	* @return the Node (of unspecified sub-class) stored with that name, or
	* null if no value has been assigned to that name.
	*/
	@:overload @:public public function getNamedItem(name : String) : org.w3c.dom.Node;
	
	/**
	* Introduced in DOM Level 2. <p>
	* Retrieves a node specified by local name and namespace URI.
	*
	* @param namespaceURI  The namespace URI of the node to retrieve.
	*                      When it is null or an empty string, this
	*                      method behaves like getNamedItem.
	* @param localName     The local name of the node to retrieve.
	* @return Node         A Node (of any type) with the specified name, or null if the specified
	*                      name did not identify any node in the map.
	*/
	@:overload @:public public function getNamedItemNS(namespaceURI : String, localName : String) : org.w3c.dom.Node;
	
	/**
	* Adds a node using its nodeName attribute.
	* As the nodeName attribute is used to derive the name which the node must be
	* stored under, multiple nodes of certain types (those that have a "special" string
	* value) cannot be stored as the names would clash. This is seen as preferable to
	* allowing nodes to be aliased.
	* @see org.w3c.dom.NamedNodeMap#setNamedItem
	* @return If the new Node replaces an existing node the replaced Node is returned,
	*      otherwise null is returned.
	* @param arg
	*      A node to store in a named node map. The node will later be
	*      accessible using the value of the namespaceURI and localName
	*      attribute of the node. If a node with those namespace URI and
	*      local name is already present in the map, it is replaced by the new
	*      one.
	* @exception org.w3c.dom.DOMException The exception description.
	*/
	@:overload @:public public function setNamedItem(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Adds a node using its namespaceURI and localName.
	* @see org.w3c.dom.NamedNodeMap#setNamedItem
	* @return If the new Node replaces an existing node the replaced Node is returned,
	*      otherwise null is returned.
	* @param arg A node to store in a named node map. The node will later be
	*      accessible using the value of the namespaceURI and localName
	*      attribute of the node. If a node with those namespace URI and
	*      local name is already present in the map, it is replaced by the new
	*      one.
	*/
	@:overload @:public public function setNamedItemNS(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/***/
	@:overload @:public public function removeNamedItem(name : String) : org.w3c.dom.Node;
	
	/**
	* Introduced in DOM Level 2. <p>
	* Removes a node specified by local name and namespace URI.
	* @param namespaceURI
	*                      The namespace URI of the node to remove.
	*                      When it is null or an empty string, this
	*                      method behaves like removeNamedItem.
	* @param name          The local name of the node to remove.
	* @return Node         The node removed from the map if a node with such
	*                      a local name and namespace URI exists.
	* @throws              NOT_FOUND_ERR: Raised if there is no node named
	*                      name in the map.

	*/
	@:overload @:public public function removeNamedItemNS(namespaceURI : String, name : String) : org.w3c.dom.Node;
	
	/**
	* Cloning a NamedNodeMap is a DEEP OPERATION; it always clones
	* all the nodes contained in the map.
	*/
	@:overload @:public public function cloneMap(ownerNode : com.sun.org.apache.xerces.internal.dom.NodeImpl) : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl;
	
	@:overload @:protected private function cloneContent(srcmap : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl) : Void;
	
	/**
	* NON-DOM
	* set the ownerDocument of this node, and the attributes it contains
	*/
	@:overload @:protected private function setOwnerDocument(doc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl) : Void;
	
	/**
	* Subroutine: Locate the named item, or the point at which said item
	* should be added.
	*
	* @param name Name of a node to look up.
	*
	* @return If positive or zero, the index of the found item.
	* If negative, index of the appropriate point at which to insert
	* the item, encoded as -1-index and hence reconvertable by subtracting
	* it from -1. (Encoding because I don't want to recompare the strings
	* but don't want to burn bytes on a datatype to hold a flagged value.)
	*/
	@:overload @:protected private function findNamePoint(name : String, start : Int) : Int;
	
	/** This findNamePoint is for DOM Level 2 Namespaces.
	*/
	@:overload @:protected private function findNamePoint(namespaceURI : String, name : String) : Int;
	
	@:overload @:protected private function precedes(a : org.w3c.dom.Node, b : org.w3c.dom.Node) : Bool;
	
	/**
	* NON-DOM: Remove attribute at specified index
	*/
	@:overload @:protected private function removeItem(index : Int) : Void;
	
	@:overload @:protected private function getItem(index : Int) : Dynamic;
	
	@:overload @:protected private function addItem(arg : org.w3c.dom.Node) : Int;
	
	/**
	* NON-DOM: copy content of this map into the specified ArrayList
	*
	* @param list   ArrayList to copy information into.
	* @return A copy of this node named map
	*/
	@:overload @:protected private function cloneMap(list : java.util.ArrayList<Dynamic>) : java.util.ArrayList<Dynamic>;
	
	@:overload @:protected private function getNamedItemIndex(namespaceURI : String, localName : String) : Int;
	
	/**
	* NON-DOM remove all elements from this map
	*/
	@:overload @:public public function removeAll() : Void;
	
	
}
