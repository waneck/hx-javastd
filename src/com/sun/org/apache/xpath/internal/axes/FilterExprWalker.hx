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
* $Id: FilterExprWalker.java,v 1.2.4.2 2005/09/14 19:45:23 jeffsuttor Exp $
*/
extern class FilterExprWalker extends com.sun.org.apache.xpath.internal.axes.AxesWalker
{
	/**
	* Construct a FilterExprWalker using a LocPathIterator.
	*
	* @param locPathIterator non-null reference to the parent iterator.
	*/
	@:overload public function new(locPathIterator : com.sun.org.apache.xpath.internal.axes.WalkingIterator) : Void;
	
	/**
	* Init a FilterExprWalker.
	*
	* @param compiler non-null reference to the Compiler that is constructing.
	* @param opPos positive opcode position for this step.
	* @param stepType The type of step.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function init(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, stepType : Int) : Void;
	
	/**
	* Detaches the walker from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state.
	*/
	@:overload override public function detach() : Void;
	
	/**
	*  Set the root node of the TreeWalker.
	*
	* @param root non-null reference to the root, or starting point of
	*        the query.
	*/
	@:overload override public function setRoot(root : Int) : Void;
	
	/**
	* Get a cloned FilterExprWalker.
	*
	* @return A new FilterExprWalker that can be used without mutating this one.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* This method needs to override AxesWalker.acceptNode because FilterExprWalkers
	* don't need to, and shouldn't, do a node test.
	* @param n  The node to check to see if it passes the filter or not.
	* @return  a constant to determine whether the node is accepted,
	*   rejected, or skipped, as defined  above .
	*/
	@:overload override public function acceptNode(n : Int) : java.StdTypes.Int16;
	
	/**
	*  Moves the <code>TreeWalker</code> to the next visible node in document
	* order relative to the current node, and returns the new node. If the
	* current node has no next node,  or if the search for nextNode attempts
	* to step upward from the TreeWalker's root node, returns
	* <code>null</code> , and retains the current node.
	* @return  The new node, or <code>null</code> if the current node has no
	*   next node  in the TreeWalker's logical view.
	*/
	@:overload override public function getNextNode() : Int;
	
	/**
	* Get the index of the last node that can be itterated to.
	*
	*
	* @param xctxt XPath runtime context.
	*
	* @return the index of the last node that can be itterated to.
	*/
	@:overload override public function getLastPos(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* This function is used to fixup variables from QNames to stack frame
	* indexes at stylesheet build time.
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	*/
	@:overload override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Get the inner contained expression of this filter.
	*/
	@:overload public function getInnerExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Set the inner contained expression of this filter.
	*/
	@:overload public function setInnerExpression(expr : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Get the analysis bits for this walker, as defined in the WalkerFactory.
	* @return One of WalkerFactory#BIT_DESCENDANT, etc.
	*/
	@:overload override public function getAnalysisBits() : Int;
	
	/**
	* Returns true if all the nodes in the iteration well be returned in document
	* order.
	* Warning: This can only be called after setRoot has been called!
	*
	* @return true as a default.
	*/
	@:overload override public function isDocOrdered() : Bool;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload override public function getAxis() : Int;
	
	/**
	* This will traverse the heararchy, calling the visitor for
	* each member.  If the called visitor method returns
	* false, the subtree should not be called.
	*
	* @param visitor The visitor whose appropriate method will be called.
	*/
	@:overload override public function callPredicateVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
@:native('com$sun$org$apache$xpath$internal$axes$FilterExprWalker$filterExprOwner') @:internal extern class FilterExprWalker_filterExprOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	
}
