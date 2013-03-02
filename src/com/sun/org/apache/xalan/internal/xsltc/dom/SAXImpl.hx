package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: SAXImpl.java,v 1.5 2005/09/28 13:48:37 pvedula Exp $
*/
extern class SAXImpl extends com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2 implements com.sun.org.apache.xalan.internal.xsltc.DOMEnhancedForDTM implements com.sun.org.apache.xalan.internal.xsltc.dom.DOMBuilder
{
	/**
	* Define the origin of the document from which the tree was built
	*/
	@:overload public function setDocumentURI(uri : String) : Void;
	
	/**
	* Returns the origin of the document from which the tree was built
	*/
	@:overload public function getDocumentURI() : String;
	
	@:overload public function getDocumentURI(node : Int) : String;
	
	@:overload public function setupMapping(names : java.NativeArray<String>, urisArray : java.NativeArray<String>, typesArray : java.NativeArray<Int>, namespaces : java.NativeArray<String>) : Void;
	
	/**
	* Lookup a namespace URI from a prefix starting at node. This method
	* is used in the execution of xsl:element when the prefix is not known
	* at compile time.
	*/
	@:overload public function lookupNamespace(node : Int, prefix : String) : String;
	
	/**
	* Returns 'true' if a specific node is an element (of any type)
	*/
	@:overload public function isElement(node : Int) : Bool;
	
	/**
	* Returns 'true' if a specific node is an attribute (of any type)
	*/
	@:overload public function isAttribute(node : Int) : Bool;
	
	/**
	* Returns the number of nodes in the tree (used for indexing)
	*/
	@:overload public function getSize() : Int;
	
	/**
	* Part of the DOM interface - no function here.
	*/
	@:overload public function setFilter(filter : com.sun.org.apache.xalan.internal.xsltc.StripFilter) : Void;
	
	/**
	* Returns true if node1 comes before node2 in document order
	*/
	@:overload public function lessThan(node1 : Int, node2 : Int) : Bool;
	
	/**
	* Create an org.w3c.dom.Node from a node in the tree
	*/
	@:overload public function makeNode(index : Int) : org.w3c.dom.Node;
	
	/**
	* Create an org.w3c.dom.Node from a node in an iterator
	* The iterator most be started before this method is called
	*/
	@:overload public function makeNode(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.Node;
	
	/**
	* Create an org.w3c.dom.NodeList from a node in the tree
	*/
	@:overload public function makeNodeList(index : Int) : org.w3c.dom.NodeList;
	
	/**
	* Create an org.w3c.dom.NodeList from a node iterator
	* The iterator most be started before this method is called
	*/
	@:overload public function makeNodeList(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.NodeList;
	
	@:overload public function getNodeValueIterator(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, type : Int, value : String, op : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Encapsulates an iterator in an OrderedIterator to ensure node order
	*/
	@:overload public function orderNodes(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Returns singleton iterator containg the document root
	* Works for them main document (mark == 0).  It cannot be made
	* to point to any other node through setStartNode().
	*/
	@:overload public function getIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get mapping from DOM namespace types to external namespace types
	*/
	@:overload public function getNSType(node : Int) : Int;
	
	/**
	* Returns the namespace type of a specific node
	*/
	@:overload public function getNamespaceType(node : Int) : Int;
	
	/**
	* Returns the internal type associated with an expanded QName
	*/
	@:overload public function getGeneralizedType(name : String) : Int;
	
	/**
	* Returns the internal type associated with an expanded QName
	*/
	@:overload public function getGeneralizedType(name : String, searchOnly : Bool) : Int;
	
	/**
	* Get mapping from DOM element/attribute types to external types
	*/
	@:overload public function getMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Get mapping from external element/attribute types to DOM types
	*/
	@:overload public function getReverseMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Get mapping from DOM namespace types to external namespace types
	*/
	@:overload public function getNamespaceMapping(namespaces : java.NativeArray<String>) : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Get mapping from external namespace types to DOM namespace types
	*/
	@:overload public function getReverseNamespaceMapping(namespaces : java.NativeArray<String>) : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Construct a SAXImpl object using the default block size.
	*/
	@:overload public function new(mgr : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool, buildIdIndex : Bool) : Void;
	
	/**
	* Construct a SAXImpl object using the given block size.
	*/
	@:overload public function new(mgr : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool, blocksize : Int, buildIdIndex : Bool, newNameTable : Bool) : Void;
	
	/**
	* Migrate a DTM built with an old DTMManager to a new DTMManager.
	* After the migration, the new DTMManager will treat the DTM as
	* one that is built by itself.
	* This is used to support DTM sharing between multiple transformations.
	* @param manager the DTMManager
	*/
	@:overload public function migrateTo(manager : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/**
	* Return the node identity for a given id String
	*
	* @param idString The id String
	* @return The identity of the node whose id is the given String.
	*/
	@:overload public function getElementById(idString : String) : Int;
	
	/**
	* Return true if the input source is DOMSource.
	*/
	@:overload public function hasDOMSource() : Bool;
	
	/**
	* Find out whether or not to strip whitespace nodes.
	*
	*
	* @return whether or not to strip whitespace nodes.
	*/
	@:overload private function getShouldStripWhitespace() : Bool;
	
	/**
	* SAX2: Receive notification of character data.
	*/
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* SAX2: Receive notification of the beginning of a document.
	*/
	@:overload public function startDocument() : Void;
	
	/**
	* SAX2: Receive notification of the end of a document.
	*/
	@:overload public function endDocument() : Void;
	
	/**
	* Specialized interface used by DOM2SAX. This one has an extra Node
	* parameter to build the Node -> id map.
	*/
	@:overload public function startElement(uri : String, localName : String, qname : String, attributes : org.xml.sax.Attributes, node : org.w3c.dom.Node) : Void;
	
	/**
	* SAX2: Receive notification of the beginning of an element.
	*/
	@:overload public function startElement(uri : String, localName : String, qname : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* SAX2: Receive notification of the end of an element.
	*/
	@:overload public function endElement(namespaceURI : String, localName : String, qname : String) : Void;
	
	/**
	* SAX2: Receive notification of a processing instruction.
	*/
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* SAX2: Receive notification of ignorable whitespace in element
	* content. Similar to characters(char[], int, int).
	*/
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* SAX2: Begin the scope of a prefix-URI Namespace mapping.
	*/
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* SAX2: Report an XML comment anywhere in the document.
	*/
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function setEscaping(value : Bool) : Bool;
	
	/**
	* Prints the whole tree to standard output
	*/
	@:overload public function print(node : Int, level : Int) : Void;
	
	/**
	* Returns the name of a node (attribute or element).
	*/
	@:overload public function getNodeName(node : Int) : String;
	
	/**
	* Returns the namespace URI to which a node belongs
	*/
	@:overload public function getNamespaceName(node : Int) : String;
	
	/**
	* Returns the attribute node of a given type (if any) for an element
	*/
	@:overload public function getAttributeNode(type : Int, element : Int) : Int;
	
	/**
	* Returns the value of a given attribute type of a given element
	*/
	@:overload public function getAttributeValue(type : Int, element : Int) : String;
	
	/**
	* This method is for testing/debugging only
	*/
	@:overload public function getAttributeValue(name : String, element : Int) : String;
	
	/**
	* Returns an iterator with all the children of a given node
	*/
	@:overload public function getChildren(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Returns an iterator with all children of a specific type
	* for a given node (element)
	*/
	@:overload public function getTypedChildren(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* This is a shortcut to the iterators that implement the
	* supported XPath axes (only namespace::) is not supported.
	* Returns a bare-bones iterator that must be initialized
	* with a start node (using iterator.setStartNode()).
	*/
	@:overload override public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Similar to getAxisIterator, but this one returns an iterator
	* containing nodes of a typed axis (ex.: child::foo)
	*/
	@:overload override public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Do not think that this returns an iterator for the namespace axis.
	* It returns an iterator with nodes that belong in a certain namespace,
	* such as with <xsl:apply-templates select="blob/foo:*"/>
	* The 'axis' specifies the axis for the base iterator from which the
	* nodes are taken, while 'ns' specifies the namespace URI type.
	*/
	@:overload public function getNamespaceAxisIterator(axis : Int, ns : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Returns an iterator with all descendants of a node that are of
	* a given type.
	*/
	@:overload public function getTypedDescendantIterator(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Returns the nth descendant of a node
	*/
	@:overload public function getNthDescendant(type : Int, n : Int, includeself : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Copy the string value of a node directly to an output handler
	*/
	@:overload public function characters(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Copy a node-set to an output handler
	*/
	@:overload public function copy(nodes : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Copy the whole tree to an output handler
	*/
	@:overload public function copy(handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Performs a deep copy (ref. XSLs copy-of())
	*
	* TODO: Copy namespace declarations. Can't be done until we
	*       add namespace nodes and keep track of NS prefixes
	* TODO: Copy comment nodes
	*/
	@:overload public function copy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Performs a shallow copy (ref. XSLs copy())
	*/
	@:overload public function shallowCopy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : String;
	
	/**
	* Returns a node' defined language for a node (if any)
	*/
	@:overload public function getLanguage(node : Int) : String;
	
	/**
	* Returns an instance of the DOMBuilder inner class
	* This class will consume the input document through a SAX2
	* interface and populate the tree.
	*/
	@:overload public function getBuilder() : com.sun.org.apache.xalan.internal.xsltc.dom.DOMBuilder;
	
	/**
	* Return a SerializationHandler for output handling.
	* This method is used by Result Tree Fragments.
	*/
	@:overload public function getOutputDomBuilder() : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	/**
	* Return a instance of a DOM class to be used as an RTF
	*/
	@:overload public function getResultTreeFrag(initSize : Int, rtfType : Int) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Return a instance of a DOM class to be used as an RTF
	*
	* @param initSize The initial size of the DOM.
	* @param rtfType The type of the RTF
	* @param addToManager true if the RTF should be registered with the DTMManager.
	* @return The DOM object which represents the RTF.
	*/
	@:overload public function getResultTreeFrag(initSize : Int, rtfType : Int, addToManager : Bool) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* %HZ% Need Javadoc
	*/
	@:overload public function getElementsWithIDs() : Hashtable;
	
	/**
	* The getUnparsedEntityURI function returns the URI of the unparsed
	* entity with the specified name in the same document as the context
	* node (see [3.3 Unparsed Entities]). It returns the empty string if
	* there is no such entity.
	*/
	@:overload public function getUnparsedEntityURI(name : String) : String;
	
	
}
/**
* Iterator that returns the namespace nodes as defined by the XPath data
* model for a given node, filtered by extended type ID.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$SAXImpl$TypedNamespaceIterator') extern class SAXImpl_TypedNamespaceIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_NamespaceIterator
{
	/**
	* Constructor TypedChildrenIterator
	*
	*
	* @param nodeType The extended type ID being requested.
	*/
	@:overload public function new(nodeType : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload public function next() : Int;
	
	
}
/**************************************************************
* This is a specialised iterator for predicates comparing node or
* attribute values to variable or parameter values.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$SAXImpl$NodeValueIterator') @:internal extern class SAXImpl_NodeValueIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	@:overload public function new(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, returnType : Int, value : String, op : Bool) : Void;
	
	@:overload public function isReverse() : Bool;
	
	@:overload public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload public function setRestartable(isRestartable : Bool) : Void;
	
	@:overload public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload public function next() : Int;
	
	@:overload public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload public function setMark() : Void;
	
	@:overload public function gotoMark() : Void;
	
	
}
/**
* Iterator that handles node tests that test for a namespace, but have
* a wild card for the local name of the node, i.e., node tests of the
* form <axis>::<prefix>:*
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$SAXImpl$NamespaceWildcardIterator') extern class SAXImpl_NamespaceWildcardIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* The namespace type index.
	*/
	private var m_nsType : Int;
	
	/**
	* A nested typed axis iterator that retrieves nodes of the principal
	* node kind for that axis.
	*/
	private var m_baseIterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Constructor NamespaceWildcard
	*
	* @param axis The axis that this iterator will traverse
	* @param nsType The namespace type index
	*/
	@:overload public function new(axis : Int, nsType : Int) : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload public function next() : Int;
	
	/**
	* Returns a deep copy of this iterator.  The cloned iterator is not
	* reset.
	*
	* @return a deep copy of this iterator.
	*/
	@:overload public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* True if this iterator has a reversed axis.
	*
	* @return <code>true</code> if this iterator is a reversed axis.
	*/
	@:overload public function isReverse() : Bool;
	
	@:overload public function setMark() : Void;
	
	@:overload public function gotoMark() : Void;
	
	
}
/**
* Iterator that returns children within a given namespace for a
* given node. The functionality chould be achieved by putting a
* filter on top of a basic child iterator, but a specialised
* iterator is used for efficiency (both speed and size of translet).
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$SAXImpl$NamespaceChildrenIterator') extern class SAXImpl_NamespaceChildrenIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Constructor NamespaceChildrenIterator
	*
	*
	* @param type The extended type ID being requested.
	*/
	@:overload public function new(type : Int) : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload public function next() : Int;
	
	
}
/**
* Iterator that returns attributes within a given namespace for a node.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$SAXImpl$NamespaceAttributeIterator') extern class SAXImpl_NamespaceAttributeIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Constructor NamespaceAttributeIterator
	*
	*
	* @param nsType The extended type ID being requested.
	*/
	@:overload public function new(nsType : Int) : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload public function next() : Int;
	
	
}
