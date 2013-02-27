package java.util;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A Red-Black tree based {@link NavigableMap} implementation.
* The map is sorted according to the {@linkplain Comparable natural
* ordering} of its keys, or by a {@link Comparator} provided at map
* creation time, depending on which constructor is used.
*
* <p>This implementation provides guaranteed log(n) time cost for the
* {@code containsKey}, {@code get}, {@code put} and {@code remove}
* operations.  Algorithms are adaptations of those in Cormen, Leiserson, and
* Rivest's <em>Introduction to Algorithms</em>.
*
* <p>Note that the ordering maintained by a tree map, like any sorted map, and
* whether or not an explicit comparator is provided, must be <em>consistent
* with {@code equals}</em> if this sorted map is to correctly implement the
* {@code Map} interface.  (See {@code Comparable} or {@code Comparator} for a
* precise definition of <em>consistent with equals</em>.)  This is so because
* the {@code Map} interface is defined in terms of the {@code equals}
* operation, but a sorted map performs all key comparisons using its {@code
* compareTo} (or {@code compare}) method, so two keys that are deemed equal by
* this method are, from the standpoint of the sorted map, equal.  The behavior
* of a sorted map <em>is</em> well-defined even if its ordering is
* inconsistent with {@code equals}; it just fails to obey the general contract
* of the {@code Map} interface.
*
* <p><strong>Note that this implementation is not synchronized.</strong>
* If multiple threads access a map concurrently, and at least one of the
* threads modifies the map structurally, it <em>must</em> be synchronized
* externally.  (A structural modification is any operation that adds or
* deletes one or more mappings; merely changing the value associated
* with an existing key is not a structural modification.)  This is
* typically accomplished by synchronizing on some object that naturally
* encapsulates the map.
* If no such object exists, the map should be "wrapped" using the
* {@link Collections#synchronizedSortedMap Collections.synchronizedSortedMap}
* method.  This is best done at creation time, to prevent accidental
* unsynchronized access to the map: <pre>
*   SortedMap m = Collections.synchronizedSortedMap(new TreeMap(...));</pre>
*
* <p>The iterators returned by the {@code iterator} method of the collections
* returned by all of this class's "collection view methods" are
* <em>fail-fast</em>: if the map is structurally modified at any time after
* the iterator is created, in any way except through the iterator's own
* {@code remove} method, the iterator will throw a {@link
* ConcurrentModificationException}.  Thus, in the face of concurrent
* modification, the iterator fails quickly and cleanly, rather than risking
* arbitrary, non-deterministic behavior at an undetermined time in the future.
*
* <p>Note that the fail-fast behavior of an iterator cannot be guaranteed
* as it is, generally speaking, impossible to make any hard guarantees in the
* presence of unsynchronized concurrent modification.  Fail-fast iterators
* throw {@code ConcurrentModificationException} on a best-effort basis.
* Therefore, it would be wrong to write a program that depended on this
* exception for its correctness:   <em>the fail-fast behavior of iterators
* should be used only to detect bugs.</em>
*
* <p>All {@code Map.Entry} pairs returned by methods in this class
* and its views represent snapshots of mappings at the time they were
* produced. They do <strong>not</strong> support the {@code Entry.setValue}
* method. (Note however that it is possible to change mappings in the
* associated map using {@code put}.)
*
* <p>This class is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @param <K> the type of keys maintained by this map
* @param <V> the type of mapped values
*
* @author  Josh Bloch and Doug Lea
* @see Map
* @see HashMap
* @see Hashtable
* @see Comparable
* @see Comparator
* @see Collection
* @since 1.2
*/
@:require(java2) extern class TreeMap<K, V> extends java.util.AbstractMap<K, V> implements java.util.NavigableMap<K, V> implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Constructs a new, empty tree map, using the natural ordering of its
	* keys.  All keys inserted into the map must implement the {@link
	* Comparable} interface.  Furthermore, all such keys must be
	* <em>mutually comparable</em>: {@code k1.compareTo(k2)} must not throw
	* a {@code ClassCastException} for any keys {@code k1} and
	* {@code k2} in the map.  If the user attempts to put a key into the
	* map that violates this constraint (for example, the user attempts to
	* put a string key into a map whose keys are integers), the
	* {@code put(Object key, Object value)} call will throw a
	* {@code ClassCastException}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new, empty tree map, ordered according to the given
	* comparator.  All keys inserted into the map must be <em>mutually
	* comparable</em> by the given comparator: {@code comparator.compare(k1,
	* k2)} must not throw a {@code ClassCastException} for any keys
	* {@code k1} and {@code k2} in the map.  If the user attempts to put
	* a key into the map that violates this constraint, the {@code put(Object
	* key, Object value)} call will throw a
	* {@code ClassCastException}.
	*
	* @param comparator the comparator that will be used to order this map.
	*        If {@code null}, the {@linkplain Comparable natural
	*        ordering} of the keys will be used.
	*/
	@:overload public function new(comparator : java.util.Comparator<K>) : Void;
	
	/**
	* Constructs a new tree map containing the same mappings as the given
	* map, ordered according to the <em>natural ordering</em> of its keys.
	* All keys inserted into the new map must implement the {@link
	* Comparable} interface.  Furthermore, all such keys must be
	* <em>mutually comparable</em>: {@code k1.compareTo(k2)} must not throw
	* a {@code ClassCastException} for any keys {@code k1} and
	* {@code k2} in the map.  This method runs in n*log(n) time.
	*
	* @param  m the map whose mappings are to be placed in this map
	* @throws ClassCastException if the keys in m are not {@link Comparable},
	*         or are not mutually comparable
	* @throws NullPointerException if the specified map is null
	*/
	@:overload public function new(m : java.util.Map<K, V>) : Void;
	
	/**
	* Constructs a new tree map containing the same mappings and
	* using the same ordering as the specified sorted map.  This
	* method runs in linear time.
	*
	* @param  m the sorted map whose mappings are to be placed in this map,
	*         and whose comparator is to be used to sort this map
	* @throws NullPointerException if the specified map is null
	*/
	@:overload public function new(m : java.util.SortedMap<K, V>) : Void;
	
	/**
	* Returns the number of key-value mappings in this map.
	*
	* @return the number of key-value mappings in this map
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns {@code true} if this map contains a mapping for the specified
	* key.
	*
	* @param key key whose presence in this map is to be tested
	* @return {@code true} if this map contains a mapping for the
	*         specified key
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	*/
	@:overload override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns {@code true} if this map maps one or more keys to the
	* specified value.  More formally, returns {@code true} if and only if
	* this map contains at least one mapping to a value {@code v} such
	* that {@code (value==null ? v==null : value.equals(v))}.  This
	* operation will probably require time linear in the map size for
	* most implementations.
	*
	* @param value value whose presence in this map is to be tested
	* @return {@code true} if a mapping to {@code value} exists;
	*         {@code false} otherwise
	* @since 1.2
	*/
	@:require(java2) @:overload override public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns the value to which the specified key is mapped,
	* or {@code null} if this map contains no mapping for the key.
	*
	* <p>More formally, if this map contains a mapping from a key
	* {@code k} to a value {@code v} such that {@code key} compares
	* equal to {@code k} according to the map's ordering, then this
	* method returns {@code v}; otherwise it returns {@code null}.
	* (There can be at most one such mapping.)
	*
	* <p>A return value of {@code null} does not <em>necessarily</em>
	* indicate that the map contains no mapping for the key; it's also
	* possible that the map explicitly maps the key to {@code null}.
	* The {@link #containsKey containsKey} operation may be used to
	* distinguish these two cases.
	*
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	*/
	@:overload override public function get(key : Dynamic) : V;
	
	@:overload public function comparator() : java.util.Comparator<K>;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function firstKey() : K;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function lastKey() : K;
	
	/**
	* Copies all of the mappings from the specified map to this map.
	* These mappings replace any mappings that this map had for any
	* of the keys currently in the specified map.
	*
	* @param  map mappings to be stored in this map
	* @throws ClassCastException if the class of a key or value in
	*         the specified map prevents it from being stored in this map
	* @throws NullPointerException if the specified map is null or
	*         the specified map contains a null key and this map does not
	*         permit null keys
	*/
	@:overload override public function putAll(map : java.util.Map<K, V>) : Void;
	
	/**
	* Associates the specified value with the specified key in this map.
	* If the map previously contained a mapping for the key, the old
	* value is replaced.
	*
	* @param key key with which the specified value is to be associated
	* @param value value to be associated with the specified key
	*
	* @return the previous value associated with {@code key}, or
	*         {@code null} if there was no mapping for {@code key}.
	*         (A {@code null} return can also indicate that the map
	*         previously associated {@code null} with {@code key}.)
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	*/
	@:overload override public function put(key : K, value : V) : V;
	
	/**
	* Removes the mapping for this key from this TreeMap if present.
	*
	* @param  key key for which mapping should be removed
	* @return the previous value associated with {@code key}, or
	*         {@code null} if there was no mapping for {@code key}.
	*         (A {@code null} return can also indicate that the map
	*         previously associated {@code null} with {@code key}.)
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	*/
	@:overload override public function remove(key : Dynamic) : V;
	
	/**
	* Removes all of the mappings from this map.
	* The map will be empty after this call returns.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Returns a shallow copy of this {@code TreeMap} instance. (The keys and
	* values themselves are not cloned.)
	*
	* @return a shallow copy of this map
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function firstEntry() : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function lastEntry() : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function pollFirstEntry() : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function pollLastEntry() : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function lowerEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function lowerKey(key : K) : K;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function floorEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function floorKey(key : K) : K;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function ceilingEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function ceilingKey(key : K) : K;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function higherEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @since 1.6
	*/
	@:require(java6) @:overload public function higherKey(key : K) : K;
	
	/**
	* Returns a {@link Set} view of the keys contained in this map.
	* The set's iterator returns the keys in ascending order.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  If the map is modified
	* while an iteration over the set is in progress (except through
	* the iterator's own {@code remove} operation), the results of
	* the iteration are undefined.  The set supports element removal,
	* which removes the corresponding mapping from the map, via the
	* {@code Iterator.remove}, {@code Set.remove},
	* {@code removeAll}, {@code retainAll}, and {@code clear}
	* operations.  It does not support the {@code add} or {@code addAll}
	* operations.
	*/
	@:overload override public function keySet() : java.util.Set<K>;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function navigableKeySet() : java.util.NavigableSet<K>;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function descendingKeySet() : java.util.NavigableSet<K>;
	
	/**
	* Returns a {@link Collection} view of the values contained in this map.
	* The collection's iterator returns the values in ascending order
	* of the corresponding keys.
	* The collection is backed by the map, so changes to the map are
	* reflected in the collection, and vice-versa.  If the map is
	* modified while an iteration over the collection is in progress
	* (except through the iterator's own {@code remove} operation),
	* the results of the iteration are undefined.  The collection
	* supports element removal, which removes the corresponding
	* mapping from the map, via the {@code Iterator.remove},
	* {@code Collection.remove}, {@code removeAll},
	* {@code retainAll} and {@code clear} operations.  It does not
	* support the {@code add} or {@code addAll} operations.
	*/
	@:overload override public function values() : java.util.Collection<V>;
	
	/**
	* Returns a {@link Set} view of the mappings contained in this map.
	* The set's iterator returns the entries in ascending key order.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  If the map is modified
	* while an iteration over the set is in progress (except through
	* the iterator's own {@code remove} operation, or through the
	* {@code setValue} operation on a map entry returned by the
	* iterator) the results of the iteration are undefined.  The set
	* supports element removal, which removes the corresponding
	* mapping from the map, via the {@code Iterator.remove},
	* {@code Set.remove}, {@code removeAll}, {@code retainAll} and
	* {@code clear} operations.  It does not support the
	* {@code add} or {@code addAll} operations.
	*/
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function descendingMap() : java.util.NavigableMap<K, V>;
	
	/**
	* @throws ClassCastException       {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} or {@code toKey} is
	*         null and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @throws IllegalArgumentException {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload public function subMap(fromKey : K, fromInclusive : Bool, toKey : K, toInclusive : Bool) : java.util.NavigableMap<K, V>;
	
	/**
	* @throws ClassCastException       {@inheritDoc}
	* @throws NullPointerException if {@code toKey} is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @throws IllegalArgumentException {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload public function headMap(toKey : K, inclusive : Bool) : java.util.NavigableMap<K, V>;
	
	/**
	* @throws ClassCastException       {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @throws IllegalArgumentException {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload public function tailMap(fromKey : K, inclusive : Bool) : java.util.NavigableMap<K, V>;
	
	/**
	* @throws ClassCastException       {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} or {@code toKey} is
	*         null and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function subMap(fromKey : K, toKey : K) : java.util.SortedMap<K, V>;
	
	/**
	* @throws ClassCastException       {@inheritDoc}
	* @throws NullPointerException if {@code toKey} is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function headMap(toKey : K) : java.util.SortedMap<K, V>;
	
	/**
	* @throws ClassCastException       {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} is null
	*         and this map uses natural ordering, or its comparator
	*         does not permit null keys
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function tailMap(fromKey : K) : java.util.SortedMap<K, V>;
	
	
}
@:native('java$util$TreeMap$Values') @:internal extern class TreeMap_Values extends java.util.AbstractCollection<Dynamic>
{
	@:overload override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function clear() : Void;
	
	
}
@:native('java$util$TreeMap$EntrySet') @:internal extern class TreeMap_EntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function size() : Int;
	
	@:overload override public function clear() : Void;
	
	
}
@:native('java$util$TreeMap$KeySet') @:internal extern class TreeMap_KeySet<E> extends java.util.AbstractSet<E> implements java.util.NavigableSet<E>
{
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	@:overload public function descendingIterator() : java.util.Iterator<E>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function clear() : Void;
	
	@:overload public function lower(e : E) : E;
	
	@:overload public function floor(e : E) : E;
	
	@:overload public function ceiling(e : E) : E;
	
	@:overload public function higher(e : E) : E;
	
	@:overload public function first() : E;
	
	@:overload public function last() : E;
	
	@:overload public function comparator() : java.util.Comparator<E>;
	
	@:overload public function pollFirst() : E;
	
	@:overload public function pollLast() : E;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload public function subSet(fromElement : E, fromInclusive : Bool, toElement : E, toInclusive : Bool) : java.util.NavigableSet<E>;
	
	@:overload public function headSet(toElement : E, inclusive : Bool) : java.util.NavigableSet<E>;
	
	@:overload public function tailSet(fromElement : E, inclusive : Bool) : java.util.NavigableSet<E>;
	
	@:overload public function subSet(fromElement : E, toElement : E) : java.util.SortedSet<E>;
	
	@:overload public function headSet(toElement : E) : java.util.SortedSet<E>;
	
	@:overload public function tailSet(fromElement : E) : java.util.SortedSet<E>;
	
	@:overload public function descendingSet() : java.util.NavigableSet<E>;
	
	
}
/**
* Base class for TreeMap Iterators
*/
@:native('java$util$TreeMap$PrivateEntryIterator') @:internal extern class TreeMap_PrivateEntryIterator<T> implements java.util.Iterator<T>
{
	@:overload @:final public function hasNext() : Bool;
	
	@:overload public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload @:public public function next() : Dynamic;
	
	
}
@:native('java$util$TreeMap$EntryIterator') @:internal extern class TreeMap_EntryIterator extends TreeMap_PrivateEntryIterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	
}
@:native('java$util$TreeMap$ValueIterator') @:internal extern class TreeMap_ValueIterator extends TreeMap_PrivateEntryIterator<Dynamic>
{
	@:overload override public function next() : Dynamic;
	
	
}
@:native('java$util$TreeMap$KeyIterator') @:internal extern class TreeMap_KeyIterator extends TreeMap_PrivateEntryIterator<Dynamic>
{
	@:overload override public function next() : Dynamic;
	
	
}
@:native('java$util$TreeMap$DescendingKeyIterator') @:internal extern class TreeMap_DescendingKeyIterator extends TreeMap_PrivateEntryIterator<Dynamic>
{
	@:overload override public function next() : Dynamic;
	
	
}
/**
* @serial include
*/
@:native('java$util$TreeMap$NavigableSubMap') @:internal extern class TreeMap_NavigableSubMap<K, V> extends java.util.AbstractMap<K, V> implements java.util.NavigableMap<K, V> implements java.io.Serializable
{
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function size() : Int;
	
	@:overload @:final override public function containsKey(key : Dynamic) : Bool;
	
	@:overload @:final override public function put(key : K, value : V) : V;
	
	@:overload @:final override public function get(key : Dynamic) : V;
	
	@:overload @:final override public function remove(key : Dynamic) : V;
	
	@:overload @:final public function ceilingEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function ceilingKey(key : K) : K;
	
	@:overload @:final public function higherEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function higherKey(key : K) : K;
	
	@:overload @:final public function floorEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function floorKey(key : K) : K;
	
	@:overload @:final public function lowerEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function lowerKey(key : K) : K;
	
	@:overload @:final public function firstKey() : K;
	
	@:overload @:final public function lastKey() : K;
	
	@:overload @:final public function firstEntry() : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function lastEntry() : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function pollFirstEntry() : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function pollLastEntry() : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:final public function navigableKeySet() : java.util.NavigableSet<K>;
	
	@:overload @:final override public function keySet() : java.util.Set<K>;
	
	@:overload public function descendingKeySet() : java.util.NavigableSet<K>;
	
	@:overload @:final public function subMap(fromKey : K, toKey : K) : java.util.SortedMap<K, V>;
	
	@:overload @:final public function headMap(toKey : K) : java.util.SortedMap<K, V>;
	
	@:overload @:final public function tailMap(fromKey : K) : java.util.SortedMap<K, V>;
	
	/**
	* Returns the comparator used to order the keys in this map, or
	* {@code null} if this map uses the {@linkplain Comparable
	* natural ordering} of its keys.
	*
	* @return the comparator used to order the keys in this map,
	*         or {@code null} if this map uses the natural ordering
	*         of its keys
	*/
	@:overload public function comparator() : java.util.Comparator<K>;
	
	/**
	* Returns a view of the portion of this map whose keys are less than (or
	* equal to, if {@code inclusive} is true) {@code toKey}.  The returned
	* map is backed by this map, so changes in the returned map are reflected
	* in this map, and vice-versa.  The returned map supports all optional
	* map operations that this map supports.
	*
	* <p>The returned map will throw an {@code IllegalArgumentException}
	* on an attempt to insert a key outside its range.
	*
	* @param toKey high endpoint of the keys in the returned map
	* @param inclusive {@code true} if the high endpoint
	*        is to be included in the returned view
	* @return a view of the portion of this map whose keys are less than
	*         (or equal to, if {@code inclusive} is true) {@code toKey}
	* @throws ClassCastException if {@code toKey} is not compatible
	*         with this map's comparator (or, if the map has no comparator,
	*         if {@code toKey} does not implement {@link Comparable}).
	*         Implementations may, but are not required to, throw this
	*         exception if {@code toKey} cannot be compared to keys
	*         currently in the map.
	* @throws NullPointerException if {@code toKey} is null
	*         and this map does not permit null keys
	* @throws IllegalArgumentException if this map itself has a
	*         restricted range, and {@code toKey} lies outside the
	*         bounds of the range
	*/
	@:overload public function headMap(toKey : K, inclusive : Bool) : NavigableMap<K, V>;
	
	/**
	* Removes all of the mappings from this map (optional operation).
	* The map will be empty after this call returns.
	*
	* @throws UnsupportedOperationException if the <tt>clear</tt> operation
	*         is not supported by this map
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Returns a reverse order view of the mappings contained in this map.
	* The descending map is backed by this map, so changes to the map are
	* reflected in the descending map, and vice-versa.  If either map is
	* modified while an iteration over a collection view of either map
	* is in progress (except through the iterator's own {@code remove}
	* operation), the results of the iteration are undefined.
	*
	* <p>The returned map has an ordering equivalent to
	* <tt>{@link Collections#reverseOrder(Comparator) Collections.reverseOrder}(comparator())</tt>.
	* The expression {@code m.descendingMap().descendingMap()} returns a
	* view of {@code m} essentially equivalent to {@code m}.
	*
	* @return a reverse order view of this map
	*/
	@:overload public function descendingMap() : NavigableMap<K, V>;
	
	/**
	* Returns a view of the portion of this map whose keys range from
	* {@code fromKey} to {@code toKey}.  If {@code fromKey} and
	* {@code toKey} are equal, the returned map is empty unless
	* {@code fromInclusive} and {@code toInclusive} are both true.  The
	* returned map is backed by this map, so changes in the returned map are
	* reflected in this map, and vice-versa.  The returned map supports all
	* optional map operations that this map supports.
	*
	* <p>The returned map will throw an {@code IllegalArgumentException}
	* on an attempt to insert a key outside of its range, or to construct a
	* submap either of whose endpoints lie outside its range.
	*
	* @param fromKey low endpoint of the keys in the returned map
	* @param fromInclusive {@code true} if the low endpoint
	*        is to be included in the returned view
	* @param toKey high endpoint of the keys in the returned map
	* @param toInclusive {@code true} if the high endpoint
	*        is to be included in the returned view
	* @return a view of the portion of this map whose keys range from
	*         {@code fromKey} to {@code toKey}
	* @throws ClassCastException if {@code fromKey} and {@code toKey}
	*         cannot be compared to one another using this map's comparator
	*         (or, if the map has no comparator, using natural ordering).
	*         Implementations may, but are not required to, throw this
	*         exception if {@code fromKey} or {@code toKey}
	*         cannot be compared to keys currently in the map.
	* @throws NullPointerException if {@code fromKey} or {@code toKey}
	*         is null and this map does not permit null keys
	* @throws IllegalArgumentException if {@code fromKey} is greater than
	*         {@code toKey}; or if this map itself has a restricted
	*         range, and {@code fromKey} or {@code toKey} lies
	*         outside the bounds of the range
	*/
	@:overload public function subMap(fromKey : K, fromInclusive : Bool, toKey : K, toInclusive : Bool) : NavigableMap<K, V>;
	
	/**
	* Returns a view of the portion of this map whose keys are greater than (or
	* equal to, if {@code inclusive} is true) {@code fromKey}.  The returned
	* map is backed by this map, so changes in the returned map are reflected
	* in this map, and vice-versa.  The returned map supports all optional
	* map operations that this map supports.
	*
	* <p>The returned map will throw an {@code IllegalArgumentException}
	* on an attempt to insert a key outside its range.
	*
	* @param fromKey low endpoint of the keys in the returned map
	* @param inclusive {@code true} if the low endpoint
	*        is to be included in the returned view
	* @return a view of the portion of this map whose keys are greater than
	*         (or equal to, if {@code inclusive} is true) {@code fromKey}
	* @throws ClassCastException if {@code fromKey} is not compatible
	*         with this map's comparator (or, if the map has no comparator,
	*         if {@code fromKey} does not implement {@link Comparable}).
	*         Implementations may, but are not required to, throw this
	*         exception if {@code fromKey} cannot be compared to keys
	*         currently in the map.
	* @throws NullPointerException if {@code fromKey} is null
	*         and this map does not permit null keys
	* @throws IllegalArgumentException if this map itself has a
	*         restricted range, and {@code fromKey} lies outside the
	*         bounds of the range
	*/
	@:overload public function tailMap(fromKey : K, inclusive : Bool) : NavigableMap<K, V>;
	
	/**
	* Copies all of the mappings from the specified map to this map
	* (optional operation).  The effect of this call is equivalent to that
	* of calling {@link #put(Object,Object) put(k, v)} on this map once
	* for each mapping from key <tt>k</tt> to value <tt>v</tt> in the
	* specified map.  The behavior of this operation is undefined if the
	* specified map is modified while the operation is in progress.
	*
	* @param m mappings to be stored in this map
	* @throws UnsupportedOperationException if the <tt>putAll</tt> operation
	*         is not supported by this map
	* @throws ClassCastException if the class of a key or value in the
	*         specified map prevents it from being stored in this map
	* @throws NullPointerException if the specified map is null, or if
	*         this map does not permit null keys or values, and the
	*         specified map contains null keys or values
	* @throws IllegalArgumentException if some property of a key or value in
	*         the specified map prevents it from being stored in this map
	*/
	@:overload override public function putAll(m : Map<K, V>) : Void;
	
	/**
	* Returns a {@link Set} view of the mappings contained in this map.
	* The set's iterator returns the entries in ascending key order.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  If the map is modified
	* while an iteration over the set is in progress (except through
	* the iterator's own {@code remove} operation, or through the
	* {@code setValue} operation on a map entry returned by the
	* iterator) the results of the iteration are undefined.  The set
	* supports element removal, which removes the corresponding
	* mapping from the map, via the {@code Iterator.remove},
	* {@code Set.remove}, {@code removeAll}, {@code retainAll} and
	* {@code clear} operations.  It does not support the
	* {@code add} or {@code addAll} operations.
	*
	* @return a set view of the mappings contained in this map,
	*         sorted in ascending key order
	*/
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	/**
	* Returns a {@link Collection} view of the values contained in this map.
	* The collection's iterator returns the values in ascending order
	* of the corresponding keys.
	* The collection is backed by the map, so changes to the map are
	* reflected in the collection, and vice-versa.  If the map is
	* modified while an iteration over the collection is in progress
	* (except through the iterator's own {@code remove} operation),
	* the results of the iteration are undefined.  The collection
	* supports element removal, which removes the corresponding
	* mapping from the map, via the {@code Iterator.remove},
	* {@code Collection.remove}, {@code removeAll},
	* {@code retainAll} and {@code clear} operations.  It does not
	* support the {@code add} or {@code addAll} operations.
	*
	* @return a collection view of the values contained in this map,
	*         sorted in ascending key order
	*/
	@:overload override public function values() : java.util.Collection<V>;
	
	/**
	* Returns <tt>true</tt> if this map maps one or more keys to the
	* specified value.  More formally, returns <tt>true</tt> if and only if
	* this map contains at least one mapping to a value <tt>v</tt> such that
	* <tt>(value==null ? v==null : value.equals(v))</tt>.  This operation
	* will probably require time linear in the map size for most
	* implementations of the <tt>Map</tt> interface.
	*
	* @param value value whose presence in this map is to be tested
	* @return <tt>true</tt> if this map maps one or more keys to the
	*         specified value
	* @throws ClassCastException if the value is of an inappropriate type for
	*         this map
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified value is null and this
	*         map does not permit null values
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload override public function containsValue(value : Dynamic) : Bool;
	
	
}
@:native('java$util$TreeMap$NavigableSubMap$EntrySetView') @:internal extern class TreeMap_NavigableSubMap_EntrySetView extends java.util.AbstractSet<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	
}
/**
* Iterators for SubMaps
*/
@:native('java$util$TreeMap$NavigableSubMap$SubMapIterator') @:internal extern class TreeMap_NavigableSubMap_SubMapIterator<T> implements java.util.Iterator<T>
{
	@:overload @:final public function hasNext() : Bool;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload public function next() : Dynamic;
	
	/**
	* Removes from the underlying collection the last element returned
	* by this iterator (optional operation).  This method can be called
	* only once per call to {@link #next}.  The behavior of an iterator
	* is unspecified if the underlying collection is modified while the
	* iteration is in progress in any way other than by calling this
	* method.
	*
	* @throws UnsupportedOperationException if the {@code remove}
	*         operation is not supported by this iterator
	*
	* @throws IllegalStateException if the {@code next} method has not
	*         yet been called, or the {@code remove} method has already
	*         been called after the last call to the {@code next}
	*         method
	*/
	@:overload public function remove() : Void;
	
	
}
@:native('java$util$TreeMap$NavigableSubMap$SubMapEntryIterator') @:internal extern class TreeMap_NavigableSubMap_SubMapEntryIterator extends TreeMap_NavigableSubMap_SubMapIterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	@:overload override public function remove() : Void;
	
	
}
@:native('java$util$TreeMap$NavigableSubMap$SubMapKeyIterator') @:internal extern class TreeMap_NavigableSubMap_SubMapKeyIterator extends TreeMap_NavigableSubMap_SubMapIterator<Dynamic>
{
	@:overload override public function next() : Dynamic;
	
	@:overload override public function remove() : Void;
	
	
}
@:native('java$util$TreeMap$NavigableSubMap$DescendingSubMapEntryIterator') @:internal extern class TreeMap_NavigableSubMap_DescendingSubMapEntryIterator extends TreeMap_NavigableSubMap_SubMapIterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	@:overload override public function remove() : Void;
	
	
}
@:native('java$util$TreeMap$NavigableSubMap$DescendingSubMapKeyIterator') @:internal extern class TreeMap_NavigableSubMap_DescendingSubMapKeyIterator extends TreeMap_NavigableSubMap_SubMapIterator<Dynamic>
{
	@:overload override public function next() : Dynamic;
	
	@:overload override public function remove() : Void;
	
	
}
/**
* @serial include
*/
@:native('java$util$TreeMap$AscendingSubMap') @:internal extern class TreeMap_AscendingSubMap<K, V> extends TreeMap_NavigableSubMap<K, V>
{
	@:overload override public function comparator() : java.util.Comparator<K>;
	
	@:overload override public function subMap(fromKey : K, fromInclusive : Bool, toKey : K, toInclusive : Bool) : java.util.NavigableMap<K, V>;
	
	@:overload override public function headMap(toKey : K, inclusive : Bool) : java.util.NavigableMap<K, V>;
	
	@:overload override public function tailMap(fromKey : K, inclusive : Bool) : java.util.NavigableMap<K, V>;
	
	@:overload override public function descendingMap() : java.util.NavigableMap<K, V>;
	
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	
}
@:native('java$util$TreeMap$AscendingSubMap$AscendingEntrySetView') @:internal extern class TreeMap_AscendingSubMap_AscendingEntrySetView extends TreeMap_NavigableSubMap_EntrySetView
{
	@:overload override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	
}
/**
* @serial include
*/
@:native('java$util$TreeMap$DescendingSubMap') @:internal extern class TreeMap_DescendingSubMap<K, V> extends TreeMap_NavigableSubMap<K, V>
{
	@:overload override public function comparator() : java.util.Comparator<K>;
	
	@:overload override public function subMap(fromKey : K, fromInclusive : Bool, toKey : K, toInclusive : Bool) : java.util.NavigableMap<K, V>;
	
	@:overload override public function headMap(toKey : K, inclusive : Bool) : java.util.NavigableMap<K, V>;
	
	@:overload override public function tailMap(fromKey : K, inclusive : Bool) : java.util.NavigableMap<K, V>;
	
	@:overload override public function descendingMap() : java.util.NavigableMap<K, V>;
	
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	
}
@:native('java$util$TreeMap$DescendingSubMap$DescendingEntrySetView') @:internal extern class TreeMap_DescendingSubMap_DescendingEntrySetView extends TreeMap_NavigableSubMap_EntrySetView
{
	@:overload override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	
}
/**
* This class exists solely for the sake of serialization
* compatibility with previous releases of TreeMap that did not
* support NavigableMap.  It translates an old-version SubMap into
* a new-version AscendingSubMap. This class is never otherwise
* used.
*
* @serial include
*/
@:native('java$util$TreeMap$SubMap') @:internal extern class TreeMap_SubMap extends java.util.AbstractMap<Dynamic, Dynamic> implements java.util.SortedMap<Dynamic, Dynamic> implements java.io.Serializable
{
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload public function lastKey() : Dynamic;
	
	@:overload public function firstKey() : Dynamic;
	
	@:overload public function subMap(fromKey : Dynamic, toKey : Dynamic) : java.util.SortedMap<Dynamic, Dynamic>;
	
	@:overload public function headMap(toKey : Dynamic) : java.util.SortedMap<Dynamic, Dynamic>;
	
	@:overload public function tailMap(fromKey : Dynamic) : java.util.SortedMap<Dynamic, Dynamic>;
	
	@:overload public function comparator() : java.util.Comparator<Dynamic>;
	
	
}
/**
* Node in the Tree.  Doubles as a means to pass key-value pairs back to
* user (see Map.Entry).
*/
@:native('java$util$TreeMap$Entry') @:internal extern class TreeMap_Entry<K, V> implements java.util.Map.Map_Entry<K, V>
{
	/**
	* Returns the key.
	*
	* @return the key
	*/
	@:overload public function getKey() : K;
	
	/**
	* Returns the value associated with the key.
	*
	* @return the value associated with the key
	*/
	@:overload public function getValue() : V;
	
	/**
	* Replaces the value currently associated with the key with the given
	* value.
	*
	* @return the value associated with the key before this method was
	*         called
	*/
	@:overload public function setValue(value : V) : V;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
