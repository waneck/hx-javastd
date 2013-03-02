package com.sun.org.apache.xml.internal.utils;
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
* $Id: IntStack.java,v 1.2.4.1 2005/09/15 08:15:45 suresh_emailid Exp $
*/
extern class IntStack extends com.sun.org.apache.xml.internal.utils.IntVector
{
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a IntVector, using the given block size.
	*
	* @param blocksize Size of block to allocate
	*/
	@:overload public function new(blocksize : Int) : Void;
	
	/**
	* Copy constructor for IntStack
	*
	* @param v IntStack to copy
	*/
	@:overload public function new(v : com.sun.org.apache.xml.internal.utils.IntStack) : Void;
	
	/**
	* Pushes an item onto the top of this stack.
	*
	* @param   i   the int to be pushed onto this stack.
	* @return  the <code>item</code> argument.
	*/
	@:overload public function push(i : Int) : Int;
	
	/**
	* Removes the object at the top of this stack and returns that
	* object as the value of this function.
	*
	* @return     The object at the top of this stack.
	*/
	@:overload @:final public function pop() : Int;
	
	/**
	* Quickly pops a number of items from the stack.
	*/
	@:overload @:final public function quickPop(n : Int) : Void;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.
	*
	* @return     the object at the top of this stack.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload @:final public function peek() : Int;
	
	/**
	* Looks at the object at the position the stack counting down n items.
	*
	* @param n The number of items down, indexed from zero.
	* @return     the object at n items down.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload public function peek(n : Int) : Int;
	
	/**
	* Sets an object at a the top of the statck
	*
	*
	* @param val object to set at the top
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload public function setTop(val : Int) : Void;
	
	/**
	* Tests if this stack is empty.
	*
	* @return  <code>true</code> if this stack is empty;
	*          <code>false</code> otherwise.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function empty() : Bool;
	
	/**
	* Returns where an object is on this stack.
	*
	* @param   o   the desired object.
	* @return  the distance from the top of the stack where the object is]
	*          located; the return value <code>-1</code> indicates that the
	*          object is not on the stack.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function search(o : Int) : Int;
	
	/**
	* Returns clone of current IntStack
	*
	* @return clone of current IntStack
	*/
	@:overload public function clone() : Dynamic;
	
	
}
