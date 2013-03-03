package com.sun.org.apache.xml.internal.dtm.ref.dom2dtm;
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
* $Id: DOM2DTMdefaultNamespaceDeclarationNode.java,v 1.2.4.1 2005/09/15 08:15:11 suresh_emailid Exp $
*/
extern class DOM2DTMdefaultNamespaceDeclarationNode implements org.w3c.dom.Attr implements org.w3c.dom.TypeInfo
{
	@:overload @:public public function getNodeName() : String;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getNamespaceURI() : String;
	
	@:overload @:public public function getPrefix() : String;
	
	@:overload @:public public function getLocalName() : String;
	
	@:overload @:public public function getNodeValue() : String;
	
	@:overload @:public public function getValue() : String;
	
	@:overload @:public public function getOwnerElement() : org.w3c.dom.Element;
	
	@:overload @:public public function isSupported(feature : String, version : String) : Bool;
	
	@:overload @:public public function hasChildNodes() : Bool;
	
	@:overload @:public public function hasAttributes() : Bool;
	
	@:overload @:public public function getParentNode() : org.w3c.dom.Node;
	
	@:overload @:public public function getFirstChild() : org.w3c.dom.Node;
	
	@:overload @:public public function getLastChild() : org.w3c.dom.Node;
	
	@:overload @:public public function getPreviousSibling() : org.w3c.dom.Node;
	
	@:overload @:public public function getNextSibling() : org.w3c.dom.Node;
	
	@:overload @:public public function getSpecified() : Bool;
	
	@:overload @:public public function normalize() : Void;
	
	@:overload @:public public function getChildNodes() : org.w3c.dom.NodeList;
	
	@:overload @:public public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	@:overload @:public public function getNodeType() : java.StdTypes.Int16;
	
	@:overload @:public public function setNodeValue(value : String) : Void;
	
	@:overload @:public public function setValue(value : String) : Void;
	
	@:overload @:public public function setPrefix(value : String) : Void;
	
	@:overload @:public public function insertBefore(a : org.w3c.dom.Node, b : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function replaceChild(a : org.w3c.dom.Node, b : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function appendChild(a : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function removeChild(a : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload @:public public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload @:public public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/** Non-DOM method, part of the temporary kluge
	* %REVIEW% This would be a pruning problem, but since it will always be
	* added to the root element and we prune on elements, we shouldn't have
	* to worry.
	*/
	@:overload @:public public function getHandleOfNode() : Int;
	
	/**
	* @see org.w3c.dom.TypeInfo#getTypeName()
	*/
	@:overload @:public public function getTypeName() : String;
	
	/**
	* @see org.w3c.dom.TypeInfo#getTypeNamespace()
	*/
	@:overload @:public public function getTypeNamespace() : String;
	
	/**
	* @see or.gw3c.dom.TypeInfo#isDerivedFrom(String,String,int)
	*/
	@:overload @:public public function isDerivedFrom(ns : String, localName : String, derivationMethod : Int) : Bool;
	
	@:overload @:public public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	@:overload @:public public function isId() : Bool;
	
	/**
	* Associate an object to a key on this node. The object can later be
	* retrieved from this node by calling <code>getUserData</code> with the
	* same key.
	* @param key The key to associate the object to.
	* @param data The object to associate to the given key, or
	*   <code>null</code> to remove any existing association to that key.
	* @param handler The handler to associate to that key, or
	*   <code>null</code>.
	* @return Returns the <code>DOMObject</code> previously associated to
	*   the given key on this node, or <code>null</code> if there was none.
	* @since DOM Level 3
	*/
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
	* @param arg The node to compare equality with.
	* @param deep If <code>true</code>, recursively compare the subtrees; if
	*   <code>false</code>, compare only the nodes themselves (and its
	*   attributes, if it is an <code>Element</code>).
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
	
	
}
