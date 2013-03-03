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
* $Id: ContextNodeList.java,v 1.1.2.1 2005/08/01 01:30:20 jeffsuttor Exp $
*/
extern interface ContextNodeList
{
	/**
	* Get the <a href="http://www.w3.org/TR/xslt#dt-current-node">current node</a>.
	*
	*
	* @return The current node, or null.
	*/
	@:overload @:public public function getCurrentNode() : org.w3c.dom.Node;
	
	/**
	* Get the current position, which is one less than
	* the next nextNode() call will retrieve.  i.e. if
	* you call getCurrentPos() and the return is 0, the next
	* fetch will take place at index 1.
	*
	* @return The position of the
	* <a href="http://www.w3.org/TR/xslt#dt-current-node">current node</a>
	* in the  <a href="http://www.w3.org/TR/xslt#dt-current-node-list">current node list</a>.
	*/
	@:overload @:public public function getCurrentPos() : Int;
	
	/**
	* Reset the iterator.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* If setShouldCacheNodes(true) is called, then nodes will
	* be cached.  They are not cached by default.
	*
	* @param b true if the nodes should be cached.
	*/
	@:overload @:public public function setShouldCacheNodes(b : Bool) : Void;
	
	/**
	* If an index is requested, NodeSetDTM will call this method
	* to run the iterator to the index.  By default this sets
	* m_next to the index.  If the index argument is -1, this
	* signals that the iterator should be run to the end.
	*
	* @param index The index to run to, or -1 if the iterator should be run
	*              to the end.
	*/
	@:overload @:public public function runTo(index : Int) : Void;
	
	/**
	* Set the current position in the node set.
	* @param i Must be a valid index.
	*/
	@:overload @:public public function setCurrentPos(i : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return The number of nodes in this node list.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Tells if this NodeSetDTM is "fresh", in other words, if
	* the first nextNode() that is called will return the
	* first node in the set.
	*
	* @return true if the iteration of this list has not yet begun.
	*/
	@:overload @:public public function isFresh() : Bool;
	
	/**
	* Get a cloned Iterator that is reset to the start of the iteration.
	*
	* @return A clone of this iteration that has been reset.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload @:public public function cloneWithReset() : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Get the index of the last node in this list.
	*
	*
	* @return the index of the last node in this list.
	*/
	@:overload @:public public function getLast() : Int;
	
	/**
	* Set the index of the last node in this list.
	*
	*
	* @param last the index of the last node in this list.
	*/
	@:overload @:public public function setLast(last : Int) : Void;
	
	
}
