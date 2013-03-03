package java.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractMap<K, V> implements java.util.Map<K, V>
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation returns <tt>entrySet().size()</tt>.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation returns <tt>size() == 0</tt>.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation iterates over <tt>entrySet()</tt> searching
	* for an entry with the specified value.  If such an entry is found,
	* <tt>true</tt> is returned.  If the iteration terminates without
	* finding such an entry, <tt>false</tt> is returned.  Note that this
	* implementation requires linear time in the size of the map.
	*
	* @throws ClassCastException   {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function containsValue(value : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation iterates over <tt>entrySet()</tt> searching
	* for an entry with the specified key.  If such an entry is found,
	* <tt>true</tt> is returned.  If the iteration terminates without
	* finding such an entry, <tt>false</tt> is returned.  Note that this
	* implementation requires linear time in the size of the map; many
	* implementations will override this method.
	*
	* @throws ClassCastException   {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function containsKey(key : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation iterates over <tt>entrySet()</tt> searching
	* for an entry with the specified key.  If such an entry is found,
	* the entry's value is returned.  If the iteration terminates without
	* finding such an entry, <tt>null</tt> is returned.  Note that this
	* implementation requires linear time in the size of the map; many
	* implementations will override this method.
	*
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	*/
	@:overload @:public public function get(key : Dynamic) : V;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation always throws an
	* <tt>UnsupportedOperationException</tt>.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	*/
	@:overload @:public public function put(key : K, value : V) : V;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation iterates over <tt>entrySet()</tt> searching for an
	* entry with the specified key.  If such an entry is found, its value is
	* obtained with its <tt>getValue</tt> operation, the entry is removed
	* from the collection (and the backing map) with the iterator's
	* <tt>remove</tt> operation, and the saved value is returned.  If the
	* iteration terminates without finding such an entry, <tt>null</tt> is
	* returned.  Note that this implementation requires linear time in the
	* size of the map; many implementations will override this method.
	*
	* <p>Note that this implementation throws an
	* <tt>UnsupportedOperationException</tt> if the <tt>entrySet</tt>
	* iterator does not support the <tt>remove</tt> method and this map
	* contains a mapping for the specified key.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	*/
	@:overload @:public public function remove(key : Dynamic) : V;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation iterates over the specified map's
	* <tt>entrySet()</tt> collection, and calls this map's <tt>put</tt>
	* operation once for each entry returned by the iteration.
	*
	* <p>Note that this implementation throws an
	* <tt>UnsupportedOperationException</tt> if this map does not support
	* the <tt>put</tt> operation and the specified map is nonempty.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	*/
	@:overload @:public public function putAll(m : java.util.Map<K, V>) : Void;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation calls <tt>entrySet().clear()</tt>.
	*
	* <p>Note that this implementation throws an
	* <tt>UnsupportedOperationException</tt> if the <tt>entrySet</tt>
	* does not support the <tt>clear</tt> operation.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	*/
	@:overload @:public public function clear() : Void;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation returns a set that subclasses {@link AbstractSet}.
	* The subclass's iterator method returns a "wrapper object" over this
	* map's <tt>entrySet()</tt> iterator.  The <tt>size</tt> method
	* delegates to this map's <tt>size</tt> method and the
	* <tt>contains</tt> method delegates to this map's
	* <tt>containsKey</tt> method.
	*
	* <p>The set is created the first time this method is called,
	* and returned in response to all subsequent calls.  No synchronization
	* is performed, so there is a slight chance that multiple calls to this
	* method will not all return the same set.
	*/
	@:overload @:public public function keySet() : java.util.Set<K>;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation returns a collection that subclasses {@link
	* AbstractCollection}.  The subclass's iterator method returns a
	* "wrapper object" over this map's <tt>entrySet()</tt> iterator.
	* The <tt>size</tt> method delegates to this map's <tt>size</tt>
	* method and the <tt>contains</tt> method delegates to this map's
	* <tt>containsValue</tt> method.
	*
	* <p>The collection is created the first time this method is called, and
	* returned in response to all subsequent calls.  No synchronization is
	* performed, so there is a slight chance that multiple calls to this
	* method will not all return the same collection.
	*/
	@:overload @:public public function values() : java.util.Collection<V>;
	
	@:overload @:public @:abstract public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	/**
	* Compares the specified object with this map for equality.  Returns
	* <tt>true</tt> if the given object is also a map and the two maps
	* represent the same mappings.  More formally, two maps <tt>m1</tt> and
	* <tt>m2</tt> represent the same mappings if
	* <tt>m1.entrySet().equals(m2.entrySet())</tt>.  This ensures that the
	* <tt>equals</tt> method works properly across different implementations
	* of the <tt>Map</tt> interface.
	*
	* <p>This implementation first checks if the specified object is this map;
	* if so it returns <tt>true</tt>.  Then, it checks if the specified
	* object is a map whose size is identical to the size of this map; if
	* not, it returns <tt>false</tt>.  If so, it iterates over this map's
	* <tt>entrySet</tt> collection, and checks that the specified map
	* contains each mapping that this map contains.  If the specified map
	* fails to contain such a mapping, <tt>false</tt> is returned.  If the
	* iteration completes, <tt>true</tt> is returned.
	*
	* @param o object to be compared for equality with this map
	* @return <tt>true</tt> if the specified object is equal to this map
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this map.  The hash code of a map is
	* defined to be the sum of the hash codes of each entry in the map's
	* <tt>entrySet()</tt> view.  This ensures that <tt>m1.equals(m2)</tt>
	* implies that <tt>m1.hashCode()==m2.hashCode()</tt> for any two maps
	* <tt>m1</tt> and <tt>m2</tt>, as required by the general contract of
	* {@link Object#hashCode}.
	*
	* <p>This implementation iterates over <tt>entrySet()</tt>, calling
	* {@link Map.Entry#hashCode hashCode()} on each element (entry) in the
	* set, and adding up the results.
	*
	* @return the hash code value for this map
	* @see Map.Entry#hashCode()
	* @see Object#equals(Object)
	* @see Set#equals(Object)
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of this map.  The string representation
	* consists of a list of key-value mappings in the order returned by the
	* map's <tt>entrySet</tt> view's iterator, enclosed in braces
	* (<tt>"{}"</tt>).  Adjacent mappings are separated by the characters
	* <tt>", "</tt> (comma and space).  Each key-value mapping is rendered as
	* the key followed by an equals sign (<tt>"="</tt>) followed by the
	* associated value.  Keys and values are converted to strings as by
	* {@link String#valueOf(Object)}.
	*
	* @return a string representation of this map
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a shallow copy of this <tt>AbstractMap</tt> instance: the keys
	* and values themselves are not cloned.
	*
	* @return a shallow copy of this map
	*/
	@:overload @:protected private function clone() : Dynamic;
	
	
}
/**
* An Entry maintaining a key and a value.  The value may be
* changed using the <tt>setValue</tt> method.  This class
* facilitates the process of building custom map
* implementations. For example, it may be convenient to return
* arrays of <tt>SimpleEntry</tt> instances in method
* <tt>Map.entrySet().toArray</tt>.
*
* @since 1.6
*/
@:require(java6) @:native('java$util$AbstractMap$SimpleEntry') extern class AbstractMap_SimpleEntry<K, V> implements java.util.Map.Map_Entry<K, V> implements java.io.Serializable
{
	/**
	* Creates an entry representing a mapping from the specified
	* key to the specified value.
	*
	* @param key the key represented by this entry
	* @param value the value represented by this entry
	*/
	@:overload @:public public function new(key : K, value : V) : Void;
	
	/**
	* Creates an entry representing the same mapping as the
	* specified entry.
	*
	* @param entry the entry to copy
	*/
	@:overload @:public public function new(entry : java.util.Map.Map_Entry<K, V>) : Void;
	
	/**
	* Returns the key corresponding to this entry.
	*
	* @return the key corresponding to this entry
	*/
	@:overload @:public public function getKey() : K;
	
	/**
	* Returns the value corresponding to this entry.
	*
	* @return the value corresponding to this entry
	*/
	@:overload @:public public function getValue() : V;
	
	/**
	* Replaces the value corresponding to this entry with the specified
	* value.
	*
	* @param value new value to be stored in this entry
	* @return the old value corresponding to the entry
	*/
	@:overload @:public public function setValue(value : V) : V;
	
	/**
	* Compares the specified object with this entry for equality.
	* Returns {@code true} if the given object is also a map entry and
	* the two entries represent the same mapping.  More formally, two
	* entries {@code e1} and {@code e2} represent the same mapping
	* if<pre>
	*   (e1.getKey()==null ?
	*    e2.getKey()==null :
	*    e1.getKey().equals(e2.getKey()))
	*   &amp;&amp;
	*   (e1.getValue()==null ?
	*    e2.getValue()==null :
	*    e1.getValue().equals(e2.getValue()))</pre>
	* This ensures that the {@code equals} method works properly across
	* different implementations of the {@code Map.Entry} interface.
	*
	* @param o object to be compared for equality with this map entry
	* @return {@code true} if the specified object is equal to this map
	*         entry
	* @see    #hashCode
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this map entry.  The hash code
	* of a map entry {@code e} is defined to be: <pre>
	*   (e.getKey()==null   ? 0 : e.getKey().hashCode()) ^
	*   (e.getValue()==null ? 0 : e.getValue().hashCode())</pre>
	* This ensures that {@code e1.equals(e2)} implies that
	* {@code e1.hashCode()==e2.hashCode()} for any two Entries
	* {@code e1} and {@code e2}, as required by the general
	* contract of {@link Object#hashCode}.
	*
	* @return the hash code value for this map entry
	* @see    #equals
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a String representation of this map entry.  This
	* implementation returns the string representation of this
	* entry's key followed by the equals character ("<tt>=</tt>")
	* followed by the string representation of this entry's value.
	*
	* @return a String representation of this map entry
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* An Entry maintaining an immutable key and value.  This class
* does not support method <tt>setValue</tt>.  This class may be
* convenient in methods that return thread-safe snapshots of
* key-value mappings.
*
* @since 1.6
*/
@:require(java6) @:native('java$util$AbstractMap$SimpleImmutableEntry') extern class AbstractMap_SimpleImmutableEntry<K, V> implements java.util.Map.Map_Entry<K, V> implements java.io.Serializable
{
	/**
	* Creates an entry representing a mapping from the specified
	* key to the specified value.
	*
	* @param key the key represented by this entry
	* @param value the value represented by this entry
	*/
	@:overload @:public public function new(key : K, value : V) : Void;
	
	/**
	* Creates an entry representing the same mapping as the
	* specified entry.
	*
	* @param entry the entry to copy
	*/
	@:overload @:public public function new(entry : java.util.Map.Map_Entry<K, V>) : Void;
	
	/**
	* Returns the key corresponding to this entry.
	*
	* @return the key corresponding to this entry
	*/
	@:overload @:public public function getKey() : K;
	
	/**
	* Returns the value corresponding to this entry.
	*
	* @return the value corresponding to this entry
	*/
	@:overload @:public public function getValue() : V;
	
	/**
	* Replaces the value corresponding to this entry with the specified
	* value (optional operation).  This implementation simply throws
	* <tt>UnsupportedOperationException</tt>, as this class implements
	* an <i>immutable</i> map entry.
	*
	* @param value new value to be stored in this entry
	* @return (Does not return)
	* @throws UnsupportedOperationException always
	*/
	@:overload @:public public function setValue(value : V) : V;
	
	/**
	* Compares the specified object with this entry for equality.
	* Returns {@code true} if the given object is also a map entry and
	* the two entries represent the same mapping.  More formally, two
	* entries {@code e1} and {@code e2} represent the same mapping
	* if<pre>
	*   (e1.getKey()==null ?
	*    e2.getKey()==null :
	*    e1.getKey().equals(e2.getKey()))
	*   &amp;&amp;
	*   (e1.getValue()==null ?
	*    e2.getValue()==null :
	*    e1.getValue().equals(e2.getValue()))</pre>
	* This ensures that the {@code equals} method works properly across
	* different implementations of the {@code Map.Entry} interface.
	*
	* @param o object to be compared for equality with this map entry
	* @return {@code true} if the specified object is equal to this map
	*         entry
	* @see    #hashCode
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this map entry.  The hash code
	* of a map entry {@code e} is defined to be: <pre>
	*   (e.getKey()==null   ? 0 : e.getKey().hashCode()) ^
	*   (e.getValue()==null ? 0 : e.getValue().hashCode())</pre>
	* This ensures that {@code e1.equals(e2)} implies that
	* {@code e1.hashCode()==e2.hashCode()} for any two Entries
	* {@code e1} and {@code e2}, as required by the general
	* contract of {@link Object#hashCode}.
	*
	* @return the hash code value for this map entry
	* @see    #equals
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a String representation of this map entry.  This
	* implementation returns the string representation of this
	* entry's key followed by the equals character ("<tt>=</tt>")
	* followed by the string representation of this entry's value.
	*
	* @return a String representation of this map entry
	*/
	@:overload @:public public function toString() : String;
	
	
}
