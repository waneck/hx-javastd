package javax.accessibility;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AccessibleRelationSet
{
	/**
	* Each entry in the Vector represents an AccessibleRelation.
	* @see #add
	* @see #addAll
	* @see #remove
	* @see #contains
	* @see #get
	* @see #size
	* @see #toArray
	* @see #clear
	*/
	private var relations : java.util.Vector<javax.accessibility.AccessibleRelation>;
	
	/**
	* Creates a new empty relation set.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new relation with the initial set of relations contained in
	* the array of relations passed in.  Duplicate entries are ignored.
	*
	* @param relations an array of AccessibleRelation describing the
	* relation set.
	*/
	@:overload public function new(relations : java.NativeArray<javax.accessibility.AccessibleRelation>) : Void;
	
	/**
	* Adds a new relation to the current relation set.  If the relation
	* is already in the relation set, the target(s) of the specified
	* relation is merged with the target(s) of the existing relation.
	* Otherwise,  the new relation is added to the relation set.
	*
	* @param relation the relation to add to the relation set
	* @return true if relation is added to the relation set; false if the
	* relation set is unchanged
	*/
	@:overload public function add(relation : javax.accessibility.AccessibleRelation) : Bool;
	
	/**
	* Adds all of the relations to the existing relation set.  Duplicate
	* entries are ignored.
	*
	* @param relations  AccessibleRelation array describing the relation set.
	*/
	@:overload public function addAll(relations : java.NativeArray<javax.accessibility.AccessibleRelation>) : Void;
	
	/**
	* Removes a relation from the current relation set.  If the relation
	* is not in the set, the relation set will be unchanged and the
	* return value will be false.  If the relation is in the relation
	* set, it will be removed from the set and the return value will be
	* true.
	*
	* @param relation the relation to remove from the relation set
	* @return true if the relation is in the relation set; false if the
	* relation set is unchanged
	*/
	@:overload public function remove(relation : javax.accessibility.AccessibleRelation) : Bool;
	
	/**
	* Removes all the relations from the current relation set.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns the number of relations in the relation set.
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns whether the relation set contains a relation
	* that matches the specified key.
	* @param key the AccessibleRelation key
	* @return true if the relation is in the relation set; otherwise false
	*/
	@:overload public function contains(key : String) : Bool;
	
	/**
	* Returns the relation that matches the specified key.
	* @param key the AccessibleRelation key
	* @return the relation, if one exists, that matches the specified key.
	* Otherwise, null is returned.
	*/
	@:overload public function get(key : String) : javax.accessibility.AccessibleRelation;
	
	/**
	* Returns the current relation set as an array of AccessibleRelation
	* @return AccessibleRelation array contacting the current relation.
	*/
	@:overload public function toArray() : java.NativeArray<javax.accessibility.AccessibleRelation>;
	
	/**
	* Creates a localized String representing all the relations in the set
	* using the default locale.
	*
	* @return comma separated localized String
	* @see AccessibleBundle#toDisplayString
	*/
	@:overload public function toString() : String;
	
	
}
