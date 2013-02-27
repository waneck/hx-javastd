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
extern class CompoundName implements javax.naming.Name
{
	/**
	* Implementation of this compound name.
	* This field is initialized by the constructors and cannot be null.
	* It should be treated as a read-only variable by subclasses.
	*/
	@:transient private var impl : javax.naming.NameImpl;
	
	/**
	* Syntax properties for this compound name.
	* This field is initialized by the constructors and cannot be null.
	* It should be treated as a read-only variable by subclasses.
	* Any necessary changes to mySyntax should be made within constructors
	* and not after the compound name has been instantiated.
	*/
	@:transient private var mySyntax : java.util.Properties;
	
	/**
	* Constructs a new compound name instance using the components
	* specified in comps and syntax. This protected method is intended to be
	* to be used by subclasses of CompoundName when they override
	* methods such as clone(), getPrefix(), getSuffix().
	*
	* @param comps  A non-null enumeration of the components to add.
	*   Each element of the enumeration is of class String.
	*               The enumeration will be consumed to extract its
	*               elements.
	* @param syntax   A non-null properties that specify the syntax of
	*                 this compound name. See class description for
	*                 contents of properties.
	*/
	@:overload private function new(comps : java.util.Enumeration<String>, syntax : java.util.Properties) : Void;
	
	/**
	* Constructs a new compound name instance by parsing the string n
	* using the syntax specified by the syntax properties supplied.
	*
	* @param  n       The non-null string to parse.
	* @param syntax   A non-null list of properties that specify the syntax of
	*                 this compound name.  See class description for
	*                 contents of properties.
	* @exception      InvalidNameException If 'n' violates the syntax specified
	*                 by <code>syntax</code>.
	*/
	@:overload public function new(n : String, syntax : java.util.Properties) : Void;
	
	/**
	* Generates the string representation of this compound name, using
	* the syntax rules of the compound name. The syntax rules
	* are described in the class description.
	* An empty component is represented by an empty string.
	*
	* The string representation thus generated can be passed to
	* the CompoundName constructor with the same syntax properties
	* to create a new equivalent compound name.
	*
	* @return A non-null string representation of this compound name.
	*/
	@:overload public function toString() : String;
	
	/**
	* Determines whether obj is syntactically equal to this compound name.
	* If obj is null or not a CompoundName, false is returned.
	* Two compound names are equal if each component in one is "equal"
	* to the corresponding component in the other.
	*<p>
	* Equality is also defined in terms of the syntax of this compound name.
	* The default implementation of CompoundName uses the syntax properties
	* jndi.syntax.ignorecase and jndi.syntax.trimblanks when comparing
	* two components for equality.  If case is ignored, two strings
	* with the same sequence of characters but with different cases
	* are considered equal. If blanks are being trimmed, leading and trailing
	* blanks are ignored for the purpose of the comparison.
	*<p>
	* Both compound names must have the same number of components.
	*<p>
	* Implementation note: Currently the syntax properties of the two compound
	* names are not compared for equality. They might be in the future.
	*
	* @param  obj     The possibly null object to compare against.
	* @return true if obj is equal to this compound name, false otherwise.
	* @see #compareTo(java.lang.Object obj)
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Computes the hash code of this compound name.
	* The hash code is the sum of the hash codes of the "canonicalized"
	* forms of individual components of this compound name.
	* Each component is "canonicalized" according to the
	* compound name's syntax before its hash code is computed.
	* For a case-insensitive name, for example, the uppercased form of
	* a name has the same hash code as its lowercased equivalent.
	*
	* @return An int representing the hash code of this name.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Creates a copy of this compound name.
	* Changes to the components of this compound name won't
	* affect the new copy and vice versa.
	* The clone and this compound name share the same syntax.
	*
	* @return A non-null copy of this compound name.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Compares this CompoundName with the specified Object for order.
	* Returns a
	* negative integer, zero, or a positive integer as this Name is less
	* than, equal to, or greater than the given Object.
	* <p>
	* If obj is null or not an instance of CompoundName, ClassCastException
	* is thrown.
	* <p>
	* See equals() for what it means for two compound names to be equal.
	* If two compound names are equal, 0 is returned.
	*<p>
	* Ordering of compound names depend on the syntax of the compound name.
	* By default, they follow lexicographical rules for string comparison
	* with the extension that this applies to all the components in the
	* compound name and that comparison of individual components is
	* affected by the jndi.syntax.ignorecase and jndi.syntax.trimblanks
	* properties, identical to how they affect equals().
	* If this compound name is "lexicographically" lesser than obj,
	* a negative number is returned.
	* If this compound name is "lexicographically" greater than obj,
	* a positive number is returned.
	*<p>
	* Implementation note: Currently the syntax properties of the two compound
	* names are not compared when checking order. They might be in the future.
	* @param   obj     The non-null object to compare against.
	* @return  a negative integer, zero, or a positive integer as this Name
	*          is less than, equal to, or greater than the given Object.
	* @exception ClassCastException if obj is not a CompoundName.
	* @see #equals(java.lang.Object)
	*/
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Retrieves the number of components in this compound name.
	*
	* @return The nonnegative number of components in this compound name.
	*/
	@:overload public function size() : Int;
	
	/**
	* Determines whether this compound name is empty.
	* A compound name is empty if it has zero components.
	*
	* @return true if this compound name is empty, false otherwise.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Retrieves the components of this compound name as an enumeration
	* of strings.
	* The effects of updates to this compound name on this enumeration
	* is undefined.
	*
	* @return A non-null enumeration of the components of this
	* compound name. Each element of the enumeration is of class String.
	*/
	@:overload public function getAll() : java.util.Enumeration<String>;
	
	/**
	* Retrieves a component of this compound name.
	*
	* @param  posn    The 0-based index of the component to retrieve.
	*                 Must be in the range [0,size()).
	* @return The component at index posn.
	* @exception ArrayIndexOutOfBoundsException if posn is outside the
	*         specified range.
	*/
	@:overload public function get(posn : Int) : String;
	
	/**
	* Creates a compound name whose components consist of a prefix of the
	* components in this compound name.
	* The result and this compound name share the same syntax.
	* Subsequent changes to
	* this compound name does not affect the name that is returned and
	* vice versa.
	*
	* @param  posn    The 0-based index of the component at which to stop.
	*                 Must be in the range [0,size()].
	* @return A compound name consisting of the components at indexes in
	*         the range [0,posn).
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	*/
	@:overload public function getPrefix(posn : Int) : javax.naming.Name;
	
	/**
	* Creates a compound name whose components consist of a suffix of the
	* components in this compound name.
	* The result and this compound name share the same syntax.
	* Subsequent changes to
	* this compound name does not affect the name that is returned.
	*
	* @param  posn    The 0-based index of the component at which to start.
	*                 Must be in the range [0,size()].
	* @return A compound name consisting of the components at indexes in
	*         the range [posn,size()).  If posn is equal to
	*         size(), an empty compound name is returned.
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	*/
	@:overload public function getSuffix(posn : Int) : javax.naming.Name;
	
	/**
	* Determines whether a compound name is a prefix of this compound name.
	* A compound name 'n' is a prefix if it is equal to
	* getPrefix(n.size())--in other words, this compound name
	* starts with 'n'.
	* If n is null or not a compound name, false is returned.
	*<p>
	* Implementation note: Currently the syntax properties of n
	*  are not used when doing the comparison. They might be in the future.
	* @param  n       The possibly null compound name to check.
	* @return true if n is a CompoundName and
	*                 is a prefix of this compound name, false otherwise.
	*/
	@:overload public function startsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Determines whether a compound name is a suffix of this compound name.
	* A compound name 'n' is a suffix if it it is equal to
	* getSuffix(size()-n.size())--in other words, this
	* compound name ends with 'n'.
	* If n is null or not a compound name, false is returned.
	*<p>
	* Implementation note: Currently the syntax properties of n
	*  are not used when doing the comparison. They might be in the future.
	* @param  n       The possibly null compound name to check.
	* @return true if n is a CompoundName and
	*         is a suffix of this compound name, false otherwise.
	*/
	@:overload public function endsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Adds the components of a compound name -- in order -- to the end of
	* this compound name.
	*<p>
	* Implementation note: Currently the syntax properties of suffix
	*  is not used or checked. They might be in the future.
	* @param suffix   The non-null components to add.
	* @return The updated CompoundName, not a new one. Cannot be null.
	* @exception InvalidNameException If suffix is not a compound name,
	*            or if the addition of the components violates the syntax
	*            of this compound name (e.g. exceeding number of components).
	*/
	@:overload public function addAll(suffix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds the components of a compound name -- in order -- at a specified
	* position within this compound name.
	* Components of this compound name at or after the index of the first
	* new component are shifted up (away from index 0)
	* to accommodate the new components.
	*<p>
	* Implementation note: Currently the syntax properties of suffix
	*  is not used or checked. They might be in the future.
	*
	* @param n        The non-null components to add.
	* @param posn     The index in this name at which to add the new
	*                 components.  Must be in the range [0,size()].
	* @return The updated CompoundName, not a new one. Cannot be null.
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	* @exception InvalidNameException If n is not a compound name,
	*            or if the addition of the components violates the syntax
	*            of this compound name (e.g. exceeding number of components).
	*/
	@:overload public function addAll(posn : Int, n : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds a single component to the end of this compound name.
	*
	* @param comp     The non-null component to add.
	* @return The updated CompoundName, not a new one. Cannot be null.
	* @exception InvalidNameException If adding comp at end of the name
	*                         would violate the compound name's syntax.
	*/
	@:overload public function add(comp : String) : javax.naming.Name;
	
	/**
	* Adds a single component at a specified position within this
	* compound name.
	* Components of this compound name at or after the index of the new
	* component are shifted up by one (away from index 0)
	* to accommodate the new component.
	*
	* @param  comp    The non-null component to add.
	* @param  posn    The index at which to add the new component.
	*                 Must be in the range [0,size()].
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range.
	* @return The updated CompoundName, not a new one. Cannot be null.
	* @exception InvalidNameException If adding comp at the specified position
	*                         would violate the compound name's syntax.
	*/
	@:overload public function add(posn : Int, comp : String) : javax.naming.Name;
	
	/**
	* Deletes a component from this compound name.
	* The component of this compound name at position 'posn' is removed,
	* and components at indices greater than 'posn'
	* are shifted down (towards index 0) by one.
	*
	* @param  posn    The index of the component to delete.
	*                 Must be in the range [0,size()).
	* @return The component removed (a String).
	* @exception ArrayIndexOutOfBoundsException
	*         If posn is outside the specified range (includes case where
	*         compound name is empty).
	* @exception InvalidNameException If deleting the component
	*                         would violate the compound name's syntax.
	*/
	@:overload public function remove(posn : Int) : Dynamic;
	
	
}
