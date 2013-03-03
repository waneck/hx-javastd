package com.sun.org.apache.xalan.internal.xsltc.runtime;
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
* $Id: Hashtable.java,v 1.2.4.1 2005/09/06 11:05:18 pvedula Exp $
*/
@:internal extern class HashtableEntry
{
	@:overload @:protected private function clone() : Dynamic;
	
	
}
extern class Hashtable
{
	/**
	* Constructs a new, empty hashtable with the specified initial
	* capacity and the specified load factor.
	*/
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Constructs a new, empty hashtable with the specified initial capacity
	* and default load factor.
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a new, empty hashtable with a default capacity and load
	* factor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the number of keys in this hashtable.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Tests if this hashtable maps no keys to values.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Returns an enumeration of the keys in this hashtable.
	*/
	@:overload @:public public function keys() : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of the values in this hashtable.
	* Use the Enumeration methods on the returned object to fetch the elements
	* sequentially.
	*/
	@:overload @:public public function elements() : java.util.Enumeration<Dynamic>;
	
	/**
	* Tests if some key maps into the specified value in this hashtable.
	* This operation is more expensive than the <code>containsKey</code>
	* method.
	*/
	@:overload @:public public function contains(value : Dynamic) : Bool;
	
	/**
	* Tests if the specified object is a key in this hashtable.
	*/
	@:overload @:public public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns the value to which the specified key is mapped in this hashtable.
	*/
	@:overload @:public public function get(key : Dynamic) : Dynamic;
	
	/**
	* Rehashes the contents of the hashtable into a hashtable with a
	* larger capacity. This method is called automatically when the
	* number of keys in the hashtable exceeds this hashtable's capacity
	* and load factor.
	*/
	@:overload @:protected private function rehash() : Void;
	
	/**
	* Maps the specified <code>key</code> to the specified
	* <code>value</code> in this hashtable. Neither the key nor the
	* value can be <code>null</code>.
	* <p>
	* The value can be retrieved by calling the <code>get</code> method
	* with a key that is equal to the original key.
	*/
	@:overload @:public public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Removes the key (and its corresponding value) from this
	* hashtable. This method does nothing if the key is not in the hashtable.
	*/
	@:overload @:public public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Clears this hashtable so that it contains no keys.
	*/
	@:overload @:public public function clear() : Void;
	
	/**
	* Returns a rather long string representation of this hashtable.
	* Handy for debugging - leave it here!!!
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* A hashtable enumerator class.  This class should remain opaque
* to the client. It will use the Enumeration interface.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$runtime$Hashtable$HashtableEnumerator') @:internal extern class Hashtable_HashtableEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	
}
