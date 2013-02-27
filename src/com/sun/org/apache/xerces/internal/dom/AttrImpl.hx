package com.sun.org.apache.xerces.internal.dom;
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
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class AttrImpl extends com.sun.org.apache.xerces.internal.dom.NodeImpl implements org.w3c.dom.Attr implements org.w3c.dom.TypeInfo
{
	/** This can either be a String or the first child node. */
	private var value : Dynamic;
	
	/** Attribute name. */
	private var name : String;
	
	private var textNode : com.sun.org.apache.xerces.internal.dom.TextImpl;
	
	/**
	* Attribute has no public constructor. Please use the factory
	* method in the Document class.
	*/
	@:overload private function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, name : String) : Void;
	
	@:overload private function new() : Void;
	
	@:overload private function makeChildNode() : Void;
	
	/**
	* NON-DOM: set the type of this attribute to be ID type.
	*
	* @param id
	*/
	@:overload public function setIdAttribute(id : Bool) : Void;
	
	/** DOM Level 3: isId*/
	@:overload public function isId() : Bool;
	
	@:overload override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload override public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Returns the attribute name
	*/
	@:overload override public function getNodeName() : String;
	
	/**
	* Implicit in the rerouting of getNodeValue to getValue is the
	* need to redefine setNodeValue, for symmetry's sake.  Note that
	* since we're explicitly providing a value, Specified should be set
	* true.... even if that value equals the default.
	*/
	@:overload override public function setNodeValue(value : String) : Void;
	
	/**
	* @see org.w3c.dom.TypeInfo#getTypeName()
	*/
	@:overload public function getTypeName() : String;
	
	/**
	* @see org.w3c.dom.TypeInfo#getTypeNamespace()
	*/
	@:overload public function getTypeNamespace() : String;
	
	/**
	* Method getSchemaTypeInfo.
	* @return TypeInfo
	*/
	@:overload public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	/**
	* In Attribute objects, NodeValue is considered a synonym for
	* Value.
	*
	* @see #getValue()
	*/
	@:overload override public function getNodeValue() : String;
	
	/**
	* In Attributes, NodeName is considered a synonym for the
	* attribute's Name
	*/
	@:overload public function getName() : String;
	
	/**
	* The DOM doesn't clearly define what setValue(null) means. I've taken it
	* as "remove all children", which from outside should appear
	* similar to setting it to the empty string.
	*/
	@:overload public function setValue(newvalue : String) : Void;
	
	/**
	* The "string value" of an Attribute is its text representation,
	* which in turn is a concatenation of the string values of its children.
	*/
	@:overload public function getValue() : String;
	
	/**
	* The "specified" flag is true if and only if this attribute's
	* value was explicitly specified in the original document. Note that
	* the implementation, not the user, is in charge of this
	* property. If the user asserts an Attribute value (even if it ends
	* up having the same value as the default), it is considered a
	* specified attribute. If you really want to revert to the default,
	* delete the attribute from the Element, and the Implementation will
	* re-assert the default (if any) in its place, with the appropriate
	* specified=false setting.
	*/
	@:overload public function getSpecified() : Bool;
	
	/**
	* Returns the element node that this attribute is associated with,
	* or null if the attribute has not been added to an element.
	*
	* @see #getOwnerElement
	*
	* @deprecated Previous working draft of DOM Level 2. New method
	*             is <tt>getOwnerElement()</tt>.
	*/
	@:overload public function getElement() : org.w3c.dom.Element;
	
	/**
	* Returns the element node that this attribute is associated with,
	* or null if the attribute has not been added to an element.
	*
	* @since WD-DOM-Level-2-19990719
	*/
	@:overload public function getOwnerElement() : org.w3c.dom.Element;
	
	@:overload override public function normalize() : Void;
	
	/** NON-DOM, for use by parser */
	@:overload public function setSpecified(arg : Bool) : Void;
	
	/**
	* NON-DOM: used by the parser
	* @param type
	*/
	@:overload public function setType(type : Dynamic) : Void;
	
	/** NON-DOM method for debugging convenience */
	@:overload override public function toString() : String;
	
	/**
	* Test whether this node has any children. Convenience shorthand
	* for (Node.getFirstChild()!=null)
	*/
	@:overload override public function hasChildNodes() : Bool;
	
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
	@:overload override public function getChildNodes() : org.w3c.dom.NodeList;
	
	/** The first child of this Node, or null if none. */
	@:overload override public function getFirstChild() : org.w3c.dom.Node;
	
	/** The last child of this Node, or null if none. */
	@:overload override public function getLastChild() : org.w3c.dom.Node;
	
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
	@:overload override public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
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
	@:overload override public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
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
	@:overload override public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* NodeList method: Count the immediate children of this node
	* @return int
	*/
	@:overload override public function getLength() : Int;
	
	/**
	* NodeList method: Return the Nth immediate child of this node, or
	* null if the index is out of bounds.
	* @return org.w3c.dom.Node
	* @param Index int
	*/
	@:overload override public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* DOM Level 3 WD- Experimental.
	* Override inherited behavior from ParentNode to support deep equal.
	* isEqualNode is always deep on Attr nodes.
	*/
	@:overload override public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	/**
	* Introduced in DOM Level 3. <p>
	* Checks if a type is derived from another by restriction. See:
	* http://www.w3.org/TR/DOM-Level-3-Core/core.html#TypeInfo-isDerivedFrom
	*
	* @param ancestorNS
	*        The namspace of the ancestor type declaration
	* @param ancestorName
	*        The name of the ancestor type declaration
	* @param type
	*        The reference type definition
	*
	* @return boolean True if the type is derived by restriciton for the
	*         reference type
	*/
	@:overload public function isDerivedFrom(typeNamespaceArg : String, typeNameArg : String, derivationMethod : Int) : Bool;
	
	/**
	* Override default behavior so that if deep is true, children are also
	* toggled.
	* @see Node
	* <P>
	* Note: this will not change the state of an EntityReference or its
	* children, which are always read-only.
	*/
	@:overload override public function setReadOnly(readOnly : Bool, deep : Bool) : Void;
	
	/**
	* Override this method in subclass to hook in efficient
	* internal data structure.
	*/
	@:overload private function synchronizeChildren() : Void;
	
	
}
