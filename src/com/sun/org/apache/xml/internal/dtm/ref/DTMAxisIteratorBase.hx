package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: DTMAxisIteratorBase.java,v 1.2.4.1 2005/09/15 08:14:59 suresh_emailid Exp $
*/
extern class DTMAxisIteratorBase implements com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
{
	/** The position of the last node within the iteration, as defined by XPath.
	* Note that this is _not_ the node's handle within the DTM. Also, don't
	* confuse it with the current (most recently returned) position.
	*/
	private var _last : Int;
	
	/** The position of the current node within the iteration, as defined by XPath.
	* Note that this is _not_ the node's handle within the DTM!
	*/
	private var _position : Int;
	
	/** The position of the marked node within the iteration;
	* a saved itaration state that we may want to come back to.
	* Note that only one mark is maintained; there is no stack.
	*/
	private var _markedNode : Int;
	
	/** The handle to the start, or root, of the iteration.
	* Set this to END to construct an empty iterator.
	*/
	private var _startNode : Int;
	
	/** True if the start node should be considered part of the iteration.
	* False will cause it to be skipped.
	*/
	private var _includeSelf : Bool;
	
	/** True if this iteration can be restarted. False otherwise (eg, if
	* we are iterating over a stream that can not be re-scanned, or if
	* the iterator was produced by cloning another iterator.)
	*/
	private var _isRestartable : Bool;
	
	/**
	* Get start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @return The root node of the iteration.
	*/
	@:overload public function getStartNode() : Int;
	
	/**
	* @return A DTMAxisIterator which has been reset to the start node,
	* which may or may not be the same as this iterator.
	* */
	@:overload public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Set the flag to include the start node in the iteration.
	*
	*
	* @return This default method returns just returns this DTMAxisIterator,
	* after setting the flag.
	* (Returning "this" permits C++-style chaining of
	* method calls into a single expression.)
	*/
	@:overload public function includeSelf() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/** Returns the position of the last node within the iteration, as
	* defined by XPath.  In a forward iterator, I believe this equals the number of nodes which this
	* iterator will yield. In a reverse iterator, I believe it should return
	* 1 (since the "last" is the first produced.)
	*
	* This may be an expensive operation when called the first time, since
	* it may have to iterate through a large part of the document to produce
	* its answer.
	*
	* @return The number of nodes in this iterator (forward) or 1 (reverse).
	*/
	@:overload public function getLast() : Int;
	
	/**
	* @return The position of the current node within the set, as defined by
	* XPath. Note that this is one-based, not zero-based.
	*/
	@:overload public function getPosition() : Int;
	
	/**
	* @return true if this iterator has a reversed axis, else false
	*/
	@:overload public function isReverse() : Bool;
	
	/**
	* Returns a deep copy of this iterator. Cloned iterators may not be
	* restartable. The iterator being cloned may or may not become
	* non-restartable as a side effect of this operation.
	*
	* @return a deep copy of this iterator.
	*/
	@:overload public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Do any final cleanup that is required before returning the node that was
	* passed in, and then return it. The intended use is
	* <br />
	* <code>return returnNode(node);</code>
	*
	* %REVIEW% If we're calling it purely for side effects, should we really
	* be bothering with a return value? Something like
	* <br />
	* <code> accept(node); return node; </code>
	* <br />
	* would probably optimize just about as well and avoid questions
	* about whether what's returned could ever be different from what's
	* passed in.
	*
	* @param node Node handle which iteration is about to yield.
	*
	* @return The node handle passed in.  */
	@:overload @:final private function returnNode(node : Int) : Int;
	
	/**
	* Reset the position to zero. NOTE that this does not change the iteration
	* state, only the position number associated with that state.
	*
	* %REVIEW% Document when this would be used?
	*
	* @return This instance.
	*/
	@:overload @:final private function resetPosition() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
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
	
	@:overload public function setRestartable(isRestartable : Bool) : Void;
	
	/**
	* Return the node at the given position.
	*
	* @param position The position
	* @return The node at the given position.
	*/
	@:overload public function getNodeByPosition(position : Int) : Int;
	
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload @:public public function next() : Int;
	
	/**
	* Remembers the current node for the next call to gotoMark().
	*/
	@:overload @:public public function setMark() : Void;
	
	/**
	* Restores the current node remembered by setMark().
	*/
	@:overload @:public public function gotoMark() : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload @:public public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	
}
