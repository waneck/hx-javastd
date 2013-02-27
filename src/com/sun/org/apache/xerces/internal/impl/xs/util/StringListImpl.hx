package com.sun.org.apache.xerces.internal.impl.xs.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2003-2004 The Apache Software Foundation.
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
extern class StringListImpl extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.StringList
{
	/**
	* An immutable empty list.
	*/
	public static var EMPTY_LIST(default, null) : StringListImpl;
	
	@:overload public function new(v : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Construct an XSObjectList implementation
	*
	* @param array     the data array
	* @param length    the number of elements
	*/
	@:overload public function new(array : java.NativeArray<String>, length : Int) : Void;
	
	/**
	* The number of <code>Objects</code> in the list. The range of valid
	* child node indices is 0 to <code>length-1</code> inclusive.
	*/
	@:overload public function getLength() : Int;
	
	/**
	*  Checks if the <code>GenericString</code> <code>item</code> is a member
	* of this list.
	* @param item  <code>GenericString</code> whose presence in this list is
	*   to be tested.
	* @return  True if this list contains the <code>GenericString</code>
	*   <code>item</code>.
	*/
	@:overload public function contains(item : String) : Bool;
	
	@:overload public function item(index : Int) : String;
	
	/*
	* List methods
	*/
	@:overload override public function get(index : Int) : Dynamic;
	
	@:overload override public function size() : Int;
	
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload override public function toArray(a : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	
}
