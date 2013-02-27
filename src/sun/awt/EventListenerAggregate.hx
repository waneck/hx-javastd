package sun.awt;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class EventListenerAggregate
{
	/**
	* Constructs an <code>EventListenerAggregate</code> object.
	*
	* @param listenerClass the type of the listeners to be managed by this object
	*
	* @throws NullPointerException if <code>listenerClass</code> is
	*         <code>null</code>
	* @throws ClassCastException if <code>listenerClass</code> is not
	*         assignable to <code>java.util.EventListener</code>
	*/
	@:overload public function new(listenerClass : Class<Dynamic>) : Void;
	
	/**
	* Adds the listener to this aggregate.
	*
	* @param listener the listener to be added
	*
	* @throws ClassCastException if <code>listener</code> is not
	*         an instatce of <code>listenerClass</code> specified
	*         in the constructor
	*/
	@:overload @:synchronized public function add(listener : java.util.EventListener) : Void;
	
	/**
	* Removes a listener that is equal to the given one from this aggregate.
	* <code>equals()</code> method is used to compare listeners.
	*
	* @param listener the listener to be removed
	*
	* @return <code>true</code> if this aggregate contained the specified
	*         <code>listener</code>; <code>false</code> otherwise
	*
	* @throws ClassCastException if <code>listener</code> is not
	*         an instatce of <code>listenerClass</code> specified
	*         in the constructor
	*/
	@:overload @:synchronized public function remove(listener : java.util.EventListener) : Bool;
	
	/**
	* Returns an array of all the listeners contained in this aggregate.
	* The array is the data structure in which listeners are stored internally.
	* The runtime type of the returned array is "array of <code>listenerClass</code>"
	* (<code>listenerClass</code> has been specified as a parameter to
	* the constructor of this class).
	*
	* @return all the listeners contained in this aggregate (an empty
	*         array if there are no listeners)
	*/
	@:overload @:synchronized public function getListenersInternal() : java.NativeArray<java.util.EventListener>;
	
	/**
	* Returns an array of all the listeners contained in this aggregate.
	* The array is a copy of the data structure in which listeners are stored
	* internally.
	* The runtime type of the returned array is "array of <code>listenerClass</code>"
	* (<code>listenerClass</code> has been specified as a parameter to
	* the constructor of this class).
	*
	* @return a copy of all the listeners contained in this aggregate (an empty
	*         array if there are no listeners)
	*/
	@:overload @:synchronized public function getListenersCopy() : java.NativeArray<java.util.EventListener>;
	
	/**
	* Returns the number of lisetners in this aggregate.
	*
	* @return the number of lisetners in this aggregate
	*/
	@:overload @:synchronized public function size() : Int;
	
	/**
	* Returns <code>true</code> if this aggregate contains no listeners,
	* <code>false</code> otherwise.
	*
	* @return <code>true</code> if this aggregate contains no listeners,
	*         <code>false</code> otherwise
	*/
	@:overload @:synchronized public function isEmpty() : Bool;
	
	
}
