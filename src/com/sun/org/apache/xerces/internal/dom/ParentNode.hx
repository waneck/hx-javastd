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
extern class ParentNode extends com.sun.org.apache.xerces.internal.dom.ChildNode
{
	/** First child. */
	@:protected private var firstChild : com.sun.org.apache.xerces.internal.dom.ChildNode;
	
	/** NodeList cache */
	@:protected @:transient private var fNodeListCache : com.sun.org.apache.xerces.internal.dom.NodeListCache;
	
	/**
	* No public constructor; only subclasses of ParentNode should be
	* instantiated, and those normally via a Document's factory methods
	*/
	@:overload @:protected private function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl) : Void;
	
	/** Constructor for serialization. */
	@:overload @:public public function new() : Void;
	
	/**
	* Returns a duplicate of a given node. You can consider this a
	* generic "copy constructor" for nodes. The newly returned object should
	* be completely independent of the source object's subtree, so changes
	* in one after the clone has been made will not affect the other.
	* <p>
	* Example: Cloning a Text node will copy both the node and the text it
	* contains.
	* <p>
	* Example: Cloning something that has children -- Element or Attr, for
	* example -- will _not_ clone those children unless a "deep clone"
	* has been requested. A shallow clone of an Attr node will yield an
	* empty Attr of the same name.
	* <p>
	* NOTE: Clones will always be read/write, even if the node being cloned
	* is read-only, to permit applications using only the DOM API to obtain
	* editable copies of locked portions of the tree.
	*/
	@:overload @:public override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Find the Document that this Node belongs to (the document in
	* whose context the Node was created). The Node may or may not
	* currently be part of that Document's actual contents.
	*/
	@:overload @:public override public function getOwnerDocument() : org.w3c.dom.Document;
	
	/**
	* Test whether this node has any children. Convenience shorthand
	* for (Node.getFirstChild()!=null)
	*/
	@:overload @:public override public function hasChildNodes() : Bool;
	
	/**
	* Obtain a NodeList enumerating all children of this node. If there
	* are none, an (initially) empty NodeList is returned.
	* <p>
	* NodeLists are "live"; as children are added/removed the NodeList
	* will immediately reflect those changes. Also, the NodeList refers
	* to the actual nodes, so changes to those nodes made via the DOM tree
	* will be reflected in the NodeList and vice versa.
	* <p>
	* In this implementation, Nodes implement the NodeList interface and
	* provide their own getChildNodes() support. Other DOMs may solve this
	* differently.
	*/
	@:overload @:public override public function getChildNodes() : org.w3c.dom.NodeList;
	
	/** The first child of this Node, or null if none. */
	@:overload @:public override public function getFirstChild() : org.w3c.dom.Node;
	
	/** The last child of this Node, or null if none. */
	@:overload @:public override public function getLastChild() : org.w3c.dom.Node;
	
	/**
	* Move one or more node(s) to our list of children. Note that this
	* implicitly removes them from their previous parent.
	*
	* @param newChild The Node to be moved to our subtree. As a
	* convenience feature, inserting a DocumentNode will instead insert
	* all its children.
	*
	* @param refChild Current child which newChild should be placed
	* immediately before. If refChild is null, the insertion occurs
	* after all existing Nodes, like appendChild().
	*
	* @return newChild, in its new state (relocated, or emptied in the case of
	* DocumentNode.)
	*
	* @throws DOMException(HIERARCHY_REQUEST_ERR) if newChild is of a
	* type that shouldn't be a child of this node, or if newChild is an
	* ancestor of this node.
	*
	* @throws DOMException(WRONG_DOCUMENT_ERR) if newChild has a
	* different owner document than we do.
	*
	* @throws DOMException(NOT_FOUND_ERR) if refChild is not a child of
	* this node.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if this node is
	* read-only.
	*/
	@:overload @:public override public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Remove a child from this Node. The removed child's subtree
	* remains intact so it may be re-inserted elsewhere.
	*
	* @return oldChild, in its new state (removed).
	*
	* @throws DOMException(NOT_FOUND_ERR) if oldChild is not a child of
	* this node.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if this node is
	* read-only.
	*/
	@:overload @:public override public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Make newChild occupy the location that oldChild used to
	* have. Note that newChild will first be removed from its previous
	* parent, if any. Equivalent to inserting newChild before oldChild,
	* then removing oldChild.
	*
	* @return oldChild, in its new state (removed).
	*
	* @throws DOMException(HIERARCHY_REQUEST_ERR) if newChild is of a
	* type that shouldn't be a child of this node, or if newChild is
	* one of our ancestors.
	*
	* @throws DOMException(WRONG_DOCUMENT_ERR) if newChild has a
	* different owner document than we do.
	*
	* @throws DOMException(NOT_FOUND_ERR) if oldChild is not a child of
	* this node.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if this node is
	* read-only.
	*/
	@:overload @:public override public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/*
	* Get Node text content
	* @since DOM Level 3
	*/
	@:overload @:public override public function getTextContent() : String;
	
	/*
	* Set Node text content
	* @since DOM Level 3
	*/
	@:overload @:public override public function setTextContent(textContent : String) : Void;
	
	/**
	* NodeList method: Count the immediate children of this node
	* @return int
	*/
	@:overload @:public override public function getLength() : Int;
	
	/**
	* NodeList method: Return the Nth immediate child of this node, or
	* null if the index is out of bounds.
	* @return org.w3c.dom.Node
	* @param index int
	*/
	@:overload @:public override public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* Create a NodeList to access children that is use by subclass elements
	* that have methods named getLength() or item(int).  ChildAndParentNode
	* optimizes getChildNodes() by implementing NodeList itself.  However if
	* a subclass Element implements methods with the same name as the NodeList
	* methods, they will override the actually methods in this class.
	* <p>
	* To use this method, the subclass should implement getChildNodes() and
	* have it call this method.  The resulting NodeList instance maybe
	* shared and cached in a transient field, but the cached value must be
	* cleared if the node is cloned.
	*/
	@:overload @:protected @:final private function getChildNodesUnoptimized() : org.w3c.dom.NodeList;
	
	/**
	* Override default behavior to call normalize() on this Node's
	* children. It is up to implementors or Node to override normalize()
	* to take action.
	*/
	@:overload @:public override public function normalize() : Void;
	
	/**
	* DOM Level 3 WD- Experimental.
	* Override inherited behavior from NodeImpl to support deep equal.
	*/
	@:overload @:public override public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	/**
	* Override default behavior so that if deep is true, children are also
	* toggled.
	* @see Node
	* <P>
	* Note: this will not change the state of an EntityReference or its
	* children, which are always read-only.
	*/
	@:overload @:public override public function setReadOnly(readOnly : Bool, deep : Bool) : Void;
	
	/**
	* Override this method in subclass to hook in efficient
	* internal data structure.
	*/
	@:overload @:protected private function synchronizeChildren() : Void;
	
	
}
/*
* a class to store some user data along with its handler
*/
@:native('com$sun$org$apache$xerces$internal$dom$ParentNode$UserDataRecord') @:internal extern class ParentNode_UserDataRecord implements java.io.Serializable
{
	
}
