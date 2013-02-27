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
* $Id: DTMDocumentImpl.java,v 1.2.4.1 2005/09/15 08:15:01 suresh_emailid Exp $
*/
extern class DTMDocumentImpl implements com.sun.org.apache.xml.internal.dtm.DTM implements org.xml.sax.ContentHandler implements org.xml.sax.ext.LexicalHandler
{
	/**
	* This is the implementation of the DTM document interface.  It receives
	* requests from an XML content handler similar to that of an XML DOM or SAX parser
	* to store information from the xml document in an array based
	* dtm table structure.  This informtion is used later for document navigation,
	* query, and SAX event dispatch functions. The DTM can also be used directly as a
	* document composition model for an application.  The requests received are:
	* <ul>
	* <li>initiating DTM to set the doc handle</li>
	* <li>resetting DTM for data structure reuse</li>
	* <li>hinting the end of document to adjust the end of data structure pointers</li>
	* <li>createnodes (element, comment, text, attribute, ....)</li>
	* <li>hinting the end of an element to patch parent and siblings<li>
	* <li>setting application provided symbol name stringpool data structures</li>
	* </ul>
	* <p>State: In progress!!</p>
	*
	* %REVIEW% I _think_ the SAX convention is that "no namespace" is expressed
	* as "" rather than as null (which is the DOM's convention). What should
	* DTM expect? What should it do with the other?
	*
	* <p>Origin: the implemention is a composite logic based on the DTM of XalanJ1 and
	*     DocImpl, DocumentImpl, ElementImpl, TextImpl, etc. of XalanJ2</p>
	*/
	private static var DOCHANDLE_SHIFT(default, null) : java.StdTypes.Int8;
	
	private static var NODEHANDLE_MASK(default, null) : Int;
	
	private static var DOCHANDLE_MASK(default, null) : Int;
	
	private var m_currentNode : Int;
	
	/** The document base URI. */
	private var m_documentBaseURI : String;
	
	/**
	* Construct a DTM.
	*
	* @param documentNumber the ID number assigned to this document.
	* It will be shifted up into the high bits and returned as part of
	* all node ID numbers, so those IDs indicate which document they
	* came from as well as a location within the document. It is the
	* DTMManager's responsibility to assign a unique number to each
	* document.
	*/
	@:overload public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, documentNumber : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory) : Void;
	
	/** Bind a IncrementalSAXSource to this DTM. If we discover we need nodes
	* that have not yet been built, we will ask this object to send us more
	* events, and it will manage interactions with its data sources.
	*
	* Note that we do not actually build the IncrementalSAXSource, since we don't
	* know what source it's reading from, what thread that source will run in,
	* or when it will run.
	*
	* @param source The IncrementalSAXSource that we want to recieve events from
	* on demand.
	*/
	@:overload public function setIncrementalSAXSource(source : com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource) : Void;
	
	/**
	* Set an implementation dependent feature.
	* <p>
	* %REVIEW% Do we really expect to set features on DTMs?
	*
	* @param featureId A feature URL.
	* @param state true if this feature should be on, false otherwise.
	*/
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Set a reference pointer to the element name symbol table.
	* %REVIEW% Should this really be Public? Changing it while
	* DTM is in use would be a disaster.
	*
	* @param poolRef DTMStringPool reference to an instance of table.
	*/
	@:overload public function setLocalNameTable(poolRef : com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool) : Void;
	
	/**
	* Get a reference pointer to the element name symbol table.
	*
	* @return DTMStringPool reference to an instance of table.
	*/
	@:overload public function getLocalNameTable() : com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool;
	
	/**
	* Set a reference pointer to the namespace URI symbol table.
	* %REVIEW% Should this really be Public? Changing it while
	* DTM is in use would be a disaster.
	*
	* @param poolRef DTMStringPool reference to an instance of table.
	*/
	@:overload public function setNsNameTable(poolRef : com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool) : Void;
	
	/**
	* Get a reference pointer to the namespace URI symbol table.
	*
	* @return DTMStringPool reference to an instance of table.
	*/
	@:overload public function getNsNameTable() : com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool;
	
	/**
	* Set a reference pointer to the prefix name symbol table.
	* %REVIEW% Should this really be Public? Changing it while
	* DTM is in use would be a disaster.
	*
	* @param poolRef DTMStringPool reference to an instance of table.
	*/
	@:overload public function setPrefixNameTable(poolRef : com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool) : Void;
	
	/**
	* Get a reference pointer to the prefix name symbol table.
	*
	* @return DTMStringPool reference to an instance of table.
	*/
	@:overload public function getPrefixNameTable() : com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool;
	
	/** getContentHandler returns "our SAX builder" -- the thing that
	* someone else should send SAX events to in order to extend this
	* DTM model.
	*
	* @return null if this model doesn't respond to SAX events,
	* "this" if the DTM object has a built-in SAX ContentHandler,
	* the IncrementalSAXSource if we're bound to one and should receive
	* the SAX stream via it for incremental build purposes...
	* */
	@:overload public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Return this DTM's lexical handler.
	*
	* %REVIEW% Should this return null if constrution already done/begun?
	*
	* @return null if this model doesn't respond to lexical SAX events,
	* "this" if the DTM object has a built-in SAX ContentHandler,
	* the IncrementalSAXSource if we're bound to one and should receive
	* the SAX stream via it for incremental build purposes...
	*/
	@:overload public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	/**
	* Return this DTM's EntityResolver.
	*
	* @return null if this model doesn't respond to SAX entity ref events.
	*/
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Return this DTM's DTDHandler.
	*
	* @return null if this model doesn't respond to SAX dtd events.
	*/
	@:overload public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* Return this DTM's ErrorHandler.
	*
	* @return null if this model doesn't respond to SAX error events.
	*/
	@:overload public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Return this DTM's DeclHandler.
	*
	* @return null if this model doesn't respond to SAX Decl events.
	*/
	@:overload public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	/** @return true iff we're building this model incrementally (eg
	* we're partnered with a IncrementalSAXSource) and thus require that the
	* transformation and the parse run simultaneously. Guidance to the
	* DTMManager.
	* */
	@:overload public function needsTwoThreads() : Bool;
	
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function skippedEntity(name : String) : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function endCDATA() : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	/** Given a node handle, test if it has child nodes.
	* <p> %REVIEW% This is obviously useful at the DOM layer, where it
	* would permit testing this without having to create a proxy
	* node. It's less useful in the DTM API, where
	* (dtm.getFirstChild(nodeHandle)!=DTM.NULL) is just as fast and
	* almost as self-evident. But it's a convenience, and eases porting
	* of DOM code to DTM.  </p>
	*
	* @param nodeHandle int Handle of the node.
	* @return int true if the given node has child nodes.
	*/
	@:overload public function hasChildNodes(nodeHandle : Int) : Bool;
	
	/**
	* Given a node handle, get the handle of the node's first child.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	*
	* @param nodeHandle int Handle of the node.
	* @return int DTM node-number of first child, or DTM.NULL to indicate none exists.
	*/
	@:overload public function getFirstChild(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, advance to its last child.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	*
	* @param nodeHandle int Handle of the node.
	* @return int Node-number of last child,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload public function getLastChild(nodeHandle : Int) : Int;
	
	/**
	* Retrieves an attribute node by by qualified name and namespace URI.
	*
	* @param nodeHandle int Handle of the node upon which to look up this attribute.
	* @param namespaceURI The namespace URI of the attribute to
	*   retrieve, or null.
	* @param name The local name of the attribute to
	*   retrieve.
	* @return The attribute node handle with the specified name (
	*   <code>nodeName</code>) or <code>DTM.NULL</code> if there is no such
	*   attribute.
	*/
	@:overload public function getAttributeNode(nodeHandle : Int, namespaceURI : String, name : String) : Int;
	
	/**
	* Given a node handle, get the index of the node's first attribute.
	*
	* @param nodeHandle int Handle of the Element node.
	* @return Handle of first attribute, or DTM.NULL to indicate none exists.
	*/
	@:overload public function getFirstAttribute(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, get the index of the node's first child.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again
	*
	* @param nodeHandle handle to node, which should probably be an element
	*                   node, but need not be.
	*
	* @param inScope    true if all namespaces in scope should be returned,
	*                   false if only the namespace declarations should be
	*                   returned.
	* @return handle of first namespace, or DTM.NULL to indicate none exists.
	*/
	@:overload public function getFirstNamespaceNode(nodeHandle : Int, inScope : Bool) : Int;
	
	/**
	* Given a node handle, advance to its next sibling.
	*
	* %TBD% This currently uses the DTM-internal definition of
	* sibling; eg, the last attr's next sib is the first
	* child. In the old DTM, the DOM proxy layer provided the
	* additional logic for the public view.  If we're rewriting
	* for XPath emulation, that test must be done here.
	*
	* %TBD% CODE INTERACTION WITH INCREMENTAL PARSE - If not yet
	* resolved, should wait for more nodes to be added to the document
	* and tries again.
	*
	* @param nodeHandle int Handle of the node.
	* @return int Node-number of next sibling,
	* or DTM.NULL to indicate none exists.
	* */
	@:overload public function getNextSibling(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, find its preceeding sibling.
	* WARNING: DTM is asymmetric; this operation is resolved by search, and is
	* relatively expensive.
	*
	* @param nodeHandle the id of the node.
	* @return int Node-number of the previous sib,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload public function getPreviousSibling(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, advance to the next attribute. If an
	* element, we advance to its first attribute; if an attr, we advance to
	* the next attr on the same node.
	*
	* @param nodeHandle int Handle of the node.
	* @return int DTM node-number of the resolved attr,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload public function getNextAttribute(nodeHandle : Int) : Int;
	
	/**
	* Given a namespace handle, advance to the next namespace.
	*
	* %TBD% THIS METHOD DOES NOT MATCH THE CURRENT SIGNATURE IN
	* THE DTM INTERFACE.  FIX IT, OR JUSTIFY CHANGING THE DTM
	* API.
	*
	* @param namespaceHandle handle to node which must be of type NAMESPACE_NODE.
	* @return handle of next namespace, or DTM.NULL to indicate none exists.
	*/
	@:overload public function getNextNamespaceNode(baseHandle : Int, namespaceHandle : Int, inScope : Bool) : Int;
	
	/**
	* Given a node handle, advance to its next descendant.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	*
	* @param subtreeRootHandle
	* @param nodeHandle int Handle of the node.
	* @return handle of next descendant,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload public function getNextDescendant(subtreeRootHandle : Int, nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, advance to the next node on the following axis.
	*
	* @param axisContextHandle the start of the axis that is being traversed.
	* @param nodeHandle
	* @return handle of next sibling,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload public function getNextFollowing(axisContextHandle : Int, nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, advance to the next node on the preceding axis.
	*
	* @param axisContextHandle the start of the axis that is being traversed.
	* @param nodeHandle the id of the node.
	* @return int Node-number of preceding sibling,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload public function getNextPreceding(axisContextHandle : Int, nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, find its parent node.
	*
	* @param nodeHandle the id of the node.
	* @return int Node-number of parent,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload public function getParent(nodeHandle : Int) : Int;
	
	/**
	* Returns the root element of the document.
	* @return nodeHandle to the Document Root.
	*/
	@:overload public function getDocumentRoot() : Int;
	
	/**
	* Given a node handle, find the owning document node.
	*
	* @return int Node handle of document, which should always be valid.
	*/
	@:overload public function getDocument() : Int;
	
	/**
	* Given a node handle, find the owning document node.  This has the exact
	* same semantics as the DOM Document method of the same name, in that if
	* the nodeHandle is a document node, it will return NULL.
	*
	* <p>%REVIEW% Since this is DOM-specific, it may belong at the DOM
	* binding layer. Included here as a convenience function and to
	* aid porting of DOM code to DTM.</p>
	*
	* @param nodeHandle the id of the node.
	* @return int Node handle of owning document, or NULL if the nodeHandle is
	*             a document.
	*/
	@:overload public function getOwnerDocument(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, find the owning document node.  This has the DTM
	* semantics; a Document node is its own owner.
	*
	* <p>%REVIEW% Since this is DOM-specific, it may belong at the DOM
	* binding layer. Included here as a convenience function and to
	* aid porting of DOM code to DTM.</p>
	*
	* @param nodeHandle the id of the node.
	* @return int Node handle of owning document, or NULL if the nodeHandle is
	*             a document.
	*/
	@:overload public function getDocumentRoot(nodeHandle : Int) : Int;
	
	/**
	* Get the string-value of a node as a String object
	* (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value).
	*
	* @param nodeHandle The node ID.
	*
	* @return A string object that represents the string-value of the given node.
	*/
	@:overload public function getStringValue(nodeHandle : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Get number of character array chunks in
	* the string-value of a node.
	* (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value).
	* Note that a single text node may have multiple text chunks.
	*
	* EXPLANATION: This method is an artifact of the fact that the
	* underlying m_chars object may not store characters in a
	* single contiguous array -- for example,the current
	* FastStringBuffer may split a single node's text across
	* multiple allocation units.  This call tells us how many
	* separate accesses will be required to retrieve the entire
	* content. PLEASE NOTE that this may not be the same as the
	* number of SAX characters() events that caused the text node
	* to be built in the first place, since m_chars buffering may
	* be on different boundaries than the parser's buffers.
	*
	* @param nodeHandle The node ID.
	*
	* @return number of character array chunks in
	*         the string-value of a node.
	* */
	@:overload public function getStringValueChunkCount(nodeHandle : Int) : Int;
	
	/**
	* Get a character array chunk in the string-value of a node.
	* (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value).
	* Note that a single text node may have multiple text chunks.
	*
	* EXPLANATION: This method is an artifact of the fact that
	* the underlying m_chars object may not store characters in a
	* single contiguous array -- for example,the current
	* FastStringBuffer may split a single node's text across
	* multiple allocation units.  This call retrieves a single
	* contiguous portion of the text -- as much as m-chars was
	* able to store in a single allocation unit.  PLEASE NOTE
	* that this may not be the same granularityas the SAX
	* characters() events that caused the text node to be built
	* in the first place, since m_chars buffering may be on
	* different boundaries than the parser's buffers.
	*
	* @param nodeHandle The node ID.
	* @param chunkIndex Which chunk to get.
	* @param startAndLen An array of 2 where the start position and length of
	*                    the chunk will be returned.
	*
	* @return The character array reference where the chunk occurs.  */
	@:overload public function getStringValueChunk(nodeHandle : Int, chunkIndex : Int, startAndLen : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Given a node handle, return an ID that represents the node's expanded name.
	*
	* @param nodeHandle The handle to the node in question.
	*
	* @return the expanded-name id of the node.
	*/
	@:overload public function getExpandedTypeID(nodeHandle : Int) : Int;
	
	/**
	* Given an expanded name, return an ID.  If the expanded-name does not
	* exist in the internal tables, the entry will be created, and the ID will
	* be returned.  Any additional nodes that are created that have this
	* expanded name will use this ID.
	*
	* @return the expanded-name id of the node.
	*/
	@:overload public function getExpandedTypeID(namespace : String, localName : String, type : Int) : Int;
	
	/**
	* Given an expanded-name ID, return the local name part.
	*
	* @param ExpandedNameID an ID that represents an expanded-name.
	* @return String Local name of this node.
	*/
	@:overload public function getLocalNameFromExpandedNameID(ExpandedNameID : Int) : String;
	
	/**
	* Given an expanded-name ID, return the namespace URI part.
	*
	* @param ExpandedNameID an ID that represents an expanded-name.
	* @return String URI value of this node's namespace, or null if no
	* namespace was resolved.
	*/
	@:overload public function getNamespaceFromExpandedNameID(ExpandedNameID : Int) : String;
	
	/**
	* Given a node handle, return its DOM-style node name. This will
	* include names such as #text or #document.
	*
	* @param nodeHandle the id of the node.
	* @return String Name of this node, which may be an empty string.
	* %REVIEW% Document when empty string is possible...
	*/
	@:overload public function getNodeName(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return the XPath node name.  This should be
	* the name as described by the XPath data model, NOT the DOM-style
	* name.
	*
	* @param nodeHandle the id of the node.
	* @return String Name of this node.
	*/
	@:overload public function getNodeNameX(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its DOM-style localname.
	* (As defined in Namespaces, this is the portion of the name after any
	* colon character)
	*
	* %REVIEW% What's the local name of something other than Element/Attr?
	* Should this be DOM-style (undefined unless namespaced), or other?
	*
	* @param nodeHandle the id of the node.
	* @return String Local name of this node.
	*/
	@:overload public function getLocalName(nodeHandle : Int) : String;
	
	/**
	* Given a namespace handle, return the prefix that the namespace decl is
	* mapping.
	* Given a node handle, return the prefix used to map to the namespace.
	*
	* <p> %REVIEW% Are you sure you want "" for no prefix?  </p>
	*
	* %REVIEW%  Should this be DOM-style (undefined unless namespaced),
	* or other?
	*
	* @param nodeHandle the id of the node.
	* @return String prefix of this node's name, or "" if no explicit
	* namespace prefix was given.
	*/
	@:overload public function getPrefix(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its DOM-style namespace URI
	* (As defined in Namespaces, this is the declared URI which this node's
	* prefix -- or default in lieu thereof -- was mapped to.)
	*
	* @param nodeHandle the id of the node.
	* @return String URI value of this node's namespace, or null if no
	* namespace was resolved.
	*/
	@:overload public function getNamespaceURI(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its node value. This is mostly
	* as defined by the DOM, but may ignore some conveniences.
	* <p>
	*
	* @param nodeHandle The node id.
	* @return String Value of this node, or null if not
	* meaningful for this node type.
	*/
	@:overload public function getNodeValue(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its DOM-style node type.
	* <p>
	* %REVIEW% Generally, returning short is false economy. Return int?
	*
	* @param nodeHandle The node id.
	* @return int Node type, as per the DOM's Node._NODE constants.
	*/
	@:overload public function getNodeType(nodeHandle : Int) : java.StdTypes.Int16;
	
	/**
	* Get the depth level of this node in the tree (equals 1 for
	* a parentless node).
	*
	* @param nodeHandle The node id.
	* @return the number of ancestors, plus one
	* @xsl.usage internal
	*/
	@:overload public function getLevel(nodeHandle : Int) : java.StdTypes.Int16;
	
	/**
	* Tests whether DTM DOM implementation implements a specific feature and
	* that feature is supported by this node.
	*
	* @param feature The name of the feature to test.
	* @param version This is the version number of the feature to test.
	*   If the version is not
	*   specified, supporting any version of the feature will cause the
	*   method to return <code>true</code>.
	* @return Returns <code>true</code> if the specified feature is
	*   supported on this node, <code>false</code> otherwise.
	*/
	@:overload public function isSupported(feature : String, version : String) : Bool;
	
	/**
	* Return the base URI of the document entity. If it is not known
	* (because the document was parsed from a socket connection or from
	* standard input, for example), the value of this property is unknown.
	*
	* @return the document base URI String object or null if unknown.
	*/
	@:overload public function getDocumentBaseURI() : String;
	
	/**
	* Set the base URI of the document entity.
	*
	* @param baseURI the document base URI String object or null if unknown.
	*/
	@:overload public function setDocumentBaseURI(baseURI : String) : Void;
	
	/**
	* Return the system identifier of the document entity. If
	* it is not known, the value of this property is unknown.
	*
	* @param nodeHandle The node id, which can be any valid node handle.
	* @return the system identifier String object or null if unknown.
	*/
	@:overload public function getDocumentSystemIdentifier(nodeHandle : Int) : String;
	
	/**
	* Return the name of the character encoding scheme
	*        in which the document entity is expressed.
	*
	* @param nodeHandle The node id, which can be any valid node handle.
	* @return the document encoding String object.
	*/
	@:overload public function getDocumentEncoding(nodeHandle : Int) : String;
	
	/**
	* Return an indication of the standalone status of the document,
	*        either "yes" or "no". This property is derived from the optional
	*        standalone document declaration in the XML declaration at the
	*        beginning of the document entity, and has no value if there is no
	*        standalone document declaration.
	*
	* @param nodeHandle The node id, which can be any valid node handle.
	* @return the document standalone String object, either "yes", "no", or null.
	*/
	@:overload public function getDocumentStandalone(nodeHandle : Int) : String;
	
	/**
	* Return a string representing the XML version of the document. This
	* property is derived from the XML declaration optionally present at the
	* beginning of the document entity, and has no value if there is no XML
	* declaration.
	*
	* @param documentHandle the document handle
	*
	* @return the document version String object
	*/
	@:overload public function getDocumentVersion(documentHandle : Int) : String;
	
	/**
	* Return an indication of
	* whether the processor has read the complete DTD. Its value is a
	* boolean. If it is false, then certain properties (indicated in their
	* descriptions below) may be unknown. If it is true, those properties
	* are never unknown.
	*
	* @return <code>true</code> if all declarations were processed {};
	*         <code>false</code> otherwise.
	*/
	@:overload public function getDocumentAllDeclarationsProcessed() : Bool;
	
	/**
	*   A document type declaration information item has the following properties:
	*
	*     1. [system identifier] The system identifier of the external subset, if
	*        it exists. Otherwise this property has no value.
	*
	* @return the system identifier String object, or null if there is none.
	*/
	@:overload public function getDocumentTypeDeclarationSystemIdentifier() : String;
	
	/**
	* Return the public identifier of the external subset,
	* normalized as described in 4.2.2 External Entities [XML]. If there is
	* no external subset or if it has no public identifier, this property
	* has no value.
	*
	* @return the public identifier String object, or null if there is none.
	*/
	@:overload public function getDocumentTypeDeclarationPublicIdentifier() : String;
	
	/**
	* Returns the <code>Element</code> whose <code>ID</code> is given by
	* <code>elementId</code>. If no such element exists, returns
	* <code>DTM.NULL</code>. Behavior is not defined if more than one element
	* has this <code>ID</code>. Attributes (including those
	* with the name "ID") are not of type ID unless so defined by DTD/Schema
	* information available to the DTM implementation.
	* Implementations that do not know whether attributes are of type ID or
	* not are expected to return <code>DTM.NULL</code>.
	*
	* <p>%REVIEW% Presumably IDs are still scoped to a single document,
	* and this operation searches only within a single document, right?
	* Wouldn't want collisions between DTMs in the same process.</p>
	*
	* @param elementId The unique <code>id</code> value for an element.
	* @return The handle of the matching element.
	*/
	@:overload public function getElementById(elementId : String) : Int;
	
	/**
	* The getUnparsedEntityURI function returns the URI of the unparsed
	* entity with the specified name in the same document as the context
	* node (see [3.3 Unparsed Entities]). It returns the empty string if
	* there is no such entity.
	* <p>
	* XML processors may choose to use the System Identifier (if one
	* is provided) to resolve the entity, rather than the URI in the
	* Public Identifier. The details are dependent on the processor, and
	* we would have to support some form of plug-in resolver to handle
	* this properly. Currently, we simply return the System Identifier if
	* present, and hope that it a usable URI or that our caller can
	* map it to one.
	* TODO: Resolve Public Identifiers... or consider changing function name.
	* <p>
	* If we find a relative URI
	* reference, XML expects it to be resolved in terms of the base URI
	* of the document. The DOM doesn't do that for us, and it isn't
	* entirely clear whether that should be done here; currently that's
	* pushed up to a higher level of our application. (Note that DOM Level
	* 1 didn't store the document's base URI.)
	* TODO: Consider resolving Relative URIs.
	* <p>
	* (The DOM's statement that "An XML processor may choose to
	* completely expand entities before the structure model is passed
	* to the DOM" refers only to parsed entities, not unparsed, and hence
	* doesn't affect this function.)
	*
	* @param name A string containing the Entity Name of the unparsed
	* entity.
	*
	* @return String containing the URI of the Unparsed Entity, or an
	* empty string if no such entity exists.
	*/
	@:overload public function getUnparsedEntityURI(name : String) : String;
	
	/**
	* Return true if the xsl:strip-space or xsl:preserve-space was processed
	* during construction of the DTM document.
	*
	* <p>%REVEIW% Presumes a 1:1 mapping from DTM to Document, since
	* we aren't saying which Document to query...?</p>
	*/
	@:overload public function supportsPreStripping() : Bool;
	
	/**
	* Figure out whether nodeHandle2 should be considered as being later
	* in the document than nodeHandle1, in Document Order as defined
	* by the XPath model. This may not agree with the ordering defined
	* by other XML applications.
	* <p>
	* There are some cases where ordering isn't defined, and neither are
	* the results of this function -- though we'll generally return true.
	*
	* TODO: Make sure this does the right thing with attribute nodes!!!
	*
	* @param nodeHandle1 DOM Node to perform position comparison on.
	* @param nodeHandle2 DOM Node to perform position comparison on .
	*
	* @return false if node2 comes before node1, otherwise return true.
	* You can think of this as
	* <code>(node1.documentOrderPosition &lt;= node2.documentOrderPosition)</code>.
	*/
	@:overload public function isNodeAfter(nodeHandle1 : Int, nodeHandle2 : Int) : Bool;
	
	/**
	*     2. [element content whitespace] A boolean indicating whether the
	*        character is white space appearing within element content (see [XML],
	*        2.10 "White Space Handling"). Note that validating XML processors are
	*        required by XML 1.0 to provide this information. If there is no
	*        declaration for the containing element, this property has no value for
	*        white space characters. If no declaration has been read, but the [all
	*        declarations processed] property of the document information item is
	*        false (so there may be an unread declaration), then the value of this
	*        property is unknown for white space characters. It is always false for
	*        characters that are not white space.
	*
	* @param nodeHandle the node ID.
	* @return <code>true</code> if the character data is whitespace;
	*         <code>false</code> otherwise.
	*/
	@:overload public function isCharacterElementContentWhitespace(nodeHandle : Int) : Bool;
	
	/**
	*    10. [all declarations processed] This property is not strictly speaking
	*        part of the infoset of the document. Rather it is an indication of
	*        whether the processor has read the complete DTD. Its value is a
	*        boolean. If it is false, then certain properties (indicated in their
	*        descriptions below) may be unknown. If it is true, those properties
	*        are never unknown.
	*
	* @param documentHandle A node handle that must identify a document.
	* @return <code>true</code> if all declarations were processed;
	*         <code>false</code> otherwise.
	*/
	@:overload public function isDocumentAllDeclarationsProcessed(documentHandle : Int) : Bool;
	
	/**
	*     5. [specified] A flag indicating whether this attribute was actually
	*        specified in the start-tag of its element, or was defaulted from the
	*        DTD.
	*
	* @param attributeHandle the attribute handle
	* @return <code>true</code> if the attribute was specified;
	*         <code>false</code> if it was defaulted.
	*/
	@:overload public function isAttributeSpecified(attributeHandle : Int) : Bool;
	
	/**
	* Directly call the
	* characters method on the passed ContentHandler for the
	* string-value of the given node (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value). Multiple calls to the
	* ContentHandler's characters methods may well occur for a single call to
	* this method.
	*
	* @param nodeHandle The node ID.
	* @param ch A non-null reference to a ContentHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function dispatchCharactersEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler, normalize : Bool) : Void;
	
	/**
	* Directly create SAX parser events from a subtree.
	*
	* @param nodeHandle The node ID.
	* @param ch A non-null reference to a ContentHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function dispatchToEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Return an DOM node for the given node.
	*
	* @param nodeHandle The node ID.
	*
	* @return A node representation of the DTM node.
	*/
	@:overload public function getNode(nodeHandle : Int) : org.w3c.dom.Node;
	
	/**
	* Append a child to the end of the child list of the current node. Please note that the node
	* is always cloned if it is owned by another document.
	*
	* <p>%REVIEW% "End of the document" needs to be defined more clearly.
	* Does it become the last child of the Document? Of the root element?</p>
	*
	* @param newChild Must be a valid new node handle.
	* @param clone true if the child should be cloned into the document.
	* @param cloneDepth if the clone argument is true, specifies that the
	*                   clone should include all it's children.
	*/
	@:overload public function appendChild(newChild : Int, clone : Bool, cloneDepth : Bool) : Void;
	
	/**
	* Append a text node child that will be constructed from a string,
	* to the end of the document.
	*
	* <p>%REVIEW% "End of the document" needs to be defined more clearly.
	* Does it become the last child of the Document? Of the root element?</p>
	*
	* @param str Non-null reference to a string.
	*/
	@:overload public function appendTextChild(str : String) : Void;
	
	/**
	* This returns a stateless "traverser", that can navigate over an
	* XPath axis, though not in document order.
	*
	* @param axis One of Axes.ANCESTORORSELF, etc.
	*
	* @return A DTMAxisIterator, or null if the given axis isn't supported.
	*/
	@:overload public function getAxisTraverser(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	/**
	* This is a shortcut to the iterators that implement the
	* supported XPath axes (only namespace::) is not supported.
	* Returns a bare-bones iterator that must be initialized
	* with a start node (using iterator.setStartNode()).
	*
	* @param axis One of Axes.ANCESTORORSELF, etc.
	*
	* @return A DTMAxisIterator, or null if the given axis isn't supported.
	*/
	@:overload public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get an iterator that can navigate over an XPath Axis, predicated by
	* the extended type ID.
	*
	*
	* @param axis
	* @param type An extended type ID.
	*
	* @return A DTMAxisIterator, or null if the given axis isn't supported.
	*/
	@:overload public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* For the moment all the run time properties are ignored by this
	* class.
	*
	* @param property a <code>String</code> value
	* @param value an <code>Object</code> value
	*/
	@:overload public function setProperty(property : String, value : Dynamic) : Void;
	
	/**
	* Source information is not handled yet, so return
	* <code>null</code> here.
	*
	* @param node an <code>int</code> value
	* @return null
	*/
	@:overload public function getSourceLocatorFor(node : Int) : javax.xml.transform.SourceLocator;
	
	/**
	* A dummy routine to satisify the abstract interface. If the DTM
	* implememtation that extends the default base requires notification
	* of registration, they can override this method.
	*/
	@:overload public function documentRegistration() : Void;
	
	/**
	* A dummy routine to satisify the abstract interface. If the DTM
	* implememtation that extends the default base requires notification
	* when the document is being released, they can override this method
	*/
	@:overload public function documentRelease() : Void;
	
	/**
	* Migrate a DTM built with an old DTMManager to a new DTMManager.
	* After the migration, the new DTMManager will treat the DTM as
	* one that is built by itself.
	* This is used to support DTM sharing between multiple transformations.
	* @param manager the DTMManager
	*/
	@:overload public function migrateTo(manager : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	
}
