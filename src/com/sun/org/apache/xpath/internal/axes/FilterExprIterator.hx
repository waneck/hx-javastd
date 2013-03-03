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
* $Id: FilterExprIterator.java,v 1.2.4.2 2005/09/14 19:45:22 jeffsuttor Exp $
*/
extern class FilterExprIterator extends com.sun.org.apache.xpath.internal.axes.BasicTestIterator
{
	/**
	* Create a FilterExprIterator object.
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a FilterExprIterator object.
	*
	*/
	@:overload @:public public function new(expr : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload @:public override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Get the next node via getNextXXX.  Bottlenecked for derived class override.
	* @return The next node on the axis, or DTM.NULL.
	*/
	@:overload @:protected override private function getNextNode() : Int;
	
	/**
	* Detaches the walker from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state.
	*/
	@:overload @:public override public function detach() : Void;
	
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
	@:overload @:public override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Get the inner contained expression of this filter.
	*/
	@:overload @:public public function getInnerExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Set the inner contained expression of this filter.
	*/
	@:overload @:public public function setInnerExpression(expr : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Get the analysis bits for this walker, as defined in the WalkerFactory.
	* @return One of WalkerFactory#BIT_DESCENDANT, etc.
	*/
	@:overload @:public override public function getAnalysisBits() : Int;
	
	/**
	* Returns true if all the nodes in the iteration well be returned in document
	* order.
	* Warning: This can only be called after setRoot has been called!
	*
	* @return true as a default.
	*/
	@:overload @:public override public function isDocOrdered() : Bool;
	
	/**
	* This will traverse the heararchy, calling the visitor for
	* each member.  If the called visitor method returns
	* false, the subtree should not be called.
	*
	* @param visitor The visitor whose appropriate method will be called.
	*/
	@:overload @:public override public function callPredicateVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload @:public override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
@:native('com$sun$org$apache$xpath$internal$axes$FilterExprIterator$filterExprOwner') @:internal extern class FilterExprIterator_filterExprOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload @:public public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload @:public public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	
}
