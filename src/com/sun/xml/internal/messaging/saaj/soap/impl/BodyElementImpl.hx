package com.sun.xml.internal.messaging.saaj.soap.impl;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BodyElementImpl extends com.sun.org.apache.xerces.internal.dom.ElementImpl implements javax.xml.soap.SOAPBodyElement
{
	/**
	* All elements of the SOAP-ENV:BODY.
	*
	* @author Anil Vijendran (akv@eng.sun.com)
	*/
	@:overload @:public public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, qname : javax.xml.soap.Name) : Void;
	
	@:overload @:public public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, qname : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function setParentElement(element : javax.xml.soap.SOAPElement) : Void;
	
	/**
	* The first child of this node. If there is no such node, this returns
	* <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getFirstChild() : org.w3c.dom.Node;
	
	/**
	* Creates a <code>QName</code> whose namespace URI is the one associated
	* with the parameter, <code>prefix</code>, in the context of this
	* <code>SOAPElement</code>. The remaining elements of the new
	* <code>QName</code> are taken directly from the parameters,
	* <code>localName</code> and <code>prefix</code>.
	*
	* @param localName
	*          a <code>String</code> containing the local part of the name.
	* @param prefix
	*          a <code>String</code> containing the prefix for the name.
	*
	* @return a <code>QName</code> with the specified <code>localName</code>
	*          and <code>prefix</code>, and with a namespace that is associated
	*          with the <code>prefix</code> in the context of this
	*          <code>SOAPElement</code>. This namespace will be the same as
	*          the one that would be returned by
	*          <code>{@link #getNamespaceURI(String)}</code> if it were given
	*          <code>prefix</code> as it's parameter.
	*
	* @exception SOAPException if the <code>QName</code> cannot be created.
	*
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function createQName(localName : String, prefix : String) : javax.xml.namespace.QName;
	
	/**
	* Returns whether this node has any children.
	* @return Returns <code>true</code> if this node has any children,
	*   <code>false</code> otherwise.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function hasChildNodes() : Bool;
	
	/**
	* Returns the qname of this <code>SOAPElement</code> object.
	*
	* @return a <code>QName</code> object with the qname of this
	*         <code>SOAPElement</code> object
	* @see SOAPElement#getElementName()
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getElementQName() : javax.xml.namespace.QName;
	
	/**
	* Retrieves an attribute value by name.
	* @param name The name of the attribute to retrieve.
	* @return The <code>Attr</code> value as a string, or the empty string
	*   if that attribute does not have a specified or default value.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAttribute(name : String) : String;
	
	/**
	* Returns <code>true</code> when an attribute with a given local name and
	* namespace URI is specified on this element or has a default value,
	* <code>false</code> otherwise.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* <code>namespaceURI</code> parameter for methods if they wish to have
	* no namespace.
	* @param namespaceURI The namespace URI of the attribute to look for.
	* @param localName The local name of the attribute to look for.
	* @return <code>true</code> if an attribute with the given local name
	*   and namespace URI is specified or has a default value on this
	*   element, <code>false</code> otherwise.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: May be raised if the implementation does not
	*   support the feature <code>"XML"</code> and the language exposed
	*   through the Document does not support XML Namespaces (such as [<a href='http://www.w3.org/TR/1999/REC-html401-19991224/'>HTML 4.01</a>]).
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function hasAttributeNS(namespaceURI : String, localName : String) : Bool;
	
	/**
	* Removes the attribute with the specified name.
	*
	* @param name the <code>Name</code> object with the name of the
	*        attribute to be removed
	* @return <code>true</code> if the attribute was
	*         removed successfully; <code>false</code> if it was not
	* @see SOAPElement#removeAttribute(javax.xml.namespace.QName)
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function removeAttribute(name : javax.xml.soap.Name) : Bool;
	
	/**
	* Returns an <code>Iterator</code> over all the immediate child
	* {@link Node}s of this element. This includes <code>javax.xml.soap.Text</code>
	* objects as well as <code>SOAPElement</code> objects.
	* <p>
	* Calling this method may cause child <code>Element</code>,
	* <code>SOAPElement</code> and <code>org.w3c.dom.Text</code> nodes to be
	* replaced by <code>SOAPElement</code>, <code>SOAPHeaderElement</code>,
	* <code>SOAPBodyElement</code> or <code>javax.xml.soap.Text</code> nodes as
	* appropriate for the type of this parent node. As a result the calling
	* application must treat any existing references to these child nodes that
	* have been obtained through DOM APIs as invalid and either discard them or
	* refresh them with the values returned by this <code>Iterator</code>. This
	* behavior can be avoided by calling the equivalent DOM APIs. See
	* {@link <a HREF="package-summary.html#package_description">javax.xml.soap<a>}
	* for more details.
	*
	* @return an iterator with the content of this <code>SOAPElement</code>
	*         object
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getChildElements() : java.util.Iterator<Dynamic>;
	
	/**
	* Associate an object to a key on this node. The object can later be
	* retrieved from this node by calling <code>getUserData</code> with the
	* same key.
	* @param key The key to associate the object to.
	* @param data The object to associate to the given key, or
	*   <code>null</code> to remove any existing association to that key.
	* @param handler The handler to associate to that key, or
	*   <code>null</code>.
	* @return Returns the <code>DOMUserData</code> previously associated to
	*   the given key on this node, or <code>null</code> if there was none.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	/**
	* The parent of this node. All nodes, except <code>Attr</code>,
	* <code>Document</code>, <code>DocumentFragment</code>,
	* <code>Entity</code>, and <code>Notation</code> may have a parent.
	* However, if a node has just been created and not yet added to the
	* tree, or if it has been removed from the tree, this is
	* <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getParentNode() : org.w3c.dom.Node;
	
	/**
	* Returns whether this node (if it is an element) has any attributes.
	* @return Returns <code>true</code> if this node has any attributes,
	*   <code>false</code> otherwise.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function hasAttributes() : Bool;
	
	/**
	* Adds an attribute with the specified name and value to this
	* <code>SOAPElement</code> object.
	*
	* @param name a <code>Name</code> object with the name of the attribute
	* @param value a <code>String</code> giving the value of the attribute
	* @return the <code>SOAPElement</code> object into which the attribute was
	*         inserted
	*
	* @exception SOAPException if there is an error in creating the
	*                          Attribute, or it is invalid to set
	an attribute with <code>Name</code>
	<code>name</code> on this SOAPElement.
	* @see SOAPElement#addAttribute(javax.xml.namespace.QName, String)
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addAttribute(name : javax.xml.soap.Name, value : String) : javax.xml.soap.SOAPElement;
	
	/**
	* Look up the namespace URI associated to the given prefix, starting from
	* this node.
	* <br>See  for details on the algorithm used by this method.
	* @param prefix The prefix to look for. If this parameter is
	*   <code>null</code>, the method will return the default namespace URI
	*   if any.
	* @return Returns the associated namespace URI or <code>null</code> if
	*   none is found.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function lookupNamespaceURI(prefix : String) : String;
	
	/**
	* Add a <code>SOAPElement</code> as a child of this
	* <code>SOAPElement</code> instance. The <code>SOAPElement</code>
	* is expected to be created by a
	* <code>SOAPFactory</code>. Callers should not rely on the
	* element instance being added as is into the XML
	* tree. Implementations could end up copying the content
	* of the <code>SOAPElement</code> passed into an instance of
	* a different <code>SOAPElement</code> implementation. For
	* instance if <code>addChildElement()</code> is called on a
	* <code>SOAPHeader</code>, <code>element</code> will be copied
	* into an instance of a <code>SOAPHeaderElement</code>.
	*
	* <P>The fragment rooted in <code>element</code> is either added
	* as a whole or not at all, if there was an error.
	*
	* <P>The fragment rooted in <code>element</code> cannot contain
	* elements named "Envelope", "Header" or "Body" and in the SOAP
	* namespace. Any namespace prefixes present in the fragment
	* should be fully resolved using appropriate namespace
	* declarations within the fragment itself.
	*
	* @param element the <code>SOAPElement</code> to be added as a
	*                new child
	*
	* @exception SOAPException if there was an error in adding this
	*                          element as a child
	*
	* @return an instance representing the new SOAP element that was
	*         actually added to the tree.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addChildElement(element : javax.xml.soap.SOAPElement) : javax.xml.soap.SOAPElement;
	
	/**
	* Removes the attribute with the specified qname.
	*
	* @param qname the <code>QName</code> object with the qname of the
	*        attribute to be removed
	* @return <code>true</code> if the attribute was
	*         removed successfully; <code>false</code> if it was not
	* @see SOAPElement#removeAttribute(Name)
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function removeAttribute(qname : javax.xml.namespace.QName) : Bool;
	
	/**
	* Removes an attribute by local name and namespace URI. If a default
	* value for the removed attribute is defined in the DTD, a new
	* attribute immediately appears with the default value as well as the
	* corresponding namespace URI, local name, and prefix when applicable.
	* The implementation may handle default values from other schemas
	* similarly but applications should use
	* <code>Document.normalizeDocument()</code> to guarantee this
	* information is up-to-date.
	* <br>If no attribute with this local name and namespace URI is found,
	* this method has no effect.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* <code>namespaceURI</code> parameter for methods if they wish to have
	* no namespace.
	* @param namespaceURI The namespace URI of the attribute to remove.
	* @param localName The local name of the attribute to remove.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NOT_SUPPORTED_ERR: May be raised if the implementation does not
	*   support the feature <code>"XML"</code> and the language exposed
	*   through the Document does not support XML Namespaces (such as [<a href='http://www.w3.org/TR/1999/REC-html401-19991224/'>HTML 4.01</a>]).
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function removeAttributeNS(namespaceURI : String, localName : String) : Void;
	
	/**
	*  If the parameter <code>isId</code> is <code>true</code>, this method
	* declares the specified attribute to be a user-determined ID attribute
	* . This affects the value of <code>Attr.isId</code> and the behavior
	* of <code>Document.getElementById</code>, but does not change any
	* schema that may be in use, in particular this does not affect the
	* <code>Attr.schemaTypeInfo</code> of the specified <code>Attr</code>
	* node. Use the value <code>false</code> for the parameter
	* <code>isId</code> to undeclare an attribute for being a
	* user-determined ID attribute.
	* @param idAttr The attribute node.
	* @param isId Whether the attribute is a of type ID.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NOT_FOUND_ERR: Raised if the specified node is not an attribute
	*   of this element.
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setIdAttributeNode(idAttr : org.w3c.dom.Attr, isId : Bool) : Void;
	
	/**
	* Returns a <code>NodeList</code> of all the descendant
	* <code>Elements</code> with a given local name and namespace URI in
	* document order.
	* @param namespaceURI The namespace URI of the elements to match on. The
	*   special value "*" matches all namespaces.
	* @param localName The local name of the elements to match on. The
	*   special value "*" matches all local names.
	* @return A new <code>NodeList</code> object containing all the matched
	*   <code>Elements</code>.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: May be raised if the implementation does not
	*   support the feature <code>"XML"</code> and the language exposed
	*   through the Document does not support XML Namespaces (such as [<a href='http://www.w3.org/TR/1999/REC-html401-19991224/'>HTML 4.01</a>]).
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	/**
	* Adds a namespace declaration with the specified prefix and URI to this
	* <code>SOAPElement</code> object.
	*
	* @param prefix a <code>String</code> giving the prefix of the namespace
	* @param uri a <code>String</code> giving the uri of the namespace
	* @return the <code>SOAPElement</code> object into which this
	*          namespace declaration was inserted.
	*
	* @exception SOAPException if there is an error in creating the
	*                          namespace
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addNamespaceDeclaration(prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	/**
	* This attribute returns the text content of this node and its
	* descendants. When it is defined to be <code>null</code>, setting it
	* has no effect. On setting, any possible children this node may have
	* are removed and, if it the new string is not empty or
	* <code>null</code>, replaced by a single <code>Text</code> node
	* containing the string this attribute is set to.
	* <br> On getting, no serialization is performed, the returned string
	* does not contain any markup. No whitespace normalization is performed
	* and the returned string does not contain the white spaces in element
	* content (see the attribute
	* <code>Text.isElementContentWhitespace</code>). Similarly, on setting,
	* no parsing is performed either, the input string is taken as pure
	* textual content.
	* <br>The string returned is made of the text content of this node
	* depending on its type, as defined below:
	* <table border='1' cellpadding='3'>
	* <tr>
	* <th>Node type</th>
	* <th>Content</th>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>
	* ELEMENT_NODE, ATTRIBUTE_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE,
	* DOCUMENT_FRAGMENT_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>concatenation of the <code>textContent</code>
	* attribute value of every child node, excluding COMMENT_NODE and
	* PROCESSING_INSTRUCTION_NODE nodes. This is the empty string if the
	* node has no children.</td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>TEXT_NODE, CDATA_SECTION_NODE, COMMENT_NODE,
	* PROCESSING_INSTRUCTION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'><code>nodeValue</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>DOCUMENT_NODE,
	* DOCUMENT_TYPE_NODE, NOTATION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'><em>null</em></td>
	* </tr>
	* </table>
	* @exception DOMException
	*   DOMSTRING_SIZE_ERR: Raised when it would return more characters than
	*   fit in a <code>DOMString</code> variable on the implementation
	*   platform.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getTextContent() : String;
	
	/**
	* Creates a new <code>SOAPElement</code> object initialized with the
	* specified local name and adds the new element to this
	* <code>SOAPElement</code> object.
	* The new  <code>SOAPElement</code> inherits any in-scope default namespace.
	*
	* @param localName a <code>String</code> giving the local name for
	*          the element
	* @return the new <code>SOAPElement</code> object that was created
	* @exception SOAPException if there is an error in creating the
	*                          <code>SOAPElement</code> object
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addChildElement(localName : String) : javax.xml.soap.SOAPElement;
	
	/**
	* A <code>NodeList</code> that contains all children of this node. If
	* there are no children, this is a <code>NodeList</code> containing no
	* nodes.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getChildNodes() : org.w3c.dom.NodeList;
	
	/**
	* The value of this node, depending on its type; see the table above.
	* When it is defined to be <code>null</code>, setting it has no effect,
	* including if the node is read-only.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly and if
	*   it is not defined to be <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function setNodeValue(nodeValue : String) : Void;
	
	/**
	* A code representing the type of the underlying object, as defined above.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Compares the reference node, i.e. the node on which this method is
	* being called, with a node, i.e. the one passed as a parameter, with
	* regard to their position in the document and according to the
	* document order.
	* @param other The node to compare against the reference node.
	* @return Returns how the node is positioned relatively to the reference
	*   node.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: when the compared nodes are from different DOM
	*   implementations that do not coordinate to return consistent
	*   implementation-specific results.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	/**
	* Adds an attribute with the specified name and value to this
	* <code>SOAPElement</code> object.
	*
	* @param qname a <code>QName</code> object with the name of the attribute
	* @param value a <code>String</code> giving the value of the attribute
	* @return the <code>SOAPElement</code> object into which the attribute was
	*         inserted
	*
	* @exception SOAPException if there is an error in creating the
	*                          Attribute, or it is invalid to set
	an attribute with <code>QName</code>
	<code>qname</code> on this SOAPElement.
	* @see SOAPElement#addAttribute(Name, String)
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addAttribute(qname : javax.xml.namespace.QName, value : String) : javax.xml.soap.SOAPElement;
	
	/**
	*  Puts all <code>Text</code> nodes in the full depth of the sub-tree
	* underneath this <code>Node</code>, including attribute nodes, into a
	* "normal" form where only structure (e.g., elements, comments,
	* processing instructions, CDATA sections, and entity references)
	* separates <code>Text</code> nodes, i.e., there are neither adjacent
	* <code>Text</code> nodes nor empty <code>Text</code> nodes. This can
	* be used to ensure that the DOM view of a document is the same as if
	* it were saved and re-loaded, and is useful when operations (such as
	* XPointer [<a href='http://www.w3.org/TR/2003/REC-xptr-framework-20030325/'>XPointer</a>]
	*  lookups) that depend on a particular document tree structure are to
	* be used. If the parameter "normalize-characters" of the
	* <code>DOMConfiguration</code> object attached to the
	* <code>Node.ownerDocument</code> is <code>true</code>, this method
	* will also fully normalize the characters of the <code>Text</code>
	* nodes.
	* <p ><b>Note:</b> In cases where the document contains
	* <code>CDATASections</code>, the normalize operation alone may not be
	* sufficient, since XPointers do not differentiate between
	* <code>Text</code> nodes and <code>CDATASection</code> nodes.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function normalize() : Void;
	
	/**
	* Retrieves an attribute value by local name and namespace URI.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* <code>namespaceURI</code> parameter for methods if they wish to have
	* no namespace.
	* @param namespaceURI The namespace URI of the attribute to retrieve.
	* @param localName The local name of the attribute to retrieve.
	* @return The <code>Attr</code> value as a string, or the empty string
	*   if that attribute does not have a specified or default value.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: May be raised if the implementation does not
	*   support the feature <code>"XML"</code> and the language exposed
	*   through the Document does not support XML Namespaces (such as [<a href='http://www.w3.org/TR/1999/REC-html401-19991224/'>HTML 4.01</a>]).
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAttributeNS(namespaceURI : String, localName : String) : String;
	
	/**
	* Returns an <code>Iterator</code> over the namespace prefix
	* <code>String</code>s declared by this element. The prefixes returned by
	* this iterator can be passed to the method
	* <code>getNamespaceURI</code> to retrieve the URI of each namespace.
	*
	* @return an iterator over the namespace prefixes in this
	*         <code>SOAPElement</code> object
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getNamespacePrefixes() : java.util.Iterator<Dynamic>;
	
	/**
	*  If the parameter <code>isId</code> is <code>true</code>, this method
	* declares the specified attribute to be a user-determined ID attribute
	* . This affects the value of <code>Attr.isId</code> and the behavior
	* of <code>Document.getElementById</code>, but does not change any
	* schema that may be in use, in particular this does not affect the
	* <code>Attr.schemaTypeInfo</code> of the specified <code>Attr</code>
	* node. Use the value <code>false</code> for the parameter
	* <code>isId</code> to undeclare an attribute for being a
	* user-determined ID attribute.
	* @param namespaceURI The namespace URI of the attribute.
	* @param localName The local name of the attribute.
	* @param isId Whether the attribute is a of type ID.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NOT_FOUND_ERR: Raised if the specified node is not an attribute
	*   of this element.
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setIdAttributeNS(namespaceURI : String, localName : String, isId : Bool) : Void;
	
	/**
	* Creates a new <code>SOAPElement</code> object initialized with the
	* specified local name, prefix, and URI and adds the new element to this
	* <code>SOAPElement</code> object.
	*
	* @param localName a <code>String</code> giving the local name for
	*        the new element
	* @param prefix a <code>String</code> giving the namespace prefix for
	*        the new element
	* @param uri a <code>String</code> giving the URI of the namespace
	*        to which the new element belongs
	*
	* @return the new <code>SOAPElement</code> object that was created
	* @exception SOAPException if there is an error in creating the
	*                          <code>SOAPElement</code> object
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addChildElement(localName : String, prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	/**
	* Returns the value of the attribute with the specified name.
	*
	* @param name a <code>Name</code> object with the name of the attribute
	* @return a <code>String</code> giving the value of the specified
	*         attribute, Null if there is no such attribute
	* @see SOAPElement#getAttributeValue(javax.xml.namespace.QName)
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAttributeValue(name : javax.xml.soap.Name) : String;
	
	/**
	* Retrieves an <code>Attr</code> node by local name and namespace URI.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* <code>namespaceURI</code> parameter for methods if they wish to have
	* no namespace.
	* @param namespaceURI The namespace URI of the attribute to retrieve.
	* @param localName The local name of the attribute to retrieve.
	* @return The <code>Attr</code> node with the specified attribute local
	*   name and namespace URI or <code>null</code> if there is no such
	*   attribute.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: May be raised if the implementation does not
	*   support the feature <code>"XML"</code> and the language exposed
	*   through the Document does not support XML Namespaces (such as [<a href='http://www.w3.org/TR/1999/REC-html401-19991224/'>HTML 4.01</a>]).
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAttributeNodeNS(namespaceURI : String, localName : String) : org.w3c.dom.Attr;
	
	/**
	* Retrieves the object associated to a key on a this node. The object
	* must first have been set to this node by calling
	* <code>setUserData</code> with the same key.
	* @param key The key the object is associated to.
	* @return Returns the <code>DOMUserData</code> associated to the given
	*   key on this node, or <code>null</code> if there was none.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getUserData(key : String) : Dynamic;
	
	/**
	* Returns the encoding style for this <code>SOAPElement</code> object.
	*
	* @return a <code>String</code> giving the encoding style
	*
	* @see #setEncodingStyle
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getEncodingStyle() : String;
	
	/**
	* A <code>NamedNodeMap</code> containing the attributes of this node (if
	* it is an <code>Element</code>) or <code>null</code> otherwise.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	/**
	* Tests whether two nodes are equal.
	* <br>This method tests for equality of nodes, not sameness (i.e.,
	* whether the two nodes are references to the same object) which can be
	* tested with <code>Node.isSameNode()</code>. All nodes that are the
	* same will also be equal, though the reverse may not be true.
	* <br>Two nodes are equal if and only if the following conditions are
	* satisfied:
	* <ul>
	* <li>The two nodes are of the same type.
	* </li>
	* <li>The following string
	* attributes are equal: <code>nodeName</code>, <code>localName</code>,
	* <code>namespaceURI</code>, <code>prefix</code>, <code>nodeValue</code>
	* . This is: they are both <code>null</code>, or they have the same
	* length and are character for character identical.
	* </li>
	* <li>The
	* <code>attributes</code> <code>NamedNodeMaps</code> are equal. This
	* is: they are both <code>null</code>, or they have the same length and
	* for each node that exists in one map there is a node that exists in
	* the other map and is equal, although not necessarily at the same
	* index.
	* </li>
	* <li>The <code>childNodes</code> <code>NodeLists</code> are equal.
	* This is: they are both <code>null</code>, or they have the same
	* length and contain equal nodes at the same index. Note that
	* normalization can affect equality; to avoid this, nodes should be
	* normalized before being compared.
	* </li>
	* </ul>
	* <br>For two <code>DocumentType</code> nodes to be equal, the following
	* conditions must also be satisfied:
	* <ul>
	* <li>The following string attributes
	* are equal: <code>publicId</code>, <code>systemId</code>,
	* <code>internalSubset</code>.
	* </li>
	* <li>The <code>entities</code>
	* <code>NamedNodeMaps</code> are equal.
	* </li>
	* <li>The <code>notations</code>
	* <code>NamedNodeMaps</code> are equal.
	* </li>
	* </ul>
	* <br>On the other hand, the following do not affect equality: the
	* <code>ownerDocument</code>, <code>baseURI</code>, and
	* <code>parentNode</code> attributes, the <code>specified</code>
	* attribute for <code>Attr</code> nodes, the <code>schemaTypeInfo</code>
	*  attribute for <code>Attr</code> and <code>Element</code> nodes, the
	* <code>Text.isElementContentWhitespace</code> attribute for
	* <code>Text</code> nodes, as well as any user data or event listeners
	* registered on the nodes.
	* <p ><b>Note:</b>  As a general rule, anything not mentioned in the
	* description above is not significant in consideration of equality
	* checking. Note that future versions of this specification may take
	* into account more attributes and implementations conform to this
	* specification are expected to be updated accordingly.
	* @param arg The node to compare equality with.
	* @return Returns <code>true</code> if the nodes are equal,
	*   <code>false</code> otherwise.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
	/**
	* Detaches all children of this <code>SOAPElement</code>.
	* <p>
	* This method is useful for rolling back the construction of partially
	* completed <code>SOAPHeaders</code> and <code>SOAPBodys</code> in
	* preparation for sending a fault when an error condition is detected. It
	* is also useful for recycling portions of a document within a SOAP
	* message.
	*
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public @:abstract @:public @:public @:public @:public @:public @:public @:public override public function removeContents() : Void;
	
	/**
	* Returns whether this node is the same node as the given one.
	* <br>This method provides a way to determine whether two
	* <code>Node</code> references returned by the implementation reference
	* the same object. When two <code>Node</code> references are references
	* to the same object, even if through a proxy, the references may be
	* used completely interchangeably, such that all attributes have the
	* same values and calling the same DOM method on either reference
	* always has exactly the same effect.
	* @param other The node to test against.
	* @return Returns <code>true</code> if the nodes are the same,
	*   <code>false</code> otherwise.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
	/**
	* Adds a new attribute. If an attribute with that local name and that
	* namespace URI is already present in the element, it is replaced by
	* the new one. Replacing an attribute node by itself has no effect.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* <code>namespaceURI</code> parameter for methods if they wish to have
	* no namespace.
	* @param newAttr The <code>Attr</code> node to add to the attribute list.
	* @return If the <code>newAttr</code> attribute replaces an existing
	*   attribute with the same local name and namespace URI, the replaced
	*   <code>Attr</code> node is returned, otherwise <code>null</code> is
	*   returned.
	* @exception DOMException
	*   WRONG_DOCUMENT_ERR: Raised if <code>newAttr</code> was created from a
	*   different document than the one that created the element.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>INUSE_ATTRIBUTE_ERR: Raised if <code>newAttr</code> is already an
	*   attribute of another <code>Element</code> object. The DOM user must
	*   explicitly clone <code>Attr</code> nodes to re-use them in other
	*   elements.
	*   <br>NOT_SUPPORTED_ERR: May be raised if the implementation does not
	*   support the feature <code>"XML"</code> and the language exposed
	*   through the Document does not support XML Namespaces (such as [<a href='http://www.w3.org/TR/1999/REC-html401-19991224/'>HTML 4.01</a>]).
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setAttributeNodeNS(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	* Returns an <code>Iterator</code> over all of the attributes
	* in this <code>SOAPElement</code>  as <code>QName</code> objects.
	* The iterator can be used to get the attribute QName, which can then
	* be passed to the method <code>getAttributeValue</code> to retrieve
	* the value of each attribute.
	*
	* @return an iterator over the QNames of the attributes
	* @see SOAPElement#getAllAttributes()
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAllAttributesAsQNames() : java.util.Iterator<Dynamic>;
	
	/**
	* The <code>Document</code> object associated with this node. This is
	* also the <code>Document</code> object used to create new nodes. When
	* this node is a <code>Document</code> or a <code>DocumentType</code>
	* which is not used with any <code>Document</code> yet, this is
	* <code>null</code>.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getOwnerDocument() : org.w3c.dom.Document;
	
	/**
	* Changes the name of this <code>Element</code> to <code>newName</code> if
	* possible. SOAP Defined elements such as SOAPEnvelope, SOAPHeader, SOAPBody
	* etc. cannot have their names changed using this method. Any attempt to do
	* so will result in a  SOAPException being thrown.
	*<P>
	* Callers should not rely on the element instance being renamed as is.
	* Implementations could end up copying the content of the
	* <code>SOAPElement</code> to a renamed instance.
	*
	* @param newName the new name for the <code>Element</code>.
	*
	* @exception SOAPException if changing the name of this <code>Element</code>
	*                          is not allowed.
	* @return The renamed Node
	*
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public override public function setElementQName(newName : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	/**
	*  This method checks if the specified <code>namespaceURI</code> is the
	* default namespace or not.
	* @param namespaceURI The namespace URI to look for.
	* @return Returns <code>true</code> if the specified
	*   <code>namespaceURI</code> is the default namespace,
	*   <code>false</code> otherwise.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	/**
	* Adds a new attribute. If an attribute with that name is already present
	* in the element, its value is changed to be that of the value
	* parameter. This value is a simple string; it is not parsed as it is
	* being set. So any markup (such as syntax to be recognized as an
	* entity reference) is treated as literal text, and needs to be
	* appropriately escaped by the implementation when it is written out.
	* In order to assign an attribute value that contains entity
	* references, the user must create an <code>Attr</code> node plus any
	* <code>Text</code> and <code>EntityReference</code> nodes, build the
	* appropriate subtree, and use <code>setAttributeNode</code> to assign
	* it as the value of an attribute.
	* <br>To set an attribute with a qualified name and namespace URI, use
	* the <code>setAttributeNS</code> method.
	* @param name The name of the attribute to create or alter.
	* @param value Value to set in string form.
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified name is not an XML
	*   name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setAttribute(name : String, value : String) : Void;
	
	/**
	* Creates a new <code>SOAPElement</code> object initialized with the
	* given <code>Name</code> object and adds the new element to this
	* <code>SOAPElement</code> object.
	* <P>
	* This method may be deprecated in a future release of SAAJ in favor of
	* addChildElement(javax.xml.namespace.QName)
	*
	* @param name a <code>Name</code> object with the XML name for the
	*        new element
	*
	* @return the new <code>SOAPElement</code> object that was created
	* @exception SOAPException if there is an error in creating the
	*                          <code>SOAPElement</code> object
	* @see SOAPElement#addChildElement(javax.xml.namespace.QName)
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addChildElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	/**
	* The node immediately following this node. If there is no such node,
	* this returns <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getNextSibling() : org.w3c.dom.Node;
	
	/**
	* Returns a duplicate of this node, i.e., serves as a generic copy
	* constructor for nodes. The duplicate node has no parent (
	* <code>parentNode</code> is <code>null</code>) and no user data. User
	* data associated to the imported node is not carried over. However, if
	* any <code>UserDataHandlers</code> has been specified along with the
	* associated data these handlers will be called with the appropriate
	* parameters before this method returns.
	* <br>Cloning an <code>Element</code> copies all attributes and their
	* values, including those generated by the XML processor to represent
	* defaulted attributes, but this method does not copy any children it
	* contains unless it is a deep clone. This includes text contained in
	* an the <code>Element</code> since the text is contained in a child
	* <code>Text</code> node. Cloning an <code>Attr</code> directly, as
	* opposed to be cloned as part of an <code>Element</code> cloning
	* operation, returns a specified attribute (<code>specified</code> is
	* <code>true</code>). Cloning an <code>Attr</code> always clones its
	* children, since they represent its value, no matter whether this is a
	* deep clone or not. Cloning an <code>EntityReference</code>
	* automatically constructs its subtree if a corresponding
	* <code>Entity</code> is available, no matter whether this is a deep
	* clone or not. Cloning any other type of node simply returns a copy of
	* this node.
	* <br>Note that cloning an immutable subtree results in a mutable copy,
	* but the children of an <code>EntityReference</code> clone are readonly
	* . In addition, clones of unspecified <code>Attr</code> nodes are
	* specified. And, cloning <code>Document</code>,
	* <code>DocumentType</code>, <code>Entity</code>, and
	* <code>Notation</code> nodes is implementation dependent.
	* @param deep If <code>true</code>, recursively clone the subtree under
	*   the specified node; if <code>false</code>, clone only the node
	*   itself (and its attributes, if it is an <code>Element</code>).
	* @return The duplicate node.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Returns an <code>Iterator</code> over all the immediate child
	* {@link Node}s of this element with the specified qname. All of these
	* children will be <code>SOAPElement</code> nodes.
	* <p>
	* Calling this method may cause child <code>Element</code>,
	* <code>SOAPElement</code> and <code>org.w3c.dom.Text</code> nodes to be
	* replaced by <code>SOAPElement</code>, <code>SOAPHeaderElement</code>,
	* <code>SOAPBodyElement</code> or <code>javax.xml.soap.Text</code> nodes as
	* appropriate for the type of this parent node. As a result the calling
	* application must treat any existing references to these child nodes that
	* have been obtained through DOM APIs as invalid and either discard them or
	* refresh them with the values returned by this <code>Iterator</code>. This
	* behavior can be avoided by calling the equivalent DOM APIs. See
	* {@link <a HREF="package-summary.html#package_description">javax.xml.soap<a>}
	* for more details.
	*
	* @param qname a <code>QName</code> object with the qname of the child
	*        elements to be returned
	*
	* @return an <code>Iterator</code> object over all the elements
	*         in this <code>SOAPElement</code> object with the
	*         specified qname
	* @see SOAPElement#getChildElements(Name)
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getChildElements(qname : javax.xml.namespace.QName) : java.util.Iterator<Dynamic>;
	
	/**
	* Replaces the child node <code>oldChild</code> with <code>newChild</code>
	*  in the list of children, and returns the <code>oldChild</code> node.
	* <br>If <code>newChild</code> is a <code>DocumentFragment</code> object,
	* <code>oldChild</code> is replaced by all of the
	* <code>DocumentFragment</code> children, which are inserted in the
	* same order. If the <code>newChild</code> is already in the tree, it
	* is first removed.
	* <p ><b>Note:</b>  Replacing a node with itself is implementation
	* dependent.
	* @param newChild The new node to put in the child list.
	* @param oldChild The node being replaced in the list.
	* @return The node replaced.
	* @exception DOMException
	*   HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does not
	*   allow children of the type of the <code>newChild</code> node, or if
	*   the node to put in is one of this node's ancestors or this node
	*   itself, or if this node is of type <code>Document</code> and the
	*   result of the replacement operation would add a second
	*   <code>DocumentType</code> or <code>Element</code> on the
	*   <code>Document</code> node.
	*   <br>WRONG_DOCUMENT_ERR: Raised if <code>newChild</code> was created
	*   from a different document than the one that created this node.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node or the parent of
	*   the new node is readonly.
	*   <br>NOT_FOUND_ERR: Raised if <code>oldChild</code> is not a child of
	*   this node.
	*   <br>NOT_SUPPORTED_ERR: if this node is of type <code>Document</code>,
	*   this exception might be raised if the DOM implementation doesn't
	*   support the replacement of the <code>DocumentType</code> child or
	*   <code>Element</code> child.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Removes the specified attribute node. If a default value for the
	* removed <code>Attr</code> node is defined in the DTD, a new node
	* immediately appears with the default value as well as the
	* corresponding namespace URI, local name, and prefix when applicable.
	* The implementation may handle default values from other schemas
	* similarly but applications should use
	* <code>Document.normalizeDocument()</code> to guarantee this
	* information is up-to-date.
	* @param oldAttr The <code>Attr</code> node to remove from the attribute
	*   list.
	* @return The <code>Attr</code> node that was removed.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NOT_FOUND_ERR: Raised if <code>oldAttr</code> is not an attribute
	*   of the element.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function removeAttributeNode(oldAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	*  If the parameter <code>isId</code> is <code>true</code>, this method
	* declares the specified attribute to be a user-determined ID attribute
	* . This affects the value of <code>Attr.isId</code> and the behavior
	* of <code>Document.getElementById</code>, but does not change any
	* schema that may be in use, in particular this does not affect the
	* <code>Attr.schemaTypeInfo</code> of the specified <code>Attr</code>
	* node. Use the value <code>false</code> for the parameter
	* <code>isId</code> to undeclare an attribute for being a
	* user-determined ID attribute.
	* <br> To specify an attribute by local name and namespace URI, use the
	* <code>setIdAttributeNS</code> method.
	* @param name The name of the attribute.
	* @param isId Whether the attribute is a of type ID.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NOT_FOUND_ERR: Raised if the specified node is not an attribute
	*   of this element.
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setIdAttribute(name : String, isId : Bool) : Void;
	
	/**
	* Returns an <code>Iterator</code> over all the immediate child
	* {@link Node}s of this element with the specified name. All of these
	* children will be <code>SOAPElement</code> nodes.
	* <p>
	* Calling this method may cause child <code>Element</code>,
	* <code>SOAPElement</code> and <code>org.w3c.dom.Text</code> nodes to be
	* replaced by <code>SOAPElement</code>, <code>SOAPHeaderElement</code>,
	* <code>SOAPBodyElement</code> or <code>javax.xml.soap.Text</code> nodes as
	* appropriate for the type of this parent node. As a result the calling
	* application must treat any existing references to these child nodes that
	* have been obtained through DOM APIs as invalid and either discard them or
	* refresh them with the values returned by this <code>Iterator</code>. This
	* behavior can be avoided by calling the equivalent DOM APIs. See
	* {@link <a HREF="package-summary.html#package_description">javax.xml.soap<a>}
	* for more details.
	*
	* @param name a <code>Name</code> object with the name of the child
	*        elements to be returned
	*
	* @return an <code>Iterator</code> object over all the elements
	*         in this <code>SOAPElement</code> object with the
	*         specified name
	* @see SOAPElement#getChildElements(javax.xml.namespace.QName)
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getChildElements(name : javax.xml.soap.Name) : java.util.Iterator<Dynamic>;
	
	/**
	* Look up the prefix associated to the given namespace URI, starting from
	* this node. The default namespace declarations are ignored by this
	* method.
	* <br>See  for details on the algorithm used by this method.
	* @param namespaceURI The namespace URI to look for.
	* @return Returns an associated namespace prefix if found or
	*   <code>null</code> if none is found. If more than one prefix are
	*   associated to the namespace prefix, the returned namespace prefix
	*   is implementation dependent.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function lookupPrefix(namespaceURI : String) : String;
	
	/**
	* Removes the child node indicated by <code>oldChild</code> from the list
	* of children, and returns it.
	* @param oldChild The node being removed.
	* @return The node removed.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NOT_FOUND_ERR: Raised if <code>oldChild</code> is not a child of
	*   this node.
	*   <br>NOT_SUPPORTED_ERR: if this node is of type <code>Document</code>,
	*   this exception might be raised if the DOM implementation doesn't
	*   support the removal of the <code>DocumentType</code> child or the
	*   <code>Element</code> child.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* The absolute base URI of this node or <code>null</code> if the
	* implementation wasn't able to obtain an absolute URI. This value is
	* computed as described in . However, when the <code>Document</code>
	* supports the feature "HTML" [<a href='http://www.w3.org/TR/2003/REC-DOM-Level-2-HTML-20030109'>DOM Level 2 HTML</a>]
	* , the base URI is computed using first the value of the href
	* attribute of the HTML BASE element if any, and the value of the
	* <code>documentURI</code> attribute from the <code>Document</code>
	* interface otherwise.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getBaseURI() : String;
	
	/**
	* This attribute returns the text content of this node and its
	* descendants. When it is defined to be <code>null</code>, setting it
	* has no effect. On setting, any possible children this node may have
	* are removed and, if it the new string is not empty or
	* <code>null</code>, replaced by a single <code>Text</code> node
	* containing the string this attribute is set to.
	* <br> On getting, no serialization is performed, the returned string
	* does not contain any markup. No whitespace normalization is performed
	* and the returned string does not contain the white spaces in element
	* content (see the attribute
	* <code>Text.isElementContentWhitespace</code>). Similarly, on setting,
	* no parsing is performed either, the input string is taken as pure
	* textual content.
	* <br>The string returned is made of the text content of this node
	* depending on its type, as defined below:
	* <table border='1' cellpadding='3'>
	* <tr>
	* <th>Node type</th>
	* <th>Content</th>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>
	* ELEMENT_NODE, ATTRIBUTE_NODE, ENTITY_NODE, ENTITY_REFERENCE_NODE,
	* DOCUMENT_FRAGMENT_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'>concatenation of the <code>textContent</code>
	* attribute value of every child node, excluding COMMENT_NODE and
	* PROCESSING_INSTRUCTION_NODE nodes. This is the empty string if the
	* node has no children.</td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>TEXT_NODE, CDATA_SECTION_NODE, COMMENT_NODE,
	* PROCESSING_INSTRUCTION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'><code>nodeValue</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>DOCUMENT_NODE,
	* DOCUMENT_TYPE_NODE, NOTATION_NODE</td>
	* <td valign='top' rowspan='1' colspan='1'><em>null</em></td>
	* </tr>
	* </table>
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function setTextContent(textContent : String) : Void;
	
	/**
	* Returns an <code>Iterator</code> over all of the attribute
	* <code>Name</code> objects in this
	* <code>SOAPElement</code> object. The iterator can be used to get
	* the attribute names, which can then be passed to the method
	* <code>getAttributeValue</code> to retrieve the value of each
	* attribute.
	*
	* @see SOAPElement#getAllAttributesAsQNames()
	* @return an iterator over the names of the attributes
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAllAttributes() : java.util.Iterator<Dynamic>;
	
	/**
	* The namespace prefix of this node, or <code>null</code> if it is
	* unspecified. When it is defined to be <code>null</code>, setting it
	* has no effect, including if the node is read-only.
	* <br>Note that setting this attribute, when permitted, changes the
	* <code>nodeName</code> attribute, which holds the qualified name, as
	* well as the <code>tagName</code> and <code>name</code> attributes of
	* the <code>Element</code> and <code>Attr</code> interfaces, when
	* applicable.
	* <br>Setting the prefix to <code>null</code> makes it unspecified,
	* setting it to an empty string is implementation dependent.
	* <br>Note also that changing the prefix of an attribute that is known to
	* have a default value, does not make a new attribute with the default
	* value and the original prefix appear, since the
	* <code>namespaceURI</code> and <code>localName</code> do not change.
	* <br>For nodes of any type other than <code>ELEMENT_NODE</code> and
	* <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1
	* method, such as <code>createElement</code> from the
	* <code>Document</code> interface, this is always <code>null</code>.
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified prefix contains an
	*   illegal character according to the XML version in use specified in
	*   the <code>Document.xmlVersion</code> attribute.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NAMESPACE_ERR: Raised if the specified <code>prefix</code> is
	*   malformed per the Namespaces in XML specification, if the
	*   <code>namespaceURI</code> of this node is <code>null</code>, if the
	*   specified prefix is "xml" and the <code>namespaceURI</code> of this
	*   node is different from "<a href='http://www.w3.org/XML/1998/namespace'>
	*   http://www.w3.org/XML/1998/namespace</a>", if this node is an attribute and the specified prefix is "xmlns" and
	*   the <code>namespaceURI</code> of this node is different from "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>", or if this node is an attribute and the <code>qualifiedName</code> of
	*   this node is "xmlns" [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	*   .
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function setPrefix(prefix : String) : Void;
	
	/**
	* The name of the element. If <code>Node.localName</code> is different
	* from <code>null</code>, this attribute is a qualified name. For
	* example, in:
	* <pre> &lt;elementExample id="demo"&gt; ...
	* &lt;/elementExample&gt; , </pre>
	*  <code>tagName</code> has the value
	* <code>"elementExample"</code>. Note that this is case-preserving in
	* XML, as are all of the operations of the DOM. The HTML DOM returns
	* the <code>tagName</code> of an HTML element in the canonical
	* uppercase form, regardless of the case in the source HTML document.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getTagName() : String;
	
	/**
	* The value of this node, depending on its type; see the table above.
	* When it is defined to be <code>null</code>, setting it has no effect,
	* including if the node is read-only.
	* @exception DOMException
	*   DOMSTRING_SIZE_ERR: Raised when it would return more characters than
	*   fit in a <code>DOMString</code> variable on the implementation
	*   platform.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getNodeValue() : String;
	
	/**
	* The node immediately preceding this node. If there is no such node,
	* this returns <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getPreviousSibling() : org.w3c.dom.Node;
	
	/**
	* Returns the name of this <code>SOAPElement</code> object.
	*
	* @return a <code>Name</code> object with the name of this
	*         <code>SOAPElement</code> object
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getElementName() : javax.xml.soap.Name;
	
	/**
	*  This method returns a specialized object which implements the
	* specialized APIs of the specified feature and version, as specified
	* in . The specialized object may also be obtained by using
	* binding-specific casting methods but is not necessarily expected to,
	* as discussed in . This method also allow the implementation to
	* provide specialized objects which do not support the <code>Node</code>
	*  interface.
	* @param feature  The name of the feature requested. Note that any plus
	*   sign "+" prepended to the name of the feature will be ignored since
	*   it is not significant in the context of this method.
	* @param version  This is the version number of the feature to test.
	* @return  Returns an object which implements the specialized APIs of
	*   the specified feature and version, if any, or <code>null</code> if
	*   there is no object which implements interfaces associated with that
	*   feature. If the <code>DOMObject</code> returned by this method
	*   implements the <code>Node</code> interface, it must delegate to the
	*   primary core <code>Node</code> and not return results inconsistent
	*   with the primary core <code>Node</code> such as attributes,
	*   childNodes, etc.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getFeature(feature : String, version : String) : Dynamic;
	
	/**
	* Adds a new attribute node. If an attribute with that name (
	* <code>nodeName</code>) is already present in the element, it is
	* replaced by the new one. Replacing an attribute node by itself has no
	* effect.
	* <br>To add a new attribute node with a qualified name and namespace
	* URI, use the <code>setAttributeNodeNS</code> method.
	* @param newAttr The <code>Attr</code> node to add to the attribute list.
	* @return If the <code>newAttr</code> attribute replaces an existing
	*   attribute, the replaced <code>Attr</code> node is returned,
	*   otherwise <code>null</code> is returned.
	* @exception DOMException
	*   WRONG_DOCUMENT_ERR: Raised if <code>newAttr</code> was created from a
	*   different document than the one that created the element.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>INUSE_ATTRIBUTE_ERR: Raised if <code>newAttr</code> is already an
	*   attribute of another <code>Element</code> object. The DOM user must
	*   explicitly clone <code>Attr</code> nodes to re-use them in other
	*   elements.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setAttributeNode(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	/**
	* Removes an attribute by name. If a default value for the removed
	* attribute is defined in the DTD, a new attribute immediately appears
	* with the default value as well as the corresponding namespace URI,
	* local name, and prefix when applicable. The implementation may handle
	* default values from other schemas similarly but applications should
	* use <code>Document.normalizeDocument()</code> to guarantee this
	* information is up-to-date.
	* <br>If no attribute with this name is found, this method has no effect.
	* <br>To remove an attribute by local name and namespace URI, use the
	* <code>removeAttributeNS</code> method.
	* @param name The name of the attribute to remove.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function removeAttribute(name : String) : Void;
	
	/**
	* Retrieves an attribute node by name.
	* <br>To retrieve an attribute node by qualified name and namespace URI,
	* use the <code>getAttributeNodeNS</code> method.
	* @param name The name (<code>nodeName</code>) of the attribute to
	*   retrieve.
	* @return The <code>Attr</code> node with the specified name (
	*   <code>nodeName</code>) or <code>null</code> if there is no such
	*   attribute.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAttributeNode(name : String) : org.w3c.dom.Attr;
	
	/**
	* Creates a new <code>SOAPElement</code> object initialized with the
	* specified local name and prefix and adds the new element to this
	* <code>SOAPElement</code> object.
	*
	* @param localName a <code>String</code> giving the local name for
	*        the new element
	* @param prefix a <code>String</code> giving the namespace prefix for
	*        the new element
	*
	* @return the new <code>SOAPElement</code> object that was created
	* @exception SOAPException if the <code>prefix</code> is not valid in the
	*         context of this <code>SOAPElement</code> or  if there is an error in creating the
	*                          <code>SOAPElement</code> object
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addChildElement(localName : String, prefix : String) : javax.xml.soap.SOAPElement;
	
	/**
	* Returns the value of the attribute with the specified qname.
	*
	* @param qname a <code>QName</code> object with the qname of the attribute
	* @return a <code>String</code> giving the value of the specified
	*         attribute, Null if there is no such attribute
	* @see SOAPElement#getAttributeValue(Name)
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getAttributeValue(qname : javax.xml.namespace.QName) : String;
	
	/**
	* Creates a new <code>SOAPElement</code> object initialized with the given
	* <code>QName</code> object and adds the new element to this <code>SOAPElement</code>
	*  object. The  <i>namespace</i>, <i>localname</i> and <i>prefix</i> of the new
	* <code>SOAPElement</code> are all taken  from the <code>qname</code> argument.
	*
	* @param qname a <code>QName</code> object with the XML name for the
	*        new element
	*
	* @return the new <code>SOAPElement</code> object that was created
	* @exception SOAPException if there is an error in creating the
	*                          <code>SOAPElement</code> object
	* @see SOAPElement#addChildElement(Name)
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addChildElement(qname : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	/**
	* The namespace prefix of this node, or <code>null</code> if it is
	* unspecified. When it is defined to be <code>null</code>, setting it
	* has no effect, including if the node is read-only.
	* <br>Note that setting this attribute, when permitted, changes the
	* <code>nodeName</code> attribute, which holds the qualified name, as
	* well as the <code>tagName</code> and <code>name</code> attributes of
	* the <code>Element</code> and <code>Attr</code> interfaces, when
	* applicable.
	* <br>Setting the prefix to <code>null</code> makes it unspecified,
	* setting it to an empty string is implementation dependent.
	* <br>Note also that changing the prefix of an attribute that is known to
	* have a default value, does not make a new attribute with the default
	* value and the original prefix appear, since the
	* <code>namespaceURI</code> and <code>localName</code> do not change.
	* <br>For nodes of any type other than <code>ELEMENT_NODE</code> and
	* <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1
	* method, such as <code>createElement</code> from the
	* <code>Document</code> interface, this is always <code>null</code>.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getPrefix() : String;
	
	/**
	* The name of this node, depending on its type; see the table above.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getNodeName() : String;
	
	/**
	* The namespace URI of this node, or <code>null</code> if it is
	* unspecified (see ).
	* <br>This is not a computed value that is the result of a namespace
	* lookup based on an examination of the namespace declarations in
	* scope. It is merely the namespace URI given at creation time.
	* <br>For nodes of any type other than <code>ELEMENT_NODE</code> and
	* <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1
	* method, such as <code>Document.createElement()</code>, this is always
	* <code>null</code>.
	* <p ><b>Note:</b> Per the <em>Namespaces in XML</em> Specification [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	*  an attribute does not inherit its namespace from the element it is
	* attached to. If an attribute is not explicitly given a namespace, it
	* simply has no namespace.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getNamespaceURI() : String;
	
	/**
	* Creates a new <code>Text</code> object initialized with the given
	* <code>String</code> and adds it to this <code>SOAPElement</code> object.
	*
	* @param text a <code>String</code> object with the textual content to be added
	*
	* @return the <code>SOAPElement</code> object into which
	*         the new <code>Text</code> object was inserted
	* @exception SOAPException if there is an error in creating the
	*                    new <code>Text</code> object or if it is not legal to
	*                      attach it as a child to this
	*                      <code>SOAPElement</code>
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function addTextNode(text : String) : javax.xml.soap.SOAPElement;
	
	/**
	* Inserts the node <code>newChild</code> before the existing child node
	* <code>refChild</code>. If <code>refChild</code> is <code>null</code>,
	* insert <code>newChild</code> at the end of the list of children.
	* <br>If <code>newChild</code> is a <code>DocumentFragment</code> object,
	* all of its children are inserted, in the same order, before
	* <code>refChild</code>. If the <code>newChild</code> is already in the
	* tree, it is first removed.
	* <p ><b>Note:</b>  Inserting a node before itself is implementation
	* dependent.
	* @param newChild The node to insert.
	* @param refChild The reference node, i.e., the node before which the
	*   new node must be inserted.
	* @return The node being inserted.
	* @exception DOMException
	*   HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does not
	*   allow children of the type of the <code>newChild</code> node, or if
	*   the node to insert is one of this node's ancestors or this node
	*   itself, or if this node is of type <code>Document</code> and the
	*   DOM application attempts to insert a second
	*   <code>DocumentType</code> or <code>Element</code> node.
	*   <br>WRONG_DOCUMENT_ERR: Raised if <code>newChild</code> was created
	*   from a different document than the one that created this node.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly or
	*   if the parent of the node being inserted is readonly.
	*   <br>NOT_FOUND_ERR: Raised if <code>refChild</code> is not a child of
	*   this node.
	*   <br>NOT_SUPPORTED_ERR: if this node is of type <code>Document</code>,
	*   this exception might be raised if the DOM implementation doesn't
	*   support the insertion of a <code>DocumentType</code> or
	*   <code>Element</code> node.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Adds a new attribute. If an attribute with the same local name and
	* namespace URI is already present on the element, its prefix is
	* changed to be the prefix part of the <code>qualifiedName</code>, and
	* its value is changed to be the <code>value</code> parameter. This
	* value is a simple string; it is not parsed as it is being set. So any
	* markup (such as syntax to be recognized as an entity reference) is
	* treated as literal text, and needs to be appropriately escaped by the
	* implementation when it is written out. In order to assign an
	* attribute value that contains entity references, the user must create
	* an <code>Attr</code> node plus any <code>Text</code> and
	* <code>EntityReference</code> nodes, build the appropriate subtree,
	* and use <code>setAttributeNodeNS</code> or
	* <code>setAttributeNode</code> to assign it as the value of an
	* attribute.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* <code>namespaceURI</code> parameter for methods if they wish to have
	* no namespace.
	* @param namespaceURI The namespace URI of the attribute to create or
	*   alter.
	* @param qualifiedName The qualified name of the attribute to create or
	*   alter.
	* @param value The value to set in string form.
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified qualified name is not
	*   an XML name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*   <br>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is
	*   malformed per the Namespaces in XML specification, if the
	*   <code>qualifiedName</code> has a prefix and the
	*   <code>namespaceURI</code> is <code>null</code>, if the
	*   <code>qualifiedName</code> has a prefix that is "xml" and the
	*   <code>namespaceURI</code> is different from "<a href='http://www.w3.org/XML/1998/namespace'>
	*   http://www.w3.org/XML/1998/namespace</a>", if the <code>qualifiedName</code> or its prefix is "xmlns" and the
	*   <code>namespaceURI</code> is different from "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>", or if the <code>namespaceURI</code> is "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>" and neither the <code>qualifiedName</code> nor its prefix is "xmlns".
	*   <br>NOT_SUPPORTED_ERR: May be raised if the implementation does not
	*   support the feature <code>"XML"</code> and the language exposed
	*   through the Document does not support XML Namespaces (such as [<a href='http://www.w3.org/TR/1999/REC-html401-19991224/'>HTML 4.01</a>]).
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setAttributeNS(namespaceURI : String, qualifiedName : String, value : String) : Void;
	
	/**
	* Returns a <code>NodeList</code> of all descendant <code>Elements</code>
	* with a given tag name, in document order.
	* @param name The name of the tag to match on. The special value "*"
	*   matches all tags.
	* @return A list of matching <code>Element</code> nodes.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getElementsByTagName(name : String) : org.w3c.dom.NodeList;
	
	/**
	* Returns the URI of the namespace that has the given prefix.
	*
	* @param prefix a <code>String</code> giving the prefix of the namespace
	*        for which to search
	* @return a <code>String</code> with the uri of the namespace that has
	*        the given prefix
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getNamespaceURI(prefix : String) : String;
	
	/**
	* Returns <code>true</code> when an attribute with a given name is
	* specified on this element or has a default value, <code>false</code>
	* otherwise.
	* @param name The name of the attribute to look for.
	* @return <code>true</code> if an attribute with the given name is
	*   specified on this element or has a default value, <code>false</code>
	*    otherwise.
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function hasAttribute(name : String) : Bool;
	
	/**
	* Returns an <code>Iterator</code> over the namespace prefix
	* <code>String</code>s visible to this element. The prefixes returned by
	* this iterator can be passed to the method
	* <code>getNamespaceURI</code> to retrieve the URI of each namespace.
	*
	* @return an iterator over the namespace prefixes are within scope of this
	*         <code>SOAPElement</code> object
	*
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getVisibleNamespacePrefixes() : java.util.Iterator<Dynamic>;
	
	/**
	* The last child of this node. If there is no such node, this returns
	* <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getLastChild() : org.w3c.dom.Node;
	
	/**
	*  Tests whether the DOM implementation implements a specific feature and
	* that feature is supported by this node, as specified in .
	* @param feature  The name of the feature to test.
	* @param version  This is the version number of the feature to test.
	* @return Returns <code>true</code> if the specified feature is
	*   supported on this node, <code>false</code> otherwise.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function isSupported(feature : String, version : String) : Bool;
	
	/**
	* Returns the local part of the qualified name of this node.
	* <br>For nodes of any type other than <code>ELEMENT_NODE</code> and
	* <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1
	* method, such as <code>Document.createElement()</code>, this is always
	* <code>null</code>.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function getLocalName() : String;
	
	/**
	* Removes the namespace declaration corresponding to the given prefix.
	*
	* @param prefix a <code>String</code> giving the prefix for which
	*        to search
	* @return <code>true</code> if the namespace declaration was
	*         removed successfully; <code>false</code> if it was not
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function removeNamespaceDeclaration(prefix : String) : Bool;
	
	/**
	* Adds the node <code>newChild</code> to the end of the list of children
	* of this node. If the <code>newChild</code> is already in the tree, it
	* is first removed.
	* @param newChild The node to add.If it is a
	*   <code>DocumentFragment</code> object, the entire contents of the
	*   document fragment are moved into the child list of this node
	* @return The node added.
	* @exception DOMException
	*   HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does not
	*   allow children of the type of the <code>newChild</code> node, or if
	*   the node to append is one of this node's ancestors or this node
	*   itself, or if this node is of type <code>Document</code> and the
	*   DOM application attempts to append a second
	*   <code>DocumentType</code> or <code>Element</code> node.
	*   <br>WRONG_DOCUMENT_ERR: Raised if <code>newChild</code> was created
	*   from a different document than the one that created this node.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly or
	*   if the previous parent of the node being inserted is readonly.
	*   <br>NOT_SUPPORTED_ERR: if the <code>newChild</code> node is a child
	*   of the <code>Document</code> node, this exception might be raised
	*   if the DOM implementation doesn't support the removal of the
	*   <code>DocumentType</code> child or <code>Element</code> child.
	*
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	*  The type information associated with this element.
	* @since DOM Level 3
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	/**
	* Sets the encoding style for this <code>SOAPElement</code> object
	* to one specified.
	*
	* @param encodingStyle a <code>String</code> giving the encoding style
	*
	* @exception IllegalArgumentException if there was a problem in the
	*            encoding style being set.
	* @exception SOAPException if setting the encodingStyle is invalid for this SOAPElement.
	* @see #getEncodingStyle
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public override public function setEncodingStyle(encodingStyle : String) : Void;
	
	
}
