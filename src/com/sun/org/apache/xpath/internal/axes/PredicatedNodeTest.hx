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
* $Id: PredicatedNodeTest.java,v 1.2.4.2 2005/09/14 19:45:20 jeffsuttor Exp $
*/
extern class PredicatedNodeTest extends com.sun.org.apache.xpath.internal.patterns.NodeTest implements com.sun.org.apache.xpath.internal.axes.SubContextList
{
	/**
	* Get a cloned PrdicatedNodeTest.
	*
	* @return A new PredicatedNodeTest that can be used without mutating this one.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload public function clone() : Dynamic;
	
	private var m_predCount : Int;
	
	/**
	* Get the number of predicates that this walker has.
	*
	* @return the number of predicates that this walker has.
	*/
	@:overload public function getPredicateCount() : Int;
	
	/**
	* Set the number of predicates that this walker has.  This does more
	* that one would think, as it creates a new predicate array of the
	* size of the count argument, and copies count predicates into the new
	* one from the old, and then reassigns the predicates value.  All this
	* to keep from having to have a predicate count value.
	*
	* @param count The number of predicates, which must be equal or less
	*               than the existing count.
	*/
	@:overload public function setPredicateCount(count : Int) : Void;
	
	/**
	* Init predicate info.
	*
	* @param compiler The Compiler object that has information about this
	*                 walker in the op map.
	* @param opPos The op code position of this location step.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload private function initPredicateInfo(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int) : Void;
	
	/**
	* Get a predicate expression at the given index.
	*
	*
	* @param index Index of the predicate.
	*
	* @return A predicate expression.
	*/
	@:overload public function getPredicate(index : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Get the current sub-context position.
	*
	* @return The node position of this walker in the sub-context node list.
	*/
	@:overload public function getProximityPosition() : Int;
	
	/**
	* Get the current sub-context position.
	*
	* @param xctxt The XPath runtime context.
	*
	* @return The node position of this walker in the sub-context node list.
	*/
	@:overload public function getProximityPosition(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Get the index of the last node that can be itterated to.
	*
	*
	* @param xctxt XPath runtime context.
	*
	* @return the index of the last node that can be itterated to.
	*/
	@:overload @:abstract public function getLastPos(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Get the current sub-context position.
	*
	* @param predicateIndex The index of the predicate where the proximity
	*                       should be taken from.
	*
	* @return The node position of this walker in the sub-context node list.
	*/
	@:overload private function getProximityPosition(predicateIndex : Int) : Int;
	
	/**
	* Reset the proximity positions counts.
	*/
	@:overload public function resetProximityPositions() : Void;
	
	/**
	* Init the proximity position to zero for a forward axes.
	*
	* @param i The index into the m_proximityPositions array.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function initProximityPosition(i : Int) : Void;
	
	/**
	* Count forward one proximity position.
	*
	* @param i The index into the m_proximityPositions array, where the increment
	*          will occur.
	*/
	@:overload private function countProximityPosition(i : Int) : Void;
	
	/**
	* Tells if this is a reverse axes.
	*
	* @return false, unless a derived class overrides.
	*/
	@:overload public function isReverseAxes() : Bool;
	
	/**
	* Get which predicate is executing.
	*
	* @return The current predicate index, or -1 if no predicate is executing.
	*/
	@:overload public function getPredicateIndex() : Int;
	
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
	* Diagnostics.
	*
	* @param n Node to give diagnostic information about, or null.
	*
	* @return Informative string about the argument.
	*/
	@:overload private function nodeToString(n : Int) : String;
	
	/**
	*  Test whether a specified node is visible in the logical view of a
	* TreeWalker or NodeIterator. This function will be called by the
	* implementation of TreeWalker and NodeIterator; it is not intended to
	* be called directly from user code.
	* @param n  The node to check to see if it passes the filter or not.
	* @return  a constant to determine whether the node is accepted,
	*   rejected, or skipped, as defined  above .
	*/
	@:overload public function acceptNode(n : Int) : java.StdTypes.Int16;
	
	/**
	* Get the owning location path iterator.
	*
	* @return the owning location path iterator, which should not be null.
	*/
	@:overload public function getLocPathIterator() : com.sun.org.apache.xpath.internal.axes.LocPathIterator;
	
	/**
	* Set the location path iterator owner for this walker.  Besides
	* initialization, this function is called during cloning operations.
	*
	* @param li non-null reference to the owning location path iterator.
	*/
	@:overload public function setLocPathIterator(li : com.sun.org.apache.xpath.internal.axes.LocPathIterator) : Void;
	
	/**
	* Tell if this expression or it's subexpressions can traverse outside
	* the current subtree.
	*
	* @return true if traversal outside the context node's subtree can occur.
	*/
	@:overload override public function canTraverseOutsideSubtree() : Bool;
	
	/**
	* This will traverse the heararchy, calling the visitor for
	* each member.  If the called visitor method returns
	* false, the subtree should not be called.
	*
	* @param visitor The visitor whose appropriate method will be called.
	*/
	@:overload public function callPredicateVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	/** This is true if nextNode returns null. */
	@:transient private var m_foundLast : Bool;
	
	/** The owning location path iterator.
	*  @serial */
	private var m_lpi : com.sun.org.apache.xpath.internal.axes.LocPathIterator;
	
	/**
	* An array of counts that correspond to the number
	* of predicates the step contains.
	*/
	@:transient private var m_proximityPositions : java.NativeArray<Int>;
	
	
}
@:native('com$sun$org$apache$xpath$internal$axes$PredicatedNodeTest$PredOwner') @:internal extern class PredicatedNodeTest_PredOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
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
