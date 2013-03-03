package com.sun.org.apache.xalan.internal.xsltc;
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
* $Id: NodeIterator.java,v 1.2.4.1 2005/08/31 10:26:27 pvedula Exp $
*/
extern interface NodeIterator extends java.lang.Cloneable
{
	/**
	* Callers should not call next() after it returns END.
	*/
	@:overload @:public public function next() : Int;
	
	/**
	* Resets the iterator to the last start node.
	*/
	@:overload @:public public function reset() : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* Returns the number of elements in this iterator.
	*/
	@:overload @:public public function getLast() : Int;
	
	/**
	* Returns the position of the current node in the set.
	*/
	@:overload @:public public function getPosition() : Int;
	
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
	*/
	@:overload @:public public function setStartNode(node : Int) : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* True if this iterator has a reversed axis.
	*/
	@:overload @:public public function isReverse() : Bool;
	
	/**
	* Returns a deep copy of this iterator.
	*/
	@:overload @:public public function cloneIterator() : com.sun.org.apache.xalan.internal.xsltc.NodeIterator;
	
	/**
	* Prevents or allows iterator restarts.
	*/
	@:overload @:public public function setRestartable(isRestartable : Bool) : Void;
	
	
}
