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
* $Id: DescendantIterator.java,v 1.2.4.2 2005/09/14 19:45:21 jeffsuttor Exp $
*/
extern class DescendantIterator extends com.sun.org.apache.xpath.internal.axes.LocPathIterator
{
	/**
	* Create a DescendantIterator object.
	*
	*/
	@:overload public function new() : Void;
	
	/**
	*  Get a cloned Iterator that is reset to the beginning
	*  of the query.
	*
	*  @return A cloned NodeIterator set of the start of the query.
	*
	*  @throws CloneNotSupportedException
	*/
	@:overload override public function cloneWithReset() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	*
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*
	* @throws DOMException
	*    INVALID_STATE_ERR: Raised if this method is called after the
	*   <code>detach</code> method was invoked.
	*/
	@:overload override public function nextNode() : Int;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Return the first node out of the nodeset, if this expression is
	* a nodeset expression.  This is the default implementation for
	* nodesets.
	* <p>WARNING: Do not mutate this class from this function!</p>
	* @param xctxt The XPath runtime context.
	* @return the first node out of the nodeset, or DTM.NULL.
	*/
	@:overload override public function asNode(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	*  Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	*/
	@:overload override public function detach() : Void;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload override public function getAxis() : Int;
	
	/** The traverser to use to navigate over the descendants. */
	@:transient private var m_traverser : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	/** The axis that we are traversing. */
	private var m_axis : Int;
	
	/** The extended type ID, not set until setRoot. */
	private var m_extendedTypeID : Int;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
