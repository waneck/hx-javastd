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
extern class ObjectListImpl extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList
{
	/**
	* An immutable empty list.
	*/
	public static var EMPTY_LIST(default, null) : com.sun.org.apache.xerces.internal.impl.xs.util.ObjectListImpl;
	
	@:overload public function new(array : java.NativeArray<Dynamic>, length : Int) : Void;
	
	@:overload public function getLength() : Int;
	
	@:overload public function contains(item : Dynamic) : Bool;
	
	@:overload public function item(index : Int) : Dynamic;
	
	/*
	* List methods
	*/
	@:overload public function get(index : Int) : Dynamic;
	
	@:overload public function size() : Int;
	
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload public function toArray(a : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	
}
