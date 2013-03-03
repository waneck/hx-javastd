package com.sun.org.apache.xml.internal.utils;
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
* $Id: UnImplNode.java,v
*/
extern class UnImplNode implements org.w3c.dom.Node implements org.w3c.dom.Element implements org.w3c.dom.NodeList implements org.w3c.dom.Document
{
	/**
	* Constructor UnImplNode
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Throw an error.
	*
	* @param msg Message Key for the error
	*/
	@:overload @:public public function error(msg : String) : Void;
	
	/**
	* Throw an error.
	*
	* @param msg Message Key for the error
	* @param args Array of arguments to be used in the error message
	*/
	@:overload @:public public function error(msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param newChild New node to append to the list of this node's children
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return false
	*/
	@:overload @:public public function hasChildNodes() : Bool;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return 0
	*/
	@:overload @:public public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getParentNode() : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getChildNodes() : org.w3c.dom.NodeList;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getFirstChild() : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getLastChild() : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getNextSibling() : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.NodeList
	*
	* @return 0
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Unimplemented. See org.w3c.dom.NodeList
	*
	* @param index index of a child of this node in its list of children
	*
	* @return null
	*/
	@:overload @:public public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getOwnerDocument() : org.w3c.dom.Document;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getTagName() : String;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getNodeName() : String;
	
	/** Unimplemented. See org.w3c.dom.Node */
	@:overload @:public public function normalize() : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param name Name of the element
	*
	* @return null
	*/
	@:overload @:public public function getElementsByTagName(name : String) : org.w3c.dom.NodeList;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param oldAttr Attribute to be removed from this node's list of attributes
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function removeAttributeNode(oldAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param newAttr Attribute node to be added to this node's list of attributes
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function setAttributeNode(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	*
	* @param name Name of an attribute
	*
	* @return false
	*/
	@:overload @:public public function hasAttribute(name : String) : Bool;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	*
	* @param name
	* @param x
	*
	* @return false
	*/
	@:overload @:public public function hasAttributeNS(name : String, x : String) : Bool;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	*
	* @param name Attribute node name
	*
	* @return null
	*/
	@:overload @:public public function getAttributeNode(name : String) : org.w3c.dom.Attr;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param name Attribute node name to remove from list of attributes
	*
	* @throws DOMException
	*/
	@:overload @:public public function removeAttribute(name : String) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param name Name of attribute to set
	* @param value Value of attribute
	*
	* @throws DOMException
	*/
	@:overload @:public public function setAttribute(name : String, value : String) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param name Name of attribute to get
	*
	* @return null
	*/
	@:overload @:public public function getAttribute(name : String) : String;
	
	/**
	* Unimplemented. Introduced in DOM Level 2.
	*
	* @return false
	*/
	@:overload @:public public function hasAttributes() : Bool;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param namespaceURI Namespace URI of the element
	* @param localName Local part of qualified name of the element
	*
	* @return null
	*/
	@:overload @:public public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param newAttr Attribute to set
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function setAttributeNodeNS(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param namespaceURI Namespace URI of attribute node to get
	* @param localName Local part of qualified name of attribute node to get
	*
	* @return null
	*/
	@:overload @:public public function getAttributeNodeNS(namespaceURI : String, localName : String) : org.w3c.dom.Attr;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param namespaceURI Namespace URI of attribute node to remove
	* @param localName Local part of qualified name of attribute node to remove
	*
	* @throws DOMException
	*/
	@:overload @:public public function removeAttributeNS(namespaceURI : String, localName : String) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param namespaceURI Namespace URI of attribute node to set
	* @param qualifiedName qualified name of attribute
	* @param value value of attribute
	*
	* @throws DOMException
	*/
	@:overload @:public public function setAttributeNS(namespaceURI : String, qualifiedName : String, value : String) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Element
	*
	* @param namespaceURI Namespace URI of attribute node to get
	* @param localName Local part of qualified name of attribute node to get
	*
	* @return null
	*/
	@:overload @:public public function getAttributeNS(namespaceURI : String, localName : String) : String;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getPreviousSibling() : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param deep Flag indicating whether to clone deep (clone member variables)
	*
	* @return null
	*/
	@:overload @:public public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function getNodeValue() : String;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param nodeValue Value to set this node to
	*
	* @throws DOMException
	*/
	@:overload @:public public function setNodeValue(nodeValue : String) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param value Value to set this node to
	*
	* @throws DOMException
	*/
	@:overload @:public public function setValue(value : String) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getOwnerElement() : org.w3c.dom.Element;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return False
	*/
	@:overload @:public public function getSpecified() : Bool;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param newChild New child node to insert
	* @param refChild Insert in front of this child
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param newChild Replace existing child with this one
	* @param oldChild Existing child to be replaced
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param oldChild Child to be removed
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Tests whether the DOM implementation implements a specific feature and
	* that feature is supported by this node.
	* @param feature The name of the feature to test. This is the same name
	*   which can be passed to the method <code>hasFeature</code> on
	*   <code>DOMImplementation</code>.
	* @param version This is the version number of the feature to test. In
	*   Level 2, version 1, this is the string "2.0". If the version is not
	*   specified, supporting any version of the feature will cause the
	*   method to return <code>true</code>.
	*
	* @return Returns <code>false</code>
	* @since DOM Level 2
	*/
	@:overload @:public public function isSupported(feature : String, version : String) : Bool;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getNamespaceURI() : String;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getPrefix() : String;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @param prefix Prefix to set for this node
	*
	* @throws DOMException
	*/
	@:overload @:public public function setPrefix(prefix : String) : Void;
	
	/**
	* Unimplemented. See org.w3c.dom.Node
	*
	* @return null
	*/
	@:overload @:public public function getLocalName() : String;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @return null
	*/
	@:overload @:public public function getDoctype() : org.w3c.dom.DocumentType;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @return null
	*/
	@:overload @:public public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @return null
	*/
	@:overload @:public public function getDocumentElement() : org.w3c.dom.Element;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param tagName Element tag name
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function createElement(tagName : String) : org.w3c.dom.Element;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @return null
	*/
	@:overload @:public public function createDocumentFragment() : org.w3c.dom.DocumentFragment;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param data Data for text node
	*
	* @return null
	*/
	@:overload @:public public function createTextNode(data : String) : org.w3c.dom.Text;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param data Data for comment
	*
	* @return null
	*/
	@:overload @:public public function createComment(data : String) : org.w3c.dom.Comment;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param data Data for CDATA section
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function createCDATASection(data : String) : org.w3c.dom.CDATASection;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param target Target for Processing instruction
	* @param data Data for Processing instruction
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function createProcessingInstruction(target : String, data : String) : org.w3c.dom.ProcessingInstruction;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param name Attribute name
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function createAttribute(name : String) : org.w3c.dom.Attr;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param name Entity Reference name
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function createEntityReference(name : String) : org.w3c.dom.EntityReference;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param importedNode The node to import.
	* @param deep If <code>true</code>, recursively import the subtree under
	*   the specified node; if <code>false</code>, import only the node
	*   itself, as explained above. This has no effect on <code>Attr</code>
	*   , <code>EntityReference</code>, and <code>Notation</code> nodes.
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function importNode(importedNode : org.w3c.dom.Node, deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param namespaceURI Namespace URI for the element
	* @param qualifiedName Qualified name of the element
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param namespaceURI Namespace URI of the attribute
	* @param qualifiedName Qualified name of the attribute
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	/**
	* Unimplemented. See org.w3c.dom.Document
	*
	* @param elementId ID of the element to get
	*
	* @return null
	*/
	@:overload @:public public function getElementById(elementId : String) : org.w3c.dom.Element;
	
	/**
	* Set Node data
	*
	*
	* @param data data to set for this node
	*
	* @throws DOMException
	*/
	@:overload @:public public function setData(data : String) : Void;
	
	/**
	* Unimplemented.
	*
	* @param offset Start offset of substring to extract.
	* @param count The length of the substring to extract.
	*
	* @return null
	*
	* @throws DOMException
	*/
	@:overload @:public public function substringData(offset : Int, count : Int) : String;
	
	/**
	* Unimplemented.
	*
	* @param arg String data to append
	*
	* @throws DOMException
	*/
	@:overload @:public public function appendData(arg : String) : Void;
	
	/**
	* Unimplemented.
	*
	* @param offset Start offset of substring to insert.
	* @param arg The (sub)string to insert.
	*
	* @throws DOMException
	*/
	@:overload @:public public function insertData(offset : Int, arg : String) : Void;
	
	/**
	* Unimplemented.
	*
	* @param offset Start offset of substring to delete.
	* @param count The length of the substring to delete.
	*
	* @throws DOMException
	*/
	@:overload @:public public function deleteData(offset : Int, count : Int) : Void;
	
	/**
	* Unimplemented.
	*
	* @param offset Start offset of substring to replace.
	* @param count The length of the substring to replace.
	* @param arg substring to replace with
	*
	* @throws DOMException
	*/
	@:overload @:public public function replaceData(offset : Int, count : Int, arg : String) : Void;
	
	/**
	* Unimplemented.
	*
	* @param offset Offset into text to split
	*
	* @return null, unimplemented
	*
	* @throws DOMException
	*/
	@:overload @:public public function splitText(offset : Int) : org.w3c.dom.Text;
	
	/**
	* NEEDSDOC Method adoptNode
	*
	*
	* NEEDSDOC @param source
	*
	* NEEDSDOC (adoptNode) @return
	*
	* @throws DOMException
	*/
	@:overload @:public public function adoptNode(source : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying, as part of the XML declaration, the encoding
	* of this document. This is <code>null</code> when unspecified.
	* @since DOM Level 3
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload @:public public function getInputEncoding() : String;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying, as part of the XML declaration, the encoding
	* of this document. This is <code>null</code> when unspecified.
	* @since DOM Level 3
	*
	* NEEDSDOC @param encoding
	*/
	@:overload @:public public function setInputEncoding(encoding : String) : Void;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying, as part of the XML declaration, whether this
	* document is standalone.
	* @since DOM Level 3
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload @:public public function getStandalone() : Bool;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying, as part of the XML declaration, whether this
	* document is standalone.
	* @since DOM Level 3
	*
	* NEEDSDOC @param standalone
	*/
	@:overload @:public public function setStandalone(standalone : Bool) : Void;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying whether errors checking is enforced or not.
	* When set to <code>false</code>, the implementation is free to not
	* test every possible error case normally defined on DOM operations,
	* and not raise any <code>DOMException</code>. In case of error, the
	* behavior is undefined. This attribute is <code>true</code> by
	* defaults.
	* @since DOM Level 3
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload @:public public function getStrictErrorChecking() : Bool;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying whether errors checking is enforced or not.
	* When set to <code>false</code>, the implementation is free to not
	* test every possible error case normally defined on DOM operations,
	* and not raise any <code>DOMException</code>. In case of error, the
	* behavior is undefined. This attribute is <code>true</code> by
	* defaults.
	* @since DOM Level 3
	*
	* NEEDSDOC @param strictErrorChecking
	*/
	@:overload @:public public function setStrictErrorChecking(strictErrorChecking : Bool) : Void;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying, as part of the XML declaration, the version
	* number of this document. This is <code>null</code> when unspecified.
	* @since DOM Level 3
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload @:public public function getVersion() : String;
	
	/**
	* <p>EXPERIMENTAL! Based on the <a
	* href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010605'>Document
	* Object Model (DOM) Level 3 Core Working Draft of 5 June 2001.</a>.
	* <p>
	* An attribute specifying, as part of the XML declaration, the version
	* number of this document. This is <code>null</code> when unspecified.
	* @since DOM Level 3
	*
	* NEEDSDOC @param version
	*/
	@:overload @:public public function setVersion(version : String) : Void;
	
	@:overload @:public public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	/**
	* Retrieves the object associated to a key on a this node. The object
	* must first have been set to this node by calling
	* <code>setUserData</code> with the same key.
	* @param key The key the object is associated to.
	* @return Returns the <code>DOMObject</code> associated to the given key
	*   on this node, or <code>null</code> if there was none.
	* @since DOM Level 3
	*/
	@:overload @:public public function getUserData(key : String) : Dynamic;
	
	/**
	*  This method returns a specialized object which implements the
	* specialized APIs of the specified feature and version. The
	* specialized object may also be obtained by using binding-specific
	* casting methods but is not necessarily expected to, as discussed in Mixed DOM implementations.
	* @param feature The name of the feature requested (case-insensitive).
	* @param version  This is the version number of the feature to test. If
	*   the version is <code>null</code> or the empty string, supporting
	*   any version of the feature will cause the method to return an
	*   object that supports at least one version of the feature.
	* @return  Returns an object which implements the specialized APIs of
	*   the specified feature and version, if any, or <code>null</code> if
	*   there is no object which implements interfaces associated with that
	*   feature. If the <code>DOMObject</code> returned by this method
	*   implements the <code>Node</code> interface, it must delegate to the
	*   primary core <code>Node</code> and not return results inconsistent
	*   with the primary core <code>Node</code> such as attributes,
	*   childNodes, etc.
	* @since DOM Level 3
	*/
	@:overload @:public public function getFeature(feature : String, version : String) : Dynamic;
	
	/**
	* Tests whether two nodes are equal.
	* <br>This method tests for equality of nodes, not sameness (i.e.,
	* whether the two nodes are references to the same object) which can be
	* tested with <code>Node.isSameNode</code>. All nodes that are the same
	* will also be equal, though the reverse may not be true.
	* <br>Two nodes are equal if and only if the following conditions are
	* satisfied: The two nodes are of the same type.The following string
	* attributes are equal: <code>nodeName</code>, <code>localName</code>,
	* <code>namespaceURI</code>, <code>prefix</code>, <code>nodeValue</code>
	* , <code>baseURI</code>. This is: they are both <code>null</code>, or
	* they have the same length and are character for character identical.
	* The <code>attributes</code> <code>NamedNodeMaps</code> are equal.
	* This is: they are both <code>null</code>, or they have the same
	* length and for each node that exists in one map there is a node that
	* exists in the other map and is equal, although not necessarily at the
	* same index.The <code>childNodes</code> <code>NodeLists</code> are
	* equal. This is: they are both <code>null</code>, or they have the
	* same length and contain equal nodes at the same index. This is true
	* for <code>Attr</code> nodes as for any other type of node. Note that
	* normalization can affect equality; to avoid this, nodes should be
	* normalized before being compared.
	* <br>For two <code>DocumentType</code> nodes to be equal, the following
	* conditions must also be satisfied: The following string attributes
	* are equal: <code>publicId</code>, <code>systemId</code>,
	* <code>internalSubset</code>.The <code>entities</code>
	* <code>NamedNodeMaps</code> are equal.The <code>notations</code>
	* <code>NamedNodeMaps</code> are equal.
	* <br>On the other hand, the following do not affect equality: the
	* <code>ownerDocument</code> attribute, the <code>specified</code>
	* attribute for <code>Attr</code> nodes, the
	* <code>isWhitespaceInElementContent</code> attribute for
	* <code>Text</code> nodes, as well as any user data or event listeners
	* registered on the nodes.
	*
	* @param arg The node to compare equality with.
	* @return If the nodes, and possibly subtrees are equal,
	*   <code>true</code> otherwise <code>false</code>.
	* @since DOM Level 3
	*/
	@:overload @:public public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	/**
	* DOM Level 3 - Experimental:
	* Look up the namespace URI associated to the given prefix, starting from this node.
	* Use lookupNamespaceURI(null) to lookup the default namespace
	*
	* @param namespaceURI
	* @return th URI for the namespace
	* @since DOM Level 3
	*/
	@:overload @:public public function lookupNamespaceURI(specifiedPrefix : String) : String;
	
	/**
	*  DOM Level 3: Experimental
	*  This method checks if the specified <code>namespaceURI</code> is the
	*  default namespace or not.
	*  @param namespaceURI The namespace URI to look for.
	*  @return  <code>true</code> if the specified <code>namespaceURI</code>
	*   is the default namespace, <code>false</code> otherwise.
	* @since DOM Level 3
	*/
	@:overload @:public public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	/**
	*
	* DOM Level 3 - Experimental:
	* Look up the prefix associated to the given namespace URI, starting from this node.
	*
	* @param namespaceURI
	* @return the prefix for the namespace
	*/
	@:overload @:public public function lookupPrefix(namespaceURI : String) : String;
	
	/**
	* Returns whether this node is the same node as the given one.
	* <br>This method provides a way to determine whether two
	* <code>Node</code> references returned by the implementation reference
	* the same object. When two <code>Node</code> references are references
	* to the same object, even if through a proxy, the references may be
	* used completely interchangably, such that all attributes have the
	* same values and calling the same DOM method on either reference
	* always has exactly the same effect.
	* @param other The node to test against.
	* @return Returns <code>true</code> if the nodes are the same,
	*   <code>false</code> otherwise.
	* @since DOM Level 3
	*/
	@:overload @:public public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
	/**
	* This attribute returns the text content of this node and its
	* descendants. When it is defined to be null, setting it has no effect.
	* When set, any possible children this node may have are removed and
	* replaced by a single <code>Text</code> node containing the string
	* this attribute is set to. On getting, no serialization is performed,
	* the returned string does not contain any markup. No whitespace
	* normalization is performed, the returned string does not contain the
	* element content whitespaces . Similarly, on setting, no parsing is
	* performed either, the input string is taken as pure textual content.
	* <br>The string returned is made of the text content of this node
	* depending on its type, as defined below:
	* <table border='1'>
	* <tr>
	* <th>Node type</th>
	* <th>Content</th>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>
	* ELEMENT_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE,
	* DOCUMENT_FRAGMENT_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>concatenation of the <code>textContent</code>
	* attribute value of every child node, excluding COMMENT_NODE and
	* PROCESSING_INSTRUCTION_NODE nodes</td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>ATTRIBUTE_NODE, TEXT_NODE,
	* CDATA_SECTION_NODE, COMMENT_NODE, PROCESSING_INSTRUCTION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>
	* <code>nodeValue</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>DOCUMENT_NODE, DOCUMENT_TYPE_NODE, NOTATION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>
	* null</td>
	* </tr>
	* </table>
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.
	* @exception DOMException
	*   DOMSTRING_SIZE_ERR: Raised when it would return more characters than
	*   fit in a <code>DOMString</code> variable on the implementation
	*   platform.
	* @since DOM Level 3
	*/
	@:overload @:public public function setTextContent(textContent : String) : Void;
	
	/**
	* This attribute returns the text content of this node and its
	* descendants. When it is defined to be null, setting it has no effect.
	* When set, any possible children this node may have are removed and
	* replaced by a single <code>Text</code> node containing the string
	* this attribute is set to. On getting, no serialization is performed,
	* the returned string does not contain any markup. No whitespace
	* normalization is performed, the returned string does not contain the
	* element content whitespaces . Similarly, on setting, no parsing is
	* performed either, the input string is taken as pure textual content.
	* <br>The string returned is made of the text content of this node
	* depending on its type, as defined below:
	* <table border='1'>
	* <tr>
	* <th>Node type</th>
	* <th>Content</th>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>
	* ELEMENT_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE,
	* DOCUMENT_FRAGMENT_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>concatenation of the <code>textContent</code>
	* attribute value of every child node, excluding COMMENT_NODE and
	* PROCESSING_INSTRUCTION_NODE nodes</td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>ATTRIBUTE_NODE, TEXT_NODE,
	* CDATA_SECTION_NODE, COMMENT_NODE, PROCESSING_INSTRUCTION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>
	* <code>nodeValue</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>DOCUMENT_NODE, DOCUMENT_TYPE_NODE, NOTATION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>
	* null</td>
	* </tr>
	* </table>
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.
	* @exception DOMException
	*   DOMSTRING_SIZE_ERR: Raised when it would return more characters than
	*   fit in a <code>DOMString</code> variable on the implementation
	*   platform.
	* @since DOM Level 3
	*/
	@:overload @:public public function getTextContent() : String;
	
	/**
	* Compares a node with this node with regard to their position in the
	* document.
	* @param other The node to compare against this node.
	* @return Returns how the given node is positioned relatively to this
	*   node.
	* @since DOM Level 3
	*/
	@:overload @:public public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	/**
	* The absolute base URI of this node or <code>null</code> if undefined.
	* This value is computed according to . However, when the
	* <code>Document</code> supports the feature "HTML" , the base URI is
	* computed using first the value of the href attribute of the HTML BASE
	* element if any, and the value of the <code>documentURI</code>
	* attribute from the <code>Document</code> interface otherwise.
	* <br> When the node is an <code>Element</code>, a <code>Document</code>
	* or a a <code>ProcessingInstruction</code>, this attribute represents
	* the properties [base URI] defined in . When the node is a
	* <code>Notation</code>, an <code>Entity</code>, or an
	* <code>EntityReference</code>, this attribute represents the
	* properties [declaration base URI] in the . How will this be affected
	* by resolution of relative namespace URIs issue?It's not.Should this
	* only be on Document, Element, ProcessingInstruction, Entity, and
	* Notation nodes, according to the infoset? If not, what is it equal to
	* on other nodes? Null? An empty string? I think it should be the
	* parent's.No.Should this be read-only and computed or and actual
	* read-write attribute?Read-only and computed (F2F 19 Jun 2000 and
	* teleconference 30 May 2001).If the base HTML element is not yet
	* attached to a document, does the insert change the Document.baseURI?
	* Yes. (F2F 26 Sep 2001)
	* @since DOM Level 3
	*/
	@:overload @:public public function getBaseURI() : String;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Renaming node
	*/
	@:overload @:public public function renameNode(n : org.w3c.dom.Node, namespaceURI : String, name : String) : org.w3c.dom.Node;
	
	/**
	*  DOM Level 3 WD - Experimental
	*  Normalize document.
	*/
	@:overload @:public public function normalizeDocument() : Void;
	
	/**
	*  The configuration used when <code>Document.normalizeDocument</code> is
	* invoked.
	* @since DOM Level 3
	*/
	@:overload @:public public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/**Experimental DOM Level 3 feature: documentURI */
	@:protected private var fDocumentURI : String;
	
	/**
	* DOM Level 3 WD - Experimental.
	*/
	@:overload @:public public function setDocumentURI(documentURI : String) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	* The location of the document or <code>null</code> if undefined.
	* <br>Beware that when the <code>Document</code> supports the feature
	* "HTML" , the href attribute of the HTML BASE element takes precedence
	* over this attribute.
	* @since DOM Level 3
	*/
	@:overload @:public public function getDocumentURI() : String;
	
	/**Experimental DOM Level 3 feature: Document actualEncoding */
	@:protected private var actualEncoding : String;
	
	/**
	* DOM Level 3 WD - Experimental.
	* An attribute specifying the actual encoding of this document. This is
	* <code>null</code> otherwise.
	* <br> This attribute represents the property [character encoding scheme]
	* defined in .
	* @since DOM Level 3
	*/
	@:overload @:public public function getActualEncoding() : String;
	
	/**
	* DOM Level 3 WD - Experimental.
	* An attribute specifying the actual encoding of this document. This is
	* <code>null</code> otherwise.
	* <br> This attribute represents the property [character encoding scheme]
	* defined in .
	* @since DOM Level 3
	*/
	@:overload @:public public function setActualEncoding(value : String) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	*/
	@:overload @:public public function replaceWholeText(content : String) : org.w3c.dom.Text;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Returns all text of <code>Text</code> nodes logically-adjacent text
	* nodes to this node, concatenated in document order.
	* @since DOM Level 3
	*/
	@:overload @:public public function getWholeText() : String;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Returns whether this text node contains whitespace in element content,
	* often abusively called "ignorable whitespace".
	*/
	@:overload @:public public function isWhitespaceInElementContent() : Bool;
	
	/**
	* NON-DOM: set the type of this attribute to be ID type.
	*
	* @param id
	*/
	@:overload @:public public function setIdAttribute(id : Bool) : Void;
	
	/**
	* DOM Level 3: register the given attribute node as an ID attribute
	*/
	@:overload @:public public function setIdAttribute(name : String, makeId : Bool) : Void;
	
	/**
	* DOM Level 3: register the given attribute node as an ID attribute
	*/
	@:overload @:public public function setIdAttributeNode(at : org.w3c.dom.Attr, makeId : Bool) : Void;
	
	/**
	* DOM Level 3: register the given attribute node as an ID attribute
	*/
	@:overload @:public public function setIdAttributeNS(namespaceURI : String, localName : String, makeId : Bool) : Void;
	
	/**
	* Method getSchemaTypeInfo.
	* @return TypeInfo
	*/
	@:overload @:public public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	@:overload @:public public function isId() : Bool;
	
	@:overload @:public public function getXmlEncoding() : String;
	
	@:overload @:public public function setXmlEncoding(xmlEncoding : String) : Void;
	
	@:overload @:public public function getXmlStandalone() : Bool;
	
	@:overload @:public public function setXmlStandalone(xmlStandalone : Bool) : Void;
	
	@:overload @:public public function getXmlVersion() : String;
	
	@:overload @:public public function setXmlVersion(xmlVersion : String) : Void;
	
	
}
