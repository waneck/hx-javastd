package java.beans;
/*
* Copyright (c) 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ChangeListenerMap<L>
{
	/**
	* Creates an array of listeners.
	* This method can be optimized by using
	* the same instance of the empty array
	* when {@code length} is equal to {@code 0}.
	*
	* @param length  the array length
	* @return        an array with specified length
	*/
	@:overload @:abstract private function newArray(length : Int) : java.NativeArray<L>;
	
	/**
	* Creates a proxy listener for the specified property.
	*
	* @param name      the name of the property to listen on
	* @param listener  the listener to process events
	* @return          a proxy listener
	*/
	@:overload @:abstract private function newProxy(name : String, listener : L) : L;
	
	/**
	* Adds a listener to the list of listeners for the specified property.
	* This listener is called as many times as it was added.
	*
	* @param name      the name of the property to listen on
	* @param listener  the listener to process events
	*/
	@:overload @:final @:synchronized public function add(name : String, listener : L) : Void;
	
	/**
	* Removes a listener from the list of listeners for the specified property.
	* If the listener was added more than once to the same event source,
	* this listener will be notified one less time after being removed.
	*
	* @param name      the name of the property to listen on
	* @param listener  the listener to process events
	*/
	@:overload @:final @:synchronized public function remove(name : String, listener : L) : Void;
	
	/**
	* Returns the list of listeners for the specified property.
	*
	* @param name  the name of the property
	* @return      the corresponding list of listeners
	*/
	@:overload @:final @:synchronized public function get(name : String) : java.NativeArray<L>;
	
	/**
	* Sets new list of listeners for the specified property.
	*
	* @param name       the name of the property
	* @param listeners  new list of listeners
	*/
	@:overload @:final public function set(name : String, listeners : java.NativeArray<L>) : Void;
	
	/**
	* Returns all listeners in the map.
	*
	* @return an array of all listeners
	*/
	@:overload @:final @:synchronized public function getListeners() : java.NativeArray<L>;
	
	/**
	* Returns listeners that have been associated with the named property.
	*
	* @param name  the name of the property
	* @return an array of listeners for the named property
	*/
	@:overload @:final public function getListeners(name : String) : java.NativeArray<L>;
	
	/**
	* Indicates whether the map contains
	* at least one listener to be notified.
	*
	* @param name  the name of the property
	* @return      {@code true} if at least one listener exists or
	*              {@code false} otherwise
	*/
	@:overload @:final @:synchronized public function hasListeners(name : String) : Bool;
	
	/**
	* Returns a set of entries from the map.
	* Each entry is a pair consisted of the property name
	* and the corresponding list of listeners.
	*
	* @return a set of entries from the map
	*/
	@:overload @:final public function getEntries() : java.util.Set<java.util.Map.Map_Entry<String, java.NativeArray<L>>>;
	
	/**
	* Extracts a real listener from the proxy listener.
	* It is necessary because default proxy class is not serializable.
	*
	* @return a real listener
	*/
	@:overload @:abstract public function extract(listener : L) : L;
	
	
}
