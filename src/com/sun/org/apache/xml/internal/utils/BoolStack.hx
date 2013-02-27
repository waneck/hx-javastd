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
* $Id: BoolStack.java,v 1.2.4.1 2005/09/15 08:15:35 suresh_emailid Exp $
*/
/**
* Simple stack for boolean values.
* @xsl.usage internal
*/
extern class BoolStack implements java.lang.Cloneable
{
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a IntVector, using the given block size.
	*
	* @param size array size to allocate
	*/
	@:overload public function new(size : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return Current length of the list
	*/
	@:overload @:final public function size() : Int;
	
	/**
	* Clears the stack.
	*
	*/
	@:overload @:final public function clear() : Void;
	
	/**
	* Pushes an item onto the top of this stack.
	*
	*
	* @param val the boolean to be pushed onto this stack.
	* @return  the <code>item</code> argument.
	*/
	@:overload @:final public function push(val : Bool) : Bool;
	
	/**
	* Removes the object at the top of this stack and returns that
	* object as the value of this function.
	*
	* @return     The object at the top of this stack.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload @:final public function pop() : Bool;
	
	/**
	* Removes the object at the top of this stack and returns the
	* next object at the top as the value of this function.
	*
	*
	* @return Next object to the top or false if none there
	*/
	@:overload @:final public function popAndTop() : Bool;
	
	/**
	* Set the item at the top of this stack
	*
	*
	* @param b Object to set at the top of this stack
	*/
	@:overload @:final public function setTop(b : Bool) : Void;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.
	*
	* @return     the object at the top of this stack.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload @:final public function peek() : Bool;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.  If the stack is empty, it returns false.
	*
	* @return     the object at the top of this stack.
	*/
	@:overload @:final public function peekOrFalse() : Bool;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.  If the stack is empty, it returns true.
	*
	* @return     the object at the top of this stack.
	*/
	@:overload @:final public function peekOrTrue() : Bool;
	
	/**
	* Tests if this stack is empty.
	*
	* @return  <code>true</code> if this stack is empty;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isEmpty() : Bool;
	
	@:overload public function clone() : Dynamic;
	
	
}
