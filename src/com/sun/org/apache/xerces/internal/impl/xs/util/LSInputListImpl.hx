package com.sun.org.apache.xerces.internal.impl.xs.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class LSInputListImpl extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.LSInputList
{
	/**
	* An immutable empty list.
	*/
	@:public @:static @:final public static var EMPTY_LIST(default, null) : com.sun.org.apache.xerces.internal.impl.xs.util.LSInputListImpl;
	
	/**
	* Construct an LSInputList implementation
	*
	* @param array     the data array
	* @param length    the number of elements
	*/
	@:overload @:public public function new(array : java.NativeArray<org.w3c.dom.ls.LSInput>, length : Int) : Void;
	
	/**
	* The number of <code>LSInput</code>s in the list. The range of valid
	* child object indices is 0 to <code>length-1</code> inclusive.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Returns the <code>index</code>th item in the collection or
	* <code>null</code> if <code>index</code> is greater than or equal to
	* the number of objects in the list. The index starts at 0.
	* @param index  index into the collection.
	* @return  The <code>LSInput</code> at the <code>index</code>th
	*   position in the <code>LSInputList</code>, or <code>null</code> if
	*   the index specified is not valid.
	*/
	@:overload @:public public function item(index : Int) : org.w3c.dom.ls.LSInput;
	
	/*
	* List methods
	*/
	@:overload @:public override public function get(index : Int) : Dynamic;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray(a : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	
}
