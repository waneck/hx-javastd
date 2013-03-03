package com.sun.org.apache.xpath.internal;
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
* $Id: NodeSetDTM.java,v 1.2.4.2 2005/09/14 20:30:06 jeffsuttor Exp $
*/
extern class NodeSetDTM extends com.sun.org.apache.xml.internal.utils.NodeVector implements com.sun.org.apache.xml.internal.dtm.DTMIterator implements java.lang.Cloneable
{
	/**
	* Create an empty nodelist.
	*/
	@:overload @:public public function new(dtmManager : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/**
	* Create an empty, using the given block size.
	*
	* @param blocksize Size of blocks to allocate
	* @param dummy pass zero for right now...
	*/
	@:overload @:public public function new(blocksize : Int, dummy : Int, dtmManager : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/**
	* Create a NodeSetDTM, and copy the members of the
	* given NodeSetDTM into it.
	*
	* @param nodelist Set of Nodes to be made members of the new set.
	*/
	@:overload @:public public function new(nodelist : com.sun.org.apache.xpath.internal.NodeSetDTM) : Void;
	
	/**
	* Create a NodeSetDTM, and copy the members of the
	* given DTMIterator into it.
	*
	* @param ni Iterator which yields Nodes to be made members of the new set.
	*/
	@:overload @:public public function new(ni : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	* Create a NodeSetDTM, and copy the members of the
	* given DTMIterator into it.
	*
	* @param iterator Iterator which yields Nodes to be made members of the new set.
	*/
	@:overload @:public public function new(iterator : org.w3c.dom.traversal.NodeIterator, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Create a NodeSetDTM, and copy the members of the
	* given DTMIterator into it.
	*
	*/
	@:overload @:public public function new(nodeList : org.w3c.dom.NodeList, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Create a NodeSetDTM which contains the given Node.
	*
	* @param node Single node to be added to the new set.
	*/
	@:overload @:public public function new(node : Int, dtmManager : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/**
	* Set the environment in which this iterator operates, which should provide:
	* a node (the context node... same value as "root" defined below)
	* a pair of non-zero positive integers (the context position and the context size)
	* a set of variable bindings
	* a function library
	* the set of namespace declarations in scope for the expression.
	*
	* <p>At this time the exact implementation of this environment is application
	* dependent.  Probably a proper interface will be created fairly soon.</p>
	*
	* @param environment The environment object.
	*/
	@:overload @:public public function setEnvironment(environment : Dynamic) : Void;
	
	/**
	* @return The root node of the Iterator, as specified when it was created.
	* For non-Iterator NodeSetDTMs, this will be null.
	*/
	@:overload @:public public function getRoot() : Int;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload @:public public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Clone this NodeSetDTM.
	* At this time, we only expect this to be used with LocPathIterators;
	* it may not work with other kinds of NodeSetDTMs.
	*
	* @return a new NodeSetDTM of the same type, having the same state...
	* though unless overridden in the subclasses, it may not copy all
	* the state information.
	*
	* @throws CloneNotSupportedException if this subclass of NodeSetDTM
	* does not support the clone() operation.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Get a cloned Iterator, and reset its state to the beginning of the
	* iteration.
	*
	* @return a new NodeSetDTM of the same type, having the same state...
	* except that the reset() operation has been called.
	*
	* @throws CloneNotSupportedException if this subclass of NodeSetDTM
	* does not support the clone() operation.
	*/
	@:overload @:public public function cloneWithReset() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Reset the iterator. May have no effect on non-iterator Nodesets.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	*  This attribute determines which node types are presented via the
	* iterator. The available set of constants is defined in the
	* <code>DTMFilter</code> interface. For NodeSetDTMs, the mask has been
	* hardcoded to show all nodes except EntityReference nodes, which have
	* no equivalent in the XPath data model.
	*
	* @return integer used as a bit-array, containing flags defined in
	* the DOM's DTMFilter class. The value will be
	* <code>SHOW_ALL & ~SHOW_ENTITY_REFERENCE</code>, meaning that
	* only entity references are suppressed.
	*/
	@:overload @:public public function getWhatToShow() : Int;
	
	/**
	* The filter object used to screen nodes. Filters are applied to
	* further reduce (and restructure) the DTMIterator's view of the
	* document. In our case, we will be using hardcoded filters built
	* into our iterators... but getFilter() is part of the DOM's
	* DTMIterator interface, so we have to support it.
	*
	* @return null, which is slightly misleading. True, there is no
	* user-written filter object, but in fact we are doing some very
	* sophisticated custom filtering. A DOM purist might suggest
	* returning a placeholder object just to indicate that this is
	* not going to return all nodes selected by whatToShow.
	*/
	@:overload @:public public function getFilter() : com.sun.org.apache.xml.internal.dtm.DTMFilter;
	
	/**
	*  The value of this flag determines whether the children of entity
	* reference nodes are visible to the iterator. If false, they will be
	* skipped over.
	* <br> To produce a view of the document that has entity references
	* expanded and does not expose the entity reference node itself, use the
	* whatToShow flags to hide the entity reference node and set
	* expandEntityReferences to true when creating the iterator. To produce
	* a view of the document that has entity reference nodes but no entity
	* expansion, use the whatToShow flags to show the entity reference node
	* and set expandEntityReferences to false.
	*
	* @return true for all iterators based on NodeSetDTM, meaning that the
	* contents of EntityRefrence nodes may be returned (though whatToShow
	* says that the EntityReferences themselves are not shown.)
	*/
	@:overload @:public public function getExpandEntityReferences() : Bool;
	
	/**
	* Get an instance of a DTM that "owns" a node handle.  Since a node
	* iterator may be passed without a DTMManager, this allows the
	* caller to easily get the DTM using just the iterator.
	*
	* @param nodeHandle the nodeHandle.
	*
	* @return a non-null DTM reference.
	*/
	@:overload @:public public function getDTM(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get an instance of the DTMManager.  Since a node
	* iterator may be passed without a DTMManager, this allows the
	* caller to easily get the DTMManager using just the iterator.
	*
	* @return a non-null DTMManager reference.
	*/
	@:overload @:public public function getDTMManager() : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a DTMIterator is created, the first call
	* to nextNode() returns the first node in the set.
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>DTM.NULL</code> if there are no more members in that set.
	* @throws DOMException
	*    INVALID_STATE_ERR: Raised if this method is called after the
	*   <code>detach</code> method was invoked.
	*/
	@:overload @:public public function nextNode() : Int;
	
	/**
	*  Returns the previous node in the set and moves the position of the
	* iterator backwards in the set.
	* @return  The previous <code>Node</code> in the set being iterated over,
	*   or<code>DTM.NULL</code> if there are no more members in that set.
	* @throws DOMException
	*    INVALID_STATE_ERR: Raised if this method is called after the
	*   <code>detach</code> method was invoked.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a cached type, and hence doesn't know what the previous node was.
	*/
	@:overload @:public public function previousNode() : Int;
	
	/**
	* Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	* <p>
	* This operation is a no-op in NodeSetDTM, and will not cause
	* INVALID_STATE_ERR to be raised by later operations.
	* </p>
	*/
	@:overload @:public public function detach() : Void;
	
	/**
	* Specify if it's OK for detach to release the iterator for reuse.
	*
	* @param allowRelease true if it is OK for detach to release this iterator
	* for pooling.
	*/
	@:overload @:public public function allowDetachToRelease(allowRelease : Bool) : Void;
	
	/**
	* Tells if this NodeSetDTM is "fresh", in other words, if
	* the first nextNode() that is called will return the
	* first node in the set.
	*
	* @return true if nextNode() would return the first node in the set,
	* false if it would return a later one.
	*/
	@:overload @:public public function isFresh() : Bool;
	
	/**
	* If an index is requested, NodeSetDTM will call this method
	* to run the iterator to the index.  By default this sets
	* m_next to the index.  If the index argument is -1, this
	* signals that the iterator should be run to the end.
	*
	* @param index Position to advance (or retreat) to, with
	* 0 requesting the reset ("fresh") position and -1 (or indeed
	* any out-of-bounds value) requesting the final position.
	* @throws RuntimeException thrown if this NodeSetDTM is not
	* one of the types which supports indexing/counting.
	*/
	@:overload @:public public function runTo(index : Int) : Void;
	
	/**
	* Returns the <code>index</code>th item in the collection. If
	* <code>index</code> is greater than or equal to the number of nodes in
	* the list, this returns <code>null</code>.
	*
	* TODO: What happens if index is out of range?
	*
	* @param index Index into the collection.
	* @return The node at the <code>index</code>th position in the
	*   <code>NodeList</code>, or <code>null</code> if that is not a valid
	*   index.
	*/
	@:overload @:public public function item(index : Int) : Int;
	
	/**
	* The number of nodes in the list. The range of valid child node indices is
	* 0 to <code>length-1</code> inclusive. Note that this operation requires
	* finding all the matching nodes, which may defeat attempts to defer
	* that work.
	*
	* @return integer indicating how many nodes are represented by this list.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Add a node to the NodeSetDTM. Not all types of NodeSetDTMs support this
	* operation
	*
	* @param n Node to be added
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function addNode(n : Int) : Void;
	
	/**
	* Insert a node at a given position.
	*
	* @param n Node to be added
	* @param pos Offset at which the node is to be inserted,
	* with 0 being the first position.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function insertNode(n : Int, pos : Int) : Void;
	
	/**
	* Remove a node.
	*
	* @param n Node to be added
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function removeNode(n : Int) : Void;
	
	/**
	* Copy NodeList members into this nodelist, adding in
	* document order.  Null references are not added.
	*
	* @param iterator DTMIterator which yields the nodes to be added.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodes(iterator : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	* Copy NodeList members into this nodelist, adding in
	* document order.  If a node is null, don't add it.
	*
	* @param iterator DTMIterator which yields the nodes to be added.
	* @param support The XPath runtime context.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodesInDocOrder(iterator : com.sun.org.apache.xml.internal.dtm.DTMIterator, support : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Add the node into a vector of nodes where it should occur in
	* document order.
	* @param node The node to be added.
	* @param test true if we should test for doc order
	* @param support The XPath runtime context.
	* @return insertIndex.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodeInDocOrder(node : Int, test : Bool, support : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Add the node into a vector of nodes where it should occur in
	* document order.
	* @param node The node to be added.
	* @param support The XPath runtime context.
	*
	* @return The index where it was inserted.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodeInDocOrder(node : Int, support : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Get the length of the list.
	*
	* @return The size of this node set.
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Append a Node onto the vector.
	*
	* @param value The node to be added.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public override public function addElement(value : Int) : Void;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	*
	* @param value The node to be inserted.
	* @param at The index where the insert should occur.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public override public function insertElementAt(value : Int, at : Int) : Void;
	
	/**
	* Append the nodes to the list.
	*
	* @param nodes The nodes to be appended to this node set.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public override public function appendNodes(nodes : com.sun.org.apache.xml.internal.utils.NodeVector) : Void;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public override public function removeAllElements() : Void;
	
	/**
	* Removes the first occurrence of the argument from this vector.
	* If the object is found in this vector, each component in the vector
	* with an index greater or equal to the object's index is shifted
	* downward to have an index one smaller than the value it had
	* previously.
	*
	* @param s The node to be removed.
	*
	* @return True if the node was successfully removed
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public override public function removeElement(s : Int) : Bool;
	
	/**
	* Deletes the component at the specified index. Each component in
	* this vector with an index greater or equal to the specified
	* index is shifted downward to have an index one smaller than
	* the value it had previously.
	*
	* @param i The index of the node to be removed.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public override public function removeElementAt(i : Int) : Void;
	
	/**
	* Sets the component at the specified index of this vector to be the
	* specified object. The previous component at that position is discarded.
	*
	* The index must be a value greater than or equal to 0 and less
	* than the current size of the vector.
	*
	* @param node  The node to be set.
	* @param index The index of the node to be replaced.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public override public function setElementAt(node : Int, index : Int) : Void;
	
	/**
	* Same as setElementAt.
	*
	* @param node  The node to be set.
	* @param index The index of the node to be replaced.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a mutable type.
	*/
	@:overload @:public public function setItem(node : Int, index : Int) : Void;
	
	/**
	* Get the nth element.
	*
	* @param i The index of the requested node.
	*
	* @return Node at specified index.
	*/
	@:overload @:public override public function elementAt(i : Int) : Int;
	
	/**
	* Tell if the table contains the given node.
	*
	* @param s Node to look for
	*
	* @return True if the given node was found.
	*/
	@:overload @:public override public function contains(s : Int) : Bool;
	
	/**
	* Searches for the first occurence of the given argument,
	* beginning the search at index, and testing for equality
	* using the equals method.
	*
	* @param elem Node to look for
	* @param index Index of where to start the search
	* @return the index of the first occurrence of the object
	* argument in this vector at position index or later in the
	* vector; returns -1 if the object is not found.
	*/
	@:overload @:public override public function indexOf(elem : Int, index : Int) : Int;
	
	/**
	* Searches for the first occurence of the given argument,
	* beginning the search at index, and testing for equality
	* using the equals method.
	*
	* @param elem Node to look for
	* @return the index of the first occurrence of the object
	* argument in this vector at position index or later in the
	* vector; returns -1 if the object is not found.
	*/
	@:overload @:public override public function indexOf(elem : Int) : Int;
	
	/** If this node is being used as an iterator, the next index that nextNode()
	*  will return.  */
	@:transient @:protected private var m_next : Int;
	
	/**
	* Get the current position, which is one less than
	* the next nextNode() call will retrieve.  i.e. if
	* you call getCurrentPos() and the return is 0, the next
	* fetch will take place at index 1.
	*
	* @return The the current position index.
	*/
	@:overload @:public public function getCurrentPos() : Int;
	
	/**
	* Set the current position in the node set.
	* @param i Must be a valid index.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a cached type, and thus doesn't permit indexed access.
	*/
	@:overload @:public public function setCurrentPos(i : Int) : Void;
	
	/**
	* Return the last fetched node.  Needed to support the UnionPathIterator.
	*
	* @return the last fetched node.
	* @throws RuntimeException thrown if this NodeSetDTM is not of
	* a cached type, and thus doesn't permit indexed access.
	*/
	@:overload @:public public function getCurrentNode() : Int;
	
	/** True if this list can be mutated.  */
	@:transient @:protected private var m_mutable : Bool;
	
	/** True if this list is cached.
	*  @serial  */
	@:transient @:protected private var m_cacheNodes : Bool;
	
	/** The root of the iteration, if available. */
	@:protected private var m_root : Int;
	
	/**
	* Get whether or not this is a cached node set.
	*
	*
	* @return True if this list is cached.
	*/
	@:overload @:public public function getShouldCacheNodes() : Bool;
	
	/**
	* If setShouldCacheNodes(true) is called, then nodes will
	* be cached.  They are not cached by default. This switch must
	* be set before the first call to nextNode is made, to ensure
	* that all nodes are cached.
	*
	* @param b true if this node set should be cached.
	* @throws RuntimeException thrown if an attempt is made to
	* request caching after we've already begun stepping through the
	* nodes in this set.
	*/
	@:overload @:public public function setShouldCacheNodes(b : Bool) : Void;
	
	/**
	* Tells if this iterator can have nodes added to it or set via
	* the <code>setItem(int node, int index)</code> method.
	*
	* @return True if the nodelist can be mutated.
	*/
	@:overload @:public public function isMutable() : Bool;
	
	@:overload @:public public function getLast() : Int;
	
	@:overload @:public public function setLast(last : Int) : Void;
	
	/**
	* Returns true if all the nodes in the iteration well be returned in document
	* order.
	*
	* @return true as a default.
	*/
	@:overload @:public public function isDocOrdered() : Bool;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload @:public public function getAxis() : Int;
	
	
}
