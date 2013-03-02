package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SOAPPart implements org.w3c.dom.Document implements org.w3c.dom.Node
{
	/**
	* Gets the <code>SOAPEnvelope</code> object associated with this
	* <code>SOAPPart</code> object. Once the SOAP envelope is obtained, it
	* can be used to get its contents.
	*
	* @return the <code>SOAPEnvelope</code> object for this
	*           <code>SOAPPart</code> object
	* @exception SOAPException if there is a SOAP error
	*/
	@:overload @:abstract public function getEnvelope() : javax.xml.soap.SOAPEnvelope;
	
	/**
	* Retrieves the value of the MIME header whose name is "Content-Id".
	*
	* @return a <code>String</code> giving the value of the MIME header
	*         named "Content-Id"
	* @see #setContentId
	*/
	@:overload public function getContentId() : String;
	
	/**
	* Retrieves the value of the MIME header whose name is "Content-Location".
	*
	* @return a <code>String</code> giving the value of the MIME header whose
	*          name is "Content-Location"
	* @see #setContentLocation
	*/
	@:overload public function getContentLocation() : String;
	
	/**
	* Sets the value of the MIME header named "Content-Id"
	* to the given <code>String</code>.
	*
	* @param contentId a <code>String</code> giving the value of the MIME
	*        header "Content-Id"
	*
	* @exception IllegalArgumentException if there is a problem in
	* setting the content id
	* @see #getContentId
	*/
	@:overload public function setContentId(contentId : String) : Void;
	
	/**
	* Sets the value of the MIME header "Content-Location"
	* to the given <code>String</code>.
	*
	* @param contentLocation a <code>String</code> giving the value
	*        of the MIME
	*        header "Content-Location"
	* @exception IllegalArgumentException if there is a problem in
	*            setting the content location.
	* @see #getContentLocation
	*/
	@:overload public function setContentLocation(contentLocation : String) : Void;
	
	/**
	* Removes all MIME headers that match the given name.
	*
	* @param header a <code>String</code> giving the name of the MIME header(s) to
	*               be removed
	*/
	@:overload @:abstract public function removeMimeHeader(header : String) : Void;
	
	/**
	* Removes all the <code>MimeHeader</code> objects for this
	* <code>SOAPEnvelope</code> object.
	*/
	@:overload @:abstract public function removeAllMimeHeaders() : Void;
	
	/**
	* Gets all the values of the <code>MimeHeader</code> object
	* in this <code>SOAPPart</code> object that
	* is identified by the given <code>String</code>.
	*
	* @param name the name of the header; example: "Content-Type"
	* @return a <code>String</code> array giving all the values for the
	*         specified header
	* @see #setMimeHeader
	*/
	@:overload @:abstract public function getMimeHeader(name : String) : java.NativeArray<String>;
	
	/**
	* Changes the first header entry that matches the given header name
	* so that its value is the given value, adding a new header with the
	* given name and value if no
	* existing header is a match. If there is a match, this method clears
	* all existing values for the first header that matches and sets the
	* given value instead. If more than one header has
	* the given name, this method removes all of the matching headers after
	* the first one.
	* <P>
	* Note that RFC822 headers can contain only US-ASCII characters.
	*
	* @param   name    a <code>String</code> giving the header name
	*                  for which to search
	* @param   value   a <code>String</code> giving the value to be set.
	*                  This value will be substituted for the current value(s)
	*                  of the first header that is a match if there is one.
	*                  If there is no match, this value will be the value for
	*                  a new <code>MimeHeader</code> object.
	*
	* @exception IllegalArgumentException if there was a problem with
	*            the specified mime header name or value
	* @see #getMimeHeader
	*/
	@:overload @:abstract public function setMimeHeader(name : String, value : String) : Void;
	
	/**
	* Creates a <code>MimeHeader</code> object with the specified
	* name and value and adds it to this <code>SOAPPart</code> object.
	* If a <code>MimeHeader</code> with the specified name already
	* exists, this method adds the specified value to the already
	* existing value(s).
	* <P>
	* Note that RFC822 headers can contain only US-ASCII characters.
	*
	* @param   name    a <code>String</code> giving the header name
	* @param   value   a <code>String</code> giving the value to be set
	*                  or added
	* @exception IllegalArgumentException if there was a problem with
	*            the specified mime header name or value
	*/
	@:overload @:abstract public function addMimeHeader(name : String, value : String) : Void;
	
	/**
	* Retrieves all the headers for this <code>SOAPPart</code> object
	* as an iterator over the <code>MimeHeader</code> objects.
	*
	* @return  an <code>Iterator</code> object with all of the Mime
	*          headers for this <code>SOAPPart</code> object
	*/
	@:overload @:abstract public function getAllMimeHeaders() : java.util.Iterator<Dynamic>;
	
	/**
	* Retrieves all <code>MimeHeader</code> objects that match a name in
	* the given array.
	*
	* @param names a <code>String</code> array with the name(s) of the
	*        MIME headers to be returned
	* @return  all of the MIME headers that match one of the names in the
	*           given array, returned as an <code>Iterator</code> object
	*/
	@:overload @:abstract public function getMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	/**
	* Retrieves all <code>MimeHeader</code> objects whose name does
	* not match a name in the given array.
	*
	* @param names a <code>String</code> array with the name(s) of the
	*        MIME headers not to be returned
	* @return  all of the MIME headers in this <code>SOAPPart</code> object
	*          except those that match one of the names in the
	*           given array.  The nonmatching MIME headers are returned as an
	*           <code>Iterator</code> object.
	*/
	@:overload @:abstract public function getNonMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	/**
	* Sets the content of the <code>SOAPEnvelope</code> object with the data
	* from the given <code>Source</code> object. This <code>Source</code>
	* must contain a valid SOAP document.
	*
	* @param source the <code>javax.xml.transform.Source</code> object with the
	*        data to be set
	*
	* @exception SOAPException if there is a problem in setting the source
	* @see #getContent
	*/
	@:overload @:abstract public function setContent(source : javax.xml.transform.Source) : Void;
	
	/**
	* Returns the content of the SOAPEnvelope as a JAXP <code>Source</code>
	* object.
	*
	* @return the content as a <code>javax.xml.transform.Source</code> object
	*
	* @exception SOAPException if the implementation cannot convert
	*                          the specified <code>Source</code> object
	* @see #setContent
	*/
	@:overload @:abstract public function getContent() : javax.xml.transform.Source;
	
	/**
	* The first child of this node. If there is no such node, this returns
	* <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public public function getFirstChild() : org.w3c.dom.Node;
	
	/**
	* Rename an existing node of type <code>ELEMENT_NODE</code> or
	* <code>ATTRIBUTE_NODE</code>.
	* <br>When possible this simply changes the name of the given node,
	* otherwise this creates a new node with the specified name and
	* replaces the existing node with the new node as described below.
	* <br>If simply changing the name of the given node is not possible, the
	* following operations are performed: a new node is created, any
	* registered event listener is registered on the new node, any user
	* data attached to the old node is removed from that node, the old node
	* is removed from its parent if it has one, the children are moved to
	* the new node, if the renamed node is an <code>Element</code> its
	* attributes are moved to the new node, the new node is inserted at the
	* position the old node used to have in its parent's child nodes list
	* if it has one, the user data that was attached to the old node is
	* attached to the new node.
	* <br>When the node being renamed is an <code>Element</code> only the
	* specified attributes are moved, default attributes originated from
	* the DTD are updated according to the new element name. In addition,
	* the implementation may update default attributes from other schemas.
	* Applications should use <code>Document.normalizeDocument()</code> to
	* guarantee these attributes are up-to-date.
	* <br>When the node being renamed is an <code>Attr</code> that is
	* attached to an <code>Element</code>, the node is first removed from
	* the <code>Element</code> attributes map. Then, once renamed, either
	* by modifying the existing node or creating a new one as described
	* above, it is put back.
	* <br>In addition,
	* <ul>
	* <li> a user data event <code>NODE_RENAMED</code> is fired,
	* </li>
	* <li>
	* when the implementation supports the feature "MutationNameEvents",
	* each mutation operation involved in this method fires the appropriate
	* event, and in the end the event {
	* <code>http://www.w3.org/2001/xml-events</code>,
	* <code>DOMElementNameChanged</code>} or {
	* <code>http://www.w3.org/2001/xml-events</code>,
	* <code>DOMAttributeNameChanged</code>} is fired.
	* </li>
	* </ul>
	* @param n The node to rename.
	* @param namespaceURI The new namespace URI.
	* @param qualifiedName The new qualified name.
	* @return The renamed node. This is either the specified node or the new
	*   node that was created to replace the specified node.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised when the type of the specified node is
	*   neither <code>ELEMENT_NODE</code> nor <code>ATTRIBUTE_NODE</code>,
	*   or if the implementation does not support the renaming of the
	*   document element.
	*   <br>INVALID_CHARACTER_ERR: Raised if the new qualified name is not an
	*   XML name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute.
	*   <br>WRONG_DOCUMENT_ERR: Raised when the specified node was created
	*   from a different document than this document.
	*   <br>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is a
	*   malformed qualified name, if the <code>qualifiedName</code> has a
	*   prefix and the <code>namespaceURI</code> is <code>null</code>, or
	*   if the <code>qualifiedName</code> has a prefix that is "xml" and
	*   the <code>namespaceURI</code> is different from "<a href='http://www.w3.org/XML/1998/namespace'>
	*   http://www.w3.org/XML/1998/namespace</a>" [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	*   . Also raised, when the node being renamed is an attribute, if the
	*   <code>qualifiedName</code>, or its prefix, is "xmlns" and the
	*   <code>namespaceURI</code> is different from "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>".
	* @since DOM Level 3
	*/
	@:overload @:public public function renameNode(n : org.w3c.dom.Node, namespaceURI : String, qualifiedName : String) : org.w3c.dom.Node;
	
	/**
	* The <code>DOMImplementation</code> object that handles this document. A
	* DOM application may use objects from multiple implementations.
	*/
	@:overload @:public public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	*  The configuration used when <code>Document.normalizeDocument()</code>
	* is invoked.
	* @since DOM Level 3
	*/
	@:overload @:public public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/**
	* Returns whether this node has any children.
	* @return Returns <code>true</code> if this node has any children,
	*   <code>false</code> otherwise.
	*/
	@:overload @:public @:public @:public @:public @:public public function hasChildNodes() : Bool;
	
	/**
	* Creates a <code>ProcessingInstruction</code> node given the specified
	* name and data strings.
	* @param target The target part of the processing instruction.Unlike
	*   <code>Document.createElementNS</code> or
	*   <code>Document.createAttributeNS</code>, no namespace well-formed
	*   checking is done on the target name. Applications should invoke
	*   <code>Document.normalizeDocument()</code> with the parameter "
	*   namespaces" set to <code>true</code> in order to ensure that the
	*   target name is namespace well-formed.
	* @param data The data for the node.
	* @return The new <code>ProcessingInstruction</code> object.
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified target is not an XML
	*   name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute.
	*   <br>NOT_SUPPORTED_ERR: Raised if this document is an HTML document.
	*/
	@:overload @:public public function createProcessingInstruction(target : String, data : String) : org.w3c.dom.ProcessingInstruction;
	
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
	@:overload @:public @:public @:public @:public @:public public function setUserData(key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	/**
	* This is a convenience attribute that allows direct access to the child
	* node that is the document element of the document.
	*/
	@:overload @:public public function getDocumentElement() : org.w3c.dom.Element;
	
	/**
	* Creates an <code>EntityReference</code> object. In addition, if the
	* referenced entity is known, the child list of the
	* <code>EntityReference</code> node is made the same as that of the
	* corresponding <code>Entity</code> node.
	* <p ><b>Note:</b> If any descendant of the <code>Entity</code> node has
	* an unbound namespace prefix, the corresponding descendant of the
	* created <code>EntityReference</code> node is also unbound; (its
	* <code>namespaceURI</code> is <code>null</code>). The DOM Level 2 and
	* 3 do not support any mechanism to resolve namespace prefixes in this
	* case.
	* @param name The name of the entity to reference.Unlike
	*   <code>Document.createElementNS</code> or
	*   <code>Document.createAttributeNS</code>, no namespace well-formed
	*   checking is done on the entity name. Applications should invoke
	*   <code>Document.normalizeDocument()</code> with the parameter "
	*   namespaces" set to <code>true</code> in order to ensure that the
	*   entity name is namespace well-formed.
	* @return The new <code>EntityReference</code> object.
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified name is not an XML
	*   name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute.
	*   <br>NOT_SUPPORTED_ERR: Raised if this document is an HTML document.
	*/
	@:overload @:public public function createEntityReference(name : String) : org.w3c.dom.EntityReference;
	
	/**
	* The parent of this node. All nodes, except <code>Attr</code>,
	* <code>Document</code>, <code>DocumentFragment</code>,
	* <code>Entity</code>, and <code>Notation</code> may have a parent.
	* However, if a node has just been created and not yet added to the
	* tree, or if it has been removed from the tree, this is
	* <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public public function getParentNode() : org.w3c.dom.Node;
	
	/**
	* The Document Type Declaration (see <code>DocumentType</code>)
	* associated with this document. For XML documents without a document
	* type declaration this returns <code>null</code>. For HTML documents,
	* a <code>DocumentType</code> object may be returned, independently of
	* the presence or absence of document type declaration in the HTML
	* document.
	* <br>This provides direct access to the <code>DocumentType</code> node,
	* child node of this <code>Document</code>. This node can be set at
	* document creation time and later changed through the use of child
	* nodes manipulation methods, such as <code>Node.insertBefore</code>,
	* or <code>Node.replaceChild</code>. Note, however, that while some
	* implementations may instantiate different types of
	* <code>Document</code> objects supporting additional features than the
	* "Core", such as "HTML" [<a href='http://www.w3.org/TR/2003/REC-DOM-Level-2-HTML-20030109'>DOM Level 2 HTML</a>]
	* , based on the <code>DocumentType</code> specified at creation time,
	* changing it afterwards is very unlikely to result in a change of the
	* features supported.
	*
	* @since DOM Level 3
	*/
	@:overload @:public public function getDoctype() : org.w3c.dom.DocumentType;
	
	/**
	* An attribute specifying, as part of the <a href='http://www.w3.org/TR/2004/REC-xml-20040204#NT-XMLDecl'>XML declaration</a>, the encoding of this document. This is <code>null</code> when
	* unspecified or when it is not known, such as when the
	* <code>Document</code> was created in memory.
	* @since DOM Level 3
	*/
	@:overload @:public public function getXmlEncoding() : String;
	
	/**
	* An attribute specifying, as part of the <a href='http://www.w3.org/TR/2004/REC-xml-20040204#NT-XMLDecl'>XML declaration</a>, whether this document is standalone. This is <code>false</code> when
	* unspecified.
	* <p ><b>Note:</b>  No verification is done on the value when setting
	* this attribute. Applications should use
	* <code>Document.normalizeDocument()</code> with the "validate"
	* parameter to verify if the value matches the <a href='http://www.w3.org/TR/2004/REC-xml-20040204#sec-rmd'>validity
	* constraint for standalone document declaration</a> as defined in [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>].
	* @exception DOMException
	*    NOT_SUPPORTED_ERR: Raised if this document does not support the
	*   "XML" feature.
	* @since DOM Level 3
	*/
	@:overload @:public public function setXmlStandalone(xmlStandalone : Bool) : Void;
	
	/**
	* Returns whether this node (if it is an element) has any attributes.
	* @return Returns <code>true</code> if this node has any attributes,
	*   <code>false</code> otherwise.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public public function hasAttributes() : Bool;
	
	/**
	* An attribute specifying whether error checking is enforced or not. When
	* set to <code>false</code>, the implementation is free to not test
	* every possible error case normally defined on DOM operations, and not
	* raise any <code>DOMException</code> on DOM operations or report
	* errors while using <code>Document.normalizeDocument()</code>. In case
	* of error, the behavior is undefined. This attribute is
	* <code>true</code> by default.
	* @since DOM Level 3
	*/
	@:overload @:public public function setStrictErrorChecking(strictErrorChecking : Bool) : Void;
	
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
	@:overload @:public @:public @:public @:public @:public public function lookupNamespaceURI(prefix : String) : String;
	
	/**
	* Creates an <code>Attr</code> of the given name. Note that the
	* <code>Attr</code> instance can then be set on an <code>Element</code>
	* using the <code>setAttributeNode</code> method.
	* <br>To create an attribute with a qualified name and namespace URI, use
	* the <code>createAttributeNS</code> method.
	* @param name The name of the attribute.
	* @return A new <code>Attr</code> object with the <code>nodeName</code>
	*   attribute set to <code>name</code>, and <code>localName</code>,
	*   <code>prefix</code>, and <code>namespaceURI</code> set to
	*   <code>null</code>. The value of the attribute is the empty string.
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified name is not an XML
	*   name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute.
	*/
	@:overload @:public public function createAttribute(name : String) : org.w3c.dom.Attr;
	
	/**
	* An attribute specifying whether error checking is enforced or not. When
	* set to <code>false</code>, the implementation is free to not test
	* every possible error case normally defined on DOM operations, and not
	* raise any <code>DOMException</code> on DOM operations or report
	* errors while using <code>Document.normalizeDocument()</code>. In case
	* of error, the behavior is undefined. This attribute is
	* <code>true</code> by default.
	* @since DOM Level 3
	*/
	@:overload @:public public function getStrictErrorChecking() : Bool;
	
	/**
	* Returns a <code>NodeList</code> of all the <code>Elements</code> with a
	* given local name and namespace URI in document order.
	* @param namespaceURI The namespace URI of the elements to match on. The
	*   special value <code>"*"</code> matches all namespaces.
	* @param localName The local name of the elements to match on. The
	*   special value "*" matches all local names.
	* @return A new <code>NodeList</code> object containing all the matched
	*   <code>Elements</code>.
	* @since DOM Level 2
	*/
	@:overload @:public public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
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
	@:overload @:public @:public @:public @:public @:public public function getTextContent() : String;
	
	/**
	* A <code>NodeList</code> that contains all children of this node. If
	* there are no children, this is a <code>NodeList</code> containing no
	* nodes.
	*/
	@:overload @:public @:public @:public @:public @:public public function getChildNodes() : org.w3c.dom.NodeList;
	
	/**
	* An attribute specifying the encoding used for this document at the time
	* of the parsing. This is <code>null</code> when it is not known, such
	* as when the <code>Document</code> was created in memory.
	* @since DOM Level 3
	*/
	@:overload @:public public function getInputEncoding() : String;
	
	/**
	* The value of this node, depending on its type; see the table above.
	* When it is defined to be <code>null</code>, setting it has no effect,
	* including if the node is read-only.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly and if
	*   it is not defined to be <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public public function setNodeValue(nodeValue : String) : Void;
	
	/**
	* A code representing the type of the underlying object, as defined above.
	*/
	@:overload @:public @:public @:public @:public @:public public function getNodeType() : java.StdTypes.Int16;
	
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
	@:overload @:public @:public @:public @:public @:public public function compareDocumentPosition(other : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	/**
	*  An attribute specifying, as part of the <a href='http://www.w3.org/TR/2004/REC-xml-20040204#NT-XMLDecl'>XML declaration</a>, the version number of this document. If there is no declaration and if
	* this document supports the "XML" feature, the value is
	* <code>"1.0"</code>. If this document does not support the "XML"
	* feature, the value is always <code>null</code>. Changing this
	* attribute will affect methods that check for invalid characters in
	* XML names. Application should invoke
	* <code>Document.normalizeDocument()</code> in order to check for
	* invalid characters in the <code>Node</code>s that are already part of
	* this <code>Document</code>.
	* <br> DOM applications may use the
	* <code>DOMImplementation.hasFeature(feature, version)</code> method
	* with parameter values "XMLVersion" and "1.0" (respectively) to
	* determine if an implementation supports [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>]. DOM
	* applications may use the same method with parameter values
	* "XMLVersion" and "1.1" (respectively) to determine if an
	* implementation supports [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>]. In both
	* cases, in order to support XML, an implementation must also support
	* the "XML" feature defined in this specification. <code>Document</code>
	*  objects supporting a version of the "XMLVersion" feature must not
	* raise a <code>NOT_SUPPORTED_ERR</code> exception for the same version
	* number when using <code>Document.xmlVersion</code>.
	* @exception DOMException
	*    NOT_SUPPORTED_ERR: Raised if the version is set to a value that is
	*   not supported by this <code>Document</code> or if this document
	*   does not support the "XML" feature.
	* @since DOM Level 3
	*/
	@:overload @:public public function setXmlVersion(xmlVersion : String) : Void;
	
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
	@:overload @:public @:public @:public @:public @:public public function normalize() : Void;
	
	/**
	*  Attempts to adopt a node from another document to this document. If
	* supported, it changes the <code>ownerDocument</code> of the source
	* node, its children, as well as the attached attribute nodes if there
	* are any. If the source node has a parent it is first removed from the
	* child list of its parent. This effectively allows moving a subtree
	* from one document to another (unlike <code>importNode()</code> which
	* create a copy of the source node instead of moving it). When it
	* fails, applications should use <code>Document.importNode()</code>
	* instead. Note that if the adopted node is already part of this
	* document (i.e. the source and target document are the same), this
	* method still has the effect of removing the source node from the
	* child list of its parent, if any. The following list describes the
	* specifics for each type of node.
	* <dl>
	* <dt>ATTRIBUTE_NODE</dt>
	* <dd>The
	* <code>ownerElement</code> attribute is set to <code>null</code> and
	* the <code>specified</code> flag is set to <code>true</code> on the
	* adopted <code>Attr</code>. The descendants of the source
	* <code>Attr</code> are recursively adopted.</dd>
	* <dt>DOCUMENT_FRAGMENT_NODE</dt>
	* <dd>The
	* descendants of the source node are recursively adopted.</dd>
	* <dt>DOCUMENT_NODE</dt>
	* <dd>
	* <code>Document</code> nodes cannot be adopted.</dd>
	* <dt>DOCUMENT_TYPE_NODE</dt>
	* <dd>
	* <code>DocumentType</code> nodes cannot be adopted.</dd>
	* <dt>ELEMENT_NODE</dt>
	* <dd><em>Specified</em> attribute nodes of the source element are adopted. Default attributes
	* are discarded, though if the document being adopted into defines
	* default attributes for this element name, those are assigned. The
	* descendants of the source element are recursively adopted.</dd>
	* <dt>ENTITY_NODE</dt>
	* <dd>
	* <code>Entity</code> nodes cannot be adopted.</dd>
	* <dt>ENTITY_REFERENCE_NODE</dt>
	* <dd>Only
	* the <code>EntityReference</code> node itself is adopted, the
	* descendants are discarded, since the source and destination documents
	* might have defined the entity differently. If the document being
	* imported into provides a definition for this entity name, its value
	* is assigned.</dd>
	* <dt>NOTATION_NODE</dt>
	* <dd><code>Notation</code> nodes cannot be
	* adopted.</dd>
	* <dt>PROCESSING_INSTRUCTION_NODE, TEXT_NODE, CDATA_SECTION_NODE,
	* COMMENT_NODE</dt>
	* <dd>These nodes can all be adopted. No specifics.</dd>
	* </dl>
	* <p ><b>Note:</b>  Since it does not create new nodes unlike the
	* <code>Document.importNode()</code> method, this method does not raise
	* an <code>INVALID_CHARACTER_ERR</code> exception, and applications
	* should use the <code>Document.normalizeDocument()</code> method to
	* check if an imported name is not an XML name according to the XML
	* version in use.
	* @param source The node to move into this document.
	* @return The adopted node, or <code>null</code> if this operation
	*   fails, such as when the source node comes from a different
	*   implementation.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised if the source node is of type
	*   <code>DOCUMENT</code>, <code>DOCUMENT_TYPE</code>.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised when the source node is
	*   readonly.
	* @since DOM Level 3
	*/
	@:overload @:public public function adoptNode(source : org.w3c.dom.Node) : org.w3c.dom.Node;
	
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
	@:overload @:public @:public @:public @:public @:public public function getUserData(key : String) : Dynamic;
	
	/**
	* A <code>NamedNodeMap</code> containing the attributes of this node (if
	* it is an <code>Element</code>) or <code>null</code> otherwise.
	*/
	@:overload @:public @:public @:public @:public @:public public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
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
	@:overload @:public @:public @:public @:public @:public public function isEqualNode(arg : org.w3c.dom.Node) : Bool;
	
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
	@:overload @:public @:public @:public @:public @:public public function isSameNode(other : org.w3c.dom.Node) : Bool;
	
	/**
	* The <code>Document</code> object associated with this node. This is
	* also the <code>Document</code> object used to create new nodes. When
	* this node is a <code>Document</code> or a <code>DocumentType</code>
	* which is not used with any <code>Document</code> yet, this is
	* <code>null</code>.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public public function getOwnerDocument() : org.w3c.dom.Document;
	
	/**
	* Creates a <code>Comment</code> node given the specified string.
	* @param data The data for the node.
	* @return The new <code>Comment</code> object.
	*/
	@:overload @:public public function createComment(data : String) : org.w3c.dom.Comment;
	
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
	@:overload @:public @:public @:public @:public @:public public function isDefaultNamespace(namespaceURI : String) : Bool;
	
	/**
	* The node immediately following this node. If there is no such node,
	* this returns <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public public function getNextSibling() : org.w3c.dom.Node;
	
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
	@:overload @:public @:public @:public @:public @:public public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
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
	@:overload @:public @:public @:public @:public @:public public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
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
	@:overload @:public @:public @:public @:public @:public public function lookupPrefix(namespaceURI : String) : String;
	
	/**
	* Creates an element of the type specified. Note that the instance
	* returned implements the <code>Element</code> interface, so attributes
	* can be specified directly on the returned object.
	* <br>In addition, if there are known attributes with default values,
	* <code>Attr</code> nodes representing them are automatically created
	* and attached to the element.
	* <br>To create an element with a qualified name and namespace URI, use
	* the <code>createElementNS</code> method.
	* @param tagName The name of the element type to instantiate. For XML,
	*   this is case-sensitive, otherwise it depends on the
	*   case-sensitivity of the markup language in use. In that case, the
	*   name is mapped to the canonical form of that markup by the DOM
	*   implementation.
	* @return A new <code>Element</code> object with the
	*   <code>nodeName</code> attribute set to <code>tagName</code>, and
	*   <code>localName</code>, <code>prefix</code>, and
	*   <code>namespaceURI</code> set to <code>null</code>.
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified name is not an XML
	*   name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute.
	*/
	@:overload @:public public function createElement(tagName : String) : org.w3c.dom.Element;
	
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
	@:overload @:public @:public @:public @:public @:public public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
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
	@:overload @:public @:public @:public @:public @:public public function getBaseURI() : String;
	
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
	@:overload @:public @:public @:public @:public @:public public function setTextContent(textContent : String) : Void;
	
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
	@:overload @:public @:public @:public @:public @:public public function setPrefix(prefix : String) : Void;
	
	/**
	* Creates a <code>CDATASection</code> node whose value is the specified
	* string.
	* @param data The data for the <code>CDATASection</code> contents.
	* @return The new <code>CDATASection</code> object.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised if this document is an HTML document.
	*/
	@:overload @:public public function createCDATASection(data : String) : org.w3c.dom.CDATASection;
	
	/**
	*  The location of the document or <code>null</code> if undefined or if
	* the <code>Document</code> was created using
	* <code>DOMImplementation.createDocument</code>. No lexical checking is
	* performed when setting this attribute; this could result in a
	* <code>null</code> value returned when using <code>Node.baseURI</code>
	* .
	* <br> Beware that when the <code>Document</code> supports the feature
	* "HTML" [<a href='http://www.w3.org/TR/2003/REC-DOM-Level-2-HTML-20030109'>DOM Level 2 HTML</a>]
	* , the href attribute of the HTML BASE element takes precedence over
	* this attribute when computing <code>Node.baseURI</code>.
	* @since DOM Level 3
	*/
	@:overload @:public public function getDocumentURI() : String;
	
	/**
	* The value of this node, depending on its type; see the table above.
	* When it is defined to be <code>null</code>, setting it has no effect,
	* including if the node is read-only.
	* @exception DOMException
	*   DOMSTRING_SIZE_ERR: Raised when it would return more characters than
	*   fit in a <code>DOMString</code> variable on the implementation
	*   platform.
	*/
	@:overload @:public @:public @:public @:public @:public public function getNodeValue() : String;
	
	/**
	* The node immediately preceding this node. If there is no such node,
	* this returns <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public public function getPreviousSibling() : org.w3c.dom.Node;
	
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
	@:overload @:public @:public @:public @:public @:public public function getFeature(feature : String, version : String) : Dynamic;
	
	/**
	* Creates an attribute of the given qualified name and namespace URI.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* <code>namespaceURI</code> parameter for methods if they wish to have
	* no namespace.
	* @param namespaceURI The namespace URI of the attribute to create.
	* @param qualifiedName The qualified name of the attribute to
	*   instantiate.
	* @return A new <code>Attr</code> object with the following attributes:
	* <table border='1' cellpadding='3'>
	* <tr>
	* <th>
	*   Attribute</th>
	* <th>Value</th>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Node.nodeName</code></td>
	* <td valign='top' rowspan='1' colspan='1'>qualifiedName</td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>
	*   <code>Node.namespaceURI</code></td>
	* <td valign='top' rowspan='1' colspan='1'><code>namespaceURI</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'>
	*   <code>Node.prefix</code></td>
	* <td valign='top' rowspan='1' colspan='1'>prefix, extracted from
	*   <code>qualifiedName</code>, or <code>null</code> if there is no
	*   prefix</td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Node.localName</code></td>
	* <td valign='top' rowspan='1' colspan='1'>local name, extracted from
	*   <code>qualifiedName</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Attr.name</code></td>
	* <td valign='top' rowspan='1' colspan='1'>
	*   <code>qualifiedName</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Node.nodeValue</code></td>
	* <td valign='top' rowspan='1' colspan='1'>the empty
	*   string</td>
	* </tr>
	* </table>
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified
	*   <code>qualifiedName</code> is not an XML name according to the XML
	*   version in use specified in the <code>Document.xmlVersion</code>
	*   attribute.
	*   <br>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is a
	*   malformed qualified name, if the <code>qualifiedName</code> has a
	*   prefix and the <code>namespaceURI</code> is <code>null</code>, if
	*   the <code>qualifiedName</code> has a prefix that is "xml" and the
	*   <code>namespaceURI</code> is different from "<a href='http://www.w3.org/XML/1998/namespace'>
	*   http://www.w3.org/XML/1998/namespace</a>", if the <code>qualifiedName</code> or its prefix is "xmlns" and the
	*   <code>namespaceURI</code> is different from "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>", or if the <code>namespaceURI</code> is "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>" and neither the <code>qualifiedName</code> nor its prefix is "xmlns".
	*   <br>NOT_SUPPORTED_ERR: Always thrown if the current document does not
	*   support the <code>"XML"</code> feature, since namespaces were
	*   defined by XML.
	* @since DOM Level 2
	*/
	@:overload @:public public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	/**
	* Returns the <code>Element</code> that has an ID attribute with the
	* given value. If no such element exists, this returns <code>null</code>
	* . If more than one element has an ID attribute with that value, what
	* is returned is undefined.
	* <br> The DOM implementation is expected to use the attribute
	* <code>Attr.isId</code> to determine if an attribute is of type ID.
	* <p ><b>Note:</b> Attributes with the name "ID" or "id" are not of type
	* ID unless so defined.
	* @param elementId The unique <code>id</code> value for an element.
	* @return The matching element or <code>null</code> if there is none.
	* @since DOM Level 2
	*/
	@:overload @:public public function getElementById(elementId : String) : org.w3c.dom.Element;
	
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
	@:overload @:public @:public @:public @:public @:public public function getPrefix() : String;
	
	/**
	* Creates a <code>Text</code> node given the specified string.
	* @param data The data for the node.
	* @return The new <code>Text</code> object.
	*/
	@:overload @:public public function createTextNode(data : String) : org.w3c.dom.Text;
	
	/**
	* An attribute specifying, as part of the <a href='http://www.w3.org/TR/2004/REC-xml-20040204#NT-XMLDecl'>XML declaration</a>, whether this document is standalone. This is <code>false</code> when
	* unspecified.
	* <p ><b>Note:</b>  No verification is done on the value when setting
	* this attribute. Applications should use
	* <code>Document.normalizeDocument()</code> with the "validate"
	* parameter to verify if the value matches the <a href='http://www.w3.org/TR/2004/REC-xml-20040204#sec-rmd'>validity
	* constraint for standalone document declaration</a> as defined in [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>].
	* @since DOM Level 3
	*/
	@:overload @:public public function getXmlStandalone() : Bool;
	
	/**
	* The name of this node, depending on its type; see the table above.
	*/
	@:overload @:public @:public @:public @:public @:public public function getNodeName() : String;
	
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
	@:overload @:public @:public @:public @:public @:public public function getNamespaceURI() : String;
	
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
	@:overload @:public @:public @:public @:public @:public public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Creates an empty <code>DocumentFragment</code> object.
	* @return A new <code>DocumentFragment</code>.
	*/
	@:overload @:public public function createDocumentFragment() : org.w3c.dom.DocumentFragment;
	
	/**
	* Returns a <code>NodeList</code> of all the <code>Elements</code> in
	* document order with a given tag name and are contained in the
	* document.
	* @param tagname  The name of the tag to match on. The special value "*"
	*   matches all tags. For XML, the <code>tagname</code> parameter is
	*   case-sensitive, otherwise it depends on the case-sensitivity of the
	*   markup language in use.
	* @return A new <code>NodeList</code> object containing all the matched
	*   <code>Elements</code>.
	*/
	@:overload @:public public function getElementsByTagName(tagname : String) : org.w3c.dom.NodeList;
	
	/**
	* Creates an element of the given qualified name and namespace URI.
	* <br>Per [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	* , applications must use the value <code>null</code> as the
	* namespaceURI parameter for methods if they wish to have no namespace.
	* @param namespaceURI The namespace URI of the element to create.
	* @param qualifiedName The qualified name of the element type to
	*   instantiate.
	* @return A new <code>Element</code> object with the following
	*   attributes:
	* <table border='1' cellpadding='3'>
	* <tr>
	* <th>Attribute</th>
	* <th>Value</th>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Node.nodeName</code></td>
	* <td valign='top' rowspan='1' colspan='1'>
	*   <code>qualifiedName</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Node.namespaceURI</code></td>
	* <td valign='top' rowspan='1' colspan='1'>
	*   <code>namespaceURI</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Node.prefix</code></td>
	* <td valign='top' rowspan='1' colspan='1'>prefix, extracted
	*   from <code>qualifiedName</code>, or <code>null</code> if there is
	*   no prefix</td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Node.localName</code></td>
	* <td valign='top' rowspan='1' colspan='1'>local name, extracted from
	*   <code>qualifiedName</code></td>
	* </tr>
	* <tr>
	* <td valign='top' rowspan='1' colspan='1'><code>Element.tagName</code></td>
	* <td valign='top' rowspan='1' colspan='1'>
	*   <code>qualifiedName</code></td>
	* </tr>
	* </table>
	* @exception DOMException
	*   INVALID_CHARACTER_ERR: Raised if the specified
	*   <code>qualifiedName</code> is not an XML name according to the XML
	*   version in use specified in the <code>Document.xmlVersion</code>
	*   attribute.
	*   <br>NAMESPACE_ERR: Raised if the <code>qualifiedName</code> is a
	*   malformed qualified name, if the <code>qualifiedName</code> has a
	*   prefix and the <code>namespaceURI</code> is <code>null</code>, or
	*   if the <code>qualifiedName</code> has a prefix that is "xml" and
	*   the <code>namespaceURI</code> is different from "<a href='http://www.w3.org/XML/1998/namespace'>
	*   http://www.w3.org/XML/1998/namespace</a>" [<a href='http://www.w3.org/TR/1999/REC-xml-names-19990114/'>XML Namespaces</a>]
	*   , or if the <code>qualifiedName</code> or its prefix is "xmlns" and
	*   the <code>namespaceURI</code> is different from "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>", or if the <code>namespaceURI</code> is "<a href='http://www.w3.org/2000/xmlns/'>http://www.w3.org/2000/xmlns/</a>" and neither the <code>qualifiedName</code> nor its prefix is "xmlns".
	*   <br>NOT_SUPPORTED_ERR: Always thrown if the current document does not
	*   support the <code>"XML"</code> feature, since namespaces were
	*   defined by XML.
	* @since DOM Level 2
	*/
	@:overload @:public public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	/**
	* The last child of this node. If there is no such node, this returns
	* <code>null</code>.
	*/
	@:overload @:public @:public @:public @:public @:public public function getLastChild() : org.w3c.dom.Node;
	
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
	@:overload @:public @:public @:public @:public @:public public function isSupported(feature : String, version : String) : Bool;
	
	/**
	* Returns the local part of the qualified name of this node.
	* <br>For nodes of any type other than <code>ELEMENT_NODE</code> and
	* <code>ATTRIBUTE_NODE</code> and nodes created with a DOM Level 1
	* method, such as <code>Document.createElement()</code>, this is always
	* <code>null</code>.
	*
	* @since DOM Level 2
	*/
	@:overload @:public @:public @:public @:public @:public public function getLocalName() : String;
	
	/**
	* Imports a node from another document to this document, without altering
	* or removing the source node from the original document; this method
	* creates a new copy of the source node. The returned node has no
	* parent; (<code>parentNode</code> is <code>null</code>).
	* <br>For all nodes, importing a node creates a node object owned by the
	* importing document, with attribute values identical to the source
	* node's <code>nodeName</code> and <code>nodeType</code>, plus the
	* attributes related to namespaces (<code>prefix</code>,
	* <code>localName</code>, and <code>namespaceURI</code>). As in the
	* <code>cloneNode</code> operation, the source node is not altered.
	* User data associated to the imported node is not carried over.
	* However, if any <code>UserDataHandlers</code> has been specified
	* along with the associated data these handlers will be called with the
	* appropriate parameters before this method returns.
	* <br>Additional information is copied as appropriate to the
	* <code>nodeType</code>, attempting to mirror the behavior expected if
	* a fragment of XML or HTML source was copied from one document to
	* another, recognizing that the two documents may have different DTDs
	* in the XML case. The following list describes the specifics for each
	* type of node.
	* <dl>
	* <dt>ATTRIBUTE_NODE</dt>
	* <dd>The <code>ownerElement</code> attribute
	* is set to <code>null</code> and the <code>specified</code> flag is
	* set to <code>true</code> on the generated <code>Attr</code>. The
	* descendants of the source <code>Attr</code> are recursively imported
	* and the resulting nodes reassembled to form the corresponding subtree.
	* Note that the <code>deep</code> parameter has no effect on
	* <code>Attr</code> nodes; they always carry their children with them
	* when imported.</dd>
	* <dt>DOCUMENT_FRAGMENT_NODE</dt>
	* <dd>If the <code>deep</code> option
	* was set to <code>true</code>, the descendants of the source
	* <code>DocumentFragment</code> are recursively imported and the
	* resulting nodes reassembled under the imported
	* <code>DocumentFragment</code> to form the corresponding subtree.
	* Otherwise, this simply generates an empty
	* <code>DocumentFragment</code>.</dd>
	* <dt>DOCUMENT_NODE</dt>
	* <dd><code>Document</code>
	* nodes cannot be imported.</dd>
	* <dt>DOCUMENT_TYPE_NODE</dt>
	* <dd><code>DocumentType</code>
	* nodes cannot be imported.</dd>
	* <dt>ELEMENT_NODE</dt>
	* <dd><em>Specified</em> attribute nodes of the source element are imported, and the generated
	* <code>Attr</code> nodes are attached to the generated
	* <code>Element</code>. Default attributes are <em>not</em> copied, though if the document being imported into defines default
	* attributes for this element name, those are assigned. If the
	* <code>importNode</code> <code>deep</code> parameter was set to
	* <code>true</code>, the descendants of the source element are
	* recursively imported and the resulting nodes reassembled to form the
	* corresponding subtree.</dd>
	* <dt>ENTITY_NODE</dt>
	* <dd><code>Entity</code> nodes can be
	* imported, however in the current release of the DOM the
	* <code>DocumentType</code> is readonly. Ability to add these imported
	* nodes to a <code>DocumentType</code> will be considered for addition
	* to a future release of the DOM.On import, the <code>publicId</code>,
	* <code>systemId</code>, and <code>notationName</code> attributes are
	* copied. If a <code>deep</code> import is requested, the descendants
	* of the the source <code>Entity</code> are recursively imported and
	* the resulting nodes reassembled to form the corresponding subtree.</dd>
	* <dt>
	* ENTITY_REFERENCE_NODE</dt>
	* <dd>Only the <code>EntityReference</code> itself is
	* copied, even if a <code>deep</code> import is requested, since the
	* source and destination documents might have defined the entity
	* differently. If the document being imported into provides a
	* definition for this entity name, its value is assigned.</dd>
	* <dt>NOTATION_NODE</dt>
	* <dd>
	* <code>Notation</code> nodes can be imported, however in the current
	* release of the DOM the <code>DocumentType</code> is readonly. Ability
	* to add these imported nodes to a <code>DocumentType</code> will be
	* considered for addition to a future release of the DOM.On import, the
	* <code>publicId</code> and <code>systemId</code> attributes are copied.
	* Note that the <code>deep</code> parameter has no effect on this type
	* of nodes since they cannot have any children.</dd>
	* <dt>
	* PROCESSING_INSTRUCTION_NODE</dt>
	* <dd>The imported node copies its
	* <code>target</code> and <code>data</code> values from those of the
	* source node.Note that the <code>deep</code> parameter has no effect
	* on this type of nodes since they cannot have any children.</dd>
	* <dt>TEXT_NODE,
	* CDATA_SECTION_NODE, COMMENT_NODE</dt>
	* <dd>These three types of nodes inheriting
	* from <code>CharacterData</code> copy their <code>data</code> and
	* <code>length</code> attributes from those of the source node.Note
	* that the <code>deep</code> parameter has no effect on these types of
	* nodes since they cannot have any children.</dd>
	* </dl>
	* @param importedNode The node to import.
	* @param deep If <code>true</code>, recursively import the subtree under
	*   the specified node; if <code>false</code>, import only the node
	*   itself, as explained above. This has no effect on nodes that cannot
	*   have any children, and on <code>Attr</code>, and
	*   <code>EntityReference</code> nodes.
	* @return The imported node that belongs to this <code>Document</code>.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised if the type of node being imported is not
	*   supported.
	*   <br>INVALID_CHARACTER_ERR: Raised if one of the imported names is not
	*   an XML name according to the XML version in use specified in the
	*   <code>Document.xmlVersion</code> attribute. This may happen when
	*   importing an XML 1.1 [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>] element
	*   into an XML 1.0 document, for instance.
	* @since DOM Level 2
	*/
	@:overload @:public public function importNode(importedNode : org.w3c.dom.Node, deep : Bool) : org.w3c.dom.Node;
	
	/**
	*  The location of the document or <code>null</code> if undefined or if
	* the <code>Document</code> was created using
	* <code>DOMImplementation.createDocument</code>. No lexical checking is
	* performed when setting this attribute; this could result in a
	* <code>null</code> value returned when using <code>Node.baseURI</code>
	* .
	* <br> Beware that when the <code>Document</code> supports the feature
	* "HTML" [<a href='http://www.w3.org/TR/2003/REC-DOM-Level-2-HTML-20030109'>DOM Level 2 HTML</a>]
	* , the href attribute of the HTML BASE element takes precedence over
	* this attribute when computing <code>Node.baseURI</code>.
	* @since DOM Level 3
	*/
	@:overload @:public public function setDocumentURI(documentURI : String) : Void;
	
	/**
	*  This method acts as if the document was going through a save and load
	* cycle, putting the document in a "normal" form. As a consequence,
	* this method updates the replacement tree of
	* <code>EntityReference</code> nodes and normalizes <code>Text</code>
	* nodes, as defined in the method <code>Node.normalize()</code>.
	* <br> Otherwise, the actual result depends on the features being set on
	* the <code>Document.domConfig</code> object and governing what
	* operations actually take place. Noticeably this method could also
	* make the document namespace well-formed according to the algorithm
	* described in , check the character normalization, remove the
	* <code>CDATASection</code> nodes, etc. See
	* <code>DOMConfiguration</code> for details.
	* <pre>// Keep in the document
	* the information defined // in the XML Information Set (Java example)
	* DOMConfiguration docConfig = myDocument.getDomConfig();
	* docConfig.setParameter("infoset", Boolean.TRUE);
	* myDocument.normalizeDocument();</pre>
	*
	* <br>Mutation events, when supported, are generated to reflect the
	* changes occurring on the document.
	* <br> If errors occur during the invocation of this method, such as an
	* attempt to update a read-only node or a <code>Node.nodeName</code>
	* contains an invalid character according to the XML version in use,
	* errors or warnings (<code>DOMError.SEVERITY_ERROR</code> or
	* <code>DOMError.SEVERITY_WARNING</code>) will be reported using the
	* <code>DOMErrorHandler</code> object associated with the "error-handler
	* " parameter. Note this method might also report fatal errors (
	* <code>DOMError.SEVERITY_FATAL_ERROR</code>) if an implementation
	* cannot recover from an error.
	* @since DOM Level 3
	*/
	@:overload @:public public function normalizeDocument() : Void;
	
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
	@:overload @:public @:public @:public @:public @:public public function appendChild(newChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	*  An attribute specifying, as part of the <a href='http://www.w3.org/TR/2004/REC-xml-20040204#NT-XMLDecl'>XML declaration</a>, the version number of this document. If there is no declaration and if
	* this document supports the "XML" feature, the value is
	* <code>"1.0"</code>. If this document does not support the "XML"
	* feature, the value is always <code>null</code>. Changing this
	* attribute will affect methods that check for invalid characters in
	* XML names. Application should invoke
	* <code>Document.normalizeDocument()</code> in order to check for
	* invalid characters in the <code>Node</code>s that are already part of
	* this <code>Document</code>.
	* <br> DOM applications may use the
	* <code>DOMImplementation.hasFeature(feature, version)</code> method
	* with parameter values "XMLVersion" and "1.0" (respectively) to
	* determine if an implementation supports [<a href='http://www.w3.org/TR/2004/REC-xml-20040204'>XML 1.0</a>]. DOM
	* applications may use the same method with parameter values
	* "XMLVersion" and "1.1" (respectively) to determine if an
	* implementation supports [<a href='http://www.w3.org/TR/2004/REC-xml11-20040204/'>XML 1.1</a>]. In both
	* cases, in order to support XML, an implementation must also support
	* the "XML" feature defined in this specification. <code>Document</code>
	*  objects supporting a version of the "XMLVersion" feature must not
	* raise a <code>NOT_SUPPORTED_ERR</code> exception for the same version
	* number when using <code>Document.xmlVersion</code>.
	* @since DOM Level 3
	*/
	@:overload @:public public function getXmlVersion() : String;
	
	
}
