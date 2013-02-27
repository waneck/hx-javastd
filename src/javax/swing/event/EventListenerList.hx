package javax.swing.event;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class EventListenerList implements java.io.Serializable
{
	/* The list of ListenerType - Listener pairs */
	@:transient private var listenerList : java.NativeArray<Dynamic>;
	
	/**
	* Passes back the event listener list as an array
	* of ListenerType-listener pairs.  Note that for
	* performance reasons, this implementation passes back
	* the actual data structure in which the listener data
	* is stored internally!
	* This method is guaranteed to pass back a non-null
	* array, so that no null-checking is required in
	* fire methods.  A zero-length array of Object should
	* be returned if there are currently no listeners.
	*
	* WARNING!!! Absolutely NO modification of
	* the data contained in this array should be made -- if
	* any such manipulation is necessary, it should be done
	* on a copy of the array returned rather than the array
	* itself.
	*/
	@:overload public function getListenerList() : java.NativeArray<Dynamic>;
	
	/**
	* Return an array of all the listeners of the given type.
	* @return all of the listeners of the specified type.
	* @exception  ClassCastException if the supplied class
	*          is not assignable to EventListener
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getListeners<T : java.util.EventListener>(t : Class<T>) : java.NativeArray<T>;
	
	/**
	* Returns the total number of listeners for this listener list.
	*/
	@:overload public function getListenerCount() : Int;
	
	/**
	* Returns the total number of listeners of the supplied type
	* for this listener list.
	*/
	@:overload public function getListenerCount(t : Class<Dynamic>) : Int;
	
	/**
	* Adds the listener as a listener of the specified type.
	* @param t the type of the listener to be added
	* @param l the listener to be added
	*/
	@:overload @:synchronized public function add<T : java.util.EventListener>(t : Class<T>, l : T) : Void;
	
	/**
	* Removes the listener as a listener of the specified type.
	* @param t the type of the listener to be removed
	* @param l the listener to be removed
	*/
	@:overload @:synchronized public function remove<T : java.util.EventListener>(t : Class<T>, l : T) : Void;
	
	/**
	* Returns a string representation of the EventListenerList.
	*/
	@:overload public function toString() : String;
	
	
}
