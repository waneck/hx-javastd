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
extern class XSObjectListImpl extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.XSObjectList
{
	/**
	* An immutable empty list.
	*/
	@:public @:static @:final public static var EMPTY_LIST(default, null) : com.sun.org.apache.xerces.internal.impl.xs.util.XSObjectListImpl;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Construct an XSObjectList implementation
	*
	* @param array     the data array
	* @param length    the number of elements
	*/
	@:overload @:public public function new(array : java.NativeArray<com.sun.org.apache.xerces.internal.xs.XSObject>, length : Int) : Void;
	
	/**
	* The number of <code>XSObjects</code> in the list. The range of valid
	* child node indices is 0 to <code>length-1</code> inclusive.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Returns the <code>index</code>th item in the collection. The index
	* starts at 0. If <code>index</code> is greater than or equal to the
	* number of nodes in the list, this returns <code>null</code>.
	* @param index index into the collection.
	* @return The XSObject at the <code>index</code>th position in the
	*   <code>XSObjectList</code>, or <code>null</code> if that is not a
	*   valid index.
	*/
	@:overload @:public public function item(index : Int) : com.sun.org.apache.xerces.internal.xs.XSObject;
	
	@:overload @:public public function clearXSObjectList() : Void;
	
	@:overload @:public public function addXSObject(object : com.sun.org.apache.xerces.internal.xs.XSObject) : Void;
	
	@:overload @:public public function addXSObject(index : Int, object : com.sun.org.apache.xerces.internal.xs.XSObject) : Void;
	
	/*
	* List methods
	*/
	@:overload @:public override public function contains(value : Dynamic) : Bool;
	
	@:overload @:public override public function get(index : Int) : Dynamic;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function listIterator() : java.util.ListIterator<Dynamic>;
	
	@:overload @:public override public function listIterator(index : Int) : java.util.ListIterator<Dynamic>;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray(a : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$util$XSObjectListImpl$XSObjectListIterator') @:internal extern class XSObjectListImpl_XSObjectListIterator implements java.util.ListIterator<Dynamic>
{
	@:overload @:public public function new(index : Int) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function hasPrevious() : Bool;
	
	@:overload @:public public function previous() : Dynamic;
	
	@:overload @:public public function nextIndex() : Int;
	
	@:overload @:public public function previousIndex() : Int;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public public function set(o : Dynamic) : Void;
	
	@:overload @:public public function add(o : Dynamic) : Void;
	
	
}
