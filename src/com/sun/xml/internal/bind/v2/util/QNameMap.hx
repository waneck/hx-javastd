package com.sun.xml.internal.bind.v2.util;
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
extern class QNameMap<V>
{
	@:overload public function new() : Void;
	
	/**
	* Associates the specified value with the specified keys in this map.
	* If the map previously contained a mapping for this key, the old
	* value is replaced.
	*
	* @param namespaceUri First key with which the specified value is to be associated.
	* @param localname Second key with which the specified value is to be associated.
	* @param value value to be associated with the specified key.
	*
	*/
	@:overload public function put(namespaceUri : String, localname : String, value : V) : Void;
	
	@:overload public function put(name : javax.xml.namespace.QName, value : V) : Void;
	
	@:overload public function put(name : com.sun.xml.internal.bind.v2.runtime.Name, value : V) : Void;
	
	/**
	* Returns the value to which the specified keys are mapped in this QNameMap,
	* or <tt>null</tt> if the map contains no mapping for this key.
	*
	* @param   nsUri the namespaceUri key whose associated value is to be returned.
	* @param   localPart the localPart key whose associated value is to be returned.
	* @return  the value to which this map maps the specified set of keya, or
	*          <tt>null</tt> if the map contains no mapping for this set of keys.
	* @see #put(String,String, Object)
	*/
	@:overload public function get(nsUri : String, localPart : String) : V;
	
	@:overload public function get(name : javax.xml.namespace.QName) : V;
	
	/**
	* Returns the number of keys-value mappings in this map.
	*
	* @return the number of keys-value mappings in this map.
	*/
	@:overload public function size() : Int;
	
	/**
	* Copies all of the mappings from the specified map to this map
	* These mappings will replace any mappings that
	* this map had for any of the keys currently in the specified map.
	*
	* @param map mappings to be stored in this map.
	*
	*/
	@:overload public function putAll(map : com.sun.xml.internal.bind.v2.util.QNameMap<V>) : com.sun.xml.internal.bind.v2.util.QNameMap<V>;
	
	/**
	* Returns one random item in the map.
	* If this map is empty, return null.
	*
	* <p>
	* This method is useful to obtain the value from a map that only contains one element.
	*/
	@:overload public function getOne() : com.sun.xml.internal.bind.v2.util.QNameMap.QNameMap_Entry<V>;
	
	@:overload public function keySet() : java.util.Collection<javax.xml.namespace.QName>;
	
	@:overload public function containsKey(nsUri : String, localName : String) : Bool;
	
	/**
	* Returns true if this map is empty.
	*/
	@:overload public function isEmpty() : Bool;
	
	@:overload public function entrySet() : java.util.Set<com.sun.xml.internal.bind.v2.util.QNameMap.QNameMap_Entry<V>>;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$xml$internal$bind$v2$util$QNameMap$HashIterator') @:internal extern class QNameMap_HashIterator<E> implements java.util.Iterator<E>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function remove() : Void;
	
	/**
	* Returns the next element in the iteration.
	*
	* @return the next element in the iteration
	* @throws NoSuchElementException if the iteration has no more elements
	*/
	@:overload public function next() : E;
	
	
}
@:native('com$sun$xml$internal$bind$v2$util$QNameMap$Entry') extern class QNameMap_Entry<V>
{
	/** The namespace URI. */
	public var nsUri(default, null) : String;
	
	/** The localPart. */
	public var localName(default, null) : String;
	
	/**
	* Creates a new QName object from {@link #nsUri} and {@link #localName}.
	*/
	@:overload public function createQName() : javax.xml.namespace.QName;
	
	@:overload public function getValue() : V;
	
	@:overload public function setValue(newValue : V) : V;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$xml$internal$bind$v2$util$QNameMap$EntryIterator') @:internal extern class QNameMap_EntryIterator extends com.sun.xml.internal.bind.v2.util.QNameMap.QNameMap_HashIterator<com.sun.xml.internal.bind.v2.util.QNameMap.QNameMap_Entry<Dynamic>>
{
	@:overload override public function next() : com.sun.xml.internal.bind.v2.util.QNameMap.QNameMap_Entry<Dynamic>;
	
	
}
@:native('com$sun$xml$internal$bind$v2$util$QNameMap$EntrySet') @:internal extern class QNameMap_EntrySet extends java.util.AbstractSet<com.sun.xml.internal.bind.v2.util.QNameMap.QNameMap_Entry<Dynamic>>
{
	@:overload override public function iterator() : java.util.Iterator<com.sun.xml.internal.bind.v2.util.QNameMap.QNameMap_Entry<Dynamic>>;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function size() : Int;
	
	
}
