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
* $Id: WalkingIterator.java,v 1.2.4.2 2005/09/14 19:45:19 jeffsuttor Exp $
*/
extern class WalkingIterator extends com.sun.org.apache.xpath.internal.axes.LocPathIterator implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* Create a WalkingIterator object.
	*
	* @param nscontext The namespace context for this iterator,
	* should be OK if null.
	*/
	@:overload public function new(nscontext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Get the analysis bits for this walker, as defined in the WalkerFactory.
	* @return One of WalkerFactory#BIT_DESCENDANT, etc.
	*/
	@:overload override public function getAnalysisBits() : Int;
	
	/**
	* Get a cloned WalkingIterator that holds the same
	* position as this iterator.
	*
	* @return A clone of this iterator that holds the same node position.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* Reset the iterator.
	*/
	@:overload override public function reset() : Void;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*/
	@:overload override public function nextNode() : Int;
	
	/**
	* Get the head of the walker list.
	*
	* @return The head of the walker list, or null
	* if this iterator does not implement walkers.
	* @xsl.usage advanced
	*/
	@:overload @:final public function getFirstWalker() : com.sun.org.apache.xpath.internal.axes.AxesWalker;
	
	/**
	* Set the head of the walker list.
	*
	* @param walker Should be a valid AxesWalker.
	* @xsl.usage advanced
	*/
	@:overload @:final public function setFirstWalker(walker : com.sun.org.apache.xpath.internal.axes.AxesWalker) : Void;
	
	/**
	* Set the last used walker.
	*
	* @param walker The last used walker, or null.
	* @xsl.usage advanced
	*/
	@:overload @:final public function setLastUsedWalker(walker : com.sun.org.apache.xpath.internal.axes.AxesWalker) : Void;
	
	/**
	* Get the last used walker.
	*
	* @return The last used walker, or null.
	* @xsl.usage advanced
	*/
	@:overload @:final public function getLastUsedWalker() : com.sun.org.apache.xpath.internal.axes.AxesWalker;
	
	/**
	*  Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
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
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/** The last used step walker in the walker list.
	*  @serial */
	private var m_lastUsedWalker : com.sun.org.apache.xpath.internal.axes.AxesWalker;
	
	/** The head of the step walker list.
	*  @serial */
	private var m_firstWalker : com.sun.org.apache.xpath.internal.axes.AxesWalker;
	
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
