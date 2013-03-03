package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
* This class is an unsynchronized hash table primary used for String
* to Object mapping.
* <p>
* The hash code uses the same algorithm as SymbolTable class.
*
* @author Elena Litani
* @version $Id: SymbolHash.java,v 1.7 2010-11-01 04:40:14 joehw Exp $
*/
extern class SymbolHash
{
	/** Default table size. */
	@:protected private var fTableSize : Int;
	
	/** Buckets. */
	@:protected private var fBuckets : java.NativeArray<com.sun.org.apache.xerces.internal.util.SymbolHash.SymbolHash_Entry>;
	
	/** Number of elements. */
	@:protected private var fNum : Int;
	
	/** Constructs a key table with the default size. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a key table with a given size.
	*
	* @param size  the size of the key table.
	*/
	@:overload @:public public function new(size : Int) : Void;
	
	/**
	* Adds the key/value mapping to the key table. If the key already exists,
	* the previous value associated with this key is overwritten by the new
	* value.
	*
	* @param key
	* @param value
	*/
	@:overload @:public public function put(key : Dynamic, value : Dynamic) : Void;
	
	/**
	* Get the value associated with the given key.
	*
	* @param key
	* @return the value associated with the given key.
	*/
	@:overload @:public public function get(key : Dynamic) : Dynamic;
	
	/**
	* Get the number of key/value pairs stored in this table.
	*
	* @return the number of key/value pairs stored in this table.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Add all values to the given array. The array must have enough entry.
	*
	* @param elements  the array to store the elements
	* @param from      where to start store element in the array
	* @return          number of elements copied to the array
	*/
	@:overload @:public public function getValues(elements : java.NativeArray<Dynamic>, from : Int) : Int;
	
	/**
	* Return key/value pairs of all entries in the map
	*/
	@:overload @:public public function getEntries() : java.NativeArray<Dynamic>;
	
	/**
	* Make a clone of this object.
	*/
	@:overload @:public public function makeClone() : com.sun.org.apache.xerces.internal.util.SymbolHash;
	
	/**
	* Remove all key/value assocaition. This tries to save a bit of GC'ing
	* by at least keeping the fBuckets array around.
	*/
	@:overload @:public public function clear() : Void;
	
	@:overload @:protected private function search(key : Dynamic, bucket : Int) : com.sun.org.apache.xerces.internal.util.SymbolHash.SymbolHash_Entry;
	
	
}
/**
* This class is a key table entry. Each entry acts as a node
* in a linked list.
*/
@:native('com$sun$org$apache$xerces$internal$util$SymbolHash$Entry') extern class SymbolHash_Entry
{
	@:public public var key : Dynamic;
	
	@:public public var value : Dynamic;
	
	/** The next entry. */
	@:public public var next : com.sun.org.apache.xerces.internal.util.SymbolHash.SymbolHash_Entry;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(key : Dynamic, value : Dynamic, next : com.sun.org.apache.xerces.internal.util.SymbolHash.SymbolHash_Entry) : Void;
	
	@:overload @:public public function makeClone() : com.sun.org.apache.xerces.internal.util.SymbolHash.SymbolHash_Entry;
	
	
}
