package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
/**
* Hash table based implementation of the Map interface.  This implementation
* provides all of the optional Map operations, and permits null values and
* the null key.  (HashMap is roughly equivalent to Hashtable, except that it
* is unsynchronized and permits nulls.) In addition, elements in the map are
* ordered and doubly linked together.
* <p>
* This implementation provides constant-time performance for the basic
* operations (get and put), assuming the the hash function disperses the
* elements properly among the buckets.  Iteration over Collection views
* requires time proportional to its size (the number of key-value mappings)
* and returns elements in the order they are linked. In a HashMap the
* iteration would require time  proportional to the capacity of the map
* plus the map size.
* <p>
* An instance of LinkedHashMap has two parameters that affect its efficiency:
* its <i>capacity</i> and its <i>load factor</i>. The load factor should be
* between 0.0 and 1.0. When the number of mappings in the LinkedHashMap exceeds
* the product of the load factor and the current capacity, the capacity is
* increased by calling the rehash method which requires time proportional
* to the number of key-value mappings in the map. Larger load factors
* use memory more efficiently, at the expense of larger expected time per
* lookup.
* <p>
* If many mappings are to be stored in a LinkedHashMap, creating it with a
* sufficiently large capacity will allow the mappings to be stored more
* efficiently than letting it perform automatic rehashing as needed to grow
* the table.
* <p>
* <strong>Note that this implementation is not synchronized.</strong> If
* multiple threads access a LinkedHashMap concurrently, and at least one of the
* threads modifies the LinkedHashMap structurally, it <em>must</em> be
* synchronized externally.  (A structural modification is any operation that
* adds or deletes one or more mappings; merely changing the value associated
* with a key that is already contained in the Table is not a structural
* modification.)  This is typically accomplished by synchronizing on some
* object that naturally encapsulates the LinkedHashMap.  If no such object
* exists, the LinkedHashMap should be "wrapped" using the
* Collections.synchronizedSet method.  This is best done at creation time, to
* prevent accidental unsynchronized access to the LinkedHashMap:
* <pre>
*      Map m = Collections.synchronizedMap(new LinkedHashMap(...));
* </pre>
* <p>
* The Iterators returned by the iterator methods of the Collections returned
* by all of LinkedHashMap's "collection view methods" are <em>fail-fast</em>:
* if the LinkedHashMap is structurally modified at any time after the Iterator
* is created, in any way except through the Iterator's own remove or add
* methods, the Iterator will throw a ConcurrentModificationException.  Thus,
* in the face of concurrent modification, the Iterator fails quickly and
* cleanly, rather than risking arbitrary, non-deterministic behavior at an
* undetermined time in the future.
*
* @author  Josh Bloch
* @author  Arthur van Hoff
* @author  Zhenghua Li
* @see     Object#hashCode()
* @see     java.util.Collection
* @see     java.util.Map
* @see     java.util.TreeMap
* @see     java.util.Hashtable
* @see     java.util.HashMap
*/
extern class LinkedHashMap extends java.util.AbstractMap<Dynamic, Dynamic> implements java.util.Map<Dynamic, Dynamic> implements java.io.Serializable
{
	/**
	* Constructs a new, empty LinkedHashMap with the specified initial
	* capacity and the specified load factor.
	*
	* @param      initialCapacity   the initial capacity of the LinkedHashMap.
	* @param      loadFactor        a number between 0.0 and 1.0.
	* @exception  IllegalArgumentException  if the initial capacity is less
	*               than or equal to zero, or if the load factor is less than
	*               or equal to zero.
	*/
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Constructs a new, empty LinkedHashMap with the specified initial capacity
	* and default load factor.
	*
	* @param   initialCapacity   the initial capacity of the LinkedHashMap.
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a new, empty LinkedHashMap with a default capacity and load
	* factor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new LinkedHashMap with the same mappings as the given
	* Map.  The LinkedHashMap is created with a capacity of thrice the number
	* of mappings in the given Map or 11 (whichever is greater), and a
	* default load factor.
	*/
	@:overload @:public public function new(t : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Returns the number of key-value mappings in this Map.
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns true if this Map contains no key-value mappings.
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Returns true if this LinkedHashMap maps one or more keys to the specified
	* value.
	*
	* @param value value whose presence in this Map is to be tested.
	*/
	@:overload @:public override public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns true if this LinkedHashMap contains a mapping for the specified
	* key.
	*
	* @param key key whose presence in this Map is to be tested.
	*/
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns the value to which this LinkedHashMap maps the specified key.
	* Returns null if the LinkedHashMap contains no mapping for this key.
	* A return value of null does not <em>necessarily</em> indicate that the
	* LinkedHashMap contains no mapping for the key; it's also possible that
	* the LinkedHashMap explicitly maps the key to null.  The containsKey
	* operation may be used to distinguish these two cases.
	*
	* @param key key whose associated value is to be returned.
	*/
	@:overload @:public override public function get(key : Dynamic) : Dynamic;
	
	/**
	* Returns the position of the mapping for the specified key
	* in the ordered map.
	*
	* @param key the specified key.
	* @return index of the key mapping.
	*/
	@:overload @:public public function indexOf(key : Dynamic) : Int;
	
	/**
	* Associates the specified value with the specified key in this
	* LinkedHashMap and position the mapping at the specified index.
	* If the LinkedHashMap previously contained a mapping for this key,
	* the old value is replaced and the position of this mapping entry
	* in the double linked list remains the same. Otherwise, a new mapping
	* entry is created and inserted into the list at the specified
	* position.
	*
	* @param index     the position to put the key-value mapping.
	* @param key       key with which the specified value is to be associated.
	* @param value     value to be associated with the specified key.
	* @return previous value associated with specified key, or null if there
	*         was no mapping for key.  A null return can also indicate that
	*         the LinkedHashMap previously associated null with the specified
	*         key.
	*/
	@:overload @:public public function put(index : Int, key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Associates the specified value with the specified key in this
	* LinkedHashMap. If the LinkedHashMap previously contained a mapping for
	* this key, the old value is replaced. The mapping entry is also appended
	* to the end of the ordered linked list.
	*
	* @param key key with which the specified value is to be associated.
	* @param value value to be associated with the specified key.
	* @return previous value associated with specified key, or null if there
	*         was no mapping for key.  A null return can also indicate that
	*         the LinkedHashMap previously associated null with the specified
	*         key.
	*/
	@:overload @:public override public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Removes the mapping for this key from this LinkedHashMap if present.
	* The mapping would also be removed from the double linked list.
	*
	* @param key key whose mapping is to be removed from the Map.
	* @return previous value associated with specified key, or null if there
	*         was no mapping for key.  A null return can also indicate that
	*         the LinkedHashMap previously associated null with the specified
	*         key.
	*/
	@:overload @:public override public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Copies all of the mappings from the specified Map to this LinkedHashMap
	* These mappings will replace any mappings that this LinkedHashMap had for
	* any of the keys currently in the specified Map.
	*
	* @param t Mappings to be stored in this Map.
	*/
	@:overload @:public override public function putAll(t : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Removes all mappings from this LinkedHashMap.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Returns a shallow copy of this LinkedHashMap. The keys and values
	* themselves are not cloned.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Returns a Set view of the keys contained in this LinkedHashMap.  The Set
	* is backed by the LinkedHashMap, so changes to the LinkedHashMap are
	* reflected in the Set, and vice-versa.  The Set supports element removal,
	* which removes the corresponding mapping from the LinkedHashMap, via the
	* Iterator.remove, Set.remove, removeAll retainAll, and clear operations.
	* It does not support the add or addAll operations.
	*/
	@:overload @:public override public function keySet() : java.util.Set<Dynamic>;
	
	/**
	* Returns a Collection view of the values contained in this LinkedHashMap.
	* The Collection is backed by the LinkedHashMap, so changes to the
	* LinkedHashMap are reflected in the Collection, and vice-versa.  The
	* Collection supports element removal, which removes the corresponding
	* mapping from the LinkedHashMap, via the Iterator.remove,
	* Collection.remove, removeAll, retainAll and clear operations.  It does
	* not support the add or addAll operations.
	*/
	@:overload @:public override public function values() : java.util.Collection<Dynamic>;
	
	/**
	* Returns a Collection view of the mappings contained in this
	* LinkedHashMap. Each element in the returned collection is a Map.Entry.
	* The Collection is backed by the LinkedHashMap, so changes to the
	* LinkedHashMap are reflected in the Collection, and vice-versa.  The
	* Collection supports element removal, which removes the corresponding
	* mapping from the LinkedHashMap, via the Iterator.remove,
	* Collection.remove, removeAll, retainAll and clear operations.  It does
	* not support the add or addAll operations.
	*
	* @see   java.util.Map.Entry
	*/
	@:overload @:public override public function entrySet() : java.util.Set<Dynamic>;
	
	/**
	* Compares the specified Object with this Map for equality.
	* Returns true if the given object is also a LinkedHashMap and the two
	* Maps represent the same mappings in the same order.  More formally,
	* two Maps <code>t1</code> and <code>t2</code> represent the same mappings
	* if <code>t1.keySet().equals(t2.keySet())</code> and for every
	* key <code>k</code> in <code>t1.keySet()</code>, <code>
	* (t1.get(k)==null ? t2.get(k)==null : t1.get(k).equals(t2.get(k)))
	* </code>.
	* <p>
	* This implementation first checks if the specified Object is this Map;
	* if so it returns true.  Then, it checks if the specified Object is
	* a Map whose size is identical to the size of this Set; if not, it
	* it returns false.  If so, it iterates over this Map and the specified
	* Map's entrySet() Collection, and checks that the specified Map contains
	* each mapping that this Map contains at the same position.  If the
	* specified Map fails to contain such a mapping in the right order, false
	* is returned.  If the iteration completes, true is returned.
	*
	* @param o Object to be compared for equality with this Map.
	* @return true if the specified Object is equal to this Map.
	*
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	
}
/**
* LinkedHashMap collision list entry.
*/
@:native('com$sun$tools$jdi$LinkedHashMap$Entry') @:internal extern class LinkedHashMap_Entry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload @:public public function getKey() : Dynamic;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public public function setValue(value : Dynamic) : Dynamic;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$LinkedHashMap$HashIterator') @:internal extern class LinkedHashMap_HashIterator implements java.util.Iterator<Dynamic>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	
}
