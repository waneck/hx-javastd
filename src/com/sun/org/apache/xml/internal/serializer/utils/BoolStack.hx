package com.sun.org.apache.xml.internal.serializer.utils;
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
* $Id: BoolStack.java,v 1.1.4.1 2005/09/08 11:03:08 suresh_emailid Exp $
*/
/**
* Simple stack for boolean values.
*
* This class is a copy of the one in com.sun.org.apache.xml.internal.utils.
* It exists to cut the serializers dependancy on that package.
* A minor changes from that package are:
* doesn't implement Clonable
*
* This class is not a public API, it is only public because it is
* used in com.sun.org.apache.xml.internal.serializer.
*
* @xsl.usage internal
*/
extern class BoolStack
{
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a IntVector, using the given block size.
	*
	* @param size array size to allocate
	*/
	@:overload @:public public function new(size : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return Current length of the list
	*/
	@:overload @:public @:final public function size() : Int;
	
	/**
	* Clears the stack.
	*
	*/
	@:overload @:public @:final public function clear() : Void;
	
	/**
	* Pushes an item onto the top of this stack.
	*
	*
	* @param val the boolean to be pushed onto this stack.
	* @return  the <code>item</code> argument.
	*/
	@:overload @:public @:final public function push(val : Bool) : Bool;
	
	/**
	* Removes the object at the top of this stack and returns that
	* object as the value of this function.
	*
	* @return     The object at the top of this stack.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload @:public @:final public function pop() : Bool;
	
	/**
	* Removes the object at the top of this stack and returns the
	* next object at the top as the value of this function.
	*
	*
	* @return Next object to the top or false if none there
	*/
	@:overload @:public @:final public function popAndTop() : Bool;
	
	/**
	* Set the item at the top of this stack
	*
	*
	* @param b Object to set at the top of this stack
	*/
	@:overload @:public @:final public function setTop(b : Bool) : Void;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.
	*
	* @return     the object at the top of this stack.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload @:public @:final public function peek() : Bool;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.  If the stack is empty, it returns false.
	*
	* @return     the object at the top of this stack.
	*/
	@:overload @:public @:final public function peekOrFalse() : Bool;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.  If the stack is empty, it returns true.
	*
	* @return     the object at the top of this stack.
	*/
	@:overload @:public @:final public function peekOrTrue() : Bool;
	
	/**
	* Tests if this stack is empty.
	*
	* @return  <code>true</code> if this stack is empty;
	*          <code>false</code> otherwise.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	
}
