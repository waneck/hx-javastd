package com.sun.org.apache.xml.internal.dtm;
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
* $Id: DTMAxisIterator.java,v 1.2.4.1 2005/09/15 08:14:52 suresh_emailid Exp $
*/
/**
* This class iterates over a single XPath Axis, and returns node handles.
*/
extern interface DTMAxisIterator extends java.lang.Cloneable
{
	/**
	* Get the next node in the iteration.
	*
	* @return The next node handle in the iteration, or END.
	*/
	@:overload @:public @:public public function next() : Int;
	
	/**
	* Resets the iterator to the last start node.
	*
	* @return A DTMAxisIterator, which may or may not be the same as this
	*         iterator.
	*/
	@:overload @:public public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* @return the number of nodes in this iterator.  This may be an expensive
	* operation when called the first time.
	*/
	@:overload @:public public function getLast() : Int;
	
	/**
	* @return The position of the current node in the set, as defined by XPath.
	*/
	@:overload @:public public function getPosition() : Int;
	
	/**
	* Remembers the current node for the next call to gotoMark().
	*/
	@:overload @:public @:public public function setMark() : Void;
	
	/**
	* Restores the current node remembered by setMark().
	*/
	@:overload @:public @:public public function gotoMark() : Void;
	
	/**
	* Set start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @param node Sets the root of the iteration.
	*
	* @return A DTMAxisIterator set to the start of the iteration.
	*/
	@:overload @:public @:public public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Get start to END should 'close' the iterator,
	* i.e. subsequent call to next() should return END.
	*
	* @return The root node of the iteration.
	*/
	@:overload @:public public function getStartNode() : Int;
	
	/**
	* @return true if this iterator has a reversed axis, else false.
	*/
	@:overload @:public public function isReverse() : Bool;
	
	/**
	* @return a deep copy of this iterator. The clone should not be reset
	* from its current position.
	*/
	@:overload @:public public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Set if restartable.
	*/
	@:overload @:public public function setRestartable(isRestartable : Bool) : Void;
	
	/**
	* Return the node at the given position.
	*
	* @param position The position
	* @return The node at the given position.
	*/
	@:overload @:public public function getNodeByPosition(position : Int) : Int;
	
	
}
