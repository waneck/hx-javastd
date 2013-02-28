package com.sun.xml.internal.ws.handler;
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
extern class MessageUpdatableContext implements javax.xml.ws.handler.MessageContext
{
	/** Creates a new instance of MessageUpdatableContext */
	@:overload public function new(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload public function setScope(name : String, scope : javax.xml.ws.handler.MessageContext.MessageContext_Scope) : Void;
	
	@:overload public function getScope(name : String) : javax.xml.ws.handler.MessageContext.MessageContext_Scope;
	
	/* java.util.Map methods below here */
	@:overload public function clear() : Void;
	
	@:overload public function containsKey(obj : Dynamic) : Bool;
	
	@:overload public function containsValue(obj : Dynamic) : Bool;
	
	@:overload public function entrySet() : java.util.Set<Entry<String, Dynamic>>;
	
	@:overload public function get(obj : Dynamic) : Dynamic;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function keySet() : java.util.Set<String>;
	
	@:overload public function put(str : String, obj : Dynamic) : Dynamic;
	
	@:overload public function putAll(map : java.util.Map<String, Dynamic>) : Void;
	
	@:overload public function remove(obj : Dynamic) : Dynamic;
	
	@:overload public function size() : Int;
	
	@:overload public function values() : java.util.Collection<Dynamic>;
	
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
	@:overload public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Sets the scope of a property.
	*
	* @param name Name of the property associated with the
	*             <code>MessageContext</code>
	* @param scope Desired scope of the property
	* @throws java.lang.IllegalArgumentException if an illegal
	*             property name is specified
	*/
	@:overload @:public public function setScope(name : String, scope : MessageContext_Scope) : Void;
	
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
	@:overload public function putAll(m : Map<Dynamic, Dynamic>) : Void;
	
	
}
