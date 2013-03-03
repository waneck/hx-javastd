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
/**
* A scalable concurrent {@link ConcurrentNavigableMap} implementation.
* The map is sorted according to the {@linkplain Comparable natural
* ordering} of its keys, or by a {@link Comparator} provided at map
* creation time, depending on which constructor is used.
*
* <p>This class implements a concurrent variant of <a
* href="http://en.wikipedia.org/wiki/Skip_list" target="_top">SkipLists</a>
* providing expected average <i>log(n)</i> time cost for the
* <tt>containsKey</tt>, <tt>get</tt>, <tt>put</tt> and
* <tt>remove</tt> operations and their variants.  Insertion, removal,
* update, and access operations safely execute concurrently by
* multiple threads.  Iterators are <i>weakly consistent</i>, returning
* elements reflecting the state of the map at some point at or since
* the creation of the iterator.  They do <em>not</em> throw {@link
* ConcurrentModificationException}, and may proceed concurrently with
* other operations. Ascending key ordered views and their iterators
* are faster than descending ones.
*
* <p>All <tt>Map.Entry</tt> pairs returned by methods in this class
* and its views represent snapshots of mappings at the time they were
* produced. They do <em>not</em> support the <tt>Entry.setValue</tt>
* method. (Note however that it is possible to change mappings in the
* associated map using <tt>put</tt>, <tt>putIfAbsent</tt>, or
* <tt>replace</tt>, depending on exactly which effect you need.)
*
* <p>Beware that, unlike in most collections, the <tt>size</tt>
* method is <em>not</em> a constant-time operation. Because of the
* asynchronous nature of these maps, determining the current number
* of elements requires a traversal of the elements, and so may report
* inaccurate results if this collection is modified during traversal.
* Additionally, the bulk operations <tt>putAll</tt>, <tt>equals</tt>,
* <tt>toArray</tt>, <tt>containsValue</tt>, and <tt>clear</tt> are
* <em>not</em> guaranteed to be performed atomically. For example, an
* iterator operating concurrently with a <tt>putAll</tt> operation
* might view only some of the added elements.
*
* <p>This class and its views and iterators implement all of the
* <em>optional</em> methods of the {@link Map} and {@link Iterator}
* interfaces. Like most other concurrent collections, this class does
* <em>not</em> permit the use of <tt>null</tt> keys or values because some
* null return values cannot be reliably distinguished from the absence of
* elements.
*
* <p>This class is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @author Doug Lea
* @param <K> the type of keys maintained by this map
* @param <V> the type of mapped values
* @since 1.6
*/
@:require(java6) extern class ConcurrentSkipListMap<K, V> extends java.util.AbstractMap<K, V> implements java.util.concurrent.ConcurrentNavigableMap<K, V> implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Constructs a new, empty map, sorted according to the
	* {@linkplain Comparable natural ordering} of the keys.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new, empty map, sorted according to the specified
	* comparator.
	*
	* @param comparator the comparator that will be used to order this map.
	*        If <tt>null</tt>, the {@linkplain Comparable natural
	*        ordering} of the keys will be used.
	*/
	@:overload @:public public function new(comparator : java.util.Comparator<K>) : Void;
	
	/**
	* Constructs a new map containing the same mappings as the given map,
	* sorted according to the {@linkplain Comparable natural ordering} of
	* the keys.
	*
	* @param  m the map whose mappings are to be placed in this map
	* @throws ClassCastException if the keys in <tt>m</tt> are not
	*         {@link Comparable}, or are not mutually comparable
	* @throws NullPointerException if the specified map or any of its keys
	*         or values are null
	*/
	@:overload @:public public function new(m : java.util.Map<K, V>) : Void;
	
	/**
	* Constructs a new map containing the same mappings and using the
	* same ordering as the specified sorted map.
	*
	* @param m the sorted map whose mappings are to be placed in this
	*        map, and whose comparator is to be used to sort this map
	* @throws NullPointerException if the specified sorted map or any of
	*         its keys or values are null
	*/
	@:overload @:public public function new(m : java.util.SortedMap<K, V>) : Void;
	
	/**
	* Returns a shallow copy of this <tt>ConcurrentSkipListMap</tt>
	* instance. (The keys and values themselves are not cloned.)
	*
	* @return a shallow copy of this map
	*/
	@:overload @:public override public function clone() : java.util.concurrent.ConcurrentSkipListMap<K, V>;
	
	/**
	* Returns <tt>true</tt> if this map contains a mapping for the specified
	* key.
	*
	* @param key key whose presence in this map is to be tested
	* @return <tt>true</tt> if this map contains a mapping for the specified key
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
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
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public override public function get(key : Dynamic) : V;
	
	/**
	* Associates the specified value with the specified key in this map.
	* If the map previously contained a mapping for the key, the old
	* value is replaced.
	*
	* @param key key with which the specified value is to be associated
	* @param value value to be associated with the specified key
	* @return the previous value associated with the specified key, or
	*         <tt>null</tt> if there was no mapping for the key
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key or value is null
	*/
	@:overload @:public override public function put(key : K, value : V) : V;
	
	/**
	* Removes the mapping for the specified key from this map if present.
	*
	* @param  key key for which mapping should be removed
	* @return the previous value associated with the specified key, or
	*         <tt>null</tt> if there was no mapping for the key
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public override public function remove(key : Dynamic) : V;
	
	/**
	* Returns <tt>true</tt> if this map maps one or more keys to the
	* specified value.  This operation requires time linear in the
	* map size. Additionally, it is possible for the map to change
	* during execution of this method, in which case the returned
	* result may be inaccurate.
	*
	* @param value value whose presence in this map is to be tested
	* @return <tt>true</tt> if a mapping to <tt>value</tt> exists;
	*         <tt>false</tt> otherwise
	* @throws NullPointerException if the specified value is null
	*/
	@:overload @:public override public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns the number of key-value mappings in this map.  If this map
	* contains more than <tt>Integer.MAX_VALUE</tt> elements, it
	* returns <tt>Integer.MAX_VALUE</tt>.
	*
	* <p>Beware that, unlike in most collections, this method is
	* <em>NOT</em> a constant-time operation. Because of the
	* asynchronous nature of these maps, determining the current
	* number of elements requires traversing them all to count them.
	* Additionally, it is possible for the size to change during
	* execution of this method, in which case the returned result
	* will be inaccurate. Thus, this method is typically not very
	* useful in concurrent applications.
	*
	* @return the number of elements in this map
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this map contains no key-value mappings.
	* @return <tt>true</tt> if this map contains no key-value mappings
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Removes all of the mappings from this map.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Returns a {@link NavigableSet} view of the keys contained in this map.
	* The set's iterator returns the keys in ascending order.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  The set supports element
	* removal, which removes the corresponding mapping from the map,
	* via the {@code Iterator.remove}, {@code Set.remove},
	* {@code removeAll}, {@code retainAll}, and {@code clear}
	* operations.  It does not support the {@code add} or {@code addAll}
	* operations.
	*
	* <p>The view's {@code iterator} is a "weakly consistent" iterator
	* that will never throw {@link ConcurrentModificationException},
	* and guarantees to traverse elements as they existed upon
	* construction of the iterator, and may (but is not guaranteed to)
	* reflect any modifications subsequent to construction.
	*
	* <p>This method is equivalent to method {@code navigableKeySet}.
	*
	* @return a navigable set view of the keys in this map
	*/
	@:overload @:public override public function keySet() : java.util.NavigableSet<K>;
	
	@:overload @:public public function navigableKeySet() : java.util.NavigableSet<K>;
	
	/**
	* Returns a {@link Collection} view of the values contained in this map.
	* The collection's iterator returns the values in ascending order
	* of the corresponding keys.
	* The collection is backed by the map, so changes to the map are
	* reflected in the collection, and vice-versa.  The collection
	* supports element removal, which removes the corresponding
	* mapping from the map, via the <tt>Iterator.remove</tt>,
	* <tt>Collection.remove</tt>, <tt>removeAll</tt>,
	* <tt>retainAll</tt> and <tt>clear</tt> operations.  It does not
	* support the <tt>add</tt> or <tt>addAll</tt> operations.
	*
	* <p>The view's <tt>iterator</tt> is a "weakly consistent" iterator
	* that will never throw {@link ConcurrentModificationException},
	* and guarantees to traverse elements as they existed upon
	* construction of the iterator, and may (but is not guaranteed to)
	* reflect any modifications subsequent to construction.
	*/
	@:overload @:public override public function values() : java.util.Collection<V>;
	
	/**
	* Returns a {@link Set} view of the mappings contained in this map.
	* The set's iterator returns the entries in ascending key order.
	* The set is backed by the map, so changes to the map are
	* reflected in the set, and vice-versa.  The set supports element
	* removal, which removes the corresponding mapping from the map,
	* via the <tt>Iterator.remove</tt>, <tt>Set.remove</tt>,
	* <tt>removeAll</tt>, <tt>retainAll</tt> and <tt>clear</tt>
	* operations.  It does not support the <tt>add</tt> or
	* <tt>addAll</tt> operations.
	*
	* <p>The view's <tt>iterator</tt> is a "weakly consistent" iterator
	* that will never throw {@link ConcurrentModificationException},
	* and guarantees to traverse elements as they existed upon
	* construction of the iterator, and may (but is not guaranteed to)
	* reflect any modifications subsequent to construction.
	*
	* <p>The <tt>Map.Entry</tt> elements returned by
	* <tt>iterator.next()</tt> do <em>not</em> support the
	* <tt>setValue</tt> operation.
	*
	* @return a set view of the mappings contained in this map,
	*         sorted in ascending key order
	*/
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	@:overload @:public public function descendingMap() : java.util.concurrent.ConcurrentNavigableMap<K, V>;
	
	@:overload @:public public function descendingKeySet() : java.util.NavigableSet<K>;
	
	/**
	* Compares the specified object with this map for equality.
	* Returns <tt>true</tt> if the given object is also a map and the
	* two maps represent the same mappings.  More formally, two maps
	* <tt>m1</tt> and <tt>m2</tt> represent the same mappings if
	* <tt>m1.entrySet().equals(m2.entrySet())</tt>.  This
	* operation may return misleading results if either map is
	* concurrently modified during execution of this method.
	*
	* @param o object to be compared for equality with this map
	* @return <tt>true</tt> if the specified object is equal to this map
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* @return the previous value associated with the specified key,
	*         or <tt>null</tt> if there was no mapping for the key
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key or value is null
	*/
	@:overload @:public public function putIfAbsent(key : K, value : V) : V;
	
	/**
	* {@inheritDoc}
	*
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function remove(key : Dynamic, value : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if any of the arguments are null
	*/
	@:overload @:public public function replace(key : K, oldValue : V, newValue : V) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* @return the previous value associated with the specified key,
	*         or <tt>null</tt> if there was no mapping for the key
	* @throws ClassCastException if the specified key cannot be compared
	*         with the keys currently in the map
	* @throws NullPointerException if the specified key or value is null
	*/
	@:overload @:public public function replace(key : K, value : V) : V;
	
	/* ------ SortedMap API methods ------ */
	@:overload @:public public function comparator() : java.util.Comparator<K>;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function firstKey() : K;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function lastKey() : K;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} or {@code toKey} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function subMap(fromKey : K, fromInclusive : Bool, toKey : K, toInclusive : Bool) : java.util.concurrent.ConcurrentNavigableMap<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code toKey} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function headMap(toKey : K, inclusive : Bool) : java.util.concurrent.ConcurrentNavigableMap<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function tailMap(fromKey : K, inclusive : Bool) : java.util.concurrent.ConcurrentNavigableMap<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} or {@code toKey} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function subMap(fromKey : K, toKey : K) : java.util.concurrent.ConcurrentNavigableMap<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code toKey} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function headMap(toKey : K) : java.util.concurrent.ConcurrentNavigableMap<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromKey} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function tailMap(fromKey : K) : java.util.concurrent.ConcurrentNavigableMap<K, V>;
	
	/**
	* Returns a key-value mapping associated with the greatest key
	* strictly less than the given key, or <tt>null</tt> if there is
	* no such key. The returned entry does <em>not</em> support the
	* <tt>Entry.setValue</tt> method.
	*
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function lowerEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function lowerKey(key : K) : K;
	
	/**
	* Returns a key-value mapping associated with the greatest key
	* less than or equal to the given key, or <tt>null</tt> if there
	* is no such key. The returned entry does <em>not</em> support
	* the <tt>Entry.setValue</tt> method.
	*
	* @param key the key
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function floorEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @param key the key
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function floorKey(key : K) : K;
	
	/**
	* Returns a key-value mapping associated with the least key
	* greater than or equal to the given key, or <tt>null</tt> if
	* there is no such entry. The returned entry does <em>not</em>
	* support the <tt>Entry.setValue</tt> method.
	*
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function ceilingEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function ceilingKey(key : K) : K;
	
	/**
	* Returns a key-value mapping associated with the least key
	* strictly greater than the given key, or <tt>null</tt> if there
	* is no such key. The returned entry does <em>not</em> support
	* the <tt>Entry.setValue</tt> method.
	*
	* @param key the key
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function higherEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	/**
	* @param key the key
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public public function higherKey(key : K) : K;
	
	/**
	* Returns a key-value mapping associated with the least
	* key in this map, or <tt>null</tt> if the map is empty.
	* The returned entry does <em>not</em> support
	* the <tt>Entry.setValue</tt> method.
	*/
	@:overload @:public public function firstEntry() : java.util.Map.Map_Entry<K, V>;
	
	/**
	* Returns a key-value mapping associated with the greatest
	* key in this map, or <tt>null</tt> if the map is empty.
	* The returned entry does <em>not</em> support
	* the <tt>Entry.setValue</tt> method.
	*/
	@:overload @:public public function lastEntry() : java.util.Map.Map_Entry<K, V>;
	
	/**
	* Removes and returns a key-value mapping associated with
	* the least key in this map, or <tt>null</tt> if the map is empty.
	* The returned entry does <em>not</em> support
	* the <tt>Entry.setValue</tt> method.
	*/
	@:overload @:public public function pollFirstEntry() : java.util.Map.Map_Entry<K, V>;
	
	/**
	* Removes and returns a key-value mapping associated with
	* the greatest key in this map, or <tt>null</tt> if the map is empty.
	* The returned entry does <em>not</em> support
	* the <tt>Entry.setValue</tt> method.
	*/
	@:overload @:public public function pollLastEntry() : java.util.Map.Map_Entry<K, V>;
	
	
}
/**
* Nodes hold keys and values, and are singly linked in sorted
* order, possibly with some intervening marker nodes. The list is
* headed by a dummy node accessible as head.node. The value field
* is declared only as Object because it takes special non-V
* values for marker and header nodes.
*/
@:native('java$util$concurrent$ConcurrentSkipListMap$Node') @:internal extern class ConcurrentSkipListMap_Node<K, V>
{
	
}
/**
* Index nodes represent the levels of the skip list.  Note that
* even though both Nodes and Indexes have forward-pointing
* fields, they have different types and are handled in different
* ways, that can't nicely be captured by placing field in a
* shared abstract class.
*/
@:native('java$util$concurrent$ConcurrentSkipListMap$Index') @:internal extern class ConcurrentSkipListMap_Index<K, V>
{
	
}
/**
* Nodes heading each level keep track of their level.
*/
@:native('java$util$concurrent$ConcurrentSkipListMap$HeadIndex') @:internal extern class ConcurrentSkipListMap_HeadIndex<K, V> extends java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_Index<K, V>
{
	
}
/**
* Represents a key with a comparator as a Comparable.
*
* Because most sorted collections seem to use natural ordering on
* Comparables (Strings, Integers, etc), most internal methods are
* geared to use them. This is generally faster than checking
* per-comparison whether to use comparator or comparable because
* it doesn't require a (Comparable) cast for each comparison.
* (Optimizers can only sometimes remove such redundant checks
* themselves.) When Comparators are used,
* ComparableUsingComparators are created so that they act in the
* same way as natural orderings. This penalizes use of
* Comparators vs Comparables, which seems like the right
* tradeoff.
*/
@:native('java$util$concurrent$ConcurrentSkipListMap$ComparableUsingComparator') @:internal extern class ConcurrentSkipListMap_ComparableUsingComparator<K> implements java.lang.Comparable<K>
{
	@:overload @:public public function compareTo(k2 : K) : Int;
	
	
}
/**
* Base of iterator classes:
*/
@:native('java$util$concurrent$ConcurrentSkipListMap$Iter') @:internal extern class ConcurrentSkipListMap_Iter<T> implements java.util.Iterator<T>
{
	@:overload @:public @:final public function hasNext() : Bool;
	
	@:overload @:public public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public public function next() : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$ValueIterator') @:internal extern class ConcurrentSkipListMap_ValueIterator extends java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_Iter<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$KeyIterator') @:internal extern class ConcurrentSkipListMap_KeyIterator extends java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_Iter<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$EntryIterator') @:internal extern class ConcurrentSkipListMap_EntryIterator extends java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_Iter<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$KeySet') @:internal extern class ConcurrentSkipListMap_KeySet<E> extends java.util.AbstractSet<E> implements java.util.NavigableSet<E>
{
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public public function lower(e : E) : E;
	
	@:overload @:public public function floor(e : E) : E;
	
	@:overload @:public public function ceiling(e : E) : E;
	
	@:overload @:public public function higher(e : E) : E;
	
	@:overload @:public public function comparator() : java.util.Comparator<E>;
	
	@:overload @:public public function first() : E;
	
	@:overload @:public public function last() : E;
	
	@:overload @:public public function pollFirst() : E;
	
	@:overload @:public public function pollLast() : E;
	
	@:overload @:public override public function iterator() : java.util.Iterator<E>;
	
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload @:public public function descendingIterator() : java.util.Iterator<E>;
	
	@:overload @:public public function subSet(fromElement : E, fromInclusive : Bool, toElement : E, toInclusive : Bool) : java.util.NavigableSet<E>;
	
	@:overload @:public public function headSet(toElement : E, inclusive : Bool) : java.util.NavigableSet<E>;
	
	@:overload @:public public function tailSet(fromElement : E, inclusive : Bool) : java.util.NavigableSet<E>;
	
	@:overload @:public public function subSet(fromElement : E, toElement : E) : java.util.NavigableSet<E>;
	
	@:overload @:public public function headSet(toElement : E) : java.util.NavigableSet<E>;
	
	@:overload @:public public function tailSet(fromElement : E) : java.util.NavigableSet<E>;
	
	@:overload @:public public function descendingSet() : java.util.NavigableSet<E>;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$Values') @:internal extern class ConcurrentSkipListMap_Values<E> extends java.util.AbstractCollection<E>
{
	@:overload @:public override public function iterator() : java.util.Iterator<E>;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$EntrySet') @:internal extern class ConcurrentSkipListMap_EntrySet<K1, V1> extends java.util.AbstractSet<java.util.Map.Map_Entry<K1, V1>>
{
	@:overload @:public override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<K1, V1>>;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	
}
/**
* Submaps returned by {@link ConcurrentSkipListMap} submap operations
* represent a subrange of mappings of their underlying
* maps. Instances of this class support all methods of their
* underlying maps, differing in that mappings outside their range are
* ignored, and attempts to add mappings outside their ranges result
* in {@link IllegalArgumentException}.  Instances of this class are
* constructed only using the <tt>subMap</tt>, <tt>headMap</tt>, and
* <tt>tailMap</tt> methods of their underlying maps.
*
* @serial include
*/
@:native('java$util$concurrent$ConcurrentSkipListMap$SubMap') @:internal extern class ConcurrentSkipListMap_SubMap<K, V> extends java.util.AbstractMap<K, V> implements java.util.concurrent.ConcurrentNavigableMap<K, V> implements java.lang.Cloneable implements java.io.Serializable
{
	/* ----------------  Map API methods -------------- */
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	@:overload @:public override public function get(key : Dynamic) : V;
	
	@:overload @:public override public function put(key : K, value : V) : V;
	
	@:overload @:public override public function remove(key : Dynamic) : V;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function containsValue(value : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	/* ----------------  ConcurrentMap API methods -------------- */
	@:overload @:public public function putIfAbsent(key : K, value : V) : V;
	
	@:overload @:public public function remove(key : Dynamic, value : Dynamic) : Bool;
	
	@:overload @:public public function replace(key : K, oldValue : V, newValue : V) : Bool;
	
	@:overload @:public public function replace(key : K, value : V) : V;
	
	/* ----------------  SortedMap API methods -------------- */
	@:overload @:public public function comparator() : java.util.Comparator<K>;
	
	@:overload @:public public function subMap(fromKey : K, fromInclusive : Bool, toKey : K, toInclusive : Bool) : java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap<K, V>;
	
	@:overload @:public public function headMap(toKey : K, inclusive : Bool) : java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap<K, V>;
	
	@:overload @:public public function tailMap(fromKey : K, inclusive : Bool) : java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap<K, V>;
	
	@:overload @:public public function subMap(fromKey : K, toKey : K) : java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap<K, V>;
	
	@:overload @:public public function headMap(toKey : K) : java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap<K, V>;
	
	@:overload @:public public function tailMap(fromKey : K) : java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap<K, V>;
	
	@:overload @:public public function descendingMap() : java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap<K, V>;
	
	/* ----------------  Relational methods -------------- */
	@:overload @:public public function ceilingEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:public public function ceilingKey(key : K) : K;
	
	@:overload @:public public function lowerEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:public public function lowerKey(key : K) : K;
	
	@:overload @:public public function floorEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:public public function floorKey(key : K) : K;
	
	@:overload @:public public function higherEntry(key : K) : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:public public function higherKey(key : K) : K;
	
	@:overload @:public public function firstKey() : K;
	
	@:overload @:public public function lastKey() : K;
	
	@:overload @:public public function firstEntry() : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:public public function lastEntry() : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:public public function pollFirstEntry() : java.util.Map.Map_Entry<K, V>;
	
	@:overload @:public public function pollLastEntry() : java.util.Map.Map_Entry<K, V>;
	
	/* ---------------- Submap Views -------------- */
	@:overload @:public override public function keySet() : java.util.NavigableSet<K>;
	
	@:overload @:public public function navigableKeySet() : java.util.NavigableSet<K>;
	
	@:overload @:public override public function values() : java.util.Collection<V>;
	
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	@:overload @:public public function descendingKeySet() : java.util.NavigableSet<K>;
	
	
}
/**
* Variant of main Iter class to traverse through submaps.
*/
@:native('java$util$concurrent$ConcurrentSkipListMap$SubMap$SubMapIter') @:internal extern class ConcurrentSkipListMap_SubMap_SubMapIter<T> implements java.util.Iterator<T>
{
	@:overload @:public @:final public function hasNext() : Bool;
	
	@:overload @:public public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public public function next() : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$SubMap$SubMapValueIterator') @:internal extern class ConcurrentSkipListMap_SubMap_SubMapValueIterator extends java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap_SubMapIter<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$SubMap$SubMapKeyIterator') @:internal extern class ConcurrentSkipListMap_SubMap_SubMapKeyIterator extends java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap_SubMapIter<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$concurrent$ConcurrentSkipListMap$SubMap$SubMapEntryIterator') @:internal extern class ConcurrentSkipListMap_SubMap_SubMapEntryIterator extends java.util.concurrent.ConcurrentSkipListMap.ConcurrentSkipListMap_SubMap_SubMapIter<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	
}
