package java.util;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class WeakHashMap<K, V> extends java.util.AbstractMap<K, V> implements java.util.Map<K, V>
{
	/**
	* Constructs a new, empty <tt>WeakHashMap</tt> with the given initial
	* capacity and the given load factor.
	*
	* @param  initialCapacity The initial capacity of the <tt>WeakHashMap</tt>
	* @param  loadFactor      The load factor of the <tt>WeakHashMap</tt>
	* @throws IllegalArgumentException if the initial capacity is negative,
	*         or if the load factor is nonpositive.
	*/
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Constructs a new, empty <tt>WeakHashMap</tt> with the given initial
	* capacity and the default load factor (0.75).
	*
	* @param  initialCapacity The initial capacity of the <tt>WeakHashMap</tt>
	* @throws IllegalArgumentException if the initial capacity is negative
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a new, empty <tt>WeakHashMap</tt> with the default initial
	* capacity (16) and load factor (0.75).
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <tt>WeakHashMap</tt> with the same mappings as the
	* specified map.  The <tt>WeakHashMap</tt> is created with the default
	* load factor (0.75) and an initial capacity sufficient to hold the
	* mappings in the specified map.
	*
	* @param   m the map whose mappings are to be placed in this map
	* @throws  NullPointerException if the specified map is null
	* @since   1.3
	*/
	@:require(java3) @:overload @:public public function new(m : java.util.Map<K, V>) : Void;
	
	/**
	* Returns the number of key-value mappings in this map.
	* This result is a snapshot, and may not reflect unprocessed
	* entries that will be removed before next attempted access
	* because they are no longer referenced.
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this map contains no key-value mappings.
	* This result is a snapshot, and may not reflect unprocessed
	* entries that will be removed before next attempted access
	* because they are no longer referenced.
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Returns the value to which the specified key is mapped,
	* or {@code null} if this map contains no mapping for the key.
	*
	* <p>More formally, if this map contains a mapping from a key
	* {@code k} to a value {@code v} such that {@code (key==null ? k==null :
	* key.equals(k))}, then this method returns {@code v}; otherwise
	* it returns {@code null}.  (There can be at most one such mapping.)
	*
	* <p>A return value of {@code null} does not <i>necessarily</i>
	* indicate that the map contains no mapping for the key; it's also
	* possible that the map explicitly maps the key to {@code null}.
	* The {@link #containsKey containsKey} operation may be used to
	* distinguish these two cases.
	*
	* @see #put(Object, Object)
	*/
	@:overload @:public override public function get(key : Dynamic) : V;
	
	/**
	* Returns <tt>true</tt> if this map contains a mapping for the
	* specified key.
	*
	* @param  key   The key whose presence in this map is to be tested
	* @return <tt>true</tt> if there is a mapping for <tt>key</tt>;
	*         <tt>false</tt> otherwise
	*/
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Associates the specified value with the specified key in this map.
	* If the map previously contained a mapping for this key, the old
	* value is replaced.
	*
	* @param key key with which the specified value is to be associated.
	* @param value value to be associated with the specified key.
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>.
	*         (A <tt>null</tt> return can also indicate that the map
	*         previously associated <tt>null</tt> with <tt>key</tt>.)
	*/
	@:overload @:public override public function put(key : K, value : V) : V;
	
	/**
	* Copies all of the mappings from the specified map to this map.
	* These mappings will replace any mappings that this map had for any
	* of the keys currently in the specified map.
	*
	* @param m mappings to be stored in this map.
	* @throws  NullPointerException if the specified map is null.
	*/
	@:overload @:public override public function putAll(m : java.util.Map<K, V>) : Void;
	
	/**
	* Removes the mapping for a key from this weak hash map if it is present.
	* More formally, if this map contains a mapping from key <tt>k</tt> to
	* value <tt>v</tt> such that <code>(key==null ?  k==null :
	* key.equals(k))</code>, that mapping is removed.  (The map can contain
	* at most one such mapping.)
	*
	* <p>Returns the value to which this map previously associated the key,
	* or <tt>null</tt> if the map contained no mapping for the key.  A
	* return value of <tt>null</tt> does not <i>necessarily</i> indicate
	* that the map contained no mapping for the key; it's also possible
	* that the map explicitly mapped the key to <tt>null</tt>.
	*
	* <p>The map will not contain a mapping for the specified key once the
	* call returns.
	*
	* @param key key whose mapping is to be removed from the map
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>
	*/
	@:overload @:public override public function remove(key : Dynamic) : V;
	
	/**
	* Removes all of the mappings from this map.
	* The map will be empty after this call returns.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Returns <tt>true</tt> if this map maps one or more keys to the
	* specified value.
	*
	* @param value value whose presence in this map is to be tested
	* @return <tt>true</tt> if this map maps one or more keys to the
	*         specified value
	*/
	@:overload @:public override public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns a {@link Set} view of the keys contained in this map.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  If the map is modified
	* while an iteration over the set is in progress (except through
	* the iterator's own <tt>remove</tt> operation), the results of
	* the iteration are undefined.  The set supports element removal,
	* which removes the corresponding mapping from the map, via the
	* <tt>Iterator.remove</tt>, <tt>Set.remove</tt>,
	* <tt>removeAll</tt>, <tt>retainAll</tt>, and <tt>clear</tt>
	* operations.  It does not support the <tt>add</tt> or <tt>addAll</tt>
	* operations.
	*/
	@:overload @:public override public function keySet() : java.util.Set<K>;
	
	/**
	* Returns a {@link Collection} view of the values contained in this map.
	* The collection is backed by the map, so changes to the map are
	* reflected in the collection, and vice-versa.  If the map is
	* modified while an iteration over the collection is in progress
	* (except through the iterator's own <tt>remove</tt> operation),
	* the results of the iteration are undefined.  The collection
	* supports element removal, which removes the corresponding
	* mapping from the map, via the <tt>Iterator.remove</tt>,
	* <tt>Collection.remove</tt>, <tt>removeAll</tt>,
	* <tt>retainAll</tt> and <tt>clear</tt> operations.  It does not
	* support the <tt>add</tt> or <tt>addAll</tt> operations.
	*/
	@:overload @:public override public function values() : java.util.Collection<V>;
	
	/**
	* Returns a {@link Set} view of the mappings contained in this map.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  If the map is modified
	* while an iteration over the set is in progress (except through
	* the iterator's own <tt>remove</tt> operation, or through the
	* <tt>setValue</tt> operation on a map entry returned by the
	* iterator) the results of the iteration are undefined.  The set
	* supports element removal, which removes the corresponding
	* mapping from the map, via the <tt>Iterator.remove</tt>,
	* <tt>Set.remove</tt>, <tt>removeAll</tt>, <tt>retainAll</tt> and
	* <tt>clear</tt> operations.  It does not support the
	* <tt>add</tt> or <tt>addAll</tt> operations.
	*/
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	
}
/**
* holds values which can't be initialized until after VM is booted.
*/
@:native('java$util$WeakHashMap$Holder') @:internal extern class WeakHashMap_Holder
{
	
}
/**
* The entries in this hash table extend WeakReference, using its main ref
* field as the key.
*/
@:native('java$util$WeakHashMap$Entry') @:internal extern class WeakHashMap_Entry<K, V> extends java.lang.ref.WeakReference<Dynamic> implements java.util.Map.Map_Entry<K, V>
{
	@:overload @:public public function getKey() : K;
	
	@:overload @:public public function getValue() : V;
	
	@:overload @:public public function setValue(newValue : V) : V;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('java$util$WeakHashMap$HashIterator') @:internal extern class WeakHashMap_HashIterator<T> implements java.util.Iterator<T>
{
	@:overload @:public public function hasNext() : Bool;
	
	/** The common parts of next() across different types of iterators */
	@:overload @:protected private function nextEntry() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	@:overload @:public public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload @:public public function next() : Dynamic;
	
	
}
@:native('java$util$WeakHashMap$ValueIterator') @:internal extern class WeakHashMap_ValueIterator extends java.util.WeakHashMap.WeakHashMap_HashIterator<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$WeakHashMap$KeyIterator') @:internal extern class WeakHashMap_KeyIterator extends java.util.WeakHashMap.WeakHashMap_HashIterator<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$WeakHashMap$EntryIterator') @:internal extern class WeakHashMap_EntryIterator extends java.util.WeakHashMap.WeakHashMap_HashIterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	
}
@:native('java$util$WeakHashMap$KeySet') @:internal extern class WeakHashMap_KeySet extends java.util.AbstractSet<Dynamic>
{
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	
}
@:native('java$util$WeakHashMap$Values') @:internal extern class WeakHashMap_Values extends java.util.AbstractCollection<Dynamic>
{
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	
}
@:native('java$util$WeakHashMap$EntrySet') @:internal extern class WeakHashMap_EntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	
}
