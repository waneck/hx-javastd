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
extern class CoreDocumentImpl extends com.sun.org.apache.xerces.internal.dom.ParentNode implements org.w3c.dom.Document
{
	/** Document type. */
	private var docType : com.sun.org.apache.xerces.internal.dom.DocumentTypeImpl;
	
	/** Document element. */
	private var docElement : com.sun.org.apache.xerces.internal.dom.ElementImpl;
	
	/**Experimental DOM Level 3 feature: Document encoding */
	private var encoding : String;
	
	/**Experimental DOM Level 3 feature: Document actualEncoding */
	private var actualEncoding : String;
	
	/**Experimental DOM Level 3 feature: Document version */
	private var version : String;
	
	/**Experimental DOM Level 3 feature: Document standalone */
	private var standalone : Bool;
	
	/**Experimental DOM Level 3 feature: documentURI */
	private var fDocumentURI : String;
	
	/** Table for user data attached to this document nodes. */
	private var userData : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Identifiers. */
	private var identifiers : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Allow grammar access. */
	private var allowGrammarAccess : Bool;
	
	/** Bypass error checking. */
	private var errorChecking : Bool;
	
	/** Ancestor checking */
	private var ancestorChecking : Bool;
	
	private var xmlVersionChanged : Bool;
	
	/**
	* NON-DOM: Actually creating a Document is outside the DOM's spec,
	* since it has to operate in terms of a particular implementation.
	*/
	@:overload public function new() : Void;
	
	/** Constructor. */
	@:overload public function new(grammarAccess : Bool) : Void;
	
	/**
	* For DOM2 support.
	* The createDocument factory method is in DOMImplementation.
	*/
	@:overload public function new(doctype : org.w3c.dom.DocumentType) : Void;
	
	/** For DOM2 support. */
	@:overload public function new(doctype : org.w3c.dom.DocumentType, grammarAccess : Bool) : Void;
	
	@:overload @:final override public function getOwnerDocument() : org.w3c.dom.Document;
	
	/** Returns the node type. */
	@:overload override public function getNodeType() : java.StdTypes.Int16;
	
	/** Returns the node name. */
	@:overload override public function getNodeName() : String;
	
	/**
	* Deep-clone a document, including fixing ownerDoc for the cloned
	* children. Note that this requires bypassing the WRONG_DOCUMENT_ERR
	* protection. I've chosen to implement it by calling importNode
	* which is DOM Level 2.
	*
	* @return org.w3c.dom.Node
	* @param deep boolean, iff true replicate children
	*/
	@:overload override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* internal method to share code with subclass
	**/
	@:overload private function cloneNode(newdoc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, deep : Bool) : Void;
	
	/**
	* Since a Document may contain at most one top-level Element child,
	* and at most one DocumentType declaraction, we need to subclass our
	* add-children methods to implement this constraint.
	* Since appendChild() is implemented as insertBefore(,null),
	* altering the latter fixes both.
	* <p>
	* While I'm doing so, I've taken advantage of the opportunity to
	* cache documentElement and docType so we don't have to
	* search for them.
	*
	* REVISIT: According to the spec it is not allowed to alter neither the
	* document element nor the document type in any way
	*/
	@:overload override public function insertBefore(newChild : org.w3c.dom.Node, refChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Since insertBefore caches the docElement (and, currently, docType),
	* removeChild has to know how to undo the cache
	*
	* REVISIT: According to the spec it is not allowed to alter neither the
	* document element nor the document type in any way
	*/
	@:overload override public function removeChild(oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Since we cache the docElement (and, currently, docType),
	* replaceChild has to update the cache
	*
	* REVISIT: According to the spec it is not allowed to alter neither the
	* document element nor the document type in any way
	*/
	@:overload override public function replaceChild(newChild : org.w3c.dom.Node, oldChild : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/*
	* Get Node text content
	* @since DOM Level 3
	*/
	@:overload override public function getTextContent() : String;
	
	/*
	* Set Node text content
	* @since DOM Level 3
	*/
	@:overload override public function setTextContent(textContent : String) : Void;
	
	/**
	* @since DOM Level 3
	*/
	@:overload override public function getFeature(feature : String, version : String) : Dynamic;
	
	/**
	* Factory method; creates an Attribute having this Document as its
	* OwnerDoc.
	*
	* @param name The name of the attribute. Note that the attribute's value is
	* _not_ established at the factory; remember to set it!
	*
	* @throws DOMException(INVALID_NAME_ERR)
	* if the attribute name is not acceptable.
	*/
	@:overload public function createAttribute(name : String) : org.w3c.dom.Attr;
	
	/**
	* Factory method; creates a CDATASection having this Document as
	* its OwnerDoc.
	*
	* @param data The initial contents of the CDATA
	*
	* @throws DOMException(NOT_SUPPORTED_ERR) for HTML documents. (HTML
	* not yet implemented.)
	*/
	@:overload public function createCDATASection(data : String) : org.w3c.dom.CDATASection;
	
	/**
	* Factory method; creates a Comment having this Document as its
	* OwnerDoc.
	*
	* @param data The initial contents of the Comment. */
	@:overload public function createComment(data : String) : org.w3c.dom.Comment;
	
	/**
	* Factory method; creates a DocumentFragment having this Document
	* as its OwnerDoc.
	*/
	@:overload public function createDocumentFragment() : org.w3c.dom.DocumentFragment;
	
	/**
	* Factory method; creates an Element having this Document
	* as its OwnerDoc.
	*
	* @param tagName The name of the element type to instantiate. For
	* XML, this is case-sensitive. For HTML, the tagName parameter may
	* be provided in any case, but it must be mapped to the canonical
	* uppercase form by the DOM implementation.
	*
	* @throws DOMException(INVALID_NAME_ERR) if the tag name is not
	* acceptable.
	*/
	@:overload public function createElement(tagName : String) : org.w3c.dom.Element;
	
	/**
	* Factory method; creates an EntityReference having this Document
	* as its OwnerDoc.
	*
	* @param name The name of the Entity we wish to refer to
	*
	* @throws DOMException(NOT_SUPPORTED_ERR) for HTML documents, where
	* nonstandard entities are not permitted. (HTML not yet
	* implemented.)
	*/
	@:overload public function createEntityReference(name : String) : org.w3c.dom.EntityReference;
	
	/**
	* Factory method; creates a ProcessingInstruction having this Document
	* as its OwnerDoc.
	*
	* @param target The target "processor channel"
	* @param data Parameter string to be passed to the target.
	*
	* @throws DOMException(INVALID_NAME_ERR) if the target name is not
	* acceptable.
	*
	* @throws DOMException(NOT_SUPPORTED_ERR) for HTML documents. (HTML
	* not yet implemented.)
	*/
	@:overload public function createProcessingInstruction(target : String, data : String) : org.w3c.dom.ProcessingInstruction;
	
	/**
	* Factory method; creates a Text node having this Document as its
	* OwnerDoc.
	*
	* @param data The initial contents of the Text.
	*/
	@:overload public function createTextNode(data : String) : org.w3c.dom.Text;
	
	/**
	* For XML, this provides access to the Document Type Definition.
	* For HTML documents, and XML documents which don't specify a DTD,
	* it will be null.
	*/
	@:overload public function getDoctype() : org.w3c.dom.DocumentType;
	
	/**
	* Convenience method, allowing direct access to the child node
	* which is considered the root of the actual document content. For
	* HTML, where it is legal to have more than one Element at the top
	* level of the document, we pick the one with the tagName
	* "HTML". For XML there should be only one top-level
	*
	* (HTML not yet supported.)
	*/
	@:overload public function getDocumentElement() : org.w3c.dom.Element;
	
	/**
	* Return a <em>live</em> collection of all descendent Elements (not just
	* immediate children) having the specified tag name.
	*
	* @param tagname The type of Element we want to gather. "*" will be
	* taken as a wildcard, meaning "all elements in the document."
	*
	* @see DeepNodeListImpl
	*/
	@:overload public function getElementsByTagName(tagname : String) : org.w3c.dom.NodeList;
	
	/**
	* Retrieve information describing the abilities of this particular
	* DOM implementation. Intended to support applications that may be
	* using DOMs retrieved from several different sources, potentially
	* with different underlying representations.
	*/
	@:overload public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	* Sets whether the DOM implementation performs error checking
	* upon operations. Turning off error checking only affects
	* the following DOM checks:
	* <ul>
	* <li>Checking strings to make sure that all characters are
	*     legal XML characters
	* <li>Hierarchy checking such as allowed children, checks for
	*     cycles, etc.
	* </ul>
	* <p>
	* Turning off error checking does <em>not</em> turn off the
	* following checks:
	* <ul>
	* <li>Read only checks
	* <li>Checks related to DOM events
	* </ul>
	*/
	@:overload public function setErrorChecking(check : Bool) : Void;
	
	/*
	* DOM Level 3 WD - Experimental.
	*/
	@:overload public function setStrictErrorChecking(check : Bool) : Void;
	
	/**
	* Returns true if the DOM implementation performs error checking.
	*/
	@:overload public function getErrorChecking() : Bool;
	
	/*
	* DOM Level 3 WD - Experimental.
	*/
	@:overload public function getStrictErrorChecking() : Bool;
	
	/**
	* DOM Level 3 CR - Experimental. (Was getActualEncoding)
	*
	* An attribute specifying the encoding used for this document
	* at the time of the parsing. This is <code>null</code> when
	* it is not known, such as when the <code>Document</code> was
	* created in memory.
	* @since DOM Level 3
	*/
	@:overload public function getInputEncoding() : String;
	
	/**
	* DOM Internal
	* (Was a DOM L3 Core WD public interface method setActualEncoding )
	*
	* An attribute specifying the actual encoding of this document. This is
	* <code>null</code> otherwise.
	* <br> This attribute represents the property [character encoding scheme]
	* defined in .
	*/
	@:overload public function setInputEncoding(value : String) : Void;
	
	/**
	* DOM Internal
	* (Was a DOM L3 Core WD public interface method setXMLEncoding )
	*
	* An attribute specifying, as part of the XML declaration,
	* the encoding of this document. This is null when unspecified.
	*/
	@:overload public function setXmlEncoding(value : String) : Void;
	
	/**
	* @deprecated This method is internal and only exists for
	* compatibility with older applications. New applications
	* should never call this method.
	*/
	@:overload public function setEncoding(value : String) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	* The encoding of this document (part of XML Declaration)
	*/
	@:overload public function getXmlEncoding() : String;
	
	/**
	* @deprecated This method is internal and only exists for
	* compatibility with older applications. New applications
	* should never call this method.
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* DOM Level 3 CR - Experimental.
	* version - An attribute specifying, as part of the XML declaration,
	* the version number of this document.
	*/
	@:overload public function setXmlVersion(value : String) : Void;
	
	/**
	* @deprecated This method is internal and only exists for
	* compatibility with older applications. New applications
	* should never call this method.
	*/
	@:overload public function setVersion(value : String) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	* The version of this document (part of XML Declaration)
	*/
	@:overload public function getXmlVersion() : String;
	
	/**
	* @deprecated This method is internal and only exists for
	* compatibility with older applications. New applications
	* should never call this method.
	*/
	@:overload public function getVersion() : String;
	
	/**
	* DOM Level 3 CR - Experimental.
	*
	* Xmlstandalone - An attribute specifying, as part of the XML declaration,
	* whether this document is standalone
	* @exception DOMException
	*    NOT_SUPPORTED_ERR: Raised if this document does not support the
	*   "XML" feature.
	* @since DOM Level 3
	*/
	@:overload public function setXmlStandalone(value : Bool) : Void;
	
	/**
	* @deprecated This method is internal and only exists for
	* compatibility with older applications. New applications
	* should never call this method.
	*/
	@:overload public function setStandalone(value : Bool) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	* standalone that specifies whether this document is standalone
	* (part of XML Declaration)
	*/
	@:overload public function getXmlStandalone() : Bool;
	
	/**
	* @deprecated This method is internal and only exists for
	* compatibility with older applications. New applications
	* should never call this method.
	*/
	@:overload public function getStandalone() : Bool;
	
	/**
	* DOM Level 3 WD - Experimental.
	* The location of the document or <code>null</code> if undefined.
	* <br>Beware that when the <code>Document</code> supports the feature
	* "HTML" , the href attribute of the HTML BASE element takes precedence
	* over this attribute.
	* @since DOM Level 3
	*/
	@:overload public function getDocumentURI() : String;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Renaming node
	*/
	@:overload public function renameNode(n : org.w3c.dom.Node, namespaceURI : String, name : String) : org.w3c.dom.Node;
	
	/**
	*  DOM Level 3 WD - Experimental
	*  Normalize document.
	*/
	@:overload public function normalizeDocument() : Void;
	
	/**
	* DOM Level 3 CR - Experimental
	*
	*  The configuration used when <code>Document.normalizeDocument</code> is
	* invoked.
	* @since DOM Level 3
	*/
	@:overload public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/**
	* Returns the absolute base URI of this node or null if the implementation
	* wasn't able to obtain an absolute URI. Note: If the URI is malformed, a
	* null is returned.
	*
	* @return The absolute base URI of this node or null.
	* @since DOM Level 3
	*/
	@:overload override public function getBaseURI() : String;
	
	/**
	* DOM Level 3 WD - Experimental.
	*/
	@:overload public function setDocumentURI(documentURI : String) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Indicates whether the method load should be synchronous or
	* asynchronous. When the async attribute is set to <code>true</code>
	* the load method returns control to the caller before the document has
	* completed loading. The default value of this property is
	* <code>false</code>.
	* <br>Setting the value of this attribute might throw NOT_SUPPORTED_ERR
	* if the implementation doesn't support the mode the attribute is being
	* set to. Should the DOM spec define the default value of this
	* property? What if implementing both async and sync IO is impractical
	* in some systems?  2001-09-14. default is <code>false</code> but we
	* need to check with Mozilla and IE.
	*/
	@:overload public function getAsync() : Bool;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Indicates whether the method load should be synchronous or
	* asynchronous. When the async attribute is set to <code>true</code>
	* the load method returns control to the caller before the document has
	* completed loading. The default value of this property is
	* <code>false</code>.
	* <br>Setting the value of this attribute might throw NOT_SUPPORTED_ERR
	* if the implementation doesn't support the mode the attribute is being
	* set to. Should the DOM spec define the default value of this
	* property? What if implementing both async and sync IO is impractical
	* in some systems?  2001-09-14. default is <code>false</code> but we
	* need to check with Mozilla and IE.
	*/
	@:overload public function setAsync(async : Bool) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	* If the document is currently being loaded as a result of the method
	* <code>load</code> being invoked the loading and parsing is
	* immediately aborted. The possibly partial result of parsing the
	* document is discarded and the document is cleared.
	*/
	@:overload public function abort() : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	*
	* Replaces the content of the document with the result of parsing the
	* given URI. Invoking this method will either block the caller or
	* return to the caller immediately depending on the value of the async
	* attribute. Once the document is fully loaded a "load" event (as
	* defined in [<a href='http://www.w3.org/TR/2003/WD-DOM-Level-3-Events-20030331'>DOM Level 3 Events</a>]
	* , except that the <code>Event.targetNode</code> will be the document,
	* not an element) will be dispatched on the document. If an error
	* occurs, an implementation dependent "error" event will be dispatched
	* on the document. If this method is called on a document that is
	* currently loading, the current load is interrupted and the new URI
	* load is initiated.
	* <br> When invoking this method the parameters used in the
	* <code>DOMParser</code> interface are assumed to have their default
	* values with the exception that the parameters <code>"entities"</code>
	* , <code>"normalize-characters"</code>,
	* <code>"check-character-normalization"</code> are set to
	* <code>"false"</code>.
	* <br> The result of a call to this method is the same the result of a
	* call to <code>DOMParser.parseWithContext</code> with an input stream
	* referencing the URI that was passed to this call, the document as the
	* context node, and the action <code>ACTION_REPLACE_CHILDREN</code>.
	* @param uri The URI reference for the XML file to be loaded. If this is
	*  a relative URI, the base URI used by the implementation is
	*  implementation dependent.
	* @return If async is set to <code>true</code> <code>load</code> returns
	*   <code>true</code> if the document load was successfully initiated.
	*   If an error occurred when initiating the document load,
	*   <code>load</code> returns <code>false</code>.If async is set to
	*   <code>false</code> <code>load</code> returns <code>true</code> if
	*   the document was successfully loaded and parsed. If an error
	*   occurred when either loading or parsing the URI, <code>load</code>
	*   returns <code>false</code>.
	*/
	@:overload public function load(uri : String) : Bool;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Replace the content of the document with the result of parsing the
	* input string, this method is always synchronous.
	* @param source A string containing an XML document.
	* @return <code>true</code> if parsing the input string succeeded
	*   without errors, otherwise <code>false</code>.
	*/
	@:overload public function loadXML(source : String) : Bool;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Save the document or the given node and all its descendants to a string
	* (i.e. serialize the document or node).
	* <br>The parameters used in the <code>LSSerializer</code> interface are
	* assumed to have their default values when invoking this method.
	* <br> The result of a call to this method is the same the result of a
	* call to <code>LSSerializer.writeToString</code> with the document as
	* the node to write.
	* @param node Specifies what to serialize, if this parameter is
	*   <code>null</code> the whole document is serialized, if it's
	*   non-null the given node is serialized.
	* @return The serialized document or <code>null</code> in case an error
	*   occurred.
	* @exception DOMException
	*   WRONG_DOCUMENT_ERR: Raised if the node passed in as the node
	*   parameter is from an other document.
	*/
	@:overload public function saveXML(node : org.w3c.dom.Node) : String;
	
	/**
	* NON-DOM
	* Factory method; creates a DocumentType having this Document
	* as its OwnerDoc. (REC-DOM-Level-1-19981001 left the process of building
	* DTD information unspecified.)
	*
	* @param name The name of the Entity we wish to provide a value for.
	*
	* @throws DOMException(NOT_SUPPORTED_ERR) for HTML documents, where
	* DTDs are not permitted. (HTML not yet implemented.)
	*/
	@:overload public function createDocumentType(qualifiedName : String, publicID : String, systemID : String) : org.w3c.dom.DocumentType;
	
	/**
	* NON-DOM
	* Factory method; creates an Entity having this Document
	* as its OwnerDoc. (REC-DOM-Level-1-19981001 left the process of building
	* DTD information unspecified.)
	*
	* @param name The name of the Entity we wish to provide a value for.
	*
	* @throws DOMException(NOT_SUPPORTED_ERR) for HTML documents, where
	* nonstandard entities are not permitted. (HTML not yet
	* implemented.)
	*/
	@:overload public function createEntity(name : String) : org.w3c.dom.Entity;
	
	/**
	* NON-DOM
	* Factory method; creates a Notation having this Document
	* as its OwnerDoc. (REC-DOM-Level-1-19981001 left the process of building
	* DTD information unspecified.)
	*
	* @param name The name of the Notation we wish to describe
	*
	* @throws DOMException(NOT_SUPPORTED_ERR) for HTML documents, where
	* notations are not permitted. (HTML not yet
	* implemented.)
	*/
	@:overload public function createNotation(name : String) : org.w3c.dom.Notation;
	
	/**
	* NON-DOM Factory method: creates an element definition. Element
	* definitions hold default attribute values.
	*/
	@:overload public function createElementDefinition(name : String) : com.sun.org.apache.xerces.internal.dom.ElementDefinitionImpl;
	
	/** NON-DOM:  Get the number associated with this document.   Used to
	* order documents in the implementation.
	*/
	@:overload override private function getNodeNumber() : Int;
	
	/** NON-DOM:  Get a number associated with a node created with respect
	* to this document.   Needed for compareDocumentPosition when nodes
	* are disconnected.  This is only used on demand.
	*/
	@:overload private function getNodeNumber(node : org.w3c.dom.Node) : Int;
	
	/**
	* Copies a node from another document to this document. The new nodes are
	* created using this document's factory methods and are populated with the
	* data from the source's accessor methods defined by the DOM interfaces.
	* Its behavior is otherwise similar to that of cloneNode.
	* <p>
	* According to the DOM specifications, document nodes cannot be imported
	* and a NOT_SUPPORTED_ERR exception is thrown if attempted.
	*/
	@:overload public function importNode(source : org.w3c.dom.Node, deep : Bool) : org.w3c.dom.Node;
	
	/**
	* DOM Level 3 WD - Experimental
	* Change the node's ownerDocument, and its subtree, to this Document
	*
	* @param source The node to adopt.
	* @see #importNode
	**/
	@:overload public function adoptNode(source : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Traverses the DOM Tree and expands deferred nodes and their
	* children.
	*
	*/
	@:overload private function undeferChildren(node : org.w3c.dom.Node) : Void;
	
	/**
	* Introduced in DOM Level 2
	* Returns the Element whose ID is given by elementId. If no such element
	* exists, returns null. Behavior is not defined if more than one element
	* has this ID.
	* <p>
	* Note: The DOM implementation must have information that says which
	* attributes are of type ID. Attributes with the name "ID" are not of type
	* ID unless so defined. Implementations that do not know whether
	* attributes are of type ID or not are expected to return null.
	* @see #getIdentifier
	*/
	@:overload public function getElementById(elementId : String) : org.w3c.dom.Element;
	
	/**
	* Remove all identifiers from the ID table
	*/
	@:overload @:final private function clearIdentifiers() : Void;
	
	/**
	* Registers an identifier name with a specified element node.
	* If the identifier is already registered, the new element
	* node replaces the previous node. If the specified element
	* node is null, removeIdentifier() is called.
	*
	* @see #getIdentifier
	* @see #removeIdentifier
	*/
	@:overload public function putIdentifier(idName : String, element : org.w3c.dom.Element) : Void;
	
	/**
	* Returns a previously registered element with the specified
	* identifier name, or null if no element is registered.
	*
	* @see #putIdentifier
	* @see #removeIdentifier
	*/
	@:overload public function getIdentifier(idName : String) : org.w3c.dom.Element;
	
	/**
	* Removes a previously registered element with the specified
	* identifier name.
	*
	* @see #putIdentifier
	* @see #getIdentifier
	*/
	@:overload public function removeIdentifier(idName : String) : Void;
	
	/** Returns an enumeration registered of identifier names. */
	@:overload public function getIdentifiers() : java.util.Enumeration<Dynamic>;
	
	/**
	* Introduced in DOM Level 2. <p>
	* Creates an element of the given qualified name and namespace URI.
	* If the given namespaceURI is null or an empty string and the
	* qualifiedName has a prefix that is "xml", the created element
	* is bound to the predefined namespace
	* "http://www.w3.org/XML/1998/namespace" [Namespaces].
	* @param namespaceURI The namespace URI of the element to
	*                     create.
	* @param qualifiedName The qualified name of the element type to
	*                      instantiate.
	* @return Element A new Element object with the following attributes:
	* @throws DOMException INVALID_CHARACTER_ERR: Raised if the specified
	* name contains an invalid character.
	* @throws DOMException NAMESPACE_ERR: Raised if the qualifiedName has a
	*                      prefix that is "xml" and the namespaceURI is
	*                      neither null nor an empty string nor
	*                      "http://www.w3.org/XML/1998/namespace", or
	*                      if the qualifiedName has a prefix different
	*                      from "xml" and the namespaceURI is null or an
	*                      empty string.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	/**
	* NON-DOM: a factory method used by the Xerces DOM parser
	* to create an element.
	*
	* @param namespaceURI The namespace URI of the element to
	*                     create.
	* @param qualifiedName The qualified name of the element type to
	*                      instantiate.
	* @param localpart  The local name of the attribute to instantiate.
	*
	* @return Element A new Element object with the following attributes:
	* @exception DOMException INVALID_CHARACTER_ERR: Raised if the specified
	*                   name contains an invalid character.
	*/
	@:overload public function createElementNS(namespaceURI : String, qualifiedName : String, localpart : String) : org.w3c.dom.Element;
	
	/**
	* Introduced in DOM Level 2. <p>
	* Creates an attribute of the given qualified name and namespace URI.
	* If the given namespaceURI is null or an empty string and the
	* qualifiedName has a prefix that is "xml", the created element
	* is bound to the predefined namespace
	* "http://www.w3.org/XML/1998/namespace" [Namespaces].
	*
	* @param namespaceURI  The namespace URI of the attribute to
	*                      create. When it is null or an empty string,
	*                      this method behaves like createAttribute.
	* @param qualifiedName The qualified name of the attribute to
	*                      instantiate.
	* @return Attr         A new Attr object.
	* @throws DOMException INVALID_CHARACTER_ERR: Raised if the specified
	* name contains an invalid character.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	/**
	* NON-DOM: a factory method used by the Xerces DOM parser
	* to create an element.
	*
	* @param namespaceURI  The namespace URI of the attribute to
	*                      create. When it is null or an empty string,
	*                      this method behaves like createAttribute.
	* @param qualifiedName The qualified name of the attribute to
	*                      instantiate.
	* @param localpart     The local name of the attribute to instantiate.
	*
	* @return Attr         A new Attr object.
	* @throws DOMException INVALID_CHARACTER_ERR: Raised if the specified
	* name contains an invalid character.
	*/
	@:overload public function createAttributeNS(namespaceURI : String, qualifiedName : String, localpart : String) : org.w3c.dom.Attr;
	
	/**
	* Introduced in DOM Level 2. <p>
	* Returns a NodeList of all the Elements with a given local name and
	* namespace URI in the order in which they would be encountered in a
	* preorder traversal of the Document tree.
	* @param namespaceURI  The namespace URI of the elements to match
	*                      on. The special value "*" matches all
	*                      namespaces. When it is null or an empty
	*                      string, this method behaves like
	*                      getElementsByTagName.
	* @param localName     The local name of the elements to match on.
	*                      The special value "*" matches all local names.
	* @return NodeList     A new NodeList object containing all the matched
	*                      Elements.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	/** Clone. */
	@:overload public function clone() : Dynamic;
	
	/**
	* Check the string against XML's definition of acceptable names for
	* elements and attributes and so on using the XMLCharacterProperties
	* utility class
	*/
	@:overload @:final public static function isXMLName(s : String, xml11Version : Bool) : Bool;
	
	/**
	* Checks if the given qualified name is legal with respect
	* to the version of XML to which this document must conform.
	*
	* @param prefix prefix of qualified name
	* @param local local part of qualified name
	*/
	@:overload @:final public static function isValidQName(prefix : String, local : String, xml11Version : Bool) : Bool;
	
	/**
	* Uses the kidOK lookup table to check whether the proposed
	* tree structure is legal.
	*/
	@:overload private function isKidOK(parent : org.w3c.dom.Node, child : org.w3c.dom.Node) : Bool;
	
	/**
	* Denotes that this node has changed.
	*/
	@:overload override private function changed() : Void;
	
	/**
	* Returns the number of changes to this node.
	*/
	@:overload override private function changes() : Int;
	
	/**
	* Associate an object to a key on this node. The object can later be
	* retrieved from this node by calling <code>getUserData</code> with the
	* same key.
	* @param n The node to associate the object to.
	* @param key The key to associate the object to.
	* @param data The object to associate to the given key, or
	*   <code>null</code> to remove any existing association to that key.
	* @param handler The handler to associate to that key, or
	*   <code>null</code>.
	* @return Returns the <code>DOMObject</code> previously associated to
	*   the given key on this node, or <code>null</code> if there was none.
	* @since DOM Level 3
	*
	* REVISIT: we could use a free list of UserDataRecord here
	*/
	@:overload public function setUserData(n : org.w3c.dom.Node, key : String, data : Dynamic, handler : org.w3c.dom.UserDataHandler) : Dynamic;
	
	/**
	* Retrieves the object associated to a key on a this node. The object
	* must first have been set to this node by calling
	* <code>setUserData</code> with the same key.
	* @param n The node the object is associated to.
	* @param key The key the object is associated to.
	* @return Returns the <code>DOMObject</code> associated to the given key
	*   on this node, or <code>null</code> if there was none.
	* @since DOM Level 3
	*/
	@:overload public function getUserData(n : org.w3c.dom.Node, key : String) : Dynamic;
	
	@:overload private function getUserDataRecord(n : org.w3c.dom.Node) : java.util.Hashtable<Dynamic, Dynamic>;
	
	/*public void finalize() {
	if (userData == null) {
	return;
	}
	Enumeration nodes = userData.keys();
	while (nodes.hasMoreElements()) {
	Object node = nodes.nextElement();
	Hashtable t = (Hashtable) userData.get(node);
	if (t != null && !t.isEmpty()) {
	Enumeration keys = t.keys();
	while (keys.hasMoreElements()) {
	String key = (String) keys.nextElement();
	UserDataRecord r = (UserDataRecord) t.get(key);
	if (r.fHandler != null) {
	r.fHandler.handle(UserDataHandler.NODE_DELETED,
	key, r.fData, null, null);
	}
	}
	}
	}
	}*/
	@:overload @:final private function checkNamespaceWF(qname : String, colon1 : Int, colon2 : Int) : Void;
	
	@:overload @:final private function checkDOMNSErr(prefix : String, namespace : String) : Void;
	
	/**
	* Checks if the given qualified name is legal with respect
	* to the version of XML to which this document must conform.
	*
	* @param prefix prefix of qualified name
	* @param local local part of qualified name
	*/
	@:overload @:final private function checkQName(prefix : String, local : String) : Void;
	
	/**
	* NON-DOM: kept for backward compatibility
	* Store user data related to a given node
	* This is a place where we could use weak references! Indeed, the node
	* here won't be GC'ed as long as some user data is attached to it, since
	* the userData table will have a reference to the node.
	*/
	@:overload private function setUserData(n : com.sun.org.apache.xerces.internal.dom.NodeImpl, data : Dynamic) : Void;
	
	/**
	* NON-DOM: kept for backward compatibility
	* Retreive user data related to a given node
	*/
	@:overload private function getUserData(n : com.sun.org.apache.xerces.internal.dom.NodeImpl) : Dynamic;
	
	@:overload private function addEventListener(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, type : String, listener : org.w3c.dom.events.EventListener, useCapture : Bool) : Void;
	
	@:overload private function removeEventListener(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, type : String, listener : org.w3c.dom.events.EventListener, useCapture : Bool) : Void;
	
	@:overload private function copyEventListeners(src : com.sun.org.apache.xerces.internal.dom.NodeImpl, tgt : com.sun.org.apache.xerces.internal.dom.NodeImpl) : Void;
	
	@:overload private function dispatchEvent(node : com.sun.org.apache.xerces.internal.dom.NodeImpl, event : org.w3c.dom.events.Event) : Bool;
	
	
}
