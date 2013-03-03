package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* A simple integer based stack.
*
* moved to com.sun.org.apache.xerces.internal.util by neilg to support the
* XPathMatcher.
* @author  Andy Clark, IBM
*
*/
extern class IntStack
{
	/** Returns the size of the stack. */
	@:overload @:public public function size() : Int;
	
	/** Pushes a value onto the stack. */
	@:overload @:public public function push(value : Int) : Void;
	
	/** Peeks at the top of the stack. */
	@:overload @:public public function peek() : Int;
	
	/** Returns the element at the specified depth in the stack. */
	@:overload @:public public function elementAt(depth : Int) : Int;
	
	/** Pops a value off of the stack. */
	@:overload @:public public function pop() : Int;
	
	/** Clears the stack. */
	@:overload @:public public function clear() : Void;
	
	/** Prints the stack. */
	@:overload @:public public function print() : Void;
	
	
}
