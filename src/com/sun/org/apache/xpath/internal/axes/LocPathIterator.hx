package com.sun.org.apache.xpath.internal.axes;
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
* $Id: LocPathIterator.java,v 1.2.4.2 2005/09/14 19:45:22 jeffsuttor Exp $
*/
extern class LocPathIterator extends com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest implements java.lang.Cloneable implements com.sun.org.apache.xml.internal.dtm.DTMIterator implements java.io.Serializable implements com.sun.org.apache.xpath.internal.axes.PathComponent
{
	/**
	* Create a LocPathIterator object.
	*
	*/
	@:overload private function new() : Void;
	
	/**
	* Create a LocPathIterator object.
	*
	* @param nscontext The namespace context for this iterator,
	* should be OK if null.
	*/
	@:overload private function new(nscontext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Create a LocPathIterator object, including creation
	* of step walkers from the opcode list, and call back
	* into the Compiler to create predicate expressions.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	* opcode list from the compiler.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload private function new(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, analysis : Int) : Void;
	
	/**
	* Create a LocPathIterator object, including creation
	* of step walkers from the opcode list, and call back
	* into the Compiler to create predicate expressions.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	* opcode list from the compiler.
	* @param shouldLoadWalkers True if walkers should be
	* loaded, or false if this is a derived iterator and
	* it doesn't wish to load child walkers.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload private function new(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, analysis : Int, shouldLoadWalkers : Bool) : Void;
	
	/**
	* Get the analysis bits for this walker, as defined in the WalkerFactory.
	* @return One of WalkerFactory#BIT_DESCENDANT, etc.
	*/
	@:overload public function getAnalysisBits() : Int;
	
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
	@:overload public function setEnvironment(environment : Dynamic) : Void;
	
	/**
	* Get an instance of a DTM that "owns" a node handle.  Since a node
	* iterator may be passed without a DTMManager, this allows the
	* caller to easily get the DTM using just the iterator.
	*
	* @param nodeHandle the nodeHandle.
	*
	* @return a non-null DTM reference.
	*/
	@:overload public function getDTM(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get an instance of the DTMManager.  Since a node
	* iterator may be passed without a DTMManager, this allows the
	* caller to easily get the DTMManager using just the iterator.
	*
	* @return a non-null DTMManager reference.
	*/
	@:overload public function getDTMManager() : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* Execute this iterator, meaning create a clone that can
	* store state, and initialize it for fast execution from
	* the current runtime state.  When this is called, no actual
	* query from the current context node is performed.
	*
	* @param xctxt The XPath execution context.
	*
	* @return An XNodeSet reference that holds this iterator.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression.
	*
	*
	* @param xctxt The XPath runtime context.
	* @param handler The target content handler.
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function executeCharsToContentHandler(xctxt : com.sun.org.apache.xpath.internal.XPathContext, handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Given an select expression and a context, evaluate the XPath
	* and return the resulting iterator.
	*
	* @param xctxt The execution context.
	* @param contextNode The node that "." expresses.
	* @throws TransformerException thrown if the active ProblemListener decides
	* the error condition is severe enough to halt processing.
	*
	* @throws javax.xml.transform.TransformerException
	* @xsl.usage experimental
	*/
	@:overload override public function asIterator(xctxt : com.sun.org.apache.xpath.internal.XPathContext, contextNode : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Tell if the expression is a nodeset expression.
	*
	* @return true if the expression can be represented as a nodeset.
	*/
	@:overload override public function isNodesetExpr() : Bool;
	
	/**
	* Return the first node out of the nodeset, if this expression is
	* a nodeset expression.  This is the default implementation for
	* nodesets.  Derived classes should try and override this and return a
	* value without having to do a clone operation.
	* @param xctxt The XPath runtime context.
	* @return the first node out of the nodeset, or DTM.NULL.
	*/
	@:overload override public function asNode(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Evaluate this operation directly to a boolean.
	*
	* @param xctxt The runtime execution context.
	*
	* @return The result of the operation as a boolean.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function bool(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Bool;
	
	/**
	* Set if this is an iterator at the upper level of
	* the XPath.
	*
	* @param b true if this location path is at the top level of the
	*          expression.
	* @xsl.usage advanced
	*/
	@:overload public function setIsTopLevel(b : Bool) : Void;
	
	/**
	* Get if this is an iterator at the upper level of
	* the XPath.
	*
	* @return true if this location path is at the top level of the
	*          expression.
	* @xsl.usage advanced
	*/
	@:overload public function getIsTopLevel() : Bool;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Set the next position index of this iterator.
	*
	* @param next A value greater than or equal to zero that indicates the next
	* node position to fetch.
	*/
	@:overload private function setNextPosition(next : Int) : Void;
	
	/**
	* Get the current position, which is one less than
	* the next nextNode() call will retrieve.  i.e. if
	* you call getCurrentPos() and the return is 0, the next
	* fetch will take place at index 1.
	*
	* @return A value greater than or equal to zero that indicates the next
	* node position to fetch.
	*/
	@:overload @:final public function getCurrentPos() : Int;
	
	/**
	* If setShouldCacheNodes(true) is called, then nodes will
	* be cached.  They are not cached by default.
	*
	* @param b True if this iterator should cache nodes.
	*/
	@:overload public function setShouldCacheNodes(b : Bool) : Void;
	
	/**
	* Tells if this iterator can have nodes added to it or set via
	* the <code>setItem(int node, int index)</code> method.
	*
	* @return True if the nodelist can be mutated.
	*/
	@:overload public function isMutable() : Bool;
	
	/**
	* Set the current position in the node set.
	*
	* @param i Must be a valid index greater
	* than or equal to zero and less than m_cachedNodes.size().
	*/
	@:overload public function setCurrentPos(i : Int) : Void;
	
	/**
	* Increment the current position in the node set.
	*/
	@:overload public function incrementCurrentPos() : Void;
	
	/**
	* Get the length of the cached nodes.
	*
	* <p>Note: for the moment at least, this only returns
	* the size of the nodes that have been fetched to date,
	* it doesn't attempt to run to the end to make sure we
	* have found everything.  This should be reviewed.</p>
	*
	* @return The size of the current cache list.
	*/
	@:overload public function size() : Int;
	
	/**
	*  Returns the <code>index</code> th item in the collection. If
	* <code>index</code> is greater than or equal to the number of nodes in
	* the list, this returns <code>null</code> .
	* @param index  Index into the collection.
	* @return  The node at the <code>index</code> th position in the
	*   <code>NodeList</code> , or <code>null</code> if that is not a valid
	*   index.
	*/
	@:overload public function item(index : Int) : Int;
	
	/**
	* Sets the node at the specified index of this vector to be the
	* specified node. The previous component at that position is discarded.
	*
	* <p>The index must be a value greater than or equal to 0 and less
	* than the current size of the vector.
	* The iterator must be in cached mode.</p>
	*
	* <p>Meant to be used for sorted iterators.</p>
	*
	* @param node Node to set
	* @param index Index of where to set the node
	*/
	@:overload public function setItem(node : Int, index : Int) : Void;
	
	/**
	*  The number of nodes in the list. The range of valid child node indices
	* is 0 to <code>length-1</code> inclusive.
	*
	* @return The number of nodes in the list, always greater or equal to zero.
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Tells if this NodeSetDTM is "fresh", in other words, if
	* the first nextNode() that is called will return the
	* first node in the set.
	*
	* @return true of nextNode has not been called.
	*/
	@:overload public function isFresh() : Bool;
	
	/**
	*  Returns the previous node in the set and moves the position of the
	* iterator backwards in the set.
	* @return  The previous <code>Node</code> in the set being iterated over,
	*   or<code>null</code> if there are no more members in that set.
	*/
	@:overload public function previousNode() : Int;
	
	/**
	* This attribute determines which node types are presented via the
	* iterator. The available set of constants is defined in the
	* <code>NodeFilter</code> interface.
	*
	* <p>This is somewhat useless at this time, since it doesn't
	* really return information that tells what this iterator will
	* show.  It is here only to fullfill the DOM NodeIterator
	* interface.</p>
	*
	* @return For now, always NodeFilter.SHOW_ALL & ~NodeFilter.SHOW_ENTITY_REFERENCE.
	* @see org.w3c.dom.traversal.NodeIterator
	*/
	@:overload override public function getWhatToShow() : Int;
	
	/**
	*  The filter used to screen nodes.  Not used at this time,
	* this is here only to fullfill the DOM NodeIterator
	* interface.
	*
	* @return Always null.
	* @see org.w3c.dom.traversal.NodeIterator
	*/
	@:overload public function getFilter() : com.sun.org.apache.xml.internal.dtm.DTMFilter;
	
	/**
	* The root node of the Iterator, as specified when it was created.
	*
	* @return The "root" of this iterator, which, in XPath terms,
	* is the node context for this iterator.
	*/
	@:overload public function getRoot() : Int;
	
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
	* @return Always true, since entity reference nodes are not
	* visible in the XPath model.
	*/
	@:overload public function getExpandEntityReferences() : Bool;
	
	/** Control over whether it is OK for detach to reset the iterator. */
	private var m_allowDetach : Bool;
	
	/**
	* Specify if it's OK for detach to release the iterator for reuse.
	*
	* @param allowRelease true if it is OK for detach to release this iterator
	* for pooling.
	*/
	@:overload public function allowDetachToRelease(allowRelease : Bool) : Void;
	
	/**
	*  Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	*/
	@:overload public function detach() : Void;
	
	/**
	* Reset the iterator.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Get a cloned Iterator that is reset to the beginning
	* of the query.
	*
	* @return A cloned NodeIterator set of the start of the query.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload public function cloneWithReset() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*/
	@:overload @:abstract public function nextNode() : Int;
	
	/**
	* Bottleneck the return of a next node, to make returns
	* easier from nextNode().
	*
	* @param nextNode The next node found, may be null.
	*
	* @return The same node that was passed as an argument.
	*/
	@:overload private function returnNextNode(nextNode : Int) : Int;
	
	/**
	* Return the last fetched node.  Needed to support the UnionPathIterator.
	*
	* @return The last fetched node, or null if the last fetch was null.
	*/
	@:overload public function getCurrentNode() : Int;
	
	/**
	* If an index is requested, NodeSetDTM will call this method
	* to run the iterator to the index.  By default this sets
	* m_next to the index.  If the index argument is -1, this
	* signals that the iterator should be run to the end.
	*
	* @param index The index to run to, or -1 if the iterator
	* should run to the end.
	*/
	@:overload public function runTo(index : Int) : Void;
	
	/**
	* Tells if we've found the last node yet.
	*
	* @return true if the last nextNode returned null.
	*/
	@:overload @:final public function getFoundLast() : Bool;
	
	/**
	* The XPath execution context we are operating on.
	*
	* @return XPath execution context this iterator is operating on,
	* or null if setRoot has not been called.
	*/
	@:overload @:final public function getXPathContext() : com.sun.org.apache.xpath.internal.XPathContext;
	
	/**
	* The node context for the iterator.
	*
	* @return The node context, same as getRoot().
	*/
	@:overload @:final public function getContext() : Int;
	
	/**
	* The node context from where the expression is being
	* executed from (i.e. for current() support).
	*
	* @return The top-level node context of the entire expression.
	*/
	@:overload @:final public function getCurrentContextNode() : Int;
	
	/**
	* Set the current context node for this iterator.
	*
	* @param n Must be a non-null reference to the node context.
	*/
	@:overload @:final public function setCurrentContextNode(n : Int) : Void;
	
	/**
	* Return the saved reference to the prefix resolver that
	* was in effect when this iterator was created.
	*
	* @return The prefix resolver or this iterator, which may be null.
	*/
	@:overload @:final public function getPrefixResolver() : com.sun.org.apache.xml.internal.utils.PrefixResolver;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* The pool for cloned iterators.  Iterators need to be cloned
	* because the hold running state, and thus the original iterator
	* expression from the stylesheet pool can not be used.
	*/
	@:transient private var m_clones : com.sun.org.apache.xpath.internal.axes.IteratorPool;
	
	/**
	* The dtm of the context node.  Careful about using this... it may not
	* be the dtm of the current node.
	*/
	@:transient private var m_cdtm : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/** The last node that was fetched, usually by nextNode. */
	@:transient public var m_lastFetched : Int;
	
	/**
	* The context node for this iterator, which doesn't change through
	* the course of the iteration.
	*/
	@:transient private var m_context : Int;
	
	/**
	* The node context from where the expression is being
	* executed from (i.e. for current() support).  Different
	* from m_context in that this is the context for the entire
	* expression, rather than the context for the subexpression.
	*/
	@:transient private var m_currentContextNode : Int;
	
	/**
	* The current position of the context node.
	*/
	@:transient private var m_pos : Int;
	
	@:transient private var m_length : Int;
	
	/**
	* The XPathContext reference, needed for execution of many
	* operations.
	*/
	@:transient private var m_execContext : com.sun.org.apache.xpath.internal.XPathContext;
	
	/**
	* Returns true if all the nodes in the iteration well be returned in document
	* order.
	*
	* @return true as a default.
	*/
	@:overload public function isDocOrdered() : Bool;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload public function getAxis() : Int;
	
	/**
	* @see PredicatedNodeTest#getLastPos(XPathContext)
	*/
	@:overload override public function getLastPos(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	
}
