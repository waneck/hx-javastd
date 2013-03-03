package java.util;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class EnumMap<K, V> extends java.util.AbstractMap<K, V> implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Creates an empty enum map with the specified key type.
	*
	* @param keyType the class object of the key type for this enum map
	* @throws NullPointerException if <tt>keyType</tt> is null
	*/
	@:overload @:public public function new(keyType : Class<K>) : Void;
	
	/**
	* Creates an enum map with the same key type as the specified enum
	* map, initially containing the same mappings (if any).
	*
	* @param m the enum map from which to initialize this enum map
	* @throws NullPointerException if <tt>m</tt> is null
	*/
	@:overload @:public public function new(m : java.util.EnumMap<K, V>) : Void;
	
	/**
	* Creates an enum map initialized from the specified map.  If the
	* specified map is an <tt>EnumMap</tt> instance, this constructor behaves
	* identically to {@link #EnumMap(EnumMap)}.  Otherwise, the specified map
	* must contain at least one mapping (in order to determine the new
	* enum map's key type).
	*
	* @param m the map from which to initialize this enum map
	* @throws IllegalArgumentException if <tt>m</tt> is not an
	*     <tt>EnumMap</tt> instance and contains no mappings
	* @throws NullPointerException if <tt>m</tt> is null
	*/
	@:overload @:public public function new(m : java.util.Map<K, V>) : Void;
	
	/**
	* Returns the number of key-value mappings in this map.
	*
	* @return the number of key-value mappings in this map
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this map maps one or more keys to the
	* specified value.
	*
	* @param value the value whose presence in this map is to be tested
	* @return <tt>true</tt> if this map maps one or more keys to this value
	*/
	@:overload @:public override public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if this map contains a mapping for the specified
	* key.
	*
	* @param key the key whose presence in this map is to be tested
	* @return <tt>true</tt> if this map contains a mapping for the specified
	*            key
	*/
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
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
	*/
	@:overload @:public override public function get(key : Dynamic) : V;
	
	/**
	* Associates the specified value with the specified key in this map.
	* If the map previously contained a mapping for this key, the old
	* value is replaced.
	*
	* @param key the key with which the specified value is to be associated
	* @param value the value to be associated with the specified key
	*
	* @return the previous value associated with specified key, or
	*     <tt>null</tt> if there was no mapping for key.  (A <tt>null</tt>
	*     return can also indicate that the map previously associated
	*     <tt>null</tt> with the specified key.)
	* @throws NullPointerException if the specified key is null
	*/
	@:overload @:public override public function put(key : K, value : V) : V;
	
	/**
	* Removes the mapping for this key from this map if present.
	*
	* @param key the key whose mapping is to be removed from the map
	* @return the previous value associated with specified key, or
	*     <tt>null</tt> if there was no entry for key.  (A <tt>null</tt>
	*     return can also indicate that the map previously associated
	*     <tt>null</tt> with the specified key.)
	*/
	@:overload @:public override public function remove(key : Dynamic) : V;
	
	/**
	* Copies all of the mappings from the specified map to this map.
	* These mappings will replace any mappings that this map had for
	* any of the keys currently in the specified map.
	*
	* @param m the mappings to be stored in this map
	* @throws NullPointerException the specified map is null, or if
	*     one or more keys in the specified map are null
	*/
	@:overload @:public override public function putAll(m : java.util.Map<K, V>) : Void;
	
	/**
	* Removes all mappings from this map.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Returns a {@link Set} view of the keys contained in this map.
	* The returned set obeys the general contract outlined in
	* {@link Map#keySet()}.  The set's iterator will return the keys
	* in their natural order (the order in which the enum constants
	* are declared).
	*
	* @return a set view of the keys contained in this enum map
	*/
	@:overload @:public override public function keySet() : java.util.Set<K>;
	
	/**
	* Returns a {@link Collection} view of the values contained in this map.
	* The returned collection obeys the general contract outlined in
	* {@link Map#values()}.  The collection's iterator will return the
	* values in the order their corresponding keys appear in map,
	* which is their natural order (the order in which the enum constants
	* are declared).
	*
	* @return a collection view of the values contained in this map
	*/
	@:overload @:public override public function values() : java.util.Collection<V>;
	
	/**
	* Returns a {@link Set} view of the mappings contained in this map.
	* The returned set obeys the general contract outlined in
	* {@link Map#keySet()}.  The set's iterator will return the
	* mappings in the order their keys appear in map, which is their
	* natural order (the order in which the enum constants are declared).
	*
	* @return a set view of the mappings contained in this enum map
	*/
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<K, V>>;
	
	/**
	* Compares the specified object with this map for equality.  Returns
	* <tt>true</tt> if the given object is also a map and the two maps
	* represent the same mappings, as specified in the {@link
	* Map#equals(Object)} contract.
	*
	* @param o the object to be compared for equality with this map
	* @return <tt>true</tt> if the specified object is equal to this map
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this map.  The hash code of a map is
	* defined to be the sum of the hash codes of each entry in the map.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns a shallow copy of this enum map.  (The values themselves
	* are not cloned.
	*
	* @return a shallow copy of this enum map
	*/
	@:overload @:public override public function clone() : java.util.EnumMap<K, V>;
	
	
}
@:native('java$util$EnumMap$KeySet') @:internal extern class EnumMap_KeySet extends java.util.AbstractSet<Dynamic>
{
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	
}
@:native('java$util$EnumMap$Values') @:internal extern class EnumMap_Values extends java.util.AbstractCollection<Dynamic>
{
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	
}
@:native('java$util$EnumMap$EntrySet') @:internal extern class EnumMap_EntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	
}
@:native('java$util$EnumMap$EnumMapIterator') @:internal extern class EnumMap_EnumMapIterator<T> implements java.util.Iterator<T>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload @:public public function next() : Dynamic;
	
	
}
@:native('java$util$EnumMap$KeyIterator') @:internal extern class EnumMap_KeyIterator extends java.util.EnumMap.EnumMap_EnumMapIterator<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$EnumMap$ValueIterator') @:internal extern class EnumMap_ValueIterator extends java.util.EnumMap.EnumMap_EnumMapIterator<Dynamic>
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('java$util$EnumMap$EntryIterator') @:internal extern class EnumMap_EntryIterator extends java.util.EnumMap.EnumMap_EnumMapIterator<java.util.Map.Map_Entry<Dynamic, Dynamic>>
{
	@:overload @:public override public function next() : java.util.Map.Map_Entry<Dynamic, Dynamic>;
	
	@:overload @:public override public function remove() : Void;
	
	
}
@:native('java$util$EnumMap$EntryIterator$Entry') @:internal extern class EnumMap_EntryIterator_Entry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload @:public public function getKey() : Dynamic;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public public function setValue(value : Dynamic) : Dynamic;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
