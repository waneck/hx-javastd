package com.sun.org.apache.xml.internal.dtm.ref.sax2dtm;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
* $Id: SAX2DTM2.java,v 1.2.4.1 2005/09/15 08:15:12 suresh_emailid Exp $
*/
/**
* SAX2DTM2 is an optimized version of SAX2DTM which is used in non-incremental situation.
* It is used as the super class of the XSLTC SAXImpl. Many of the interfaces in SAX2DTM
* and DTMDefaultBase are overridden in SAX2DTM2 in order to allow fast, efficient
* access to the DTM model. Some nested iterators in DTMDefaultBaseIterators
* are also overridden in SAX2DTM2 for performance reasons.
* <p>
* Performance is the biggest consideration in the design of SAX2DTM2. To make the code most
* efficient, the incremental support is dropped in SAX2DTM2, which means that you should not
* use it in incremental situation. To reduce the overhead of pulling data from the DTM model,
* a few core interfaces in SAX2DTM2 have direct access to the internal arrays of the
* SuballocatedIntVectors.
* <p>
* The design of SAX2DTM2 may limit its extensibilty. If you have a reason to extend the
* SAX2DTM model, please extend from SAX2DTM instead of this class.
* <p>
* TODO: This class is currently only used by XSLTC. We need to investigate the possibility
* of also using it in Xalan-J Interpretive. Xalan's performance is likely to get an instant
* boost if we use SAX2DTM2 instead of SAX2DTM in non-incremental case.
* <p>
* %MK% The code in this class is critical to the XSLTC_DTM performance. Be very careful
* when making changes here!
*/
extern class SAX2DTM2 extends com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM
{
	private var m_extendedTypes : java.NativeArray<com.sun.org.apache.xml.internal.dtm.ref.ExtendedType>;
	
	private var m_values : java.util.Vector<Dynamic>;
	
	private var m_SHIFT : Int;
	
	private var m_MASK : Int;
	
	private var m_blocksize : Int;
	
	/** %OPT% If the offset and length of a Text node are within certain limits,
	* we store a bitwise encoded value into an int, using 10 bits (max. 1024)
	* for length and 21 bits for offset. We can save two SuballocatedIntVector
	* calls for each getStringValueX() and dispatchCharacterEvents() call by
	* doing this.
	*/
	private static var TEXT_LENGTH_BITS(default, null) : Int;
	
	private static var TEXT_OFFSET_BITS(default, null) : Int;
	
	private static var TEXT_LENGTH_MAX(default, null) : Int;
	
	private static var TEXT_OFFSET_MAX(default, null) : Int;
	
	private var m_buildIdIndex : Bool;
	
	/**
	* Construct a SAX2DTM2 object using the default block size.
	*/
	@:overload public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool) : Void;
	
	/**
	* Construct a SAX2DTM2 object using the given block size.
	*/
	@:overload public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool, blocksize : Int, usePrevsib : Bool, buildIdIndex : Bool, newNameTable : Bool) : Void;
	
	/**
	* Override DTMDefaultBase._exptype() by dropping the incremental code.
	*
	* <p>This one is less efficient than _exptype2. It is only used during
	* DTM building. _exptype2 is used after the document is fully built.
	*/
	@:overload @:final override public function _exptype(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase._exptype().
	*
	* @param identity A node identity, which <em>must not</em> be equal to
	*        <code>DTM.NULL</code>
	*/
	@:overload @:final public function _exptype2(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase._nextsib().
	*
	* @param identity A node identity, which <em>must not</em> be equal to
	*        <code>DTM.NULL</code>
	*/
	@:overload @:final public function _nextsib2(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase._firstch().
	*
	* @param identity A node identity, which <em>must not</em> be equal to
	*        <code>DTM.NULL</code>
	*/
	@:overload @:final public function _firstch2(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase._parent().
	*
	* @param identity A node identity, which <em>must not</em> be equal to
	*        <code>DTM.NULL</code>
	*/
	@:overload @:final public function _parent2(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase._type().
	*
	* @param identity A node identity, which <em>must not</em> be equal to
	*        <code>DTM.NULL</code>
	*/
	@:overload @:final public function _type2(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase.getExpandedTypeID(int).
	*
	* <p>This one is only used by DOMAdapter.getExpandedTypeID(int), which
	* is mostly called from the compiled translets.
	*/
	@:overload @:final public function getExpandedTypeID2(nodeHandle : Int) : Int;
	
	/**
	* Return the node type from the expanded type
	*/
	@:overload @:final public function _exptype2Type(exptype : Int) : Int;
	
	/**
	* Get a prefix either from the uri mapping, or just make
	* one up!
	*
	* @param uri The namespace URI, which may be null.
	*
	* @return The prefix if there is one, or null.
	*/
	@:overload public function getIdForNamespace(uri : String) : Int;
	
	/**
	* Override SAX2DTM.startElement()
	*
	* <p>Receive notification of the start of an element.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the start of
	* each element (such as allocating a new tree node or writing
	* output to a file).</p>
	*
	* @param uri The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param qName The qualified name (with prefix), or the
	*        empty string if qualified names are not available.
	* @param attributes The specified or defaulted attributes.
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startElement
	*/
	@:overload public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of the end of an element.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the end of
	* each element (such as finalising a tree node or writing
	* output to a file).</p>
	*
	* @param uri The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param qName The qualified XML 1.0 name (with prefix), or the
	*        empty string if qualified names are not available.
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#endElement
	*/
	@:overload public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Report an XML comment anywhere in the document.
	*
	* <p>This callback will be used for comments inside or outside the
	* document element, including comments in the external DTD
	* subset (if read).</p>
	*
	* @param ch An array holding the characters in the comment.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @throws SAXException The application may raise an exception.
	*/
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of the beginning of the document.
	*
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startDocument
	*/
	@:overload public function startDocument() : Void;
	
	/**
	* Receive notification of the end of the document.
	*
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#endDocument
	*/
	@:overload public function endDocument() : Void;
	
	/**
	* Construct the node map from the node.
	*
	* @param type raw type ID, one of DTM.XXX_NODE.
	* @param expandedTypeID The expended type ID.
	* @param parentIndex The current parent index.
	* @param previousSibling The previous sibling index.
	* @param dataOrPrefix index into m_data table, or string handle.
	* @param canHaveFirstChild true if the node can have a first child, false
	*                          if it is atomic.
	*
	* @return The index identity of the node that was added.
	*/
	@:overload @:final private function addNode(type : Int, expandedTypeID : Int, parentIndex : Int, previousSibling : Int, dataOrPrefix : Int, canHaveFirstChild : Bool) : Int;
	
	/**
	* Check whether accumulated text should be stripped; if not,
	* append the appropriate flavor of text/cdata node.
	*/
	@:overload @:final private function charactersFlush() : Void;
	
	/**
	* Override the processingInstruction() interface in SAX2DTM2.
	* <p>
	* %OPT% This one is different from SAX2DTM.processingInstruction()
	* in that we do not use extended types for PI nodes. The name of
	* the PI is saved in the DTMStringPool.
	*
	* Receive notification of a processing instruction.
	*
	* @param target The processing instruction target.
	* @param data The processing instruction data, or null if
	*             none is supplied.
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#processingInstruction
	*/
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* The optimized version of DTMDefaultBase.getFirstAttribute().
	* <p>
	* Given a node handle, get the index of the node's first attribute.
	*
	* @param nodeHandle int Handle of the node.
	* @return Handle of first attribute, or DTM.NULL to indicate none exists.
	*/
	@:overload @:final override public function getFirstAttribute(nodeHandle : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase.getFirstAttributeIdentity(int).
	* <p>
	* Given a node identity, get the index of the node's first attribute.
	*
	* @param identity int identity of the node.
	* @return Identity of first attribute, or DTM.NULL to indicate none exists.
	*/
	@:overload override private function getFirstAttributeIdentity(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase.getNextAttributeIdentity(int).
	* <p>
	* Given a node identity for an attribute, advance to the next attribute.
	*
	* @param identity int identity of the attribute node.  This
	* <strong>must</strong> be an attribute node.
	*
	* @return int DTM node-identity of the resolved attr,
	* or DTM.NULL to indicate none exists.
	*
	*/
	@:overload override private function getNextAttributeIdentity(identity : Int) : Int;
	
	/**
	* The optimized version of DTMDefaultBase.getTypedAttribute(int, int).
	* <p>
	* Given a node handle and an expanded type ID, get the index of the node's
	* attribute of that type, if any.
	*
	* @param nodeHandle int Handle of the node.
	* @param attType int expanded type ID of the required attribute.
	* @return Handle of attribute of the required type, or DTM.NULL to indicate
	* none exists.
	*/
	@:overload @:final override private function getTypedAttribute(nodeHandle : Int, attType : Int) : Int;
	
	/**
	* Override SAX2DTM.getLocalName() in SAX2DTM2.
	* <p>Processing for PIs is different.
	*
	* Given a node handle, return its XPath- style localname. (As defined in
	* Namespaces, this is the portion of the name after any colon character).
	*
	* @param nodeHandle the id of the node.
	* @return String Local name of this node.
	*/
	@:overload override public function getLocalName(nodeHandle : Int) : String;
	
	/**
	* The optimized version of SAX2DTM.getNodeNameX().
	* <p>
	* Given a node handle, return the XPath node name. This should be the name
	* as described by the XPath data model, NOT the DOM- style name.
	*
	* @param nodeHandle the id of the node.
	* @return String Name of this node, which may be an empty string.
	*/
	@:overload @:final override public function getNodeNameX(nodeHandle : Int) : String;
	
	/**
	* The optimized version of SAX2DTM.getNodeName().
	* <p>
	* Given a node handle, return its DOM-style node name. This will include
	* names such as #text or #document.
	*
	* @param nodeHandle the id of the node.
	* @return String Name of this node, which may be an empty string.
	* %REVIEW% Document when empty string is possible...
	* %REVIEW-COMMENT% It should never be empty, should it?
	*/
	@:overload override public function getNodeName(nodeHandle : Int) : String;
	
	/**
	* Override SAX2DTM.getStringValue(int)
	* <p>
	* This method is only used by Xalan-J Interpretive. It is not used by XSLTC.
	* <p>
	* If the caller supplies an XMLStringFactory, the getStringValue() interface
	* in SAX2DTM will be called. Otherwise just calls getStringValueX() and
	* wraps the returned String in an XMLString.
	*
	* Get the string-value of a node as a String object
	* (see http://www.w3.org/TR/xpath#data-model
	* for the definition of a node's string-value).
	*
	* @param nodeHandle The node ID.
	*
	* @return A string object that represents the string-value of the given node.
	*/
	@:overload override public function getStringValue(nodeHandle : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* The optimized version of SAX2DTM.getStringValue(int).
	* <p>
	* %OPT% This is one of the most often used interfaces. Performance is
	* critical here. This one is different from SAX2DTM.getStringValue(int) in
	* that it returns a String instead of a XMLString.
	*
	* Get the string- value of a node as a String object (see http: //www. w3.
	* org/TR/xpath#data- model for the definition of a node's string- value).
	*
	* @param nodeHandle The node ID.
	*
	* @return A string object that represents the string-value of the given node.
	*/
	@:overload @:final public function getStringValueX(nodeHandle : Int) : String;
	
	/**
	* Returns the string value of the entire tree
	*/
	@:overload public function getStringValue() : String;
	
	/**
	* The optimized version of SAX2DTM.dispatchCharactersEvents(int, ContentHandler, boolean).
	* <p>
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
	* @throws SAXException
	*/
	@:overload @:final override public function dispatchCharactersEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler, normalize : Bool) : Void;
	
	/**
	* Given a node handle, return its node value. This is mostly
	* as defined by the DOM, but may ignore some conveniences.
	* <p>
	*
	* @param nodeHandle The node id.
	* @return String Value of this node, or null if not
	* meaningful for this node type.
	*/
	@:overload override public function getNodeValue(nodeHandle : Int) : String;
	
	/**
	* Copy the String value of a Text node to a SerializationHandler
	*/
	@:overload @:final private function copyTextNode(nodeID : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Copy an Element node to a SerializationHandler.
	*
	* @param nodeID The node identity
	* @param exptype The expanded type of the Element node
	* @param handler The SerializationHandler
	* @return The qualified name of the Element node.
	*/
	@:overload @:final private function copyElement(nodeID : Int, exptype : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : String;
	
	/**
	* Copy  namespace nodes.
	*
	* @param nodeID The Element node identity
	* @param handler The SerializationHandler
	* @param inScope  true if all namespaces in scope should be copied,
	*  false if only the namespace declarations should be copied.
	*/
	@:overload @:final private function copyNS(nodeID : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler, inScope : Bool) : Void;
	
	/**
	* Return the next namespace node following the given base node.
	*
	* @baseID The node identity of the base node, which can be an
	* element, attribute or namespace node.
	* @return The namespace node immediately following the base node.
	*/
	@:overload @:final private function getNextNamespaceNode2(baseID : Int) : Int;
	
	/**
	* Copy  attribute nodes from an element .
	*
	* @param nodeID The Element node identity
	* @param handler The SerializationHandler
	*/
	@:overload @:final private function copyAttributes(nodeID : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Copy an Attribute node to a SerializationHandler
	*
	* @param nodeID The node identity
	* @param exptype The expanded type of the Element node
	* @param handler The SerializationHandler
	*/
	@:overload @:final private function copyAttribute(nodeID : Int, exptype : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	
}
/**
* Iterator that returns all immediate children of a given node
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$ChildrenIterator') extern class SAX2DTM2_ChildrenIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Setting start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	* <p>
	* If the iterator is not restartable, this has no effect.
	* %REVIEW% Should it return/throw something in that case,
	* or set current node to END, to indicate request-not-honored?
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END if no more
	* are available.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns the parent of a given node. Note that
* this delivers only a single node; if you want all the ancestors,
* see AncestorIterator.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$ParentIterator') extern class SAX2DTM2_ParentIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Set the node type of the parent that we're looking for.
	* Note that this does _not_ mean "find the nearest ancestor of
	* this type", but "yield the parent if it is of this type".
	*
	*
	* @param type extended type ID.
	*
	* @return ParentIterator configured with the type filter set.
	*/
	@:overload public function setNodeType(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration. In this case, we return
	* only the immediate parent, _if_ it matches the requested nodeType.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns children of a given type for a given node.
* The functionality chould be achieved by putting a filter on top
* of a basic child iterator, but a specialised iterator is used
* for efficiency (both speed and size of translet).
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedChildrenIterator') extern class SAX2DTM2_TypedChildrenIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Constructor TypedChildrenIterator
	*
	*
	* @param nodeType The extended type ID being requested.
	*/
	@:overload public function new(nodeType : Int) : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	/**
	* Return the node at the given position.
	*/
	@:overload override public function getNodeByPosition(position : Int) : Int;
	
	
}
/**
* Iterator that returns the namespace nodes as defined by the XPath data model
* for a given node, filtered by extended type ID.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedRootIterator') extern class SAX2DTM2_TypedRootIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_RootIterator
{
	/**
	* Constructor TypedRootIterator
	*
	* @param nodeType The extended type ID being requested.
	*/
	@:overload public function new(nodeType : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns all siblings of a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$FollowingSiblingIterator') extern class SAX2DTM2_FollowingSiblingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns all following siblings of a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedFollowingSiblingIterator') extern class SAX2DTM2_TypedFollowingSiblingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_FollowingSiblingIterator
{
	/**
	* Constructor TypedFollowingSiblingIterator
	*
	*
	* @param type The extended type ID being requested.
	*/
	@:overload public function new(type : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns attribute nodes (of what nodes?)
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$AttributeIterator') extern class SAX2DTM2_AttributeIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns attribute nodes of a given type
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedAttributeIterator') extern class SAX2DTM2_TypedAttributeIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Constructor TypedAttributeIterator
	*
	*
	* @param nodeType The extended type ID that is requested.
	*/
	@:overload public function new(nodeType : Int) : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns preceding siblings of a given node
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$PrecedingSiblingIterator') extern class SAX2DTM2_PrecedingSiblingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* The node identity of _startNode for this iterator
	*/
	private var _startNodeID : Int;
	
	/**
	* True if this iterator has a reversed axis.
	*
	* @return true.
	*/
	@:overload override public function isReverse() : Bool;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns preceding siblings of a given type for
* a given node
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedPrecedingSiblingIterator') extern class SAX2DTM2_TypedPrecedingSiblingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_PrecedingSiblingIterator
{
	/**
	* Constructor TypedPrecedingSiblingIterator
	*
	*
	* @param type The extended type ID being requested.
	*/
	@:overload public function new(type : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	/**
	* Return the index of the last node in this iterator.
	*/
	@:overload override public function getLast() : Int;
	
	
}
/**
* Iterator that returns preceding nodes of a given node.
* This includes the node set {root+1, start-1}, but excludes
* all ancestors, attributes, and namespace nodes.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$PrecedingIterator') extern class SAX2DTM2_PrecedingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* The stack of start node + ancestors up to the root of the tree,
	*  which we must avoid.
	*/
	private var _stack : java.NativeArray<Int>;
	
	/** (not sure yet... -sb) */
	private var _sp : Int;
	
	private var _markedsp : Int;
	
	/**
	* True if this iterator has a reversed axis.
	*
	* @return true since this iterator is a reversed axis.
	*/
	@:overload override public function isReverse() : Bool;
	
	/**
	* Returns a deep copy of this iterator.   The cloned iterator is not reset.
	*
	* @return a deep copy of this iterator.
	*/
	@:overload override public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	/**
	* Resets the iterator to the last start node.
	*
	* @return A DTMAxisIterator, which may or may not be the same as this
	*         iterator.
	*/
	@:overload override public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function setMark() : Void;
	
	@:overload override public function gotoMark() : Void;
	
	
}
/**
* Iterator that returns preceding nodes of agiven type for a
* given node. This includes the node set {root+1, start-1}, but
* excludes all ancestors.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedPrecedingIterator') extern class SAX2DTM2_TypedPrecedingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_PrecedingIterator
{
	/**
	* Constructor TypedPrecedingIterator
	*
	*
	* @param type The extended type ID being requested.
	*/
	@:overload public function new(type : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns following nodes of for a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$FollowingIterator') extern class SAX2DTM2_FollowingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	@:overload public function new() : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns following nodes of a given type for a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedFollowingIterator') extern class SAX2DTM2_TypedFollowingIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_FollowingIterator
{
	/**
	* Constructor TypedFollowingIterator
	*
	*
	* @param type The extended type ID being requested.
	*/
	@:overload public function new(type : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns the ancestors of a given node in document
* order.  (NOTE!  This was changed from the XSLTC code!)
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$AncestorIterator') extern class SAX2DTM2_AncestorIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Get start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @return The root node of the iteration.
	*/
	@:overload override public function getStartNode() : Int;
	
	/**
	* True if this iterator has a reversed axis.
	*
	* @return true since this iterator is a reversed axis.
	*/
	@:overload @:final override public function isReverse() : Bool;
	
	/**
	* Returns a deep copy of this iterator.  The cloned iterator is not reset.
	*
	* @return a deep copy of this iterator.
	*/
	@:overload override public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Resets the iterator to the last start node.
	*
	* @return A DTMAxisIterator, which may or may not be the same as this
	*         iterator.
	*/
	@:overload override public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	@:overload override public function setMark() : Void;
	
	@:overload override public function gotoMark() : Void;
	
	
}
/**
* Typed iterator that returns the ancestors of a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedAncestorIterator') extern class SAX2DTM2_TypedAncestorIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_AncestorIterator
{
	/**
	* Constructor TypedAncestorIterator
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
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Return the node at the given position.
	*/
	@:overload override public function getNodeByPosition(position : Int) : Int;
	
	/**
	* Returns the position of the last node within the iteration, as
	* defined by XPath.
	*/
	@:overload override public function getLast() : Int;
	
	
}
/**
* Iterator that returns the descendants of a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$DescendantIterator') extern class SAX2DTM2_DescendantIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Tell if this node identity is a descendant.  Assumes that
	* the node info for the element has already been obtained.
	*
	* This one-sided test works only if the parent has been
	* previously tested and is known to be a descendent. It fails if
	* the parent is the _startNode's next sibling, or indeed any node
	* that follows _startNode in document order.  That may suffice
	* for this iterator, but it's not really an isDescendent() test.
	* %REVIEW% rename?
	*
	* @param identity The index number of the node in question.
	* @return true if the index is a descendant of _startNode.
	*/
	@:overload @:final private function isDescendant(identity : Int) : Bool;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	/**
	* Reset.
	*
	*/
	@:overload override public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	
}
/**
* Typed iterator that returns the descendants of a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedDescendantIterator') extern class SAX2DTM2_TypedDescendantIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_DescendantIterator
{
	/**
	* Constructor TypedDescendantIterator
	*
	*
	* @param nodeType Extended type ID being requested.
	*/
	@:overload public function new(nodeType : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns a given node only if it is of a given type.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$sax2dtm$SAX2DTM2$TypedSingletonIterator') extern class SAX2DTM2_TypedSingletonIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.DTMDefaultBaseIterators_SingletonIterator
{
	/**
	* Constructor TypedSingletonIterator
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
	@:overload override public function next() : Int;
	
	
}
