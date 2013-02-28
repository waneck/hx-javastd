package java.util;
/*
* Copyright (c) 1994, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class implements a hash table, which maps keys to values. Any
* non-<code>null</code> object can be used as a key or as a value. <p>
*
* To successfully store and retrieve objects from a hashtable, the
* objects used as keys must implement the <code>hashCode</code>
* method and the <code>equals</code> method. <p>
*
* An instance of <code>Hashtable</code> has two parameters that affect its
* performance: <i>initial capacity</i> and <i>load factor</i>.  The
* <i>capacity</i> is the number of <i>buckets</i> in the hash table, and the
* <i>initial capacity</i> is simply the capacity at the time the hash table
* is created.  Note that the hash table is <i>open</i>: in the case of a "hash
* collision", a single bucket stores multiple entries, which must be searched
* sequentially.  The <i>load factor</i> is a measure of how full the hash
* table is allowed to get before its capacity is automatically increased.
* The initial capacity and load factor parameters are merely hints to
* the implementation.  The exact details as to when and whether the rehash
* method is invoked are implementation-dependent.<p>
*
* Generally, the default load factor (.75) offers a good tradeoff between
* time and space costs.  Higher values decrease the space overhead but
* increase the time cost to look up an entry (which is reflected in most
* <tt>Hashtable</tt> operations, including <tt>get</tt> and <tt>put</tt>).<p>
*
* The initial capacity controls a tradeoff between wasted space and the
* need for <code>rehash</code> operations, which are time-consuming.
* No <code>rehash</code> operations will <i>ever</i> occur if the initial
* capacity is greater than the maximum number of entries the
* <tt>Hashtable</tt> will contain divided by its load factor.  However,
* setting the initial capacity too high can waste space.<p>
*
* If many entries are to be made into a <code>Hashtable</code>,
* creating it with a sufficiently large capacity may allow the
* entries to be inserted more efficiently than letting it perform
* automatic rehashing as needed to grow the table. <p>
*
* This example creates a hashtable of numbers. It uses the names of
* the numbers as keys:
* <pre>   {@code
*   Hashtable<String, Integer> numbers
*     = new Hashtable<String, Integer>();
*   numbers.put("one", 1);
*   numbers.put("two", 2);
*   numbers.put("three", 3);}</pre>
*
* <p>To retrieve a number, use the following code:
* <pre>   {@code
*   Integer n = numbers.get("two");
*   if (n != null) {
*     System.out.println("two = " + n);
*   }}</pre>
*
* <p>The iterators returned by the <tt>iterator</tt> method of the collections
* returned by all of this class's "collection view methods" are
* <em>fail-fast</em>: if the Hashtable is structurally modified at any time
* after the iterator is created, in any way except through the iterator's own
* <tt>remove</tt> method, the iterator will throw a {@link
* ConcurrentModificationException}.  Thus, in the face of concurrent
* modification, the iterator fails quickly and cleanly, rather than risking
* arbitrary, non-deterministic behavior at an undetermined time in the future.
* The Enumerations returned by Hashtable's keys and elements methods are
* <em>not</em> fail-fast.
*
* <p>Note that the fail-fast behavior of an iterator cannot be guaranteed
* as it is, generally speaking, impossible to make any hard guarantees in the
* presence of unsynchronized concurrent modification.  Fail-fast iterators
* throw <tt>ConcurrentModificationException</tt> on a best-effort basis.
* Therefore, it would be wrong to write a program that depended on this
* exception for its correctness: <i>the fail-fast behavior of iterators
* should be used only to detect bugs.</i>
*
* <p>As of the Java 2 platform v1.2, this class was retrofitted to
* implement the {@link Map} interface, making it a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
*
* Java Collections Framework</a>.  Unlike the new collection
* implementations, {@code Hashtable} is synchronized.  If a
* thread-safe implementation is not needed, it is recommended to use
* {@link HashMap} in place of {@code Hashtable}.  If a thread-safe
* highly-concurrent implementation is desired, then it is recommended
* to use {@link java.util.concurrent.ConcurrentHashMap} in place of
* {@code Hashtable}.
*
* @author  Arthur van Hoff
* @author  Josh Bloch
* @author  Neal Gafter
* @see     Object#equals(java.lang.Object)
* @see     Object#hashCode()
* @see     Hashtable#rehash()
* @see     Collection
* @see     Map
* @see     HashMap
* @see     TreeMap
* @since JDK1.0
*/
@:require(java0) extern class Hashtable<K, V> extends java.util.Dictionary<K, V> implements java.util.Map<K, V> implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Constructs a new, empty hashtable with the specified initial
	* capacity and the specified load factor.
	*
	* @param      initialCapacity   the initial capacity of the hashtable.
	* @param      loadFactor        the load factor of the hashtable.
	* @exception  IllegalArgumentException  if the initial capacity is less
	*             than zero, or if the load factor is nonpositive.
	*/
	@:overload public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Constructs a new, empty hashtable with the specified initial capacity
	* and default load factor (0.75).
	*
	* @param     initialCapacity   the initial capacity of the hashtable.
	* @exception IllegalArgumentException if the initial capacity is less
	*              than zero.
	*/
	@:overload public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a new, empty hashtable with a default initial capacity (11)
	* and load factor (0.75).
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new hashtable with the same mappings as the given
	* Map.  The hashtable is created with an initial capacity sufficient to
	* hold the mappings in the given Map and a default load factor (0.75).
	*
	* @param t the map whose mappings are to be placed in this map.
	* @throws NullPointerException if the specified map is null.
	* @since   1.2
	*/
	@:require(java2) @:overload public function new(t : java.util.Map<K, V>) : Void;
	
	/**
	* Returns the number of keys in this hashtable.
	*
	* @return  the number of keys in this hashtable.
	*/
	@:overload @:synchronized override public function size() : Int;
	
	/**
	* Tests if this hashtable maps no keys to values.
	*
	* @return  <code>true</code> if this hashtable maps no keys to values;
	*          <code>false</code> otherwise.
	*/
	@:overload @:synchronized override public function isEmpty() : Bool;
	
	/**
	* Returns an enumeration of the keys in this hashtable.
	*
	* @return  an enumeration of the keys in this hashtable.
	* @see     Enumeration
	* @see     #elements()
	* @see     #keySet()
	* @see     Map
	*/
	@:overload @:synchronized override public function keys() : java.util.Enumeration<K>;
	
	/**
	* Returns an enumeration of the values in this hashtable.
	* Use the Enumeration methods on the returned object to fetch the elements
	* sequentially.
	*
	* @return  an enumeration of the values in this hashtable.
	* @see     java.util.Enumeration
	* @see     #keys()
	* @see     #values()
	* @see     Map
	*/
	@:overload @:synchronized override public function elements() : java.util.Enumeration<V>;
	
	/**
	* Tests if some key maps into the specified value in this hashtable.
	* This operation is more expensive than the {@link #containsKey
	* containsKey} method.
	*
	* <p>Note that this method is identical in functionality to
	* {@link #containsValue containsValue}, (which is part of the
	* {@link Map} interface in the collections framework).
	*
	* @param      value   a value to search for
	* @return     <code>true</code> if and only if some key maps to the
	*             <code>value</code> argument in this hashtable as
	*             determined by the <tt>equals</tt> method;
	*             <code>false</code> otherwise.
	* @exception  NullPointerException  if the value is <code>null</code>
	*/
	@:overload @:synchronized public function contains(value : Dynamic) : Bool;
	
	/**
	* Returns true if this hashtable maps one or more keys to this value.
	*
	* <p>Note that this method is identical in functionality to {@link
	* #contains contains} (which predates the {@link Map} interface).
	*
	* @param value value whose presence in this hashtable is to be tested
	* @return <tt>true</tt> if this map maps one or more keys to the
	*         specified value
	* @throws NullPointerException  if the value is <code>null</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Tests if the specified object is a key in this hashtable.
	*
	* @param   key   possible key
	* @return  <code>true</code> if and only if the specified object
	*          is a key in this hashtable, as determined by the
	*          <tt>equals</tt> method; <code>false</code> otherwise.
	* @throws  NullPointerException  if the key is <code>null</code>
	* @see     #contains(Object)
	*/
	@:overload @:synchronized public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns the value to which the specified key is mapped,
	* or {@code null} if this map contains no mapping for the key.
	*
	* <p>More formally, if this map contains a mapping from a key
	* {@code k} to a value {@code v} such that {@code (key.equals(k))},
	* then this method returns {@code v}; otherwise it returns
	* {@code null}.  (There can be at most one such mapping.)
	*
	* @param key the key whose associated value is to be returned
	* @return the value to which the specified key is mapped, or
	*         {@code null} if this map contains no mapping for the key
	* @throws NullPointerException if the specified key is null
	* @see     #put(Object, Object)
	*/
	@:overload @:synchronized override public function get(key : Dynamic) : V;
	
	/**
	* Increases the capacity of and internally reorganizes this
	* hashtable, in order to accommodate and access its entries more
	* efficiently.  This method is called automatically when the
	* number of keys in the hashtable exceeds this hashtable's capacity
	* and load factor.
	*/
	@:overload private function rehash() : Void;
	
	/**
	* Maps the specified <code>key</code> to the specified
	* <code>value</code> in this hashtable. Neither the key nor the
	* value can be <code>null</code>. <p>
	*
	* The value can be retrieved by calling the <code>get</code> method
	* with a key that is equal to the original key.
	*
	* @param      key     the hashtable key
	* @param      value   the value
	* @return     the previous value of the specified key in this hashtable,
	*             or <code>null</code> if it did not have one
	* @exception  NullPointerException  if the key or value is
	*               <code>null</code>
	* @see     Object#equals(Object)
	* @see     #get(Object)
	*/
	@:overload @:synchronized override public function put(key : K, value : V) : V;
	
	/**
	* Removes the key (and its corresponding value) from this
	* hashtable. This method does nothing if the key is not in the hashtable.
	*
	* @param   key   the key that needs to be removed
	* @return  the value to which the key had been mapped in this hashtable,
	*          or <code>null</code> if the key did not have a mapping
	* @throws  NullPointerException  if the key is <code>null</code>
	*/
	@:overload @:synchronized override public function remove(key : Dynamic) : V;
	
	/**
	* Copies all of the mappings from the specified map to this hashtable.
	* These mappings will replace any mappings that this hashtable had for any
	* of the keys currently in the specified map.
	*
	* @param t mappings to be stored in this map
	* @throws NullPointerException if the specified map is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized public function putAll(t : java.util.Map<K, V>) : Void;
	
	/**
	* Clears this hashtable so that it contains no keys.
	*/
	@:overload @:synchronized public function clear() : Void;
	
	/**
	* Creates a shallow copy of this hashtable. All the structure of the
	* hashtable itself is copied, but the keys and values are not cloned.
	* This is a relatively expensive operation.
	*
	* @return  a clone of the hashtable
	*/
	@:overload @:synchronized public function clone() : Dynamic;
	
	/**
	* Returns a string representation of this <tt>Hashtable</tt> object
	* in the form of a set of entries, enclosed in braces and separated
	* by the ASCII characters "<tt>,&nbsp;</tt>" (comma and space). Each
	* entry is rendered as the key, an equals sign <tt>=</tt>, and the
	* associated element, where the <tt>toString</tt> method is used to
	* convert the key and element to strings.
	*
	* @return  a string representation of this hashtable
	*/
	@:overload @:synchronized public function toString() : String;
	
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
	* @since 1.2
	*/
	@:require(java2) @:overload public function keySet() : java.util.Set<K>;
	
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
	* @since 1.2
	*/
	@:require(java2) @:overload public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
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
	* @since 1.2
	*/
	@:require(java2) @:overload public function values() : java.util.Collection<V>;
	
	/**
	* Compares the specified Object with this Map for equality,
	* as per the definition in the Map interface.
	*
	* @param  o object to be compared for equality with this hashtable
	* @return true if the specified Object is equal to this Map
	* @see Map#equals(Object)
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this Map as per the definition in the
	* Map interface.
	*
	* @see Map#hashCode()
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized public function hashCode() : Int;
	
	
}
/**
* holds values which can't be initialized until after VM is booted.
*/
@:native('java$util$Hashtable$Holder') @:internal extern class Hashtable_Holder
{
	
}
@:native('java$util$Hashtable$KeySet') @:internal extern class Hashtable_KeySet extends java.util.AbstractSet<Dynamic>
{
	@:overload override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function clear() : Void;
	
	
}
@:native('java$util$Hashtable$EntrySet') @:internal extern class Hashtable_EntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload public function add(o : java.util.Map.Map_Entry<Dynamic, Dynamic>) : Bool;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function size() : Int;
	
	@:overload override public function clear() : Void;
	
	
}
@:native('java$util$Hashtable$ValueCollection') @:internal extern class Hashtable_ValueCollection extends java.util.AbstractCollection<Dynamic>
{
	@:overload override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function clear() : Void;
	
	
}
/**
* Hashtable bucket collision list entry
*/
@:native('java$util$Hashtable$Entry') @:internal extern class Hashtable_Entry<K, V> implements java.util.Map.Map_Entry<K, V>
{
	@:overload private function new(hash : Int, key : K, value : V, next : java.util.Map.Map_Entry<K, V>) : Void;
	
	@:overload private function clone() : Dynamic;
	
	@:overload public function getKey() : K;
	
	@:overload public function getValue() : V;
	
	@:overload public function setValue(value : V) : V;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
/**
* A hashtable enumerator class.  This class implements both the
* Enumeration and Iterator interfaces, but individual instances
* can be created with the Iterator methods disabled.  This is necessary
* to avoid unintentionally increasing the capabilities granted a user
* by passing an Enumeration.
*/
@:native('java$util$Hashtable$Enumerator') @:internal extern class Hashtable_Enumerator<T> implements java.util.Enumeration<T> implements java.util.Iterator<T>
{
	/**
	* The modCount value that the iterator believes that the backing
	* Hashtable should have.  If this expectation is violated, the iterator
	* has detected concurrent modification.
	*/
	private var expectedModCount : Int;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : T;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : T;
	
	@:overload public function remove() : Void;
	
	
}
