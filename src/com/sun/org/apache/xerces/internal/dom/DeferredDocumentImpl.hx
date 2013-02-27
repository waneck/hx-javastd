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
extern class DeferredDocumentImpl extends com.sun.org.apache.xerces.internal.dom.DocumentImpl implements com.sun.org.apache.xerces.internal.dom.DeferredNode
{
	/** Chunk shift. */
	private static var CHUNK_SHIFT(default, null) : Int;
	
	/** Chunk size. */
	private static var CHUNK_SIZE(default, null) : Int;
	
	/** Chunk mask. */
	private static var CHUNK_MASK(default, null) : Int;
	
	/** Initial chunk size. */
	private static var INITIAL_CHUNK_COUNT(default, null) : Int;
	
	/** Node count. */
	@:transient private var fNodeCount : Int;
	
	/** Node types. */
	@:transient private var fNodeType : java.NativeArray<java.NativeArray<Int>>;
	
	/** Node names. */
	@:transient private var fNodeName : java.NativeArray<java.NativeArray<Dynamic>>;
	
	/** Node values. */
	@:transient private var fNodeValue : java.NativeArray<java.NativeArray<Dynamic>>;
	
	/** Node parents. */
	@:transient private var fNodeParent : java.NativeArray<java.NativeArray<Int>>;
	
	/** Node first children. */
	@:transient private var fNodeLastChild : java.NativeArray<java.NativeArray<Int>>;
	
	/** Node prev siblings. */
	@:transient private var fNodePrevSib : java.NativeArray<java.NativeArray<Int>>;
	
	/** Node namespace URI. */
	@:transient private var fNodeURI : java.NativeArray<java.NativeArray<Dynamic>>;
	
	/** Extra data. */
	@:transient private var fNodeExtra : java.NativeArray<java.NativeArray<Int>>;
	
	/** Identifier count. */
	@:transient private var fIdCount : Int;
	
	/** Identifier name indexes. */
	@:transient private var fIdName : java.NativeArray<String>;
	
	/** Identifier element indexes. */
	@:transient private var fIdElement : java.NativeArray<Int>;
	
	/** DOM2: For namespace support in the deferred case.
	*/
	private var fNamespacesEnabled : Bool;
	
	/**
	* NON-DOM: Actually creating a Document is outside the DOM's spec,
	* since it has to operate in terms of a particular implementation.
	*/
	@:overload public function new() : Void;
	
	/**
	* NON-DOM: Actually creating a Document is outside the DOM's spec,
	* since it has to operate in terms of a particular implementation.
	*/
	@:overload public function new(namespacesEnabled : Bool) : Void;
	
	/** Experimental constructor. */
	@:overload public function new(namespaces : Bool, grammarAccess : Bool) : Void;
	
	/**
	* Retrieve information describing the abilities of this particular
	* DOM implementation. Intended to support applications that may be
	* using DOMs retrieved from several different sources, potentially
	* with different underlying representations.
	*/
	@:overload override public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	/** Creates a document node in the table. */
	@:overload public function createDeferredDocument() : Int;
	
	/** Creates a doctype. */
	@:overload public function createDeferredDocumentType(rootElementName : String, publicId : String, systemId : String) : Int;
	
	@:overload public function setInternalSubset(doctypeIndex : Int, subset : String) : Void;
	
	/** Creates a notation in the table. */
	@:overload public function createDeferredNotation(notationName : String, publicId : String, systemId : String, baseURI : String) : Int;
	
	/** Creates an entity in the table. */
	@:overload public function createDeferredEntity(entityName : String, publicId : String, systemId : String, notationName : String, baseURI : String) : Int;
	
	@:overload public function getDeferredEntityBaseURI(entityIndex : Int) : String;
	
	@:overload public function setEntityInfo(currentEntityDecl : Int, version : String, encoding : String) : Void;
	
	@:overload public function setTypeInfo(elementNodeIndex : Int, type : Dynamic) : Void;
	
	/**
	* DOM Internal
	*
	* An attribute specifying the actual encoding of this document. This is
	* <code>null</code> otherwise.
	* <br> This attribute represents the property [character encoding scheme]
	* defined in .
	*/
	@:overload public function setInputEncoding(currentEntityDecl : Int, value : String) : Void;
	
	/** Creates an entity reference node in the table. */
	@:overload public function createDeferredEntityReference(name : String, baseURI : String) : Int;
	
	/**
	* Creates an element node with a URI in the table and type information.
	* @deprecated
	*/
	@:overload public function createDeferredElement(elementURI : String, elementName : String, type : Dynamic) : Int;
	
	/**
	* Creates an element node in the table.
	* @deprecated
	*/
	@:overload public function createDeferredElement(elementName : String) : Int;
	
	/**
	* Creates an element node with a URI in the table.
	*/
	@:overload public function createDeferredElement(elementURI : String, elementName : String) : Int;
	
	/**
	* This method is used by the DOMParser to create attributes.
	* @param elementNodeIndex
	* @param attrName
	* @param attrURI
	* @param attrValue
	* @param specified
	* @param id
	* @param type
	* @return int
	*/
	@:overload public function setDeferredAttribute(elementNodeIndex : Int, attrName : String, attrURI : String, attrValue : String, specified : Bool, id : Bool, type : Dynamic) : Int;
	
	/**
	* Sets an attribute on an element node.
	* @deprecated
	*/
	@:overload public function setDeferredAttribute(elementNodeIndex : Int, attrName : String, attrURI : String, attrValue : String, specified : Bool) : Int;
	
	/** Creates an attribute in the table. */
	@:overload public function createDeferredAttribute(attrName : String, attrValue : String, specified : Bool) : Int;
	
	/** Creates an attribute with a URI in the table. */
	@:overload public function createDeferredAttribute(attrName : String, attrURI : String, attrValue : String, specified : Bool) : Int;
	
	/** Creates an element definition in the table.*/
	@:overload public function createDeferredElementDefinition(elementName : String) : Int;
	
	/** Creates a text node in the table. */
	@:overload public function createDeferredTextNode(data : String, ignorableWhitespace : Bool) : Int;
	
	/** Creates a CDATA section node in the table. */
	@:overload public function createDeferredCDATASection(data : String) : Int;
	
	/** Creates a processing instruction node in the table. */
	@:overload public function createDeferredProcessingInstruction(target : String, data : String) : Int;
	
	/** Creates a comment node in the table. */
	@:overload public function createDeferredComment(data : String) : Int;
	
	/** Creates a clone of the specified node. */
	@:overload public function cloneNode(nodeIndex : Int, deep : Bool) : Int;
	
	/** Appends a child to the specified parent in the table. */
	@:overload public function appendChild(parentIndex : Int, childIndex : Int) : Void;
	
	/** Adds an attribute node to the specified element. */
	@:overload public function setAttributeNode(elemIndex : Int, attrIndex : Int) : Int;
	
	/** Adds an attribute node to the specified element. */
	@:overload public function setIdAttributeNode(elemIndex : Int, attrIndex : Int) : Void;
	
	/** Sets type of attribute */
	@:overload public function setIdAttribute(attrIndex : Int) : Void;
	
	/** Inserts a child before the specified node in the table. */
	@:overload public function insertBefore(parentIndex : Int, newChildIndex : Int, refChildIndex : Int) : Int;
	
	/** Sets the last child of the parentIndex to childIndex. */
	@:overload public function setAsLastChild(parentIndex : Int, childIndex : Int) : Void;
	
	/**
	* Returns the parent node of the given node.
	* <em>Calling this method does not free the parent index.</em>
	*/
	@:overload public function getParentNode(nodeIndex : Int) : Int;
	
	/**
	* Returns the parent node of the given node.
	* @param free True to free parent node.
	*/
	@:overload public function getParentNode(nodeIndex : Int, free : Bool) : Int;
	
	/** Returns the last child of the given node. */
	@:overload public function getLastChild(nodeIndex : Int) : Int;
	
	/**
	* Returns the last child of the given node.
	* @param free True to free child index.
	*/
	@:overload public function getLastChild(nodeIndex : Int, free : Bool) : Int;
	
	/**
	* Returns the prev sibling of the given node.
	* This is post-normalization of Text Nodes.
	*/
	@:overload public function getPrevSibling(nodeIndex : Int) : Int;
	
	/**
	* Returns the prev sibling of the given node.
	* @param free True to free sibling index.
	*/
	@:overload public function getPrevSibling(nodeIndex : Int, free : Bool) : Int;
	
	/**
	* Returns the <i>real</i> prev sibling of the given node,
	* directly from the data structures. Used by TextImpl#getNodeValue()
	* to normalize values.
	*/
	@:overload public function getRealPrevSibling(nodeIndex : Int) : Int;
	
	/**
	* Returns the <i>real</i> prev sibling of the given node.
	* @param free True to free sibling index.
	*/
	@:overload public function getRealPrevSibling(nodeIndex : Int, free : Bool) : Int;
	
	/**
	* Returns the index of the element definition in the table
	* with the specified name index, or -1 if no such definition
	* exists.
	*/
	@:overload public function lookupElementDefinition(elementName : String) : Int;
	
	/** Instantiates the requested node object. */
	@:overload public function getNodeObject(nodeIndex : Int) : com.sun.org.apache.xerces.internal.dom.DeferredNode;
	
	/** Returns the name of the given node. */
	@:overload public function getNodeName(nodeIndex : Int) : String;
	
	/**
	* Returns the name of the given node.
	* @param free True to free the string index.
	*/
	@:overload public function getNodeName(nodeIndex : Int, free : Bool) : String;
	
	/** Returns the real value of the given node. */
	@:overload public function getNodeValueString(nodeIndex : Int) : String;
	
	/**
	* Returns the real value of the given node.
	* @param free True to free the string index.
	*/
	@:overload public function getNodeValueString(nodeIndex : Int, free : Bool) : String;
	
	/**
	* Returns the value of the given node.
	*/
	@:overload public function getNodeValue(nodeIndex : Int) : String;
	
	/**
	* Clears the type info that is stored in the fNodeValue array
	* @param nodeIndex
	* @return Object - type information for the attribute/element node
	*/
	@:overload public function getTypeInfo(nodeIndex : Int) : Dynamic;
	
	/**
	* Returns the value of the given node.
	* @param free True to free the value index.
	*/
	@:overload public function getNodeValue(nodeIndex : Int, free : Bool) : String;
	
	/**
	* Returns the extra info of the given node.
	* Used by AttrImpl to store specified value (1 == true).
	*/
	@:overload public function getNodeExtra(nodeIndex : Int) : Int;
	
	/**
	* Returns the extra info of the given node.
	* @param free True to free the value index.
	*/
	@:overload public function getNodeExtra(nodeIndex : Int, free : Bool) : Int;
	
	/** Returns the type of the given node. */
	@:overload public function getNodeType(nodeIndex : Int) : java.StdTypes.Int16;
	
	/**
	* Returns the type of the given node.
	* @param free True to free type index.
	*/
	@:overload public function getNodeType(nodeIndex : Int, free : Bool) : java.StdTypes.Int16;
	
	/** Returns the attribute value of the given name. */
	@:overload public function getAttribute(elemIndex : Int, name : String) : String;
	
	/** Returns the URI of the given node. */
	@:overload public function getNodeURI(nodeIndex : Int) : String;
	
	/**
	* Returns the URI of the given node.
	* @param free True to free URI index.
	*/
	@:overload public function getNodeURI(nodeIndex : Int, free : Bool) : String;
	
	/** Registers an identifier name with a specified element node. */
	@:overload public function putIdentifier(name : String, elementNodeIndex : Int) : Void;
	
	/** Prints out the tables. */
	@:overload public function print() : Void;
	
	/** Returns the node index. */
	@:overload public function getNodeIndex() : Int;
	
	/** Synchronizes the node's data. */
	@:overload override private function synchronizeData() : Void;
	
	/**
	* Synchronizes the node's children with the internal structure.
	* Fluffing the children at once solves a lot of work to keep
	* the two structures in sync. The problem gets worse when
	* editing the tree -- this makes it a lot easier.
	*/
	@:overload override private function synchronizeChildren() : Void;
	
	/**
	* Synchronizes the node's children with the internal structure.
	* Fluffing the children at once solves a lot of work to keep
	* the two structures in sync. The problem gets worse when
	* editing the tree -- this makes it a lot easier.
	* This is not directly used in this class but this method is
	* here so that it can be shared by all deferred subclasses of AttrImpl.
	*/
	@:overload @:final private function synchronizeChildren(a : com.sun.org.apache.xerces.internal.dom.AttrImpl, nodeIndex : Int) : Void;
	
	/**
	* Synchronizes the node's children with the internal structure.
	* Fluffing the children at once solves a lot of work to keep
	* the two structures in sync. The problem gets worse when
	* editing the tree -- this makes it a lot easier.
	* This is not directly used in this class but this method is
	* here so that it can be shared by all deferred subclasses of ParentNode.
	*/
	@:overload @:final private function synchronizeChildren(p : com.sun.org.apache.xerces.internal.dom.ParentNode, nodeIndex : Int) : Void;
	
	/** Ensures that the internal tables are large enough. */
	@:overload private function ensureCapacity(chunk : Int) : Void;
	
	/** Creates a node of the specified type. */
	@:overload private function createNode(nodeType : java.StdTypes.Int16) : Int;
	
	/**
	* Performs a binary search for a target value in an array of
	* values. The array of values must be in ascending sorted order
	* before calling this method and all array values must be
	* non-negative.
	*
	* @param values  The array of values to search.
	* @param start   The starting offset of the search.
	* @param end     The ending offset of the search.
	* @param target  The target value.
	*
	* @return This function will return the <i>first</i> occurrence
	*         of the target value, or -1 if the target value cannot
	*         be found.
	*/
	@:overload private static function binarySearch(values : java.NativeArray<Int>, start : Int, end : Int, target : Int) : Int;
	
	
}
@:native('com$sun$org$apache$xerces$internal$dom$DeferredDocumentImpl$RefCount') @:internal extern class DeferredDocumentImpl_RefCount
{
	
}
/**
* A simple integer vector.
*/
@:native('com$sun$org$apache$xerces$internal$dom$DeferredDocumentImpl$IntVector') @:internal extern class DeferredDocumentImpl_IntVector
{
	/** Returns the length of this vector. */
	@:overload public function size() : Int;
	
	/** Returns the element at the specified index. */
	@:overload public function elementAt(index : Int) : Int;
	
	/** Appends an element to the end of the vector. */
	@:overload public function addElement(element : Int) : Void;
	
	/** Clears the vector. */
	@:overload public function removeAllElements() : Void;
	
	
}
