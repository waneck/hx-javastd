package com.sun.org.apache.xalan.internal.xsltc.util;
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
* $Id: IntegerArray.java,v 1.2.4.1 2005/09/06 11:44:56 pvedula Exp $
*/
/**
* @author Jacek Ambroziak
*/
extern class IntegerArray
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function new(array : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function clear() : Void;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function toIntArray() : java.NativeArray<Int>;
	
	@:overload @:public @:final public function at(index : Int) : Int;
	
	@:overload @:public @:final public function set(index : Int, value : Int) : Void;
	
	@:overload @:public public function indexOf(n : Int) : Int;
	
	@:overload @:public @:final public function add(value : Int) : Void;
	
	/**
	* Adds new int at the end if not already present.
	*/
	@:overload @:public public function addNew(value : Int) : Void;
	
	@:overload @:public public function reverse() : Void;
	
	/**
	* Merge two sorted arrays and eliminate duplicates.
	* Elements of the other IntegerArray must not be changed.
	*/
	@:overload @:public public function merge(other : com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray) : Void;
	
	@:overload @:public public function sort() : Void;
	
	@:overload @:public public function popLast() : Int;
	
	@:overload @:public public function last() : Int;
	
	@:overload @:public public function setLast(n : Int) : Void;
	
	@:overload @:public public function pop() : Void;
	
	@:overload @:public public function pop(n : Int) : Void;
	
	@:overload @:public @:final public function cardinality() : Int;
	
	@:overload @:public public function print(out : java.io.PrintStream) : Void;
	
	
}
