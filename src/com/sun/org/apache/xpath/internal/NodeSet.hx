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
* $Id: NodeSet.java,v 1.2.4.1 2005/09/10 17:39:49 jeffsuttor Exp $
*/
extern class NodeSet implements org.w3c.dom.NodeList implements org.w3c.dom.traversal.NodeIterator implements java.lang.Cloneable implements com.sun.org.apache.xpath.internal.axes.ContextNodeList
{
	/**
	* Create an empty nodelist.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create an empty, using the given block size.
	*
	* @param blocksize Size of blocks to allocate
	*/
	@:overload @:public public function new(blocksize : Int) : Void;
	
	/**
	* Create a NodeSet, and copy the members of the
	* given nodelist into it.
	*
	* @param nodelist List of Nodes to be made members of the new set.
	*/
	@:overload @:public public function new(nodelist : org.w3c.dom.NodeList) : Void;
	
	/**
	* Create a NodeSet, and copy the members of the
	* given NodeSet into it.
	*
	* @param nodelist Set of Nodes to be made members of the new set.
	*/
	@:overload @:public public function new(nodelist : com.sun.org.apache.xpath.internal.NodeSet) : Void;
	
	/**
	* Create a NodeSet, and copy the members of the
	* given NodeIterator into it.
	*
	* @param ni Iterator which yields Nodes to be made members of the new set.
	*/
	@:overload @:public public function new(ni : org.w3c.dom.traversal.NodeIterator) : Void;
	
	/**
	* Create a NodeSet which contains the given Node.
	*
	* @param node Single node to be added to the new set.
	*/
	@:overload @:public public function new(node : org.w3c.dom.Node) : Void;
	
	/**
	* @return The root node of the Iterator, as specified when it was created.
	* For non-Iterator NodeSets, this will be null.
	*/
	@:overload @:public public function getRoot() : org.w3c.dom.Node;
	
	/**
	* Get a cloned Iterator, and reset its state to the beginning of the
	* iteration.
	*
	* @return a new NodeSet of the same type, having the same state...
	* except that the reset() operation has been called.
	*
	* @throws CloneNotSupportedException if this subclass of NodeSet
	* does not support the clone() operation.
	*/
	@:overload @:public public function cloneWithReset() : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Reset the iterator. May have no effect on non-iterator Nodesets.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	*  This attribute determines which node types are presented via the
	* iterator. The available set of constants is defined in the
	* <code>NodeFilter</code> interface. For NodeSets, the mask has been
	* hardcoded to show all nodes except EntityReference nodes, which have
	* no equivalent in the XPath data model.
	*
	* @return integer used as a bit-array, containing flags defined in
	* the DOM's NodeFilter class. The value will be
	* <code>SHOW_ALL & ~SHOW_ENTITY_REFERENCE</code>, meaning that
	* only entity references are suppressed.
	*/
	@:overload @:public public function getWhatToShow() : Int;
	
	/**
	* The filter object used to screen nodes. Filters are applied to
	* further reduce (and restructure) the NodeIterator's view of the
	* document. In our case, we will be using hardcoded filters built
	* into our iterators... but getFilter() is part of the DOM's
	* NodeIterator interface, so we have to support it.
	*
	* @return null, which is slightly misleading. True, there is no
	* user-written filter object, but in fact we are doing some very
	* sophisticated custom filtering. A DOM purist might suggest
	* returning a placeholder object just to indicate that this is
	* not going to return all nodes selected by whatToShow.
	*/
	@:overload @:public public function getFilter() : org.w3c.dom.traversal.NodeFilter;
	
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
	* @return true for all iterators based on NodeSet, meaning that the
	* contents of EntityRefrence nodes may be returned (though whatToShow
	* says that the EntityReferences themselves are not shown.)
	*/
	@:overload @:public public function getExpandEntityReferences() : Bool;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	* @throws DOMException
	*    INVALID_STATE_ERR: Raised if this method is called after the
	*   <code>detach</code> method was invoked.
	*/
	@:overload @:public public function nextNode() : org.w3c.dom.Node;
	
	/**
	*  Returns the previous node in the set and moves the position of the
	* iterator backwards in the set.
	* @return  The previous <code>Node</code> in the set being iterated over,
	*   or<code>null</code> if there are no more members in that set.
	* @throws DOMException
	*    INVALID_STATE_ERR: Raised if this method is called after the
	*   <code>detach</code> method was invoked.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a cached type, and hence doesn't know what the previous node was.
	*/
	@:overload @:public public function previousNode() : org.w3c.dom.Node;
	
	/**
	* Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	* <p>
	* This operation is a no-op in NodeSet, and will not cause
	* INVALID_STATE_ERR to be raised by later operations.
	* </p>
	*/
	@:overload @:public public function detach() : Void;
	
	/**
	* Tells if this NodeSet is "fresh", in other words, if
	* the first nextNode() that is called will return the
	* first node in the set.
	*
	* @return true if nextNode() would return the first node in the set,
	* false if it would return a later one.
	*/
	@:overload @:public public function isFresh() : Bool;
	
	/**
	* If an index is requested, NodeSet will call this method
	* to run the iterator to the index.  By default this sets
	* m_next to the index.  If the index argument is -1, this
	* signals that the iterator should be run to the end.
	*
	* @param index Position to advance (or retreat) to, with
	* 0 requesting the reset ("fresh") position and -1 (or indeed
	* any out-of-bounds value) requesting the final position.
	* @throws RuntimeException thrown if this NodeSet is not
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
	@:overload @:public public function item(index : Int) : org.w3c.dom.Node;
	
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
	* Add a node to the NodeSet. Not all types of NodeSets support this
	* operation
	*
	* @param n Node to be added
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNode(n : org.w3c.dom.Node) : Void;
	
	/**
	* Insert a node at a given position.
	*
	* @param n Node to be added
	* @param pos Offset at which the node is to be inserted,
	* with 0 being the first position.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function insertNode(n : org.w3c.dom.Node, pos : Int) : Void;
	
	/**
	* Remove a node.
	*
	* @param n Node to be added
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function removeNode(n : org.w3c.dom.Node) : Void;
	
	/**
	* Copy NodeList members into this nodelist, adding in
	* document order.  If a node is null, don't add it.
	*
	* @param nodelist List of nodes which should now be referenced by
	* this NodeSet.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodes(nodelist : org.w3c.dom.NodeList) : Void;
	
	/**
	* <p>Copy NodeList members into this nodelist, adding in
	* document order.  Only genuine node references will be copied;
	* nulls appearing in the source NodeSet will
	* not be added to this one. </p>
	*
	* <p> In case you're wondering why this function is needed: NodeSet
	* implements both NodeIterator and NodeList. If this method isn't
	* provided, Java can't decide which of those to use when addNodes()
	* is invoked. Providing the more-explicit match avoids that
	* ambiguity.)</p>
	*
	* @param ns NodeSet whose members should be merged into this NodeSet.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodes(ns : com.sun.org.apache.xpath.internal.NodeSet) : Void;
	
	/**
	* Copy NodeList members into this nodelist, adding in
	* document order.  Null references are not added.
	*
	* @param iterator NodeIterator which yields the nodes to be added.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodes(iterator : org.w3c.dom.traversal.NodeIterator) : Void;
	
	/**
	* Copy NodeList members into this nodelist, adding in
	* document order.  If a node is null, don't add it.
	*
	* @param nodelist List of nodes to be added
	* @param support The XPath runtime context.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodesInDocOrder(nodelist : org.w3c.dom.NodeList, support : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Copy NodeList members into this nodelist, adding in
	* document order.  If a node is null, don't add it.
	*
	* @param iterator NodeIterator which yields the nodes to be added.
	* @param support The XPath runtime context.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodesInDocOrder(iterator : org.w3c.dom.traversal.NodeIterator, support : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Add the node into a vector of nodes where it should occur in
	* document order.
	* @param node The node to be added.
	* @param test true if we should test for doc order
	* @param support The XPath runtime context.
	* @return insertIndex.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodeInDocOrder(node : org.w3c.dom.Node, test : Bool, support : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Add the node into a vector of nodes where it should occur in
	* document order.
	* @param node The node to be added.
	* @param support The XPath runtime context.
	*
	* @return The index where it was inserted.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a mutable type.
	*/
	@:overload @:public public function addNodeInDocOrder(node : org.w3c.dom.Node, support : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
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
	* @throws RuntimeException thrown if this NodeSet is not of
	* a cached type, and thus doesn't permit indexed access.
	*/
	@:overload @:public public function setCurrentPos(i : Int) : Void;
	
	/**
	* Return the last fetched node.  Needed to support the UnionPathIterator.
	*
	* @return the last fetched node.
	* @throws RuntimeException thrown if this NodeSet is not of
	* a cached type, and thus doesn't permit indexed access.
	*/
	@:overload @:public public function getCurrentNode() : org.w3c.dom.Node;
	
	/** True if this list can be mutated.  */
	@:transient @:protected private var m_mutable : Bool;
	
	/** True if this list is cached.
	*  @serial  */
	@:transient @:protected private var m_cacheNodes : Bool;
	
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
	
	@:overload @:public public function getLast() : Int;
	
	@:overload @:public public function setLast(last : Int) : Void;
	
	/** Number of nodes in this NodeVector.
	*  @serial          */
	@:protected private var m_firstFree : Int;
	
	/**
	* Get a cloned LocPathIterator.
	*
	* @return A clone of this
	*
	* @throws CloneNotSupportedException
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Get the length of the list.
	*
	* @return Number of nodes in this NodeVector
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Append a Node onto the vector.
	*
	* @param value Node to add to the vector
	*/
	@:overload @:public public function addElement(value : org.w3c.dom.Node) : Void;
	
	/**
	* Append a Node onto the vector.
	*
	* @param value Node to add to the vector
	*/
	@:overload @:public @:final public function push(value : org.w3c.dom.Node) : Void;
	
	/**
	* Pop a node from the tail of the vector and return the result.
	*
	* @return the node at the tail of the vector
	*/
	@:overload @:public @:final public function pop() : org.w3c.dom.Node;
	
	/**
	* Pop a node from the tail of the vector and return the
	* top of the stack after the pop.
	*
	* @return The top of the stack after it's been popped
	*/
	@:overload @:public @:final public function popAndTop() : org.w3c.dom.Node;
	
	/**
	* Pop a node from the tail of the vector.
	*/
	@:overload @:public @:final public function popQuick() : Void;
	
	/**
	* Return the node at the top of the stack without popping the stack.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @return Node at the top of the stack or null if stack is empty.
	*/
	@:overload @:public @:final public function peepOrNull() : org.w3c.dom.Node;
	
	/**
	* Push a pair of nodes into the stack.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @param v1 First node to add to vector
	* @param v2 Second node to add to vector
	*/
	@:overload @:public @:final public function pushPair(v1 : org.w3c.dom.Node, v2 : org.w3c.dom.Node) : Void;
	
	/**
	* Pop a pair of nodes from the tail of the stack.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*/
	@:overload @:public @:final public function popPair() : Void;
	
	/**
	* Set the tail of the stack to the given node.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @param n Node to set at the tail of vector
	*/
	@:overload @:public @:final public function setTail(n : org.w3c.dom.Node) : Void;
	
	/**
	* Set the given node one position from the tail.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @param n Node to set
	*/
	@:overload @:public @:final public function setTailSub1(n : org.w3c.dom.Node) : Void;
	
	/**
	* Return the node at the tail of the vector without popping
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @return Node at the tail of the vector
	*/
	@:overload @:public @:final public function peepTail() : org.w3c.dom.Node;
	
	/**
	* Return the node one position from the tail without popping.
	* Special purpose method for TransformerImpl, pushElemTemplateElement.
	* Performance critical.
	*
	* @return Node one away from the tail
	*/
	@:overload @:public @:final public function peepTailSub1() : org.w3c.dom.Node;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	*
	* @param value Node to insert
	* @param at Position where to insert
	*/
	@:overload @:public public function insertElementAt(value : org.w3c.dom.Node, at : Int) : Void;
	
	/**
	* Append the nodes to the list.
	*
	* @param nodes NodeVector to append to this list
	*/
	@:overload @:public public function appendNodes(nodes : com.sun.org.apache.xpath.internal.NodeSet) : Void;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	*/
	@:overload @:public public function removeAllElements() : Void;
	
	/**
	* Removes the first occurrence of the argument from this vector.
	* If the object is found in this vector, each component in the vector
	* with an index greater or equal to the object's index is shifted
	* downward to have an index one smaller than the value it had
	* previously.
	*
	* @param s Node to remove from the list
	*
	* @return True if the node was successfully removed
	*/
	@:overload @:public public function removeElement(s : org.w3c.dom.Node) : Bool;
	
	/**
	* Deletes the component at the specified index. Each component in
	* this vector with an index greater or equal to the specified
	* index is shifted downward to have an index one smaller than
	* the value it had previously.
	*
	* @param i Index of node to remove
	*/
	@:overload @:public public function removeElementAt(i : Int) : Void;
	
	/**
	* Sets the component at the specified index of this vector to be the
	* specified object. The previous component at that position is discarded.
	*
	* The index must be a value greater than or equal to 0 and less
	* than the current size of the vector.
	*
	* @param node Node to set
	* @param index Index of where to set the node
	*/
	@:overload @:public public function setElementAt(node : org.w3c.dom.Node, index : Int) : Void;
	
	/**
	* Get the nth element.
	*
	* @param i Index of node to get
	*
	* @return Node at specified index
	*/
	@:overload @:public public function elementAt(i : Int) : org.w3c.dom.Node;
	
	/**
	* Tell if the table contains the given node.
	*
	* @param s Node to look for
	*
	* @return True if the given node was found.
	*/
	@:overload @:public public function contains(s : org.w3c.dom.Node) : Bool;
	
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
	@:overload @:public public function indexOf(elem : org.w3c.dom.Node, index : Int) : Int;
	
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
	@:overload @:public public function indexOf(elem : org.w3c.dom.Node) : Int;
	
	
}
