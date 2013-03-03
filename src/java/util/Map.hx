package java.util;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* An object that maps keys to values.  A map cannot contain duplicate keys;
* each key can map to at most one value.
*
* <p>This interface takes the place of the <tt>Dictionary</tt> class, which
* was a totally abstract class rather than an interface.
*
* <p>The <tt>Map</tt> interface provides three <i>collection views</i>, which
* allow a map's contents to be viewed as a set of keys, collection of values,
* or set of key-value mappings.  The <i>order</i> of a map is defined as
* the order in which the iterators on the map's collection views return their
* elements.  Some map implementations, like the <tt>TreeMap</tt> class, make
* specific guarantees as to their order; others, like the <tt>HashMap</tt>
* class, do not.
*
* <p>Note: great care must be exercised if mutable objects are used as map
* keys.  The behavior of a map is not specified if the value of an object is
* changed in a manner that affects <tt>equals</tt> comparisons while the
* object is a key in the map.  A special case of this prohibition is that it
* is not permissible for a map to contain itself as a key.  While it is
* permissible for a map to contain itself as a value, extreme caution is
* advised: the <tt>equals</tt> and <tt>hashCode</tt> methods are no longer
* well defined on such a map.
*
* <p>All general-purpose map implementation classes should provide two
* "standard" constructors: a void (no arguments) constructor which creates an
* empty map, and a constructor with a single argument of type <tt>Map</tt>,
* which creates a new map with the same key-value mappings as its argument.
* In effect, the latter constructor allows the user to copy any map,
* producing an equivalent map of the desired class.  There is no way to
* enforce this recommendation (as interfaces cannot contain constructors) but
* all of the general-purpose map implementations in the JDK comply.
*
* <p>The "destructive" methods contained in this interface, that is, the
* methods that modify the map on which they operate, are specified to throw
* <tt>UnsupportedOperationException</tt> if this map does not support the
* operation.  If this is the case, these methods may, but are not required
* to, throw an <tt>UnsupportedOperationException</tt> if the invocation would
* have no effect on the map.  For example, invoking the {@link #putAll(Map)}
* method on an unmodifiable map may, but is not required to, throw the
* exception if the map whose mappings are to be "superimposed" is empty.
*
* <p>Some map implementations have restrictions on the keys and values they
* may contain.  For example, some implementations prohibit null keys and
* values, and some have restrictions on the types of their keys.  Attempting
* to insert an ineligible key or value throws an unchecked exception,
* typically <tt>NullPointerException</tt> or <tt>ClassCastException</tt>.
* Attempting to query the presence of an ineligible key or value may throw an
* exception, or it may simply return false; some implementations will exhibit
* the former behavior and some will exhibit the latter.  More generally,
* attempting an operation on an ineligible key or value whose completion
* would not result in the insertion of an ineligible element into the map may
* throw an exception or it may succeed, at the option of the implementation.
* Such exceptions are marked as "optional" in the specification for this
* interface.
*
* <p>This interface is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* <p>Many methods in Collections Framework interfaces are defined
* in terms of the {@link Object#equals(Object) equals} method.  For
* example, the specification for the {@link #containsKey(Object)
* containsKey(Object key)} method says: "returns <tt>true</tt> if and
* only if this map contains a mapping for a key <tt>k</tt> such that
* <tt>(key==null ? k==null : key.equals(k))</tt>." This specification should
* <i>not</i> be construed to imply that invoking <tt>Map.containsKey</tt>
* with a non-null argument <tt>key</tt> will cause <tt>key.equals(k)</tt> to
* be invoked for any key <tt>k</tt>.  Implementations are free to
* implement optimizations whereby the <tt>equals</tt> invocation is avoided,
* for example, by first comparing the hash codes of the two keys.  (The
* {@link Object#hashCode()} specification guarantees that two objects with
* unequal hash codes cannot be equal.)  More generally, implementations of
* the various Collections Framework interfaces are free to take advantage of
* the specified behavior of underlying {@link Object} methods wherever the
* implementor deems it appropriate.
*
* @param <K> the type of keys maintained by this map
* @param <V> the type of mapped values
*
* @author  Josh Bloch
* @see HashMap
* @see TreeMap
* @see Hashtable
* @see SortedMap
* @see Collection
* @see Set
* @since 1.2
*/
@:require(java2) extern interface Map<K, V>
{
	/**
	* Returns the number of key-value mappings in this map.  If the
	* map contains more than <tt>Integer.MAX_VALUE</tt> elements, returns
	* <tt>Integer.MAX_VALUE</tt>.
	*
	* @return the number of key-value mappings in this map
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this map contains no key-value mappings.
	*
	* @return <tt>true</tt> if this map contains no key-value mappings
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if this map contains a mapping for the specified
	* key.  More formally, returns <tt>true</tt> if and only if
	* this map contains a mapping for a key <tt>k</tt> such that
	* <tt>(key==null ? k==null : key.equals(k))</tt>.  (There can be
	* at most one such mapping.)
	*
	* @param key key whose presence in this map is to be tested
	* @return <tt>true</tt> if this map contains a mapping for the specified
	*         key
	* @throws ClassCastException if the key is of an inappropriate type for
	*         this map
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified key is null and this map
	*         does not permit null keys
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload public function containsKey(key : Dynamic) : Bool;
	
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
	@:overload @:public @:public public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns the value to which the specified key is mapped,
	* or {@code null} if this map contains no mapping for the key.
	*
	* <p>More formally, if this map contains a mapping from a key
	* {@code k} to a value {@code v} such that {@code (key==null ? k==null :
	* key.equals(k))}, then this method returns {@code v}; otherwise
	* it returns {@code null}.  (There can be at most one such mapping.)
	*
	* <p>If this map permits null values, then a return value of
	* {@code null} does not <i>necessarily</i> indicate that the map
	* contains no mapping for the key; it's also possible that the map
	* explicitly maps the key to {@code null}.  The {@link #containsKey
	* containsKey} operation may be used to distinguish these two cases.
	*
	* @param key the key whose associated value is to be returned
	* @return the value to which the specified key is mapped, or
	*         {@code null} if this map contains no mapping for the key
	* @throws ClassCastException if the key is of an inappropriate type for
	*         this map
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified key is null and this map
	*         does not permit null keys
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload public function get(key : Dynamic) : V;
	
	/**
	* Associates the specified value with the specified key in this map
	* (optional operation).  If the map previously contained a mapping for
	* the key, the old value is replaced by the specified value.  (A map
	* <tt>m</tt> is said to contain a mapping for a key <tt>k</tt> if and only
	* if {@link #containsKey(Object) m.containsKey(k)} would return
	* <tt>true</tt>.)
	*
	* @param key key with which the specified value is to be associated
	* @param value value to be associated with the specified key
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>.
	*         (A <tt>null</tt> return can also indicate that the map
	*         previously associated <tt>null</tt> with <tt>key</tt>,
	*         if the implementation supports <tt>null</tt> values.)
	* @throws UnsupportedOperationException if the <tt>put</tt> operation
	*         is not supported by this map
	* @throws ClassCastException if the class of the specified key or value
	*         prevents it from being stored in this map
	* @throws NullPointerException if the specified key or value is null
	*         and this map does not permit null keys or values
	* @throws IllegalArgumentException if some property of the specified key
	*         or value prevents it from being stored in this map
	*/
	@:overload @:public @:public public function put(key : K, value : V) : V;
	
	/**
	* Removes the mapping for a key from this map if it is present
	* (optional operation).   More formally, if this map contains a mapping
	* from key <tt>k</tt> to value <tt>v</tt> such that
	* <code>(key==null ?  k==null : key.equals(k))</code>, that mapping
	* is removed.  (The map can contain at most one such mapping.)
	*
	* <p>Returns the value to which this map previously associated the key,
	* or <tt>null</tt> if the map contained no mapping for the key.
	*
	* <p>If this map permits null values, then a return value of
	* <tt>null</tt> does not <i>necessarily</i> indicate that the map
	* contained no mapping for the key; it's also possible that the map
	* explicitly mapped the key to <tt>null</tt>.
	*
	* <p>The map will not contain a mapping for the specified key once the
	* call returns.
	*
	* @param key key whose mapping is to be removed from the map
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>.
	* @throws UnsupportedOperationException if the <tt>remove</tt> operation
	*         is not supported by this map
	* @throws ClassCastException if the key is of an inappropriate type for
	*         this map
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified key is null and this
	*         map does not permit null keys
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload public function remove(key : Dynamic) : V;
	
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
	@:overload @:public public function putAll(m : java.util.Map<K, V>) : Void;
	
	/**
	* Removes all of the mappings from this map (optional operation).
	* The map will be empty after this call returns.
	*
	* @throws UnsupportedOperationException if the <tt>clear</tt> operation
	*         is not supported by this map
	*/
	@:overload @:public @:public public function clear() : Void;
	
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
	*
	* @return a set view of the keys contained in this map
	*/
	@:overload @:public public function keySet() : java.util.Set<K>;
	
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
	*
	* @return a collection view of the values contained in this map
	*/
	@:overload @:public public function values() : java.util.Collection<V>;
	
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
	*
	* @return a set view of the mappings contained in this map
	*/
	@:overload @:public public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	
}
/**
* A map entry (key-value pair).  The <tt>Map.entrySet</tt> method returns
* a collection-view of the map, whose elements are of this class.  The
* <i>only</i> way to obtain a reference to a map entry is from the
* iterator of this collection-view.  These <tt>Map.Entry</tt> objects are
* valid <i>only</i> for the duration of the iteration; more formally,
* the behavior of a map entry is undefined if the backing map has been
* modified after the entry was returned by the iterator, except through
* the <tt>setValue</tt> operation on the map entry.
*
* @see Map#entrySet()
* @since 1.2
*/
@:require(java2) @:native('java$util$Map$Entry') @:internal extern interface Map_Entry<K, V>
{
	/**
	* Returns the key corresponding to this entry.
	*
	* @return the key corresponding to this entry
	* @throws IllegalStateException implementations may, but are not
	*         required to, throw this exception if the entry has been
	*         removed from the backing map.
	*/
	@:overload public function getKey() : K;
	
	/**
	* Returns the value corresponding to this entry.  If the mapping
	* has been removed from the backing map (by the iterator's
	* <tt>remove</tt> operation), the results of this call are undefined.
	*
	* @return the value corresponding to this entry
	* @throws IllegalStateException implementations may, but are not
	*         required to, throw this exception if the entry has been
	*         removed from the backing map.
	*/
	@:overload public function getValue() : V;
	
	/**
	* Replaces the value corresponding to this entry with the specified
	* value (optional operation).  (Writes through to the map.)  The
	* behavior of this call is undefined if the mapping has already been
	* removed from the map (by the iterator's <tt>remove</tt> operation).
	*
	* @param value new value to be stored in this entry
	* @return old value corresponding to the entry
	* @throws UnsupportedOperationException if the <tt>put</tt> operation
	*         is not supported by the backing map
	* @throws ClassCastException if the class of the specified value
	*         prevents it from being stored in the backing map
	* @throws NullPointerException if the backing map does not permit
	*         null values, and the specified value is null
	* @throws IllegalArgumentException if some property of this value
	*         prevents it from being stored in the backing map
	* @throws IllegalStateException implementations may, but are not
	*         required to, throw this exception if the entry has been
	*         removed from the backing map.
	*/
	@:overload public function setValue(value : V) : V;
	
	
}
