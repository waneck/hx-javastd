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
* $Id: AxesWalker.java,v 1.2.4.1 2005/09/14 19:45:22 jeffsuttor Exp $
*/
extern class AxesWalker extends com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest implements java.lang.Cloneable implements com.sun.org.apache.xpath.internal.axes.PathComponent implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* Construct an AxesWalker using a LocPathIterator.
	*
	* @param locPathIterator non-null reference to the parent iterator.
	*/
	@:overload @:public public function new(locPathIterator : com.sun.org.apache.xpath.internal.axes.LocPathIterator, axis : Int) : Void;
	
	@:overload @:public @:final public function wi() : com.sun.org.apache.xpath.internal.axes.WalkingIterator;
	
	/**
	* Initialize an AxesWalker during the parse of the XPath expression.
	*
	* @param compiler The Compiler object that has information about this
	*                 walker in the op map.
	* @param opPos The op code position of this location step.
	* @param stepType  The type of location step.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function init(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, stepType : Int) : Void;
	
	/**
	* Get a cloned AxesWalker.
	*
	* @return A new AxesWalker that can be used without mutating this one.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Detaches the walker from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state.
	*/
	@:overload @:public public function detach() : Void;
	
	/**
	* The root node of the TreeWalker, as specified in setRoot(int root).
	* Note that this may actually be below the current node.
	*
	* @return The context node of the step.
	*/
	@:overload @:public public function getRoot() : Int;
	
	/**
	* Get the analysis bits for this walker, as defined in the WalkerFactory.
	* @return One of WalkerFactory#BIT_DESCENDANT, etc.
	*/
	@:overload @:public public function getAnalysisBits() : Int;
	
	/**
	* Set the root node of the TreeWalker.
	* (Not part of the DOM2 TreeWalker interface).
	*
	* @param root The context node of this step.
	*/
	@:overload @:public public function setRoot(root : Int) : Void;
	
	/**
	* The node at which the TreeWalker is currently positioned.
	* <br> The value must not be null. Alterations to the DOM tree may cause
	* the current node to no longer be accepted by the TreeWalker's
	* associated filter. currentNode may also be explicitly set to any node,
	* whether or not it is within the subtree specified by the root node or
	* would be accepted by the filter and whatToShow flags. Further
	* traversal occurs relative to currentNode even if it is not part of the
	* current view by applying the filters in the requested direction (not
	* changing currentNode where no traversal is possible).
	*
	* @return The node at which the TreeWalker is currently positioned, only null
	* if setRoot has not yet been called.
	*/
	@:overload @:public @:final public function getCurrentNode() : Int;
	
	/**
	* Set the next walker in the location step chain.
	*
	*
	* @param walker Reference to AxesWalker derivative, or may be null.
	*/
	@:overload @:public public function setNextWalker(walker : com.sun.org.apache.xpath.internal.axes.AxesWalker) : Void;
	
	/**
	* Get the next walker in the location step chain.
	*
	*
	* @return Reference to AxesWalker derivative, or null.
	*/
	@:overload @:public public function getNextWalker() : com.sun.org.apache.xpath.internal.axes.AxesWalker;
	
	/**
	* Set or clear the previous walker reference in the location step chain.
	*
	*
	* @param walker Reference to previous walker reference in the location
	*               step chain, or null.
	*/
	@:overload @:public public function setPrevWalker(walker : com.sun.org.apache.xpath.internal.axes.AxesWalker) : Void;
	
	/**
	* Get the previous walker reference in the location step chain.
	*
	*
	* @return Reference to previous walker reference in the location
	*               step chain, or null.
	*/
	@:overload @:public public function getPrevWalker() : com.sun.org.apache.xpath.internal.axes.AxesWalker;
	
	/**
	* Get the next node in document order on the axes.
	*
	* @return the next node in document order on the axes, or null.
	*/
	@:overload @:protected private function getNextNode() : Int;
	
	/**
	*  Moves the <code>TreeWalker</code> to the next visible node in document
	* order relative to the current node, and returns the new node. If the
	* current node has no next node,  or if the search for nextNode attempts
	* to step upward from the TreeWalker's root node, returns
	* <code>null</code> , and retains the current node.
	* @return  The new node, or <code>null</code> if the current node has no
	*   next node  in the TreeWalker's logical view.
	*/
	@:overload @:public public function nextNode() : Int;
	
	/**
	* Get the index of the last node that can be itterated to.
	*
	*
	* @param xctxt XPath runtime context.
	*
	* @return the index of the last node that can be itterated to.
	*/
	@:overload @:public override public function getLastPos(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Set the DTM for this walker.
	*
	* @param dtm Non-null reference to a DTM.
	*/
	@:overload @:public public function setDefaultDTM(dtm : com.sun.org.apache.xml.internal.dtm.DTM) : Void;
	
	/**
	* Get the DTM for this walker.
	*
	* @return Non-null reference to a DTM.
	*/
	@:overload @:public public function getDTM(node : Int) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Returns true if all the nodes in the iteration well be returned in document
	* order.
	* Warning: This can only be called after setRoot has been called!
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
	
	/**
	* This will traverse the heararchy, calling the visitor for
	* each member.  If the called visitor method returns
	* false, the subtree should not be called.
	*
	* @param owner The owner of the visitor, where that path may be
	*              rewritten if needed.
	* @param visitor The visitor whose appropriate method will be called.
	*/
	@:overload @:public override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload @:public public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload @:public public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload @:public override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	/** The next walker in the location step chain.
	*  @serial  */
	@:protected private var m_nextWalker : com.sun.org.apache.xpath.internal.axes.AxesWalker;
	
	/** The traversal axis from where the nodes will be filtered. */
	@:protected private var m_axis : Int;
	
	/** The DTM inner traversal class, that corresponds to the super axis. */
	@:protected private var m_traverser : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	
}
