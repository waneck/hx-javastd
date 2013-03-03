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
	@:overload @:public public function new(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:public public function setScope(name : String, scope : javax.xml.ws.handler.MessageContext.MessageContext_Scope) : Void;
	
	@:overload @:public public function getScope(name : String) : javax.xml.ws.handler.MessageContext.MessageContext_Scope;
	
	/* java.util.Map methods below here */
	@:overload @:public public function clear() : Void;
	
	@:overload @:public public function containsKey(obj : Dynamic) : Bool;
	
	@:overload @:public public function containsValue(obj : Dynamic) : Bool;
	
	@:overload @:public public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, Dynamic>>;
	
	@:overload @:public public function get(obj : Dynamic) : Dynamic;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function keySet() : java.util.Set<String>;
	
	@:overload @:public public function put(str : String, obj : Dynamic) : Dynamic;
	
	@:overload @:public public function putAll(map : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:public public function remove(obj : Dynamic) : Dynamic;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function values() : java.util.Collection<Dynamic>;
	
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
	
	
}
