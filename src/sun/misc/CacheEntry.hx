package sun.misc;
/*
* Copyright (c) 1995, 1996, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
@:internal extern class CacheEntry extends sun.misc.Ref
{
	@:overload @:public override public function reconstitute() : Dynamic;
	
	
}
extern class Cache extends java.util.Dictionary<Dynamic, Dynamic>
{
	/**
	* Constructs a new, empty Cache with the specified initial
	* capacity and the specified load factor.
	* @param initialCapacity the initial number of buckets
	* @param loadFactor a number between 0.0 and 1.0, it defines
	*          the threshold for rehashing the Cache into
	*          a bigger one.
	* @exception IllegalArgumentException If the initial capacity
	* is less than or equal to zero.
	* @exception IllegalArgumentException If the load factor is
	* less than or equal to zero.
	*/
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Constructs a new, empty Cache with the specified initial
	* capacity.
	* @param initialCapacity the initial number of buckets
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a new, empty Cache. A default capacity and load factor
	* is used. Note that the Cache will automatically grow when it gets
	* full.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the number of elements contained within the Cache.
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns true if the Cache contains no elements.
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Returns an enumeration of the Cache's keys.
	* @see Cache#elements
	* @see Enumeration
	*/
	@:overload @:public @:synchronized override public function keys() : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of the elements. Use the Enumeration methods
	* on the returned object to fetch the elements sequentially.
	* @see Cache#keys
	* @see Enumeration
	*/
	@:overload @:public @:synchronized override public function elements() : java.util.Enumeration<Dynamic>;
	
	/**
	* Gets the object associated with the specified key in the Cache.
	* @param key the key in the hash table
	* @returns the element for the key or null if the key
	*          is not defined in the hash table.
	* @see Cache#put
	*/
	@:overload @:public @:synchronized override public function get(key : Dynamic) : Dynamic;
	
	/**
	* Rehashes the contents of the table into a bigger table.
	* This is method is called automatically when the Cache's
	* size exceeds the threshold.
	*/
	@:overload @:protected private function rehash() : Void;
	
	/**
	* Puts the specified element into the Cache, using the specified
	* key.  The element may be retrieved by doing a get() with the same
	* key.  The key and the element cannot be null.
	* @param key the specified hashtable key
	* @param value the specified element
	* @return the old value of the key, or null if it did not have one.
	* @exception NullPointerException If the value of the specified
	* element is null.
	* @see Cache#get
	*/
	@:overload @:public @:synchronized override public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Removes the element corresponding to the key. Does nothing if the
	* key is not present.
	* @param key the key that needs to be removed
	* @return the value of key, or null if the key was not found.
	*/
	@:overload @:public @:synchronized override public function remove(key : Dynamic) : Dynamic;
	
	
}
@:internal extern class CacheEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	
}
