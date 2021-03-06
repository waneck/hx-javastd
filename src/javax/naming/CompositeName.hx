package javax.naming;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CompositeName implements javax.naming.Name
{
	/**
	* Constructs a new composite name instance using the components
	* specified by 'comps'. This protected method is intended to be
	* to be used by subclasses of CompositeName when they override
	* methods such as clone(), getPrefix(), getSuffix().
	*
	* @param comps A non-null enumeration containing the components for the new
	*              composite name. Each element is of class String.
	*               The enumeration will be consumed to extract its
	*               elements.
	*/
	@:overload @:protected private function new(comps : java.util.Enumeration<String>) : Void;
	
	/**
	* Constructs a new composite name instance by parsing the string n
	* using the composite name syntax (left-to-right, slash separated).
	* The composite name syntax is described in detail in the class
	* description.
	*
	* @param  n       The non-null string to parse.
	* @exception InvalidNameException If n has invalid composite name syntax.
	*/
	@:overload @:public public function new(n : String) : Void;
	
	/**
	* Constructs a new empty composite name. Such a name returns true
	* when <code>isEmpty()</code> is invoked on it.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Generates the string representation of this composite name.
	* The string representation consists of enumerating in order
	* each component of the composite name and separating
	* each component by a forward slash character. Quoting and
	* escape characters are applied where necessary according to
	* the JNDI syntax, which is described in the class description.
	* An empty component is represented by an empty string.
	*
	* The string representation thus generated can be passed to
	* the CompositeName constructor to create a new equivalent
	* composite name.
	*
	* @return A non-null string representation of this composite name.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Determines whether two composite names are equal.
	* If obj is null or not a composite name, false is returned.
	* Two composite names are equal if each component in one is equal
	* to the corresponding component in the other. This implies
	* both have the same number of components, and each component's
	* equals() test against the corresponding component in the other name
	* returns true.
	*
	* @param  obj     The possibly null object to compare against.
	* @return true if obj is equal to this composite name, false otherwise.
	* @see #hashCode
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Computes the hash code of this composite name.
	* The hash code is the sum of the hash codes of individual components
	* of this composite name.
	*
	* @return An int representing the hash code of this name.
	* @see #equals
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this CompositeName with the specified Object for order.
	* Returns a
	* negative integer, zero, or a positive integer as this Name is less
	* than, equal to, or greater than the given Object.
	* <p>
	* If obj is null or not an instance of CompositeName, ClassCastException
	* is thrown.
	* <p>
	* See equals() for what it means for two composite names to be equal.
	* If two composite names are equal, 0 is returned.
	* <p>
	* Ordering of composite names follows the lexicographical rules for
	* string comparison, with the extension that this applies to all
	* the components in the composite name. The effect is as if all the
	* components were lined up in their specified ordered and the
	* lexicographical rules applied over the two line-ups.
	* If this composite name is "lexicographically" lesser than obj,
	* a negative number is returned.
	* If this composite name is "lexicographically" greater than obj,
	* a positive number is returned.
	* @param obj The non-null object to compare against.
	*
	* @return  a negative integer, zero, or a positive integer as this Name
	*          is less than, equal to, or greater than the given Object.
	* @exception ClassCastException if obj is not a CompositeName.
	*/
	@:overload @:public public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Generates a copy of this composite name.
	* Changes to the components of this composite name won't
	* affect the new copy and vice versa.
	*
	* @return A non-null copy of this composite name.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Retrieves the number of components in this composite name.
	*
	* @return The nonnegative number of components in this composite name.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Determines whether this composite name is empty. A composite name
	* is empty if it has zero components.
	*
	* @return true if this composite name is empty, false otherwise.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Retrieves the components of this composite name as an enumeration
	* of strings.
	* The effects of updates to this composite name on this enumeration
	* is undefined.
	*
	* @return A non-null enumeration of the components of
	*         this composite name. Each element of the enumeration is of
	*         class String.
	*/
	@:overload @:public public function getAll() : java.util.Enumeration<String>;
	
	/**
	* Retrieves a component of this composite name.
	*
	* @param  posn    The 0-based index of the component to retrieve.
	*                 Must be in the range [0,size()).
	* @return The non-null component at index posn.
	* @exception ArrayIndexOutOfBoundsException if posn is outside the
	*         specified range.
	*/
	@:overload @:public public function get(posn : Int) : String;
	
	/**
	* Creates a composite name whose components consist of a prefix of the
	* components in this composite name. Subsequent changes to
	* this composite name does not affect the name that is returned.
	*
	* @param  posn    The 0-based index of the component at which to stop.
	*                 Must be in the range [0,size()].
	* @return A composite name consisting of the components at indexes in
	*         the range [0,posn).
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	*/
	@:overload @:public public function getPrefix(posn : Int) : javax.naming.Name;
	
	/**
	* Creates a composite name whose components consist of a suffix of the
	* components in this composite name. Subsequent changes to
	* this composite name does not affect the name that is returned.
	*
	* @param  posn    The 0-based index of the component at which to start.
	*                 Must be in the range [0,size()].
	* @return A composite name consisting of the components at indexes in
	*         the range [posn,size()).  If posn is equal to
	*         size(), an empty composite name is returned.
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	*/
	@:overload @:public public function getSuffix(posn : Int) : javax.naming.Name;
	
	/**
	* Determines whether a composite name is a prefix of this composite name.
	* A composite name 'n' is a prefix if it is equal to
	* getPrefix(n.size())--in other words, this composite name
	* starts with 'n'. If 'n' is null or not a composite name, false is returned.
	*
	* @param  n       The possibly null name to check.
	* @return true if n is a CompositeName and
	*         is a prefix of this composite name, false otherwise.
	*/
	@:overload @:public public function startsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Determines whether a composite name is a suffix of this composite name.
	* A composite name 'n' is a suffix if it it is equal to
	* getSuffix(size()-n.size())--in other words, this
	* composite name ends with 'n'.
	* If n is null or not a composite name, false is returned.
	*
	* @param  n       The possibly null name to check.
	* @return true if n is a CompositeName and
	*         is a suffix of this composite name, false otherwise.
	*/
	@:overload @:public public function endsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Adds the components of a composite name -- in order -- to the end of
	* this composite name.
	*
	* @param suffix   The non-null components to add.
	* @return The updated CompositeName, not a new one. Cannot be null.
	* @exception InvalidNameException If suffix is not a composite name.
	*/
	@:overload @:public public function addAll(suffix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds the components of a composite name -- in order -- at a specified
	* position within this composite name.
	* Components of this composite name at or after the index of the first
	* new component are shifted up (away from index 0)
	* to accommodate the new components.
	*
	* @param n        The non-null components to add.
	* @param posn     The index in this name at which to add the new
	*                 components.  Must be in the range [0,size()].
	* @return The updated CompositeName, not a new one. Cannot be null.
	* @exception InvalidNameException If n is not a composite name.
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	*/
	@:overload @:public public function addAll(posn : Int, n : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds a single component to the end of this composite name.
	*
	* @param comp     The non-null component to add.
	* @return The updated CompositeName, not a new one. Cannot be null.
	* @exception InvalidNameException If adding comp at end of the name
	*                         would violate the name's syntax.
	*/
	@:overload @:public public function add(comp : String) : javax.naming.Name;
	
	/**
	* Adds a single component at a specified position within this
	* composite name.
	* Components of this composite name at or after the index of the new
	* component are shifted up by one (away from index 0) to accommodate
	* the new component.
	*
	* @param  comp    The non-null component to add.
	* @param  posn    The index at which to add the new component.
	*                 Must be in the range [0,size()].
	* @return The updated CompositeName, not a new one. Cannot be null.
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	* @exception InvalidNameException If adding comp at the specified position
	*                         would violate the name's syntax.
	*/
	@:overload @:public public function add(posn : Int, comp : String) : javax.naming.Name;
	
	/**
	* Deletes a component from this composite name.
	* The component of this composite name at position 'posn' is removed,
	* and components at indices greater than 'posn'
	* are shifted down (towards index 0) by one.
	*
	* @param  posn    The index of the component to delete.
	*                 Must be in the range [0,size()).
	* @return The component removed (a String).
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range (includes case where
	*         composite name is empty).
	* @exception InvalidNameException If deleting the component
	*                         would violate the name's syntax.
	*/
	@:overload @:public public function remove(posn : Int) : Dynamic;
	
	
}
