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
* $Id: DTMDefaultBase.java,v 1.3 2005/09/28 13:48:52 pvedula Exp $
*/
//// for dumpDTM
/**
* The <code>DTMDefaultBase</code> class serves as a helper base for DTMs.
* It sets up structures for navigation and type, while leaving data
* management and construction to the derived classes.
*/
extern class DTMDefaultBase implements com.sun.org.apache.xml.internal.dtm.DTM
{
	/** The identity of the root node. */
	@:public @:static @:final public static var ROOTNODE(default, null) : Int;
	
	/**
	* The number of nodes, which is also used to determine the next
	*  node index.
	*/
	@:protected private var m_size : Int;
	
	/** The expanded names, one array element for each node. */
	@:protected private var m_exptype : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/** First child values, one array element for each node. */
	@:protected private var m_firstch : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/** Next sibling values, one array element for each node. */
	@:protected private var m_nextsib : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/** Previous sibling values, one array element for each node. */
	@:protected private var m_prevsib : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/** Previous sibling values, one array element for each node. */
	@:protected private var m_parent : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/** Vector of SuballocatedIntVectors of NS decl sets */
	@:protected private var m_namespaceDeclSets : java.util.Vector<Dynamic>;
	
	/** SuballocatedIntVector  of elements at which corresponding
	* namespaceDeclSets were defined */
	@:protected private var m_namespaceDeclSetElements : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/**
	* These hold indexes to elements based on namespace and local name.
	* The base lookup is the the namespace.  The second lookup is the local
	* name, and the last array contains the the first free element
	* at the start, and the list of element handles following.
	*/
	@:protected private var m_elemIndexes : java.NativeArray<java.NativeArray<java.NativeArray<Int>>>;
	
	/** The default block size of the node arrays */
	@:public @:static @:final public static var DEFAULT_BLOCKSIZE(default, null) : Int;
	
	/** The number of blocks for the node arrays */
	@:public @:static @:final public static var DEFAULT_NUMBLOCKS(default, null) : Int;
	
	/** The number of blocks used for small documents & RTFs */
	@:public @:static @:final public static var DEFAULT_NUMBLOCKS_SMALL(default, null) : Int;
	
	/**
	* The value to use when the information has not been built yet.
	*/
	@:protected @:static @:final private static var NOTPROCESSED(default, null) : Int;
	
	/**
	* The DTM manager who "owns" this DTM.
	*/
	@:public public var m_mgr : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* m_mgr cast to DTMManagerDefault, or null if it isn't an instance
	* (Efficiency hook)
	*/
	@:protected private var m_mgrDefault : com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault;
	
	/** The document identity number(s). If we have overflowed the addressing
	* range of the first that was assigned to us, we may add others. */
	@:protected private var m_dtmIdent : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/** The base URI for this document. */
	@:protected private var m_documentBaseURI : String;
	
	/**
	* The whitespace filter that enables elements to strip whitespace or not.
	*/
	@:protected private var m_wsfilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
	
	/** Flag indicating whether to strip whitespace nodes */
	@:protected private var m_shouldStripWS : Bool;
	
	/** Stack of flags indicating whether to strip whitespace nodes */
	@:protected private var m_shouldStripWhitespaceStack : com.sun.org.apache.xml.internal.utils.BoolStack;
	
	/** The XMLString factory for creating XMLStrings. */
	@:protected private var m_xstrf : com.sun.org.apache.xml.internal.utils.XMLStringFactory;
	
	/**
	* The table for exandedNameID lookups.  This may or may not be the same
	* table as is contained in the DTMManagerDefault.
	*/
	@:protected private var m_expandedNameTable : com.sun.org.apache.xml.internal.dtm.ref.ExpandedNameTable;
	
	/** true if indexing is turned on. */
	@:protected private var m_indexing : Bool;
	
	/**
	* Construct a DTMDefaultBase object using the default block size.
	*
	* @param mgr The DTMManager who owns this DTM.
	* @param source The object that is used to specify the construction source.
	* @param dtmIdentity The DTM identity ID for this DTM.
	* @param whiteSpaceFilter The white space filter for this DTM, which may
	*                         be null.
	* @param xstringfactory The factory to use for creating XMLStrings.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	*/
	@:overload @:public public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool) : Void;
	
	/**
	* Construct a DTMDefaultBase object from a DOM node.
	*
	* @param mgr The DTMManager who owns this DTM.
	* @param source The object that is used to specify the construction source.
	* @param dtmIdentity The DTM identity ID for this DTM.
	* @param whiteSpaceFilter The white space filter for this DTM, which may
	*                         be null.
	* @param xstringfactory The factory to use for creating XMLStrings.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	* @param blocksize The block size of the DTM.
	* @param usePrevsib true if we want to build the previous sibling node array.
	* @param newNameTable true if we want to use a new ExpandedNameTable for this DTM.
	*/
	@:overload @:public public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool, blocksize : Int, usePrevsib : Bool, newNameTable : Bool) : Void;
	
	/**
	* Ensure that the size of the element indexes can hold the information.
	*
	* @param namespaceID Namespace ID index.
	* @param LocalNameID Local name ID.
	*/
	@:overload @:protected private function ensureSizeOfIndex(namespaceID : Int, LocalNameID : Int) : Void;
	
	/**
	* Add a node to the element indexes. The node will not be added unless
	* it's an element.
	*
	* @param expandedTypeID The expanded type ID of the node.
	* @param identity The node identity index.
	*/
	@:overload @:protected private function indexNode(expandedTypeID : Int, identity : Int) : Void;
	
	/**
	* Find the first index that occurs in the list that is greater than or
	* equal to the given value.
	*
	* @param list A list of integers.
	* @param start The start index to begin the search.
	* @param len The number of items to search.
	* @param value Find the slot that has a value that is greater than or
	* identical to this argument.
	*
	* @return The index in the list of the slot that is higher or identical
	* to the identity argument, or -1 if no node is higher or equal.
	*/
	@:overload @:protected private function findGTE(list : java.NativeArray<Int>, start : Int, len : Int, value : Int) : Int;
	
	/**
	* Get the next node identity value in the list, and call the iterator
	* if it hasn't been added yet.
	*
	* @param identity The node identity (index).
	* @return identity+1, or DTM.NULL.
	*/
	@:overload @:protected @:abstract private function getNextNodeIdentity(identity : Int) : Int;
	
	/**
	* This method should try and build one or more nodes in the table.
	*
	* @return The true if a next node is found or false if
	*         there are no more nodes.
	*/
	@:overload @:protected @:abstract private function nextNode() : Bool;
	
	/**
	* Get the number of nodes that have been added.
	*
	* @return the number of nodes that have been mapped.
	*/
	@:overload @:protected @:abstract private function getNumberOfNodes() : Int;
	
	/** Stateless axis traversers, lazely built. */
	@:protected private var m_traversers : java.NativeArray<com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser>;
	
	/**
	* Get the simple type ID for the given node identity.
	*
	* @param identity The node identity.
	*
	* @return The simple type ID, or DTM.NULL.
	*/
	@:overload @:protected private function _type(identity : Int) : java.StdTypes.Int16;
	
	/**
	* Get the expanded type ID for the given node identity.
	*
	* @param identity The node identity.
	*
	* @return The expanded type ID, or DTM.NULL.
	*/
	@:overload @:protected private function _exptype(identity : Int) : Int;
	
	/**
	* Get the level in the tree for the given node identity.
	*
	* @param identity The node identity.
	*
	* @return The tree level, or DTM.NULL.
	*/
	@:overload @:protected private function _level(identity : Int) : Int;
	
	/**
	* Get the first child for the given node identity.
	*
	* @param identity The node identity.
	*
	* @return The first child identity, or DTM.NULL.
	*/
	@:overload @:protected private function _firstch(identity : Int) : Int;
	
	/**
	* Get the next sibling for the given node identity.
	*
	* @param identity The node identity.
	*
	* @return The next sibling identity, or DTM.NULL.
	*/
	@:overload @:protected private function _nextsib(identity : Int) : Int;
	
	/**
	* Get the previous sibling for the given node identity.
	*
	* @param identity The node identity.
	*
	* @return The previous sibling identity, or DTM.NULL.
	*/
	@:overload @:protected private function _prevsib(identity : Int) : Int;
	
	/**
	* Get the parent for the given node identity.
	*
	* @param identity The node identity.
	*
	* @return The parent identity, or DTM.NULL.
	*/
	@:overload @:protected private function _parent(identity : Int) : Int;
	
	/**
	* Diagnostics function to dump the DTM.
	*/
	@:overload @:public public function dumpDTM(os : java.io.OutputStream) : Void;
	
	/**
	* Diagnostics function to dump a single node.
	*
	* %REVIEW% KNOWN GLITCH: If you pass it a node index rather than a
	* node handle, it works just fine... but the displayed identity
	* number before the colon is different, which complicates comparing
	* it with nodes printed the other way. We could always OR the DTM ID
	* into the value, to suppress that distinction...
	*
	* %REVIEW% This might want to be moved up to DTMDefaultBase, or possibly
	* DTM itself, since it's a useful diagnostic and uses only DTM's public
	* APIs.
	*/
	@:overload @:public public function dumpNode(nodeHandle : Int) : String;
	
	/**
	* Set an implementation dependent feature.
	* <p>
	* %REVIEW% Do we really expect to set features on DTMs?
	*
	* @param featureId A feature URL.
	* @param state true if this feature should be on, false otherwise.
	*/
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Given a node handle, test if it has child nodes.
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
	@:overload @:public public function hasChildNodes(nodeHandle : Int) : Bool;
	
	/** Given a node identity, return a node handle. If extended addressing
	* has been used (multiple DTM IDs), we need to map the high bits of the
	* identity into the proper DTM ID.
	*
	* This has been made FINAL to facilitate inlining, since we do not expect
	* any subclass of DTMDefaultBase to ever change the algorithm. (I don't
	* really like doing so, and would love to have an excuse not to...)
	*
	* %REVIEW% Is it worth trying to specialcase small documents?
	* %REVIEW% Should this be exposed at the package/public layers?
	*
	* @param nodeIdentity Internal offset to this node's records.
	* @return NodeHandle (external representation of node)
	* */
	@:overload @:final @:public public function makeNodeHandle(nodeIdentity : Int) : Int;
	
	/** Given a node handle, return a node identity. If extended addressing
	* has been used (multiple DTM IDs), we need to map the high bits of the
	* identity into the proper DTM ID and thence find the proper offset
	* to add to the low bits of the identity
	*
	* This has been made FINAL to facilitate inlining, since we do not expect
	* any subclass of DTMDefaultBase to ever change the algorithm. (I don't
	* really like doing so, and would love to have an excuse not to...)
	*
	* %OPT% Performance is critical for this operation.
	*
	* %REVIEW% Should this be exposed at the package/public layers?
	*
	* @param nodeHandle (external representation of node)
	* @return nodeIdentity Internal offset to this node's records.
	* */
	@:overload @:final @:public public function makeNodeIdentity(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, get the handle of the node's first child.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	*
	* @param nodeHandle int Handle of the node.
	* @return int DTM node-number of first child, or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getFirstChild(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, get the handle of the node's first child.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	*
	* @param nodeHandle int Handle of the node.
	* @return int DTM node-number of first child, or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getTypedFirstChild(nodeHandle : Int, nodeType : Int) : Int;
	
	/**
	* Given a node handle, advance to its last child.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	*
	* @param nodeHandle int Handle of the node.
	* @return int Node-number of last child,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getLastChild(nodeHandle : Int) : Int;
	
	/**
	* Retrieves an attribute node by by qualified name and namespace URI.
	*
	* @param nodeHandle int Handle of the node upon which to look up this attribute..
	* @param namespaceURI The namespace URI of the attribute to
	*   retrieve, or null.
	* @param name The local name of the attribute to
	*   retrieve.
	* @return The attribute node handle with the specified name (
	*   <code>nodeName</code>) or <code>DTM.NULL</code> if there is no such
	*   attribute.
	*/
	@:overload @:public @:abstract public function getAttributeNode(nodeHandle : Int, namespaceURI : String, name : String) : Int;
	
	/**
	* Given a node handle, get the index of the node's first attribute.
	*
	* @param nodeHandle int Handle of the node.
	* @return Handle of first attribute, or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getFirstAttribute(nodeHandle : Int) : Int;
	
	/**
	* Given a node identity, get the index of the node's first attribute.
	*
	* @param identity int identity of the node.
	* @return Identity of first attribute, or DTM.NULL to indicate none exists.
	*/
	@:overload @:protected private function getFirstAttributeIdentity(identity : Int) : Int;
	
	/**
	* Given a node handle and an expanded type ID, get the index of the node's
	* attribute of that type, if any.
	*
	* @param nodeHandle int Handle of the node.
	* @param attType int expanded type ID of the required attribute.
	* @return Handle of attribute of the required type, or DTM.NULL to indicate
	* none exists.
	*/
	@:overload @:protected private function getTypedAttribute(nodeHandle : Int, attType : Int) : Int;
	
	/**
	* Given a node handle, advance to its next sibling.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	* @param nodeHandle int Handle of the node.
	* @return int Node-number of next sibling,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getNextSibling(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, advance to its next sibling.
	* If not yet resolved, waits for more nodes to be added to the document and
	* tries again.
	* @param nodeHandle int Handle of the node.
	* @return int Node-number of next sibling,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getTypedNextSibling(nodeHandle : Int, nodeType : Int) : Int;
	
	/**
	* Given a node handle, find its preceeding sibling.
	* WARNING: DTM is asymmetric; this operation is resolved by search, and is
	* relatively expensive.
	*
	* @param nodeHandle the id of the node.
	* @return int Node-number of the previous sib,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getPreviousSibling(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, advance to the next attribute.
	* If an attr, we advance to
	* the next attr on the same node.  If not an attribute, we return NULL.
	*
	* @param nodeHandle int Handle of the node.
	* @return int DTM node-number of the resolved attr,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getNextAttribute(nodeHandle : Int) : Int;
	
	/**
	* Given a node identity for an attribute, advance to the next attribute.
	*
	* @param identity int identity of the attribute node.  This
	* <strong>must</strong> be an attribute node.
	*
	* @return int DTM node-identity of the resolved attr,
	* or DTM.NULL to indicate none exists.
	*
	*/
	@:overload @:protected private function getNextAttributeIdentity(identity : Int) : Int;
	
	/** Build table of namespace declaration
	* locations during DTM construction. Table is a Vector of
	* SuballocatedIntVectors containing the namespace node HANDLES declared at
	* that ID, plus an SuballocatedIntVector of the element node INDEXES at which
	* these declarations appeared.
	*
	* NOTE: Since this occurs during model build, nodes will be encountered
	* in doucment order and thus the table will be ordered by element,
	* permitting binary-search as a possible retrieval optimization.
	*
	* %REVIEW% Directly managed arrays rather than vectors?
	* %REVIEW% Handles or IDs? Given usage, I think handles.
	* */
	@:overload @:protected private function declareNamespaceInContext(elementNodeIndex : Int, namespaceNodeIndex : Int) : Void;
	
	/** Retrieve list of namespace declaration locations
	* active at this node. List is an SuballocatedIntVector whose
	* entries are the namespace node HANDLES declared at that ID.
	*
	* %REVIEW% Directly managed arrays rather than vectors?
	* %REVIEW% Handles or IDs? Given usage, I think handles.
	* */
	@:overload @:protected private function findNamespaceContext(elementNodeIndex : Int) : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/**
	* Subroutine: Locate the specified node within
	* m_namespaceDeclSetElements, or the last element which
	* preceeds it in document order
	*
	* %REVIEW% Inlne this into findNamespaceContext? Create SortedSuballocatedIntVector type?
	*
	* @return If positive or zero, the index of the found item.
	* If negative, index of the point at which it would have appeared,
	* encoded as -1-index and hence reconvertable by subtracting
	* it from -1. (Encoding because I don't want to recompare the strings
	* but don't want to burn bytes on a datatype to hold a flagged value.)
	*/
	@:overload @:protected private function findInSortedSuballocatedIntVector(vector : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector, lookfor : Int) : Int;
	
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
	@:overload @:public public function getFirstNamespaceNode(nodeHandle : Int, inScope : Bool) : Int;
	
	/**
	* Given a namespace handle, advance to the next namespace.
	*
	* @param baseHandle handle to original node from where the first namespace
	* was relative to (needed to return nodes in document order).
	* @param nodeHandle A namespace handle for which we will find the next node.
	* @param inScope true if all namespaces that are in scope should be processed,
	* otherwise just process the nodes in the given element handle.
	* @return handle of next namespace, or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getNextNamespaceNode(baseHandle : Int, nodeHandle : Int, inScope : Bool) : Int;
	
	/**
	* Given a node handle, find its parent node.
	*
	* @param nodeHandle the id of the node.
	* @return int Node-number of parent,
	* or DTM.NULL to indicate none exists.
	*/
	@:overload @:public public function getParent(nodeHandle : Int) : Int;
	
	/**
	* Find the Document node handle for the document currently under construction.
	* PLEASE NOTE that most people should use getOwnerDocument(nodeHandle) instead;
	* this version of the operation is primarily intended for use during negotiation
	* with the DTM Manager.
	*
	*  @return int Node handle of document, which should always be valid.
	*/
	@:overload @:public public function getDocument() : Int;
	
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
	* @return int Node handle of owning document, or -1 if the node was a Docment
	*/
	@:overload @:public public function getOwnerDocument(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, find the owning document node.  Unlike the DOM,
	* this considers the owningDocument of a Document to be itself.
	*
	* @param nodeHandle the id of the node.
	* @return int Node handle of owning document, or the nodeHandle if it is
	*             a Document.
	*/
	@:overload @:public public function getDocumentRoot(nodeHandle : Int) : Int;
	
	/**
	* Get the string-value of a node as a String object
	* (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value).
	*
	* @param nodeHandle The node ID.
	*
	* @return A string object that represents the string-value of the given node.
	*/
	@:overload @:public @:abstract public function getStringValue(nodeHandle : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Get number of character array chunks in
	* the string-value of a node.
	* (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value).
	* Note that a single text node may have multiple text chunks.
	*
	* @param nodeHandle The node ID.
	*
	* @return number of character array chunks in
	*         the string-value of a node.
	*/
	@:overload @:public public function getStringValueChunkCount(nodeHandle : Int) : Int;
	
	/**
	* Get a character array chunk in the string-value of a node.
	* (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value).
	* Note that a single text node may have multiple text chunks.
	*
	* @param nodeHandle The node ID.
	* @param chunkIndex Which chunk to get.
	* @param startAndLen An array of 2 where the start position and length of
	*                    the chunk will be returned.
	*
	* @return The character array reference where the chunk occurs.
	*/
	@:overload @:public public function getStringValueChunk(nodeHandle : Int, chunkIndex : Int, startAndLen : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Given a node handle, return an ID that represents the node's expanded name.
	*
	* @param nodeHandle The handle to the node in question.
	*
	* @return the expanded-name id of the node.
	*/
	@:overload @:public public function getExpandedTypeID(nodeHandle : Int) : Int;
	
	/**
	* Given an expanded name, return an ID.  If the expanded-name does not
	* exist in the internal tables, the entry will be created, and the ID will
	* be returned.  Any additional nodes that are created that have this
	* expanded name will use this ID.
	*
	* @param type The simple type, i.e. one of ELEMENT, ATTRIBUTE, etc.
	*
	* @param namespace The namespace URI, which may be null, may be an empty
	*                  string (which will be the same as null), or may be a
	*                  namespace URI.
	* @param localName The local name string, which must be a valid
	*                  <a href="http://www.w3.org/TR/REC-xml-names/">NCName</a>.
	*
	* @return the expanded-name id of the node.
	*/
	@:overload @:public public function getExpandedTypeID(namespace : String, localName : String, type : Int) : Int;
	
	/**
	* Given an expanded-name ID, return the local name part.
	*
	* @param expandedNameID an ID that represents an expanded-name.
	* @return String Local name of this node.
	*/
	@:overload @:public public function getLocalNameFromExpandedNameID(expandedNameID : Int) : String;
	
	/**
	* Given an expanded-name ID, return the namespace URI part.
	*
	* @param expandedNameID an ID that represents an expanded-name.
	* @return String URI value of this node's namespace, or null if no
	* namespace was resolved.
	*/
	@:overload @:public public function getNamespaceFromExpandedNameID(expandedNameID : Int) : String;
	
	/**
	* Returns the namespace type of a specific node
	* @param nodeHandle the id of the node.
	* @return the ID of the namespace.
	*/
	@:overload @:public public function getNamespaceType(nodeHandle : Int) : Int;
	
	/**
	* Given a node handle, return its DOM-style node name. This will
	* include names such as #text or #document.
	*
	* @param nodeHandle the id of the node.
	* @return String Name of this node, which may be an empty string.
	* %REVIEW% Document when empty string is possible...
	* %REVIEW-COMMENT% It should never be empty, should it?
	*/
	@:overload @:public @:abstract public function getNodeName(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return the XPath node name.  This should be
	* the name as described by the XPath data model, NOT the DOM-style
	* name.
	*
	* @param nodeHandle the id of the node.
	* @return String Name of this node, which may be an empty string.
	*/
	@:overload @:public public function getNodeNameX(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its XPath-style localname.
	* (As defined in Namespaces, this is the portion of the name after any
	* colon character).
	*
	* @param nodeHandle the id of the node.
	* @return String Local name of this node.
	*/
	@:overload @:public @:abstract public function getLocalName(nodeHandle : Int) : String;
	
	/**
	* Given a namespace handle, return the prefix that the namespace decl is
	* mapping.
	* Given a node handle, return the prefix used to map to the namespace.
	*
	* <p> %REVIEW% Are you sure you want "" for no prefix?  </p>
	* <p> %REVIEW-COMMENT% I think so... not totally sure. -sb  </p>
	*
	* @param nodeHandle the id of the node.
	* @return String prefix of this node's name, or "" if no explicit
	* namespace prefix was given.
	*/
	@:overload @:public @:abstract public function getPrefix(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its DOM-style namespace URI
	* (As defined in Namespaces, this is the declared URI which this node's
	* prefix -- or default in lieu thereof -- was mapped to.)
	*
	* <p>%REVIEW% Null or ""? -sb</p>
	*
	* @param nodeHandle the id of the node.
	* @return String URI value of this node's namespace, or null if no
	* namespace was resolved.
	*/
	@:overload @:public @:abstract public function getNamespaceURI(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its node value. This is mostly
	* as defined by the DOM, but may ignore some conveniences.
	* <p>
	*
	* @param nodeHandle The node id.
	* @return String Value of this node, or null if not
	* meaningful for this node type.
	*/
	@:overload @:public @:abstract public function getNodeValue(nodeHandle : Int) : String;
	
	/**
	* Given a node handle, return its DOM-style node type.
	* <p>
	* %REVIEW% Generally, returning short is false economy. Return int?
	* %REVIEW% Make assumption that node has already arrived.  Is OK?
	*
	* @param nodeHandle The node id.
	* @return int Node type, as per the DOM's Node._NODE constants.
	*/
	@:overload @:public public function getNodeType(nodeHandle : Int) : java.StdTypes.Int16;
	
	/**
	* Get the depth level of this node in the tree (equals 1 for
	* a parentless node).
	*
	* @param nodeHandle The node id.
	* @return the number of ancestors, plus one
	* @xsl.usage internal
	*/
	@:overload @:public public function getLevel(nodeHandle : Int) : java.StdTypes.Int16;
	
	/**
	* Get the identity of this node in the tree
	*
	* @param nodeHandle The node handle.
	* @return the node identity
	* @xsl.usage internal
	*/
	@:overload @:public public function getNodeIdent(nodeHandle : Int) : Int;
	
	/**
	* Get the handle of this node in the tree
	*
	* @param nodeId The node identity.
	* @return the node handle
	* @xsl.usage internal
	*/
	@:overload @:public public function getNodeHandle(nodeId : Int) : Int;
	
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
	@:overload @:public public function isSupported(feature : String, version : String) : Bool;
	
	/**
	* Return the base URI of the document entity. If it is not known
	* (because the document was parsed from a socket connection or from
	* standard input, for example), the value of this property is unknown.
	*
	* @return the document base URI String object or null if unknown.
	*/
	@:overload @:public public function getDocumentBaseURI() : String;
	
	/**
	* Set the base URI of the document entity.
	*
	* @param baseURI the document base URI String object or null if unknown.
	*/
	@:overload @:public public function setDocumentBaseURI(baseURI : String) : Void;
	
	/**
	* Return the system identifier of the document entity. If
	* it is not known, the value of this property is unknown.
	*
	* @param nodeHandle The node id, which can be any valid node handle.
	* @return the system identifier String object or null if unknown.
	*/
	@:overload @:public public function getDocumentSystemIdentifier(nodeHandle : Int) : String;
	
	/**
	* Return the name of the character encoding scheme
	*        in which the document entity is expressed.
	*
	* @param nodeHandle The node id, which can be any valid node handle.
	* @return the document encoding String object.
	* @xsl.usage internal
	*/
	@:overload @:public public function getDocumentEncoding(nodeHandle : Int) : String;
	
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
	@:overload @:public public function getDocumentStandalone(nodeHandle : Int) : String;
	
	/**
	* Return a string representing the XML version of the document. This
	* property is derived from the XML declaration optionally present at the
	* beginning of the document entity, and has no value if there is no XML
	* declaration.
	*
	* @param documentHandle The document handle
	*
	* @return the document version String object.
	*/
	@:overload @:public public function getDocumentVersion(documentHandle : Int) : String;
	
	/**
	* Return an indication of
	* whether the processor has read the complete DTD. Its value is a
	* boolean. If it is false, then certain properties (indicated in their
	* descriptions below) may be unknown. If it is true, those properties
	* are never unknown.
	*
	* @return <code>true</code> if all declarations were processed;
	*         <code>false</code> otherwise.
	*/
	@:overload @:public public function getDocumentAllDeclarationsProcessed() : Bool;
	
	/**
	*   A document type declaration information item has the following properties:
	*
	*     1. [system identifier] The system identifier of the external subset, if
	*        it exists. Otherwise this property has no value.
	*
	* @return the system identifier String object, or null if there is none.
	*/
	@:overload @:public @:abstract public function getDocumentTypeDeclarationSystemIdentifier() : String;
	
	/**
	* Return the public identifier of the external subset,
	* normalized as described in 4.2.2 External Entities [XML]. If there is
	* no external subset or if it has no public identifier, this property
	* has no value.
	*
	* @return the public identifier String object, or null if there is none.
	*/
	@:overload @:public @:abstract public function getDocumentTypeDeclarationPublicIdentifier() : String;
	
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
	@:overload @:public @:abstract public function getElementById(elementId : String) : Int;
	
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
	@:overload @:public @:abstract public function getUnparsedEntityURI(name : String) : String;
	
	/**
	* Return true if the xsl:strip-space or xsl:preserve-space was processed
	* during construction of the DTM document.
	*
	* @return true if this DTM supports prestripping.
	*/
	@:overload @:public public function supportsPreStripping() : Bool;
	
	/**
	* Figure out whether nodeHandle2 should be considered as being later
	* in the document than nodeHandle1, in Document Order as defined
	* by the XPath model. This may not agree with the ordering defined
	* by other XML applications.
	* <p>
	* There are some cases where ordering isn't defined, and neither are
	* the results of this function -- though we'll generally return false.
	*
	* @param nodeHandle1 Node handle to perform position comparison on.
	* @param nodeHandle2 Second Node handle to perform position comparison on .
	*
	* @return true if node1 comes before node2, otherwise return false.
	* You can think of this as
	* <code>(node1.documentOrderPosition &lt;= node2.documentOrderPosition)</code>.
	*/
	@:overload @:public public function isNodeAfter(nodeHandle1 : Int, nodeHandle2 : Int) : Bool;
	
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
	@:overload @:public public function isCharacterElementContentWhitespace(nodeHandle : Int) : Bool;
	
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
	@:overload @:public public function isDocumentAllDeclarationsProcessed(documentHandle : Int) : Bool;
	
	/**
	*     5. [specified] A flag indicating whether this attribute was actually
	*        specified in the start-tag of its element, or was defaulted from the
	*        DTD.
	*
	* @param attributeHandle The attribute handle in question.
	*
	* @return <code>true</code> if the attribute was specified;
	*         <code>false</code> if it was defaulted.
	*/
	@:overload @:public @:abstract public function isAttributeSpecified(attributeHandle : Int) : Bool;
	
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
	* @param normalize true if the content should be normalized according to
	* the rules for the XPath
	* <a href="http://www.w3.org/TR/xpath#function-normalize-space">normalize-space</a>
	* function.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public @:abstract public function dispatchCharactersEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler, normalize : Bool) : Void;
	
	/**
	* Directly create SAX parser events from a subtree.
	*
	* @param nodeHandle The node ID.
	* @param ch A non-null reference to a ContentHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public @:abstract public function dispatchToEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Return an DOM node for the given node.
	*
	* @param nodeHandle The node ID.
	*
	* @return A node representation of the DTM node.
	*/
	@:overload @:public public function getNode(nodeHandle : Int) : org.w3c.dom.Node;
	
	/**
	* Append a child to the end of the document. Please note that the node
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
	@:overload @:public public function appendChild(newChild : Int, clone : Bool, cloneDepth : Bool) : Void;
	
	/**
	* Append a text node child that will be constructed from a string,
	* to the end of the document.
	*
	* <p>%REVIEW% "End of the document" needs to be defined more clearly.
	* Does it become the last child of the Document? Of the root element?</p>
	*
	* @param str Non-null reverence to a string.
	*/
	@:overload @:public public function appendTextChild(str : String) : Void;
	
	/**
	* Simple error for asserts and the like.
	*
	* @param msg Error message to report.
	*/
	@:overload @:protected private function error(msg : String) : Void;
	
	/**
	* Find out whether or not to strip whispace nodes.
	*
	*
	* @return whether or not to strip whispace nodes.
	*/
	@:overload @:protected private function getShouldStripWhitespace() : Bool;
	
	/**
	* Set whether to strip whitespaces and push in current value of
	* m_shouldStripWS in m_shouldStripWhitespaceStack.
	*
	* @param shouldStrip Flag indicating whether to strip whitespace nodes
	*/
	@:overload @:protected private function pushShouldStripWhitespace(shouldStrip : Bool) : Void;
	
	/**
	* Set whether to strip whitespaces at this point by popping out
	* m_shouldStripWhitespaceStack.
	*
	*/
	@:overload @:protected private function popShouldStripWhitespace() : Void;
	
	/**
	* Set whether to strip whitespaces and set the top of the stack to
	* the current value of m_shouldStripWS.
	*
	*
	* @param shouldStrip Flag indicating whether to strip whitespace nodes
	*/
	@:overload @:protected private function setShouldStripWhitespace(shouldStrip : Bool) : Void;
	
	/**
	* A dummy routine to satisify the abstract interface. If the DTM
	* implememtation that extends the default base requires notification
	* of registration, they can override this method.
	*/
	@:overload @:public public function documentRegistration() : Void;
	
	/**
	* A dummy routine to satisify the abstract interface. If the DTM
	* implememtation that extends the default base requires notification
	* when the document is being released, they can override this method
	*/
	@:overload @:public public function documentRelease() : Void;
	
	/**
	* Migrate a DTM built with an old DTMManager to a new DTMManager.
	* After the migration, the new DTMManager will treat the DTM as
	* one that is built by itself.
	* This is used to support DTM sharing between multiple transformations.
	* @param mgr the DTMManager
	*/
	@:overload @:public public function migrateTo(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/** Query which DTMManager this DTM is currently being handled by.
	*
	* %REVEW% Should this become part of the base DTM API?
	*
	* @return a DTMManager, or null if this is a "stand-alone" DTM.
	*/
	@:overload @:public public function getManager() : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/** Query which DTMIDs this DTM is currently using within the DTMManager.
	*
	* %REVEW% Should this become part of the base DTM API?
	*
	* @return an IntVector, or null if this is a "stand-alone" DTM.
	*/
	@:overload @:public public function getDTMIDs() : com.sun.org.apache.xml.internal.utils.SuballocatedIntVector;
	
	/**
	* Return this DTM's DeclHandler, if it has one.
	*
	* @return null if this model doesn't respond to SAX Decl events.
	*/
	@:overload @:public public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	/**
	* Get an iterator that can navigate over an XPath Axis, predicated by
	* the extended type ID.
	*
	* @param axis
	* @param type An extended type ID.
	*
	* @return A DTMAxisIterator, or null if the givin axis isn't supported.
	*/
	@:overload @:public public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Return this DTM's content handler, if it has one.
	*
	* @return null if this model doesn't respond to SAX events.
	*/
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Set a run time property for this DTM instance.
	*
	* @param property a <code>String</code> value
	* @param value an <code>Object</code> value
	*/
	@:overload @:public public function setProperty(property : String, value : Dynamic) : Void;
	
	/**
	* Return this DTM's EntityResolver, if it has one.
	*
	* @return null if this model doesn't respond to SAX entity ref events.
	*/
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Return this DTM's lexical handler, if it has one.
	*
	* %REVIEW% Should this return null if constrution already done/begun?
	*
	* @return null if this model doesn't respond to lexical SAX events.
	*/
	@:overload @:public public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	/**
	* Get the location of a node in the source document.
	*
	* @param node an <code>int</code> value
	* @return a <code>SourceLocator</code> value or null if no location
	* is available
	*/
	@:overload @:public public function getSourceLocatorFor(node : Int) : javax.xml.transform.SourceLocator;
	
	/**
	* This returns a stateless "traverser", that can navigate over an
	* XPath axis, though not in document order.
	*
	* @param axis One of Axes.ANCESTORORSELF, etc.
	*
	* @return A DTMAxisIterator, or null if the givin axis isn't supported.
	*/
	@:overload @:public public function getAxisTraverser(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	/**
	* This is a shortcut to the iterators that implement
	* XPath axes.
	* Returns a bare-bones iterator that must be initialized
	* with a start node (using iterator.setStartNode()).
	*
	* @param axis One of Axes.ANCESTORORSELF, etc.
	*
	* @return A DTMAxisIterator, or null if the givin axis isn't supported.
	*/
	@:overload @:public public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Return this DTM's DTDHandler, if it has one.
	*
	* @return null if this model doesn't respond to SAX dtd events.
	*/
	@:overload @:public public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* Return this DTM's ErrorHandler, if it has one.
	*
	* @return null if this model doesn't respond to SAX error events.
	*/
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* @return true iff we're building this model incrementally (eg
	* we're partnered with a CoroutineParser) and thus require that the
	* transformation and the parse run simultaneously. Guidance to the
	* DTMManager.
	*/
	@:overload @:public public function needsTwoThreads() : Bool;
	
	
}
