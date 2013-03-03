package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: NodeIteratorBase.java,v 1.2.4.1 2005/09/06 09:37:02 pvedula Exp $
*/
extern class NodeIteratorBase implements com.sun.org.apache.xalan.internal.xsltc.NodeIterator
{
	/**
	* Cached computed value of last().
	*/
	@:protected private var _last : Int;
	
	/**
	* Value of position() in this iterator. Incremented in
	* returnNode().
	*/
	@:protected private var _position : Int;
	
	/**
	* Store node in call to setMark().
	*/
	@:protected private var _markedNode : Int;
	
	/**
	* Store node in call to setStartNode().
	*/
	@:protected private var _startNode : Int;
	
	/**
	* Flag indicating if "self" should be returned.
	*/
	@:protected private var _includeSelf : Bool;
	
	/**
	* Flag indicating if iterator can be restarted.
	*/
	@:protected private var _isRestartable : Bool;
	
	/**
	* Setter for _isRestartable flag.
	*/
	@:overload @:public public function setRestartable(isRestartable : Bool) : Void;
	
	/**
	* Initialize iterator using a node. If iterator is not
	* restartable, then do nothing. If node is equal to END then
	* subsequent calls to next() must return END.
	*/
	@:overload @:abstract @:public public function setStartNode(node : Int) : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* Reset this iterator using state from last call to
	* setStartNode().
	*/
	@:overload @:public public function reset() : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* Setter for _includeSelf flag.
	*/
	@:overload @:public public function includeSelf() : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* Default implementation of getLast(). Stores current position
	* and current node, resets the iterator, counts all nodes and
	* restores iterator to original state.
	*/
	@:overload @:public public function getLast() : Int;
	
	/**
	* Returns the position() in this iterator.
	*/
	@:overload @:public public function getPosition() : Int;
	
	/**
	* Indicates if position in this iterator is computed in reverse
	* document order. Note that nodes are always returned in document
	* order.
	*/
	@:overload @:public public function isReverse() : Bool;
	
	/**
	* Clones and resets this iterator. Note that the cloned iterator is
	* not restartable. This is because cloning is needed for variable
	* references, and the context node of the original variable
	* declaration must be preserved.
	*/
	@:overload @:public public function cloneIterator() : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* Utility method that increments position and returns its
	* argument.
	*/
	@:overload @:protected @:final private function returnNode(node : Int) : Int;
	
	/**
	* Reset the position in this iterator.
	*/
	@:overload @:protected @:final private function resetPosition() : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* Callers should not call next() after it returns END.
	*/
	@:overload @:public @:public public function next() : Int;
	
	/**
	* Remembers the current node for the next call to gotoMark().
	*/
	@:overload @:public @:public public function setMark() : Void;
	
	/**
	* Restores the current node remembered by setMark().
	*/
	@:overload @:public @:public public function gotoMark() : Void;
	
	
}
