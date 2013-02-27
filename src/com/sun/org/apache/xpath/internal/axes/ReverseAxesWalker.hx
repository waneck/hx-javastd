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
* $Id: ReverseAxesWalker.java,v 1.2.4.1 2005/09/14 19:45:21 jeffsuttor Exp $
*/
extern class ReverseAxesWalker extends com.sun.org.apache.xpath.internal.axes.AxesWalker
{
	/**
	* Set the root node of the TreeWalker.
	* (Not part of the DOM2 TreeWalker interface).
	*
	* @param root The context node of this step.
	*/
	@:overload override public function setRoot(root : Int) : Void;
	
	/**
	* Detaches the walker from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state.
	*/
	@:overload override public function detach() : Void;
	
	/**
	* Get the next node in document order on the axes.
	*
	* @return the next node in document order on the axes, or null.
	*/
	@:overload override private function getNextNode() : Int;
	
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
	* Count backwards one proximity position.
	*
	* @param i The predicate index.
	*/
	@:overload override private function countProximityPosition(i : Int) : Void;
	
	/**
	* Get the number of nodes in this node list.  The function is probably ill
	* named?
	*
	*
	* @param xctxt The XPath runtime context.
	*
	* @return the number of nodes in this node list.
	*/
	@:overload override public function getLastPos(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Returns true if all the nodes in the iteration well be returned in document
	* order.
	* Warning: This can only be called after setRoot has been called!
	*
	* @return false.
	*/
	@:overload override public function isDocOrdered() : Bool;
	
	/** The DTM inner traversal class, that corresponds to the super axis. */
	private var m_iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	
}
