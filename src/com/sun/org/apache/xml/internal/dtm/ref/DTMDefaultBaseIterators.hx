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
* $Id: DTMDefaultBaseIterators.java,v 1.2.4.1 2005/09/15 08:15:00 suresh_emailid Exp $
*/
extern class DTMDefaultBaseIterators extends com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseTraversers
{
	/**
	* Construct a DTMDefaultBaseTraversers object from a DOM node.
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
	@:overload public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool) : Void;
	
	/**
	* Construct a DTMDefaultBaseTraversers object from a DOM node.
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
	@:overload public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool, blocksize : Int, usePrevsib : Bool, newNameTable : Bool) : Void;
	
	/**
	* Get an iterator that can navigate over an XPath Axis, predicated by
	* the extended type ID.
	* Returns an iterator that must be initialized
	* with a start node (using iterator.setStartNode()).
	*
	* @param axis One of Axes.ANCESTORORSELF, etc.
	* @param type An extended type ID.
	*
	* @return A DTMAxisIterator, or null if the given axis isn't supported.
	*/
	@:overload override public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* This is a shortcut to the iterators that implement the
	* XPath axes.
	* Returns a bare-bones iterator that must be initialized
	* with a start node (using iterator.setStartNode()).
	*
	* @param axis One of Axes.ANCESTORORSELF, etc.
	*
	* @return A DTMAxisIterator, or null if the given axis isn't supported.
	*/
	@:overload override public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	
}
/**
* Abstract superclass defining behaviors shared by all DTMDefault's
* internal implementations of DTMAxisIterator. Subclass this (and
* override, if necessary) to implement the specifics of an
* individual axis iterator.
*
* Currently there isn't a lot here
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$InternalAxisIteratorBase') extern class DTMDefaultBaseIterators_InternalAxisIteratorBase extends com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase
{
	/**
	* Current iteration location. Usually this is the last location
	* returned (starting point for the next() search); for single-node
	* iterators it may instead be initialized to point to that single node.
	*/
	private var _currentNode : Int;
	
	/**
	* Remembers the current node for the next call to gotoMark().
	*
	* %REVIEW% Should this save _position too?
	*/
	@:overload override public function setMark() : Void;
	
	/**
	* Restores the current node remembered by setMark().
	*
	* %REVEIW% Should this restore _position too?
	*/
	@:overload override public function gotoMark() : Void;
	
	
}
/**
* Iterator that returns all immediate children of a given node
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$ChildrenIterator') extern class DTMDefaultBaseIterators_ChildrenIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Setting start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$ParentIterator') extern class DTMDefaultBaseIterators_ParentIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedChildrenIterator') extern class DTMDefaultBaseIterators_TypedChildrenIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
	
	
}
/**
* Iterator that returns children within a given namespace for a
* given node. The functionality chould be achieved by putting a
* filter on top of a basic child iterator, but a specialised
* iterator is used for efficiency (both speed and size of translet).
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$NamespaceChildrenIterator') extern class DTMDefaultBaseIterators_NamespaceChildrenIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Iterator that returns the namespace nodes as defined by the XPath data model
* for a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$NamespaceIterator') extern class DTMDefaultBaseIterators_NamespaceIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Constructor NamespaceAttributeIterator
	*/
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
* Iterator that returns the namespace nodes as defined by the XPath data model
* for a given node, filtered by extended type ID.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedNamespaceIterator') extern class DTMDefaultBaseIterators_TypedNamespaceIterator extends DTMDefaultBaseIterators_NamespaceIterator
{
	/**
	* Constructor TypedNamespaceIterator
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
/**
* Iterator that returns the the root node as defined by the XPath data model
* for a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$RootIterator') extern class DTMDefaultBaseIterators_RootIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Constructor RootIterator
	*/
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
* Iterator that returns the namespace nodes as defined by the XPath data model
* for a given node, filtered by extended type ID.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedRootIterator') extern class DTMDefaultBaseIterators_TypedRootIterator extends DTMDefaultBaseIterators_RootIterator
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
* Iterator that returns attributes within a given namespace for a node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$NamespaceAttributeIterator') extern class DTMDefaultBaseIterators_NamespaceAttributeIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$FollowingSiblingIterator') extern class DTMDefaultBaseIterators_FollowingSiblingIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedFollowingSiblingIterator') extern class DTMDefaultBaseIterators_TypedFollowingSiblingIterator extends DTMDefaultBaseIterators_FollowingSiblingIterator
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$AttributeIterator') extern class DTMDefaultBaseIterators_AttributeIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedAttributeIterator') extern class DTMDefaultBaseIterators_TypedAttributeIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$PrecedingSiblingIterator') extern class DTMDefaultBaseIterators_PrecedingSiblingIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedPrecedingSiblingIterator') extern class DTMDefaultBaseIterators_TypedPrecedingSiblingIterator extends DTMDefaultBaseIterators_PrecedingSiblingIterator
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
	
	
}
/**
* Iterator that returns preceding nodes of a given node.
* This includes the node set {root+1, start-1}, but excludes
* all ancestors, attributes, and namespace nodes.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$PrecedingIterator') extern class DTMDefaultBaseIterators_PrecedingIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedPrecedingIterator') extern class DTMDefaultBaseIterators_TypedPrecedingIterator extends DTMDefaultBaseIterators_PrecedingIterator
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$FollowingIterator') extern class DTMDefaultBaseIterators_FollowingIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedFollowingIterator') extern class DTMDefaultBaseIterators_TypedFollowingIterator extends DTMDefaultBaseIterators_FollowingIterator
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$AncestorIterator') extern class DTMDefaultBaseIterators_AncestorIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedAncestorIterator') extern class DTMDefaultBaseIterators_TypedAncestorIterator extends DTMDefaultBaseIterators_AncestorIterator
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
	
	
}
/**
* Iterator that returns the descendants of a given node.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$DescendantIterator') extern class DTMDefaultBaseIterators_DescendantIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
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
	@:overload private function isDescendant(identity : Int) : Bool;
	
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
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedDescendantIterator') extern class DTMDefaultBaseIterators_TypedDescendantIterator extends DTMDefaultBaseIterators_DescendantIterator
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
* Iterator that returns the descendants of a given node.
* I'm not exactly clear about this one... -sb
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$NthDescendantIterator') extern class DTMDefaultBaseIterators_NthDescendantIterator extends DTMDefaultBaseIterators_DescendantIterator
{
	/**
	* Constructor NthDescendantIterator
	*
	*
	* @param pos The nth position being requested.
	*/
	@:overload public function new(pos : Int) : Void;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload override public function next() : Int;
	
	
}
/**
* Class SingletonIterator.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$SingletonIterator') extern class DTMDefaultBaseIterators_SingletonIterator extends DTMDefaultBaseIterators_InternalAxisIteratorBase
{
	/**
	* Constructor SingletonIterator
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor SingletonIterator
	*
	*
	* @param node The node handle to return.
	*/
	@:overload public function new(node : Int) : Void;
	
	/**
	* Constructor SingletonIterator
	*
	*
	* @param node the node handle to return.
	* @param constant (Not sure what this is yet.  -sb)
	*/
	@:overload public function new(node : Int, constant : Bool) : Void;
	
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
	
	
}
/**
* Iterator that returns a given node only if it is of a given type.
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$DTMDefaultBaseIterators$TypedSingletonIterator') extern class DTMDefaultBaseIterators_TypedSingletonIterator extends DTMDefaultBaseIterators_SingletonIterator
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
