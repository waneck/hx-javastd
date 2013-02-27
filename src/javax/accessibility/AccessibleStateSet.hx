package javax.accessibility;
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
extern class AccessibleStateSet
{
	/**
	* Each entry in the Vector represents an AccessibleState.
	* @see #add
	* @see #addAll
	* @see #remove
	* @see #contains
	* @see #toArray
	* @see #clear
	*/
	private var states : java.util.Vector<javax.accessibility.AccessibleState>;
	
	/**
	* Creates a new empty state set.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new state with the initial set of states contained in
	* the array of states passed in.  Duplicate entries are ignored.
	*
	* @param states an array of AccessibleState describing the state set.
	*/
	@:overload public function new(states : java.NativeArray<javax.accessibility.AccessibleState>) : Void;
	
	/**
	* Adds a new state to the current state set if it is not already
	* present.  If the state is already in the state set, the state
	* set is unchanged and the return value is false.  Otherwise,
	* the state is added to the state set and the return value is
	* true.
	* @param state the state to add to the state set
	* @return true if state is added to the state set; false if the state set
	* is unchanged
	*/
	@:overload public function add(state : javax.accessibility.AccessibleState) : Bool;
	
	/**
	* Adds all of the states to the existing state set.  Duplicate entries
	* are ignored.
	* @param states  AccessibleState array describing the state set.
	*/
	@:overload public function addAll(states : java.NativeArray<javax.accessibility.AccessibleState>) : Void;
	
	/**
	* Removes a state from the current state set.  If the state is not
	* in the set, the state set will be unchanged and the return value
	* will be false.  If the state is in the state set, it will be removed
	* from the set and the return value will be true.
	*
	* @param state the state to remove from the state set
	* @return true if the state is in the state set; false if the state set
	* will be unchanged
	*/
	@:overload public function remove(state : javax.accessibility.AccessibleState) : Bool;
	
	/**
	* Removes all the states from the current state set.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Checks if the current state is in the state set.
	* @param state the state
	* @return true if the state is in the state set; otherwise false
	*/
	@:overload public function contains(state : javax.accessibility.AccessibleState) : Bool;
	
	/**
	* Returns the current state set as an array of AccessibleState
	* @return AccessibleState array containing the current state.
	*/
	@:overload public function toArray() : java.NativeArray<javax.accessibility.AccessibleState>;
	
	/**
	* Creates a localized String representing all the states in the set
	* using the default locale.
	*
	* @return comma separated localized String
	* @see AccessibleBundle#toDisplayString
	*/
	@:overload public function toString() : String;
	
	
}
