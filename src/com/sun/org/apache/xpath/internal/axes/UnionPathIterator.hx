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
* $Id: UnionPathIterator.java,v 1.2.4.1 2005/09/14 19:43:25 jeffsuttor Exp $
*/
extern class UnionPathIterator extends com.sun.org.apache.xpath.internal.axes.LocPathIterator implements java.lang.Cloneable implements com.sun.org.apache.xml.internal.dtm.DTMIterator implements java.io.Serializable implements com.sun.org.apache.xpath.internal.axes.PathComponent
{
	/**
	* Constructor to create an instance which you can add location paths to.
	*/
	@:overload public function new() : Void;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Add an iterator to the union list.
	*
	* @param expr non-null reference to a location path iterator.
	*/
	@:overload public function addIterator(expr : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	*  Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	*/
	@:overload override public function detach() : Void;
	
	/**
	* Create a UnionPathIterator object, including creation
	* of location path iterators from the opcode list, and call back
	* into the Compiler to create predicate expressions.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	* opcode list from the compiler.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function new(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int) : Void;
	
	/**
	* This will return an iterator capable of handling the union of paths given.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	* opcode list from the compiler.
	*
	* @return Object that is derived from LocPathIterator.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public static function createUnionIterator(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int) : com.sun.org.apache.xpath.internal.axes.LocPathIterator;
	
	/**
	* Get the analysis bits for this walker, as defined in the WalkerFactory.
	* @return One of WalkerFactory#BIT_DESCENDANT, etc.
	*/
	@:overload override public function getAnalysisBits() : Int;
	
	/**
	* Get a cloned LocPathIterator that holds the same
	* position as this iterator.
	*
	* @return A clone of this iterator that holds the same node position.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Create a new location path iterator.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	*
	* @return New location path iterator.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload private function createDTMIterator(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int) : com.sun.org.apache.xpath.internal.axes.LocPathIterator;
	
	/**
	* Initialize the location path iterators.  Recursive.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	* opcode list from the compiler.
	* @param count The insert position of the iterator.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload private function loadLocationPaths(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, count : Int) : Void;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a DTMIterator is created, the first call
	* to nextNode() returns the first node in the set.
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*/
	@:overload override public function nextNode() : Int;
	
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
	* The location path iterators, one for each
	* <a href="http://www.w3.org/TR/xpath#NT-LocationPath">location
	* path</a> contained in the union expression.
	* @serial
	*/
	private var m_exprs : java.NativeArray<com.sun.org.apache.xpath.internal.axes.LocPathIterator>;
	
	/**
	* The location path iterators, one for each
	* <a href="http://www.w3.org/TR/xpath#NT-LocationPath">location
	* path</a> contained in the union expression.
	* @serial
	*/
	private var m_iterators : java.NativeArray<com.sun.org.apache.xml.internal.dtm.DTMIterator>;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload override public function getAxis() : Int;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
@:native('com$sun$org$apache$xpath$internal$axes$UnionPathIterator$iterOwner') @:internal extern class UnionPathIterator_iterOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
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
