package java.util.concurrent;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
extern class ConcurrentHashMap<K, V> extends java.util.AbstractMap<K, V> implements java.util.concurrent.ConcurrentMap<K, V> implements java.io.Serializable
{
	/**
	* Creates a new, empty map with the specified initial
	* capacity, load factor and concurrency level.
	*
	* @param initialCapacity the initial capacity. The implementation
	* performs internal sizing to accommodate this many elements.
	* @param loadFactor  the load factor threshold, used to control resizing.
	* Resizing may be performed when the average number of elements per
	* bin exceeds this threshold.
	* @param concurrencyLevel the estimated number of concurrently
	* updating threads. The implementation performs internal sizing
	* to try to accommodate this many threads.
	* @throws IllegalArgumentException if the initial capacity is
	* negative or the load factor or concurrencyLevel are
	* nonpositive.
	*/
	@:overload public function new(initialCapacity : Int, loadFactor : Single, concurrencyLevel : Int) : Void;
	
	/**
	* Creates a new, empty map with the specified initial capacity
	* and load factor and with the default concurrencyLevel (16).
	*
	* @param initialCapacity The implementation performs internal
	* sizing to accommodate this many elements.
	* @param loadFactor  the load factor threshold, used to control resizing.
	* Resizing may be performed when the average number of elements per
	* bin exceeds this threshold.
	* @throws IllegalArgumentException if the initial capacity of
	* elements is negative or the load factor is nonpositive
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Creates a new, empty map with the specified initial capacity,
	* and with default load factor (0.75) and concurrencyLevel (16).
	*
	* @param initialCapacity the initial capacity. The implementation
	* performs internal sizing to accommodate this many elements.
	* @throws IllegalArgumentException if the initial capacity of
	* elements is negative.
	*/
	@:overload public function new(initialCapacity : Int) : Void;
	
	/**
	* Creates a new, empty map with a default initial capacity (16),
	* load factor (0.75) and concurrencyLevel (16).
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new map with the same mappings as the given map.
	* The map is created with a capacity of 1.5 times the number
	* of mappings in the given map or 16 (whichever is greater),
	* and a default load factor (0.75) and concurrencyLevel (16).
	*
	* @param m the map
	*/
	@:overload public function new(m : java.util.Map<K, V>) : Void;
	
	/**
	* Returns <tt>true</tt> if this map contains no key-value mappings.
	*
	* @return <tt>true</tt> if this map contains no key-value mappings
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Returns the number of key-value mappings in this map.  If the
	* map contains more than <tt>Integer.MAX_VALUE</tt> elements, returns
	* <tt>Integer.MAX_VALUE</tt>.
	*
	* @return the number of key-value mappings in this map
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns the value to which the specified key is mapped,
	* or {@code null} if this map contains no mapping for the key.
	*
	* <p>More formally, if this map contains a mapping from a key
	* {@code k} to a value {@code v} such that {@code key.equals(k)},
	* then this method returns {@code v}; otherwise it returns
	* {@code null}.  (There can be at most one such mapping.)
	*
	* @throws NullPointerException if the specified key is null
	*/
	@:overload override public function get(key : Dynamic) : V;
	
	/**
	* Tests if the specified object is a key in this table.
	*
	* @param  key   possible key
	* @return <tt>true</tt> if and only if the specified object
	*         is a key in this table, as determined by the
	*         <tt>equals</tt> method; <tt>false</tt> otherwise.
	* @throws NullPointerException if the specified key is null
	*/
	@:overload override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if this map maps one or more keys to the
	* specified value. Note: This method requires a full internal
	* traversal of the hash table, and so is much slower than
	* method <tt>containsKey</tt>.
	*
	* @param value value whose presence in this map is to be tested
	* @return <tt>true</tt> if this map maps one or more keys to the
	*         specified value
	* @throws NullPointerException if the specified value is null
	*/
	@:overload override public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Legacy method testing if some key maps into the specified value
	* in this table.  This method is identical in functionality to
	* {@link #containsValue}, and exists solely to ensure
	* full compatibility with class {@link java.util.Hashtable},
	* which supported this method prior to introduction of the
	* Java Collections framework.

	* @param  value a value to search for
	* @return <tt>true</tt> if and only if some key maps to the
	*         <tt>value</tt> argument in this table as
	*         determined by the <tt>equals</tt> method;
	*         <tt>false</tt> otherwise
	* @throws NullPointerException if the specified value is null
	*/
	@:overload public function contains(value : Dynamic) : Bool;
	
	/**
	* Maps the specified key to the specified value in this table.
	* Neither the key nor the value can be null.
	*
	* <p> The value can be retrieved by calling the <tt>get</tt> method
	* with a key that is equal to the original key.
	*
	* @param key key with which the specified value is to be associated
	* @param value value to be associated with the specified key
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>
	* @throws NullPointerException if the specified key or value is null
	*/
	@:overload override public function put(key : K, value : V) : V;
	
	/**
	* {@inheritDoc}
	*
	* @return the previous value associated with the specified key,
	*         or <tt>null</tt> if there was no mapping for the key
	* @throws NullPointerException if the specified key or value is null
	*/
	@:overload public function putIfAbsent(key : K, value : V) : V;
	
	/**
	* Copies all of the mappings from the specified map to this one.
	* These mappings replace any mappings that this map had for any of the
	* keys currently in the specified map.
	*
	* @param m mappings to be stored in this map
	*/
	@:overload override public function putAll(m : java.util.Map<K, V>) : Void;
	
	/**
	* Removes the key (and its corresponding value) from this map.
	* This method does nothing if the key is not in the map.
	*
	* @param  key the key that needs to be removed
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>
	* @throws NullPointerException if the specified key is null
	*/
	@:overload override public function remove(key : Dynamic) : V;
	
	/**
	* {@inheritDoc}
	*
	* @throws NullPointerException if the specified key is null
	*/
	@:overload public function remove(key : Dynamic, value : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* @throws NullPointerException if any of the arguments are null
	*/
	@:overload public function replace(key : K, oldValue : V, newValue : V) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* @return the previous value associated with the specified key,
	*         or <tt>null</tt> if there was no mapping for the key
	* @throws NullPointerException if the specified key or value is null
	*/
	@:overload public function replace(key : K, value : V) : V;
	
	/**
	* Removes all of the mappings from this map.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Returns a {@link Set} view of the keys contained in this map.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  The set supports element
	* removal, which removes the corresponding mapping from this map,
	* via the <tt>Iterator.remove</tt>, <tt>Set.remove</tt>,
	* <tt>removeAll</tt>, <tt>retainAll</tt>, and <tt>clear</tt>
	* operations.  It does not support the <tt>add</tt> or
	* <tt>addAll</tt> operations.
	*
	* <p>The view's <tt>iterator</tt> is a "weakly consistent" iterator
	* that will never throw {@link ConcurrentModificationException},
	* and guarantees to traverse elements as they existed upon
	* construction of the iterator, and may (but is not guaranteed to)
	* reflect any modifications subsequent to construction.
	*/
	@:overload override public function keySet() : java.util.Set<K>;
	
	/**
	* Returns a {@link Collection} view of the values contained in this map.
	* The collection is backed by the map, so changes to the map are
	* reflected in the collection, and vice-versa.  The collection
	* supports element removal, which removes the corresponding
	* mapping from this map, via the <tt>Iterator.remove</tt>,
	* <tt>Collection.remove</tt>, <tt>removeAll</tt>,
	* <tt>retainAll</tt>, and <tt>clear</tt> operations.  It does not
	* support the <tt>add</tt> or <tt>addAll</tt> operations.
	*
	* <p>The view's <tt>iterator</tt> is a "weakly consistent" iterator
	* that will never throw {@link ConcurrentModificationException},
	* and guarantees to traverse elements as they existed upon
	* construction of the iterator, and may (but is not guaranteed to)
	* reflect any modifications subsequent to construction.
	*/
	@:overload override public function values() : java.util.Collection<V>;
	
	/**
	* Returns a {@link Set} view of the mappings contained in this map.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  The set supports element
	* removal, which removes the corresponding mapping from the map,
	* via the <tt>Iterator.remove</tt>, <tt>Set.remove</tt>,
	* <tt>removeAll</tt>, <tt>retainAll</tt>, and <tt>clear</tt>
	* operations.  It does not support the <tt>add</tt> or
	* <tt>addAll</tt> operations.
	*
	* <p>The view's <tt>iterator</tt> is a "weakly consistent" iterator
	* that will never throw {@link ConcurrentModificationException},
	* and guarantees to traverse elements as they existed upon
	* construction of the iterator, and may (but is not guaranteed to)
	* reflect any modifications subsequent to construction.
	*/
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	/**
	* Returns an enumeration of the keys in this table.
	*
	* @return an enumeration of the keys in this table
	* @see #keySet()
	*/
	@:overload public function keys() : java.util.Enumeration<K>;
	
	/**
	* Returns an enumeration of the values in this table.
	*
	* @return an enumeration of the values in this table
	* @see #values()
	*/
	@:overload public function elements() : java.util.Enumeration<V>;
	
	
}
/**
* holds values which can't be initialized until after VM is booted.
*/
@:native('java$util$concurrent$ConcurrentHashMap$Holder') @:internal extern class ConcurrentHashMap_Holder
{
	
}
/**
* ConcurrentHashMap list entry. Note that this is never exported
* out as a user-visible Map.Entry.
*/
@:native('java$util$concurrent$ConcurrentHashMap$HashEntry') @:internal extern class ConcurrentHashMap_HashEntry<K, V>
{
	
}
/**
* Segments are specialized versions of hash tables.  This
* subclasses from ReentrantLock opportunistically, just to
* simplify some locking and avoid separate construction.
*/
@:native('java$util$concurrent$ConcurrentHashMap$Segment') @:internal extern class ConcurrentHashMap_Segment<K, V> extends java.util.concurrent.locks.ReentrantLock implements java.io.Serializable
{
	
}
/* ---------------- Iterator Support -------------- */
@:native('java$util$concurrent$ConcurrentHashMap$HashIterator') @:internal extern class ConcurrentHashMap_HashIterator
{
	@:overload @:final public function hasNext() : Bool;
	
	@:overload @:final public function hasMoreElements() : Bool;
	
	@:overload @:final public function remove() : Void;
	
	
}
@:native('java$util$concurrent$ConcurrentHashMap$KeyIterator') @:internal extern class ConcurrentHashMap_KeyIterator extends java.util.concurrent.ConcurrentHashMap.ConcurrentHashMap_HashIterator implements java.util.Iterator<Dynamic> implements java.util.Enumeration<Dynamic>
{
	@:overload @:final public function next() : Dynamic;
	
	@:overload @:final public function nextElement() : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentHashMap$ValueIterator') @:internal extern class ConcurrentHashMap_ValueIterator extends java.util.concurrent.ConcurrentHashMap.ConcurrentHashMap_HashIterator implements java.util.Iterator<Dynamic> implements java.util.Enumeration<Dynamic>
{
	@:overload @:final public function next() : Dynamic;
	
	@:overload @:final public function nextElement() : Dynamic;
	
	
}
/**
* Custom Entry class used by EntryIterator.next(), that relays
* setValue changes to the underlying map.
*/
@:native('java$util$concurrent$ConcurrentHashMap$WriteThroughEntry') @:internal extern class ConcurrentHashMap_WriteThroughEntry extends java.util.AbstractMap.AbstractMap_SimpleEntry<Dynamic, Dynamic>
{
	/**
	* Set our entry's value and write through to the map. The
	* value to return is somewhat arbitrary here. Since a
	* WriteThroughEntry does not necessarily track asynchronous
	* changes, the most recent "previous" value could be
	* different from what we return (or could even have been
	* removed in which case the put will re-establish). We do not
	* and cannot guarantee more.
	*/
	@:overload override public function setValue(value : Dynamic) : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentHashMap$EntryIterator') @:internal extern class ConcurrentHashMap_EntryIterator extends java.util.concurrent.ConcurrentHashMap.ConcurrentHashMap_HashIterator implements java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	
}
@:native('java$util$concurrent$ConcurrentHashMap$KeySet') @:internal extern class ConcurrentHashMap_KeySet extends java.util.AbstractSet<Dynamic>
{
	@:overload override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function clear() : Void;
	
	
}
@:native('java$util$concurrent$ConcurrentHashMap$Values') @:internal extern class ConcurrentHashMap_Values extends java.util.AbstractCollection<Dynamic>
{
	@:overload override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function clear() : Void;
	
	
}
@:native('java$util$concurrent$ConcurrentHashMap$EntrySet') @:internal extern class ConcurrentHashMap_EntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function clear() : Void;
	
	
}
