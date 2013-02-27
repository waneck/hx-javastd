package javax.imageio.metadata;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
@:internal extern class IIODOMException extends org.w3c.dom.DOMException
{
	@:overload public function new(code : java.StdTypes.Int16, message : String) : Void;
	
	
}
@:internal extern class IIONamedNodeMap implements org.w3c.dom.NamedNodeMap
{
	@:overload public function new(nodes : java.util.List<Dynamic>) : Void;
	
	@:overload public function getLength() : Int;
	
	@:overload public function getNamedItem(name : String) : org.w3c.dom.Node;
	
	@:overload public function item(index : Int) : org.w3c.dom.Node;
	
	@:overload public function removeNamedItem(name : String) : org.w3c.dom.Node;
	
	@:overload public function setNamedItem(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Equivalent to <code>getNamedItem(localName)</code>.
	*/
	@:overload public function getNamedItemNS(namespaceURI : String, localName : String) : org.w3c.dom.Node;
	
	/**
	* Equivalent to <code>setNamedItem(arg)</code>.
	*/
	@:overload public function setNamedItemNS(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Equivalent to <code>removeNamedItem(localName)</code>.
	*/
	@:overload public function removeNamedItemNS(namespaceURI : String, localName : String) : org.w3c.dom.Node;
	
	
}
@:internal extern class IIONodeList implements org.w3c.dom.NodeList
{
	@:overload public function new(nodes : java.util.List<Dynamic>) : Void;
	
	@:overload public function getLength() : Int;
	
	@:overload public function item(index : Int) : org.w3c.dom.Node;
	
	
}
@:internal extern class IIOAttr extends IIOMetadataNode implements org.w3c.dom.Attr
{
	@:overload public function new(owner : org.w3c.dom.Element, name : String, value : String) : Void;
	
	@:overload public function getName() : String;
	
	@:overload override public function getNodeName() : String;
	
	@:overload override public function getNodeType() : java.StdTypes.Int16;
	
	@:overload public function getSpecified() : Bool;
	
	@:overload public function getValue() : String;
	
	@:overload override public function getNodeValue() : String;
	
	@:overload public function setValue(value : String) : Void;
	
	@:overload public function setNodeValue(value : String) : Void;
	
	@:overload public function getOwnerElement() : org.w3c.dom.Element;
	
	@:overload public function setOwnerElement(owner : org.w3c.dom.Element) : Void;
	
	/** This method is new in the DOM L3 for Attr interface.
	* Could throw DOMException here, but its probably OK
	* to always return false. One reason for this, is we have no good
	* way to document this exception, since this class, IIOAttr,
	* is not a public class. The rest of the methods that throw
	* DOMException are publically documented as such on IIOMetadataNode.
	* @return false
	*/
	@:overload public function isId() : Bool;
	
	
}
extern class IIOMetadataNode implements org.w3c.dom.Element implements org.w3c.dom.NodeList
{
	/**
	* Constructs an empty <code>IIOMetadataNode</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an <code>IIOMetadataNode</code> with a given node
	* name.
	*
	* @param nodeName the name of the node, as a <code>String</code>.
	*/
	@:overload public function new(nodeName : String) : Void;
	
	/**
	* Returns the node name associated with this node.
	*
	* @return the node name, as a <code>String</code>.
	*/
	@:overload public function getNodeName() : String;
	
	/**
	* Returns the value associated with this node.
	*
	* @return the node value, as a <code>String</code>.
	*/
	@:overload public function getNodeValue() : String;
	
	/**
	* Sets the <code>String</code> value associated with this node.
	*/
	@:overload public function setNodeValue(nodeValue : String) : Void;
	
	/**
	* Returns the node type, which is always
	* <code>ELEMENT_NODE</code>.
	*
	* @return the <code>short</code> value <code>ELEMENT_NODE</code>.
	*/
	@:overload public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Returns the parent of this node.  A <code>null</code> value
	* indicates that the node is the root of its own tree.  To add a
	* node to an existing tree, use one of the
	* <code>insertBefore</code>, <code>replaceChild</code>, or
	* <code>appendChild</code> methods.
	*
	* @return the parent, as a <code>Node</code>.
	*
	* @see #insertBefore
	* @see #replaceChild
	* @see #appendChild
	*/
	@:overload public function getParentNode() : org.w3c.dom.Node;
	
	/**
	* Returns a <code>NodeList</code> that contains all children of this node.
	* If there are no children, this is a <code>NodeList</code> containing
	* no nodes.
	*
	* @return the children as a <code>NodeList</code>
	*/
	@:overload public function getChildNodes() : org.w3c.dom.NodeList;
	
	/**
	* Returns the first child of this node, or <code>null</code> if
	* the node has no children.
	*
	* @return the first child, as a <code>Node</code>, or
	* <code>null</code>
	*/
	@:overload public function getFirstChild() : org.w3c.dom.Node;
	
	/**
	* Returns the last child of this node, or <code>null</code> if
	* the node has no children.
	*
	* @return the last child, as a <code>Node</code>, or
	* <code>null</code>.
	*/
	@:overload public function getLastChild() : org.w3c.dom.Node;
	
	/**
	* Returns the previous sibling of this node, or <code>null</code>
	* if this node has no previous sibling.
	*
	* @return the previous sibling, as a <code>Node</code>, or
	* <code>null</code>.
	*/
	@:overload public function getPreviousSibling() : org.w3c.dom.Node;
	
	/**
	* Returns the next sibling of this node, or <code>null</code> if
	* the node has no next sibling.
	*
	* @return the next sibling, as a <code>Node</code>, or
	* <code>null</code>.
	*/
	@:overload public function getNextSibling() : org.w3c.dom.Node;
	
	/**
	* Returns a <code>NamedNodeMap</code> containing the attributes of
	* this node.
	*
	* @return a <code>NamedNodeMap</code> containing the attributes of
	* this node.
	*/
	@:overload public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	/**
	* Returns <code>null</code>, since <code>IIOMetadataNode</code>s
	* do not belong to any <code>Document</code>.
	*
	* @return <code>null</code>.
	*/
	@:overload public function getOwnerDocument() : org.w3c.dom.Document;
	
	/**
	* Inserts the node <code>newChild</code> before the existing
	* child node <code>refChild</code>. If <code>refChild</code> is
	* <code>null</code>, insert <code>newChild</code> at the end of
	* the list of children.
	*
	* @param newChild the <code>Node</code> to insert.
	* @param refChild the reference <code>Node</code>.
	*
	* @return the node being inserted.
	*
	* @exception IllegalArgumentException if <code>newChild</code> is
	* <code>null</code>.
	*/
	@:overload public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Replaces the child node <code>oldChild</code> with
	* <code>newChild</code> in the list of children, and returns the
	* <code>oldChild</code> node.
	*
	* @param newChild the <code>Node</code> to insert.
	* @param oldChild the <code>Node</code> to be replaced.
	*
	* @return the node replaced.
	*
	* @exception IllegalArgumentException if <code>newChild</code> is
	* <code>null</code>.
	*/
	@:overload public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Removes the child node indicated by <code>oldChild</code> from
	* the list of children, and returns it.
	*
	* @param oldChild the <code>Node</code> to be removed.
	*
	* @return the node removed.
	*
	* @exception IllegalArgumentException if <code>oldChild</code> is
	* <code>null</code>.
	*/
	@:overload public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Adds the node <code>newChild</code> to the end of the list of
	* children of this node.
	*
	* @param newChild the <code>Node</code> to insert.
	*
	* @return the node added.
	*
	* @exception IllegalArgumentException if <code>newChild</code> is
	* <code>null</code>.
	*/
	@:overload public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Returns <code>true</code> if this node has child nodes.
	*
	* @return <code>true</code> if this node has children.
	*/
	@:overload public function hasChildNodes() : Bool;
	
	/**
	* Returns a duplicate of this node.  The duplicate node has no
	* parent (<code>getParentNode</code> returns <code>null</code>).
	* If a shallow clone is being performed (<code>deep</code> is
	* <code>false</code>), the new node will not have any children or
	* siblings.  If a deep clone is being performed, the new node
	* will form the root of a complete cloned subtree.
	*
	* @param deep if <code>true</code>, recursively clone the subtree
	* under the specified node; if <code>false</code>, clone only the
	* node itself.
	*
	* @return the duplicate node.
	*/
	@:overload public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Does nothing, since <code>IIOMetadataNode</code>s do not
	* contain <code>Text</code> children.
	*/
	@:overload public function normalize() : Void;
	
	/**
	* Returns <code>false</code> since DOM features are not
	* supported.
	*
	* @return <code>false</code>.
	*
	* @param feature a <code>String</code>, which is ignored.
	* @param version a <code>String</code>, which is ignored.
	*/
	@:overload public function isSupported(feature : String, version : String) : Bool;
	
	/**
	* Returns <code>null</code>, since namespaces are not supported.
	*/
	@:overload public function getNamespaceURI() : String;
	
	/**
	* Returns <code>null</code>, since namespaces are not supported.
	*
	* @return <code>null</code>.
	*
	* @see #setPrefix
	*/
	@:overload public function getPrefix() : String;
	
	/**
	* Does nothing, since namespaces are not supported.
	*
	* @param prefix a <code>String</code>, which is ignored.
	*
	* @see #getPrefix
	*/
	@:overload public function setPrefix(prefix : String) : Void;
	
	/**
	* Equivalent to <code>getNodeName</code>.
	*
	* @return the node name, as a <code>String</code>.
	*/
	@:overload public function getLocalName() : String;
	
	/**
	* Equivalent to <code>getNodeName</code>.
	*
	* @return the node name, as a <code>String</code>
	*/
	@:overload public function getTagName() : String;
	
	/**
	* Retrieves an attribute value by name.
	* @param name The name of the attribute to retrieve.
	* @return The <code>Attr</code> value as a string, or the empty string
	* if that attribute does not have a specified or default value.
	*/
	@:overload public function getAttribute(name : String) : String;
	
	/**
	* Equivalent to <code>getAttribute(localName)</code>.
	*
	* @see #setAttributeNS
	*/
	@:overload public function getAttributeNS(namespaceURI : String, localName : String) : String;
	
	@:overload public function setAttribute(name : String, value : String) : Void;
	
	/**
	* Equivalent to <code>setAttribute(qualifiedName, value)</code>.
	*
	* @see #getAttributeNS
	*/
	@:overload public function setAttributeNS(namespaceURI : String, qualifiedName : String, value : String) : Void;
	
	@:overload public function removeAttribute(name : String) : Void;
	
	/**
	* Equivalent to <code>removeAttribute(localName)</code>.
	*/
	@:overload public function removeAttributeNS(namespaceURI : String, localName : String) : Void;
	
	@:overload public function getAttributeNode(name : String) : org.w3c.dom.Attr;
	
	/**
	* Equivalent to <code>getAttributeNode(localName)</code>.
	*
	* @see #setAttributeNodeNS
	*/
	@:overload public function getAttributeNodeNS(namespaceURI : String, localName : String) : org.w3c.dom.Attr;
	
	@:overload public function setAttributeNode(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	* Equivalent to <code>setAttributeNode(newAttr)</code>.
	*
	* @see #getAttributeNodeNS
	*/
	@:overload public function setAttributeNodeNS(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	@:overload public function removeAttributeNode(oldAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	@:overload public function getElementsByTagName(name : String) : org.w3c.dom.NodeList;
	
	/**
	* Equivalent to <code>getElementsByTagName(localName)</code>.
	*/
	@:overload public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	@:overload public function hasAttributes() : Bool;
	
	@:overload public function hasAttribute(name : String) : Bool;
	
	/**
	* Equivalent to <code>hasAttribute(localName)</code>.
	*/
	@:overload public function hasAttributeNS(namespaceURI : String, localName : String) : Bool;
	
	@:overload public function getLength() : Int;
	
	@:overload public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* Returns the <code>Object</code> value associated with this node.
	*
	* @return the user <code>Object</code>.
	*
	* @see #setUserObject
	*/
	@:overload public function getUserObject() : Dynamic;
	
	/**
	* Sets the value associated with this node.
	*
	* @param userObject the user <code>Object</code>.
	*
	* @see #getUserObject
	*/
	@:overload public function setUserObject(userObject : Dynamic) : Void;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function setIdAttribute(name : String, isId : Bool) : Void;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function setIdAttributeNS(namespaceURI : String, localName : String, isId : Bool) : Void;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function setIdAttributeNode(idAttr : org.w3c.dom.Attr, isId : Bool) : Void;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function getUserData(key : String) : Dynamic;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function getFeature(feature : String, version : String) : Dynamic;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function isSameNode(node : org.w3c.dom.Node) : Bool;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function isEqualNode(node : org.w3c.dom.Node) : Bool;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function lookupNamespaceURI(prefix : String) : String;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function lookupPrefix(namespaceURI : String) : String;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function getTextContent() : String;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function setTextContent(textContent : String) : Void;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	/**
	* This DOM Level 3 method is not supported for {@code IIOMetadataNode}
	* and will throw a {@code DOMException}.
	* @throws DOMException - always.
	*/
	@:overload public function getBaseURI() : String;
	
	
}
