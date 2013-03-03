package java.util;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class implements the <tt>Map</tt> interface with a hash table, using
* reference-equality in place of object-equality when comparing keys (and
* values).  In other words, in an <tt>IdentityHashMap</tt>, two keys
* <tt>k1</tt> and <tt>k2</tt> are considered equal if and only if
* <tt>(k1==k2)</tt>.  (In normal <tt>Map</tt> implementations (like
* <tt>HashMap</tt>) two keys <tt>k1</tt> and <tt>k2</tt> are considered equal
* if and only if <tt>(k1==null ? k2==null : k1.equals(k2))</tt>.)
*
* <p><b>This class is <i>not</i> a general-purpose <tt>Map</tt>
* implementation!  While this class implements the <tt>Map</tt> interface, it
* intentionally violates <tt>Map's</tt> general contract, which mandates the
* use of the <tt>equals</tt> method when comparing objects.  This class is
* designed for use only in the rare cases wherein reference-equality
* semantics are required.</b>
*
* <p>A typical use of this class is <i>topology-preserving object graph
* transformations</i>, such as serialization or deep-copying.  To perform such
* a transformation, a program must maintain a "node table" that keeps track
* of all the object references that have already been processed.  The node
* table must not equate distinct objects even if they happen to be equal.
* Another typical use of this class is to maintain <i>proxy objects</i>.  For
* example, a debugging facility might wish to maintain a proxy object for
* each object in the program being debugged.
*
* <p>This class provides all of the optional map operations, and permits
* <tt>null</tt> values and the <tt>null</tt> key.  This class makes no
* guarantees as to the order of the map; in particular, it does not guarantee
* that the order will remain constant over time.
*
* <p>This class provides constant-time performance for the basic
* operations (<tt>get</tt> and <tt>put</tt>), assuming the system
* identity hash function ({@link System#identityHashCode(Object)})
* disperses elements properly among the buckets.
*
* <p>This class has one tuning parameter (which affects performance but not
* semantics): <i>expected maximum size</i>.  This parameter is the maximum
* number of key-value mappings that the map is expected to hold.  Internally,
* this parameter is used to determine the number of buckets initially
* comprising the hash table.  The precise relationship between the expected
* maximum size and the number of buckets is unspecified.
*
* <p>If the size of the map (the number of key-value mappings) sufficiently
* exceeds the expected maximum size, the number of buckets is increased
* Increasing the number of buckets ("rehashing") may be fairly expensive, so
* it pays to create identity hash maps with a sufficiently large expected
* maximum size.  On the other hand, iteration over collection views requires
* time proportional to the number of buckets in the hash table, so it
* pays not to set the expected maximum size too high if you are especially
* concerned with iteration performance or memory usage.
*
* <p><strong>Note that this implementation is not synchronized.</strong>
* If multiple threads access an identity hash map concurrently, and at
* least one of the threads modifies the map structurally, it <i>must</i>
* be synchronized externally.  (A structural modification is any operation
* that adds or deletes one or more mappings; merely changing the value
* associated with a key that an instance already contains is not a
* structural modification.)  This is typically accomplished by
* synchronizing on some object that naturally encapsulates the map.
*
* If no such object exists, the map should be "wrapped" using the
* {@link Collections#synchronizedMap Collections.synchronizedMap}
* method.  This is best done at creation time, to prevent accidental
* unsynchronized access to the map:<pre>
*   Map m = Collections.synchronizedMap(new IdentityHashMap(...));</pre>
*
* <p>The iterators returned by the <tt>iterator</tt> method of the
* collections returned by all of this class's "collection view
* methods" are <i>fail-fast</i>: if the map is structurally modified
* at any time after the iterator is created, in any way except
* through the iterator's own <tt>remove</tt> method, the iterator
* will throw a {@link ConcurrentModificationException}.  Thus, in the
* face of concurrent modification, the iterator fails quickly and
* cleanly, rather than risking arbitrary, non-deterministic behavior
* at an undetermined time in the future.
*
* <p>Note that the fail-fast behavior of an iterator cannot be guaranteed
* as it is, generally speaking, impossible to make any hard guarantees in the
* presence of unsynchronized concurrent modification.  Fail-fast iterators
* throw <tt>ConcurrentModificationException</tt> on a best-effort basis.
* Therefore, it would be wrong to write a program that depended on this
* exception for its correctness: <i>fail-fast iterators should be used only
* to detect bugs.</i>
*
* <p>Implementation note: This is a simple <i>linear-probe</i> hash table,
* as described for example in texts by Sedgewick and Knuth.  The array
* alternates holding keys and values.  (This has better locality for large
* tables than does using separate arrays.)  For many JRE implementations
* and operation mixes, this class will yield better performance than
* {@link HashMap} (which uses <i>chaining</i> rather than linear-probing).
*
* <p>This class is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @see     System#identityHashCode(Object)
* @see     Object#hashCode()
* @see     Collection
* @see     Map
* @see     HashMap
* @see     TreeMap
* @author  Doug Lea and Josh Bloch
* @since   1.4
*/
@:require(java4) extern class IdentityHashMap<K, V> extends java.util.AbstractMap<K, V> implements java.util.Map<K, V> implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Constructs a new, empty identity hash map with a default expected
	* maximum size (21).
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new, empty map with the specified expected maximum size.
	* Putting more than the expected number of key-value mappings into
	* the map may cause the internal data structure to grow, which may be
	* somewhat time-consuming.
	*
	* @param expectedMaxSize the expected maximum size of the map
	* @throws IllegalArgumentException if <tt>expectedMaxSize</tt> is negative
	*/
	@:overload @:public public function new(expectedMaxSize : Int) : Void;
	
	/**
	* Constructs a new identity hash map containing the keys-value mappings
	* in the specified map.
	*
	* @param m the map whose mappings are to be placed into this map
	* @throws NullPointerException if the specified map is null
	*/
	@:overload @:public public function new(m : java.util.Map<K, V>) : Void;
	
	/**
	* Returns the number of key-value mappings in this identity hash map.
	*
	* @return the number of key-value mappings in this map
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this identity hash map contains no key-value
	* mappings.
	*
	* @return <tt>true</tt> if this identity hash map contains no key-value
	*         mappings
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Returns the value to which the specified key is mapped,
	* or {@code null} if this map contains no mapping for the key.
	*
	* <p>More formally, if this map contains a mapping from a key
	* {@code k} to a value {@code v} such that {@code (key == k)},
	* then this method returns {@code v}; otherwise it returns
	* {@code null}.  (There can be at most one such mapping.)
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
	* Tests whether the specified object reference is a key in this identity
	* hash map.
	*
	* @param   key   possible key
	* @return  <code>true</code> if the specified object reference is a key
	*          in this map
	* @see     #containsValue(Object)
	*/
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Tests whether the specified object reference is a value in this identity
	* hash map.
	*
	* @param value value whose presence in this map is to be tested
	* @return <tt>true</tt> if this map maps one or more keys to the
	*         specified object reference
	* @see     #containsKey(Object)
	*/
	@:overload @:public override public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Associates the specified value with the specified key in this identity
	* hash map.  If the map previously contained a mapping for the key, the
	* old value is replaced.
	*
	* @param key the key with which the specified value is to be associated
	* @param value the value to be associated with the specified key
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>.
	*         (A <tt>null</tt> return can also indicate that the map
	*         previously associated <tt>null</tt> with <tt>key</tt>.)
	* @see     Object#equals(Object)
	* @see     #get(Object)
	* @see     #containsKey(Object)
	*/
	@:overload @:public override public function put(key : K, value : V) : V;
	
	/**
	* Copies all of the mappings from the specified map to this map.
	* These mappings will replace any mappings that this map had for
	* any of the keys currently in the specified map.
	*
	* @param m mappings to be stored in this map
	* @throws NullPointerException if the specified map is null
	*/
	@:overload @:public override public function putAll(m : java.util.Map<K, V>) : Void;
	
	/**
	* Removes the mapping for this key from this map if present.
	*
	* @param key key whose mapping is to be removed from the map
	* @return the previous value associated with <tt>key</tt>, or
	*         <tt>null</tt> if there was no mapping for <tt>key</tt>.
	*         (A <tt>null</tt> return can also indicate that the map
	*         previously associated <tt>null</tt> with <tt>key</tt>.)
	*/
	@:overload @:public override public function remove(key : Dynamic) : V;
	
	/**
	* Removes all of the mappings from this map.
	* The map will be empty after this call returns.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Compares the specified object with this map for equality.  Returns
	* <tt>true</tt> if the given object is also a map and the two maps
	* represent identical object-reference mappings.  More formally, this
	* map is equal to another map <tt>m</tt> if and only if
	* <tt>this.entrySet().equals(m.entrySet())</tt>.
	*
	* <p><b>Owing to the reference-equality-based semantics of this map it is
	* possible that the symmetry and transitivity requirements of the
	* <tt>Object.equals</tt> contract may be violated if this map is compared
	* to a normal map.  However, the <tt>Object.equals</tt> contract is
	* guaranteed to hold among <tt>IdentityHashMap</tt> instances.</b>
	*
	* @param  o object to be compared for equality with this map
	* @return <tt>true</tt> if the specified object is equal to this map
	* @see Object#equals(Object)
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this map.  The hash code of a map is
	* defined to be the sum of the hash codes of each entry in the map's
	* <tt>entrySet()</tt> view.  This ensures that <tt>m1.equals(m2)</tt>
	* implies that <tt>m1.hashCode()==m2.hashCode()</tt> for any two
	* <tt>IdentityHashMap</tt> instances <tt>m1</tt> and <tt>m2</tt>, as
	* required by the general contract of {@link Object#hashCode}.
	*
	* <p><b>Owing to the reference-equality-based semantics of the
	* <tt>Map.Entry</tt> instances in the set returned by this map's
	* <tt>entrySet</tt> method, it is possible that the contractual
	* requirement of <tt>Object.hashCode</tt> mentioned in the previous
	* paragraph will be violated if one of the two objects being compared is
	* an <tt>IdentityHashMap</tt> instance and the other is a normal map.</b>
	*
	* @return the hash code value for this map
	* @see Object#equals(Object)
	* @see #equals(Object)
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns a shallow copy of this identity hash map: the keys and values
	* themselves are not cloned.
	*
	* @return a shallow copy of this map
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Returns an identity-based set view of the keys contained in this map.
	* The set is backed by the map, so changes to the map are reflected in
	* the set, and vice-versa.  If the map is modified while an iteration
	* over the set is in progress, the results of the iteration are
	* undefined.  The set supports element removal, which removes the
	* corresponding mapping from the map, via the <tt>Iterator.remove</tt>,
	* <tt>Set.remove</tt>, <tt>removeAll</tt>, <tt>retainAll</tt>, and
	* <tt>clear</tt> methods.  It does not support the <tt>add</tt> or
	* <tt>addAll</tt> methods.
	*
	* <p><b>While the object returned by this method implements the
	* <tt>Set</tt> interface, it does <i>not</i> obey <tt>Set's</tt> general
	* contract.  Like its backing map, the set returned by this method
	* defines element equality as reference-equality rather than
	* object-equality.  This affects the behavior of its <tt>contains</tt>,
	* <tt>remove</tt>, <tt>containsAll</tt>, <tt>equals</tt>, and
	* <tt>hashCode</tt> methods.</b>
	*
	* <p><b>The <tt>equals</tt> method of the returned set returns <tt>true</tt>
	* only if the specified object is a set containing exactly the same
	* object references as the returned set.  The symmetry and transitivity
	* requirements of the <tt>Object.equals</tt> contract may be violated if
	* the set returned by this method is compared to a normal set.  However,
	* the <tt>Object.equals</tt> contract is guaranteed to hold among sets
	* returned by this method.</b>
	*
	* <p>The <tt>hashCode</tt> method of the returned set returns the sum of
	* the <i>identity hashcodes</i> of the elements in the set, rather than
	* the sum of their hashcodes.  This is mandated by the change in the
	* semantics of the <tt>equals</tt> method, in order to enforce the
	* general contract of the <tt>Object.hashCode</tt> method among sets
	* returned by this method.
	*
	* @return an identity-based set view of the keys contained in this map
	* @see Object#equals(Object)
	* @see System#identityHashCode(Object)
	*/
	@:overload @:public override public function keySet() : java.util.Set<K>;
	
	/**
	* Returns a {@link Collection} view of the values contained in this map.
	* The collection is backed by the map, so changes to the map are
	* reflected in the collection, and vice-versa.  If the map is
	* modified while an iteration over the collection is in progress,
	* the results of the iteration are undefined.  The collection
	* supports element removal, which removes the corresponding
	* mapping from the map, via the <tt>Iterator.remove</tt>,
	* <tt>Collection.remove</tt>, <tt>removeAll</tt>,
	* <tt>retainAll</tt> and <tt>clear</tt> methods.  It does not
	* support the <tt>add</tt> or <tt>addAll</tt> methods.
	*
	* <p><b>While the object returned by this method implements the
	* <tt>Collection</tt> interface, it does <i>not</i> obey
	* <tt>Collection's</tt> general contract.  Like its backing map,
	* the collection returned by this method defines element equality as
	* reference-equality rather than object-equality.  This affects the
	* behavior of its <tt>contains</tt>, <tt>remove</tt> and
	* <tt>containsAll</tt> methods.</b>
	*/
	@:overload @:public override public function values() : java.util.Collection<V>;
	
	/**
	* Returns a {@link Set} view of the mappings contained in this map.
	* Each element in the returned set is a reference-equality-based
	* <tt>Map.Entry</tt>.  The set is backed by the map, so changes
	* to the map are reflected in the set, and vice-versa.  If the
	* map is modified while an iteration over the set is in progress,
	* the results of the iteration are undefined.  The set supports
	* element removal, which removes the corresponding mapping from
	* the map, via the <tt>Iterator.remove</tt>, <tt>Set.remove</tt>,
	* <tt>removeAll</tt>, <tt>retainAll</tt> and <tt>clear</tt>
	* methods.  It does not support the <tt>add</tt> or
	* <tt>addAll</tt> methods.
	*
	* <p>Like the backing map, the <tt>Map.Entry</tt> objects in the set
	* returned by this method define key and value equality as
	* reference-equality rather than object-equality.  This affects the
	* behavior of the <tt>equals</tt> and <tt>hashCode</tt> methods of these
	* <tt>Map.Entry</tt> objects.  A reference-equality based <tt>Map.Entry
	* e</tt> is equal to an object <tt>o</tt> if and only if <tt>o</tt> is a
	* <tt>Map.Entry</tt> and <tt>e.getKey()==o.getKey() &amp;&amp;
	* e.getValue()==o.getValue()</tt>.  To accommodate these equals
	* semantics, the <tt>hashCode</tt> method returns
	* <tt>System.identityHashCode(e.getKey()) ^
	* System.identityHashCode(e.getValue())</tt>.
	*
	* <p><b>Owing to the reference-equality-based semantics of the
	* <tt>Map.Entry</tt> instances in the set returned by this method,
	* it is possible that the symmetry and transitivity requirements of
	* the {@link Object#equals(Object)} contract may be violated if any of
	* the entries in the set is compared to a normal map entry, or if
	* the set returned by this method is compared to a set of normal map
	* entries (such as would be returned by a call to this method on a normal
	* map).  However, the <tt>Object.equals</tt> contract is guaranteed to
	* hold among identity-based map entries, and among sets of such entries.
	* </b>
	*
	* @return a set view of the identity-mappings contained in this map
	*/
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	
}
@:native('java$util$IdentityHashMap$IdentityHashMapIterator') @:internal extern class IdentityHashMap_IdentityHashMapIterator<T> implements java.util.Iterator<T>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:protected private function nextIndex() : Int;
	
	@:overload @:public public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload @:public public function next() : Dynamic;
	
	
}
@:native('java$util$IdentityHashMap$KeyIterator') @:internal extern class IdentityHashMap_KeyIterator extends java.util.IdentityHashMap.IdentityHashMap_IdentityHashMapIterator<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$IdentityHashMap$ValueIterator') @:internal extern class IdentityHashMap_ValueIterator extends java.util.IdentityHashMap.IdentityHashMap_IdentityHashMapIterator<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$IdentityHashMap$EntryIterator') @:internal extern class IdentityHashMap_EntryIterator extends java.util.IdentityHashMap.IdentityHashMap_IdentityHashMapIterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	@:overload @:public override public function remove() : Void;
	
	
}
@:native('java$util$IdentityHashMap$EntryIterator$Entry') @:internal extern class IdentityHashMap_EntryIterator_Entry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload @:public public function getKey() : Dynamic;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public public function setValue(value : Dynamic) : Dynamic;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('java$util$IdentityHashMap$KeySet') @:internal extern class IdentityHashMap_KeySet extends java.util.AbstractSet<Dynamic>
{
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/*
	* Must revert from AbstractSet's impl to AbstractCollection's, as
	* the former contains an optimization that results in incorrect
	* behavior when c is a smaller "normal" (non-identity-based) Set.
	*/
	@:overload @:public override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function hashCode() : Int;
	
	
}
@:native('java$util$IdentityHashMap$Values') @:internal extern class IdentityHashMap_Values extends java.util.AbstractCollection<Dynamic>
{
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	
}
@:native('java$util$IdentityHashMap$EntrySet') @:internal extern class IdentityHashMap_EntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function clear() : Void;
	
	/*
	* Must revert from AbstractSet's impl to AbstractCollection's, as
	* the former contains an optimization that results in incorrect
	* behavior when c is a smaller "normal" (non-identity-based) Set.
	*/
	@:overload @:public override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	
}
