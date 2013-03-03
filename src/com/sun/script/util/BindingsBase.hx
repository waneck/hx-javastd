package com.sun.script.util;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BindingsBase extends java.util.AbstractMap<String, Dynamic> implements javax.script.Bindings
{
	/**
	* Abstract super class for Bindings implementations
	*
	* @author Mike Grogan
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function get(name : Dynamic) : Dynamic;
	
	@:overload @:public override public function remove(key : Dynamic) : Dynamic;
	
	@:overload @:public public function put(key : String, value : Dynamic) : Dynamic;
	
	@:overload @:public override public function putAll(toMerge : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:public @:abstract public function putImpl(name : String, value : Dynamic) : Dynamic;
	
	@:overload @:public @:abstract public function getImpl(name : String) : Dynamic;
	
	@:overload @:public @:abstract public function removeImpl(name : String) : Dynamic;
	
	@:overload @:public @:abstract public function getNames() : java.NativeArray<String>;
	
	@:overload @:protected private function checkKey(key : Dynamic) : Void;
	
	/**
	* Returns <tt>true</tt> if this map contains no key-value mappings.
	*
	* @return <tt>true</tt> if this map contains no key-value mappings
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if this map contains a mapping for the specified
	* key.  More formally, returns <tt>true</tt> if and only if
	* this map contains a mapping for a key <tt>k</tt> such that
	* <tt>(key==null ? k==null : key.equals(k))</tt>.  (There can be
	* at most one such mapping.)
	*
	* @param key key whose presence in this map is to be tested.
	* @return <tt>true</tt> if this map contains a mapping for the specified
	*         key.
	*
	* @throws NullPointerException if key is null
	* @throws ClassCastException if key is not String
	* @throws IllegalArgumentException if key is empty String
	*/
	@:overload @:public @:public override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns the number of key-value mappings in this map.  If the
	* map contains more than <tt>Integer.MAX_VALUE</tt> elements, returns
	* <tt>Integer.MAX_VALUE</tt>.
	*
	* @return the number of key-value mappings in this map
	*/
	@:overload @:public override public function size() : Int;
	
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
	@:overload @:public @:public public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Removes all of the mappings from this map (optional operation).
	* The map will be empty after this call returns.
	*
	* @throws UnsupportedOperationException if the <tt>clear</tt> operation
	*         is not supported by this map
	*/
	@:overload @:public @:public override public function clear() : Void;
	
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
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
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
	@:overload @:public override public function keySet() : java.util.Set<Dynamic>;
	
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
	@:overload @:public override public function values() : java.util.Collection<Dynamic>;
	
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
	@:overload @:public @:public override public function containsValue(value : Dynamic) : Bool;
	
	
}
