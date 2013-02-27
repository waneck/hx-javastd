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
* $Id: DTMNodeProxy.java,v
*/
extern class DTMNodeProxy implements org.w3c.dom.Node implements org.w3c.dom.Document implements org.w3c.dom.Text implements org.w3c.dom.Element implements org.w3c.dom.Attr implements org.w3c.dom.ProcessingInstruction implements org.w3c.dom.Comment implements org.w3c.dom.DocumentFragment
{
	/** The DTM for this node. */
	public var dtm : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Create a DTMNodeProxy Node representing a specific Node in a DTM
	*
	* @param dtm The DTM Reference, must be non-null.
	* @param node The DTM node handle.
	*/
	@:overload public function new(dtm : com.sun.org.apache.xml.internal.dtm.DTM, node : Int) : Void;
	
	/**
	* NON-DOM: Return the DTM model
	*
	* @return The DTM that this proxy is a representative for.
	*/
	@:overload @:final public function getDTM() : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* NON-DOM: Return the DTM node number
	*
	* @return The DTM node handle.
	*/
	@:overload @:final public function getDTMNodeNumber() : Int;
	
	/**
	* Test for equality based on node number.
	*
	* @param node A DTM node proxy reference.
	*
	* @return true if the given node has the same handle as this node.
	*/
	@:overload @:final public function equals(node : org.w3c.dom.Node) : Bool;
	
	/**
	* Test for equality based on node number.
	*
	* @param node A DTM node proxy reference.
	*
	* @return true if the given node has the same handle as this node.
	*/
	@:overload @:final public function equals(node : Dynamic) : Bool;
	
	/**
	* FUTURE DOM: Test node identity, in lieu of Node==Node
	*
	* @param other
	*
	* @return true if the given node has the same handle as this node.
	*/
	@:overload @:final public function sameNodeAs(other : org.w3c.dom.Node) : Bool;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getNodeName() : String;
	
	/**
	* A PI's "target" states what processor channel the PI's data
	* should be directed to. It is defined differently in HTML and XML.
	* <p>
	* In XML, a PI's "target" is the first (whitespace-delimited) token
	* following the "<?" token that begins the PI.
	* <p>
	* In HTML, target is always null.
	* <p>
	* Note that getNodeName is aliased to getTarget.
	*
	*
	*/
	@:overload @:final public function getTarget() : String;
	
	/**
	*
	*
	* @see org.w3c.dom.Node as of DOM Level 2
	*/
	@:overload @:final public function getLocalName() : String;
	
	/**
	* @return The prefix for this node.
	* @see org.w3c.dom.Node as of DOM Level 2
	*/
	@:overload @:final public function getPrefix() : String;
	
	/**
	*
	* @param prefix
	*
	* @throws DOMException
	* @see org.w3c.dom.Node as of DOM Level 2 -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function setPrefix(prefix : String) : Void;
	
	/**
	*
	*
	* @see org.w3c.dom.Node as of DOM Level 2
	*/
	@:overload @:final public function getNamespaceURI() : String;
	
	/** Ask whether we support a given DOM feature.
	* In fact, we do not _fully_ support any DOM feature -- we're a
	* read-only subset -- so arguably we should always return false.
	* Or we could say that we support DOM Core Level 2 but all nodes
	* are read-only. Unclear which answer is least misleading.
	*
	* NON-DOM method. This was present in early drafts of DOM Level 2,
	* but was renamed isSupported. It's present here only because it's
	* cheap, harmless, and might help some poor fool who is still trying
	* to use an early Working Draft of the DOM.
	*
	* @param feature
	* @param version
	*
	* @return false
	*/
	@:overload @:final public function supports(feature : String, version : String) : Bool;
	
	/** Ask whether we support a given DOM feature.
	* In fact, we do not _fully_ support any DOM feature -- we're a
	* read-only subset -- so arguably we should always return false.
	*
	* @param feature
	* @param version
	*
	* @return false
	* @see org.w3c.dom.Node as of DOM Level 2
	*/
	@:overload @:final public function isSupported(feature : String, version : String) : Bool;
	
	/**
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getNodeValue() : String;
	
	/**
	* @return The string value of the node
	*
	* @throws DOMException
	*/
	@:overload @:final public function getStringValue() : String;
	
	/**
	*
	* @param nodeValue
	*
	* @throws DOMException
	* @see org.w3c.dom.Node -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function setNodeValue(nodeValue : String) : Void;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getNodeType() : java.StdTypes.Int16;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getParentNode() : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getOwnerNode() : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getChildNodes() : org.w3c.dom.NodeList;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getFirstChild() : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getLastChild() : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getPreviousSibling() : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getNextSibling() : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	/**
	* Method hasAttribute
	*
	*
	* @param name
	*
	*/
	@:overload public function hasAttribute(name : String) : Bool;
	
	/**
	* Method hasAttributeNS
	*
	*
	* @param namespaceURI
	* @param localName
	*
	*
	*/
	@:overload public function hasAttributeNS(namespaceURI : String, localName : String) : Bool;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function getOwnerDocument() : org.w3c.dom.Document;
	
	/**
	*
	* @param newChild
	* @param refChild
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Node -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	*
	* @param newChild
	* @param oldChild
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Node -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	*
	* @param oldChild
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Node -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	*
	* @param newChild
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Node -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Node
	*/
	@:overload @:final public function hasChildNodes() : Bool;
	
	/**
	*
	* @param deep
	*
	*
	* @see org.w3c.dom.Node -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	*
	*
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function getDoctype() : org.w3c.dom.DocumentType;
	
	/**
	*
	*
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	/** This is a bit of a problem in DTM, since a DTM may be a Document
	* Fragment and hence not have a clear-cut Document Element. We can
	* make it work in the well-formed cases but would that be confusing for others?
	*
	*
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function getDocumentElement() : org.w3c.dom.Element;
	
	/**
	*
	* @param tagName
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createElement(tagName : String) : org.w3c.dom.Element;
	
	/**
	*
	*
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createDocumentFragment() : org.w3c.dom.DocumentFragment;
	
	/**
	*
	* @param data
	*
	*
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createTextNode(data : String) : org.w3c.dom.Text;
	
	/**
	*
	* @param data
	*
	*
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createComment(data : String) : org.w3c.dom.Comment;
	
	/**
	*
	* @param data
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createCDATASection(data : String) : org.w3c.dom.CDATASection;
	
	/**
	*
	* @param target
	* @param data
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createProcessingInstruction(target : String, data : String) : org.w3c.dom.ProcessingInstruction;
	
	/**
	*
	* @param name
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createAttribute(name : String) : org.w3c.dom.Attr;
	
	/**
	*
	* @param name
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function createEntityReference(name : String) : org.w3c.dom.EntityReference;
	
	/**
	*
	* @param tagname
	*
	*
	* @see org.w3c.dom.Document
	*/
	@:overload @:final public function getElementsByTagName(tagname : String) : org.w3c.dom.NodeList;
	
	/**
	*
	* @param importedNode
	* @param deep
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document as of DOM Level 2 -- DTMNodeProxy is read-only
	*/
	@:overload @:final public function importNode(importedNode : org.w3c.dom.Node, deep : Bool) : org.w3c.dom.Node;
	
	/**
	*
	* @param namespaceURI
	* @param qualifiedName
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document as of DOM Level 2
	*/
	@:overload @:final public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	/**
	*
	* @param namespaceURI
	* @param qualifiedName
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Document as of DOM Level 2
	*/
	@:overload @:final public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	/**
	*
	* @param namespaceURI
	* @param localName
	*
	*
	* @see org.w3c.dom.Document as of DOM Level 2
	*/
	@:overload @:final public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	/**
	*
	* @param elementId
	*
	*
	* @see org.w3c.dom.Document as of DOM Level 2
	*/
	@:overload @:final public function getElementById(elementId : String) : org.w3c.dom.Element;
	
	/**
	*
	* @param offset
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Text
	*/
	@:overload @:final public function splitText(offset : Int) : org.w3c.dom.Text;
	
	/**
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function getData() : String;
	
	/**
	*
	* @param data
	*
	* @throws DOMException
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function setData(data : String) : Void;
	
	/**
	*
	*
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function getLength() : Int;
	
	/**
	*
	* @param offset
	* @param count
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function substringData(offset : Int, count : Int) : String;
	
	/**
	*
	* @param arg
	*
	* @throws DOMException
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function appendData(arg : String) : Void;
	
	/**
	*
	* @param offset
	* @param arg
	*
	* @throws DOMException
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function insertData(offset : Int, arg : String) : Void;
	
	/**
	*
	* @param offset
	* @param count
	*
	* @throws DOMException
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function deleteData(offset : Int, count : Int) : Void;
	
	/**
	*
	* @param offset
	* @param count
	* @param arg
	*
	* @throws DOMException
	* @see org.w3c.dom.CharacterData
	*/
	@:overload @:final public function replaceData(offset : Int, count : Int, arg : String) : Void;
	
	/**
	*
	*
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function getTagName() : String;
	
	/**
	*
	* @param name
	*
	*
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function getAttribute(name : String) : String;
	
	/**
	*
	* @param name
	* @param value
	*
	* @throws DOMException
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function setAttribute(name : String, value : String) : Void;
	
	/**
	*
	* @param name
	*
	* @throws DOMException
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function removeAttribute(name : String) : Void;
	
	/**
	*
	* @param name
	*
	*
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function getAttributeNode(name : String) : org.w3c.dom.Attr;
	
	/**
	*
	* @param newAttr
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function setAttributeNode(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	*
	* @param oldAttr
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function removeAttributeNode(oldAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	* Introduced in DOM Level 2.
	*
	*
	*/
	@:overload public function hasAttributes() : Bool;
	
	/** @see org.w3c.dom.Element */
	@:overload @:final public function normalize() : Void;
	
	/**
	*
	* @param namespaceURI
	* @param localName
	*
	*
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function getAttributeNS(namespaceURI : String, localName : String) : String;
	
	/**
	*
	* @param namespaceURI
	* @param qualifiedName
	* @param value
	*
	* @throws DOMException
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function setAttributeNS(namespaceURI : String, qualifiedName : String, value : String) : Void;
	
	/**
	*
	* @param namespaceURI
	* @param localName
	*
	* @throws DOMException
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function removeAttributeNS(namespaceURI : String, localName : String) : Void;
	
	/**
	*
	* @param namespaceURI
	* @param localName
	*
	*
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function getAttributeNodeNS(namespaceURI : String, localName : String) : org.w3c.dom.Attr;
	
	/**
	*
	* @param newAttr
	*
	*
	*
	* @throws DOMException
	* @see org.w3c.dom.Element
	*/
	@:overload @:final public function setAttributeNodeNS(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	*
	*
	* @see org.w3c.dom.Attr
	*/
	@:overload @:final public function getName() : String;
	
	/**
	*
	*
	* @see org.w3c.dom.Attr
	*/
	@:overload @:final public function getSpecified() : Bool;
	
	/**
	*
	*
	* @see org.w3c.dom.Attr
	*/
	@:overload @:final public function getValue() : String;
	
	/**
	*
	* @param value
	* @see org.w3c.dom.Attr
	*/
	@:overload @:final public function setValue(value : String) : Void;
	
	/**
	* Get the owner element of an attribute.
	*
	*
	* @see org.w3c.dom.Attr as of DOM Level 2
	*/
	@:overload @:final public function getOwnerElement() : org.w3c.dom.Element;
	
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
	@:overload public function adoptNode(source : org.w3c.dom.Node) : org.w3c.dom.Node;
	
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
	@:overload public function getInputEncoding() : String;
	
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
	@:overload public function setEncoding(encoding : String) : Void;
	
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
	@:overload public function getStandalone() : Bool;
	
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
	@:overload public function setStandalone(standalone : Bool) : Void;
	
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
	@:overload public function getStrictErrorChecking() : Bool;
	
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
	@:overload public function setStrictErrorChecking(strictErrorChecking : Bool) : Void;
	
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
	@:overload public function getVersion() : String;
	
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
	@:overload public function setVersion(version : String) : Void;
	
	@:overload public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	/**
	* Retrieves the object associated to a key on a this node. The object
	* must first have been set to this node by calling
	* <code>setUserData</code> with the same key.
	* @param key The key the object is associated to.
	* @return Returns the <code>DOMObject</code> associated to the given key
	*   on this node, or <code>null</code> if there was none.
	* @since DOM Level 3
	*/
	@:overload public function getUserData(key : String) : Dynamic;
	
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
	@:overload public function getFeature(feature : String, version : String) : Dynamic;
	
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
	@:overload public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	/**
	* DOM Level 3
	* Look up the namespace URI associated to the given prefix, starting from this node.
	* Use lookupNamespaceURI(null) to lookup the default namespace
	*
	* @param namespaceURI
	* @return th URI for the namespace
	* @since DOM Level 3
	*/
	@:overload public function lookupNamespaceURI(specifiedPrefix : String) : String;
	
	/**
	*  DOM Level 3
	*  This method checks if the specified <code>namespaceURI</code> is the
	*  default namespace or not.
	*  @param namespaceURI The namespace URI to look for.
	*  @return  <code>true</code> if the specified <code>namespaceURI</code>
	*   is the default namespace, <code>false</code> otherwise.
	* @since DOM Level 3
	*/
	@:overload public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	/**
	*
	* DOM Level 3
	* Look up the prefix associated to the given namespace URI, starting from this node.
	*
	* @param namespaceURI
	* @return the prefix for the namespace
	*/
	@:overload public function lookupPrefix(namespaceURI : String) : String;
	
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
	@:overload public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
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
	@:overload public function setTextContent(textContent : String) : Void;
	
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
	@:overload public function getTextContent() : String;
	
	/**
	* Compares a node with this node with regard to their position in the
	* document.
	* @param other The node to compare against this node.
	* @return Returns how the given node is positioned relatively to this
	*   node.
	* @since DOM Level 3
	*/
	@:overload public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
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
	@:overload public function getBaseURI() : String;
	
	/**
	* DOM Level 3
	* Renaming node
	*/
	@:overload public function renameNode(n : org.w3c.dom.Node, namespaceURI : String, name : String) : org.w3c.dom.Node;
	
	/**
	*  DOM Level 3
	*  Normalize document.
	*/
	@:overload public function normalizeDocument() : Void;
	
	/**
	*  The configuration used when <code>Document.normalizeDocument</code> is
	* invoked.
	* @since DOM Level 3
	*/
	@:overload public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/** DOM Level 3 feature: documentURI */
	private var fDocumentURI : String;
	
	/**
	* DOM Level 3
	*/
	@:overload public function setDocumentURI(documentURI : String) : Void;
	
	/**
	* DOM Level 3
	* The location of the document or <code>null</code> if undefined.
	* <br>Beware that when the <code>Document</code> supports the feature
	* "HTML" , the href attribute of the HTML BASE element takes precedence
	* over this attribute.
	* @since DOM Level 3
	*/
	@:overload public function getDocumentURI() : String;
	
	/**DOM Level 3 feature: Document actualEncoding */
	private var actualEncoding : String;
	
	/**
	* DOM Level 3
	* An attribute specifying the actual encoding of this document. This is
	* <code>null</code> otherwise.
	* <br> This attribute represents the property [character encoding scheme]
	* defined in .
	* @since DOM Level 3
	*/
	@:overload public function getActualEncoding() : String;
	
	/**
	* DOM Level 3
	* An attribute specifying the actual encoding of this document. This is
	* <code>null</code> otherwise.
	* <br> This attribute represents the property [character encoding scheme]
	* defined in .
	* @since DOM Level 3
	*/
	@:overload public function setActualEncoding(value : String) : Void;
	
	/**
	* DOM Level 3
	*/
	@:overload public function replaceWholeText(content : String) : org.w3c.dom.Text;
	
	/**
	* DOM Level 3
	* Returns all text of <code>Text</code> nodes logically-adjacent text
	* nodes to this node, concatenated in document order.
	* @since DOM Level 3
	*/
	@:overload public function getWholeText() : String;
	
	/**
	* DOM Level 3
	* Returns whether this text node contains whitespace in element content,
	* often abusively called "ignorable whitespace".
	*/
	@:overload public function isElementContentWhitespace() : Bool;
	
	/**
	* NON-DOM: set the type of this attribute to be ID type.
	*
	* @param id
	*/
	@:overload public function setIdAttribute(id : Bool) : Void;
	
	/**
	* DOM Level 3: register the given attribute node as an ID attribute
	*/
	@:overload public function setIdAttribute(name : String, makeId : Bool) : Void;
	
	/**
	* DOM Level 3: register the given attribute node as an ID attribute
	*/
	@:overload public function setIdAttributeNode(at : org.w3c.dom.Attr, makeId : Bool) : Void;
	
	/**
	* DOM Level 3: register the given attribute node as an ID attribute
	*/
	@:overload public function setIdAttributeNS(namespaceURI : String, localName : String, makeId : Bool) : Void;
	
	/**
	* Method getSchemaTypeInfo.
	* @return TypeInfo
	*/
	@:overload public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	@:overload public function isId() : Bool;
	
	@:overload public function getXmlEncoding() : String;
	
	@:overload public function setXmlEncoding(xmlEncoding : String) : Void;
	
	@:overload public function getXmlStandalone() : Bool;
	
	@:overload public function setXmlStandalone(xmlStandalone : Bool) : Void;
	
	@:overload public function getXmlVersion() : String;
	
	@:overload public function setXmlVersion(xmlVersion : String) : Void;
	
	
}
/** Inner class to support getDOMImplementation.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMNodeProxy$DTMNodeProxyImplementation') @:internal extern class DTMNodeProxy_DTMNodeProxyImplementation implements org.w3c.dom.DOMImplementation
{
	@:overload public function createDocumentType(qualifiedName : String, publicId : String, systemId : String) : org.w3c.dom.DocumentType;
	
	@:overload public function createDocument(namespaceURI : String, qualfiedName : String, doctype : org.w3c.dom.DocumentType) : org.w3c.dom.Document;
	
	/** Ask whether we support a given DOM feature.
	*
	* In fact, we do not _fully_ support any DOM feature -- we're a
	* read-only subset -- so arguably we should always return false.
	* On the other hand, it may be more practically useful to return
	* true and simply treat the whole DOM as read-only, failing on the
	* methods we can't support. I'm not sure which would be more useful
	* to the caller.
	*/
	@:overload public function hasFeature(feature : String, version : String) : Bool;
	
	/**
	*  This method returns a specialized object which implements the
	* specialized APIs of the specified feature and version. The
	* specialized object may also be obtained by using binding-specific
	* casting methods but is not necessarily expected to, as discussed in Mixed DOM implementations
.
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
	@:overload public function getFeature(feature : String, version : String) : Dynamic;
	
	
}
