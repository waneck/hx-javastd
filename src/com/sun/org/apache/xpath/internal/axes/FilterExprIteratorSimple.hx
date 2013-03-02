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
* $Id: FilterExprIteratorSimple.java,v 1.2.4.2 2005/09/14 19:45:21 jeffsuttor Exp $
*/
extern class FilterExprIteratorSimple extends com.sun.org.apache.xpath.internal.axes.LocPathIterator
{
	/**
	* Create a FilterExprIteratorSimple object.
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a FilterExprIteratorSimple object.
	*
	*/
	@:overload public function new(expr : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Execute the expression.  Meant for reuse by other FilterExpr iterators
	* that are not derived from this object.
	*/
	@:overload public static function executeFilterExpr(context : Int, xctxt : com.sun.org.apache.xpath.internal.XPathContext, prefixResolver : com.sun.org.apache.xml.internal.utils.PrefixResolver, isTopLevel : Bool, stackFrame : Int, expr : com.sun.org.apache.xpath.internal.Expression) : com.sun.org.apache.xpath.internal.objects.XNodeSet;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	*
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*/
	@:overload override public function nextNode() : Int;
	
	/**
	* Detaches the walker from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state.
	*/
	@:overload override public function detach() : Void;
	
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
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload override public function getAxis() : Int;
	
	
}
@:native('com$sun$org$apache$xpath$internal$axes$FilterExprIteratorSimple$filterExprOwner') @:internal extern class FilterExprIteratorSimple_filterExprOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
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
