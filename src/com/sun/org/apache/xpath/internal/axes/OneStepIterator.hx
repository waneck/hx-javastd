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
* $Id: OneStepIterator.java,v 1.2.4.2 2005/09/14 19:45:22 jeffsuttor Exp $
*/
extern class OneStepIterator extends com.sun.org.apache.xpath.internal.axes.ChildTestIterator
{
	/** The traversal axis from where the nodes will be filtered. */
	private var m_axis : Int;
	
	/** The DTM inner traversal class, that corresponds to the super axis. */
	private var m_iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Create a OneStepIterator object.
	*
	* @param iterator The DTM iterator which this iterator will use.
	* @param axis One of Axis.Child, etc., or -1 if the axis is unknown.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function new(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, axis : Int) : Void;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	*  Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	*/
	@:overload override public function detach() : Void;
	
	/**
	* Get the next node via getFirstAttribute && getNextAttribute.
	*/
	@:overload override private function getNextNode() : Int;
	
	/**
	* Get a cloned iterator.
	*
	* @return A new iterator that can be used without mutating this one.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload override public function clone() : Dynamic;
	
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
	* Tells if this is a reverse axes.  Overrides AxesWalker#isReverseAxes.
	*
	* @return true for this class.
	*/
	@:overload override public function isReverseAxes() : Bool;
	
	/**
	* Get the current sub-context position.  In order to do the
	* reverse axes count, for the moment this re-searches the axes
	* up to the predicate.  An optimization on this is to cache
	* the nodes searched, but, for the moment, this case is probably
	* rare enough that the added complexity isn't worth it.
	*
	* @param predicateIndex The predicate index of the proximity position.
	*
	* @return The pridicate index, or -1.
	*/
	@:overload override private function getProximityPosition(predicateIndex : Int) : Int;
	
	/**
	*  The number of nodes in the list. The range of valid child node indices
	* is 0 to <code>length-1</code> inclusive.
	*
	* @return The number of nodes in the list, always greater or equal to zero.
	*/
	@:overload override public function getLength() : Int;
	
	/**
	* Count backwards one proximity position.
	*
	* @param i The predicate index.
	*/
	@:overload override private function countProximityPosition(i : Int) : Void;
	
	/**
	* Reset the iterator.
	*/
	@:overload override public function reset() : Void;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload override public function getAxis() : Int;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
