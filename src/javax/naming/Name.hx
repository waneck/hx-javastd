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
extern interface Name extends java.lang.Cloneable extends java.io.Serializable extends java.lang.Comparable<Dynamic>
{
	/**
	* Compares this name with another name for order.
	* Returns a negative integer, zero, or a positive integer as this
	* name is less than, equal to, or greater than the given name.
	*
	* <p> As with <tt>Object.equals()</tt>, the notion of ordering for names
	* depends on the class that implements this interface.
	* For example, the ordering may be
	* based on lexicographical ordering of the name components.
	* Specific attributes of the name, such as how it treats case,
	* may affect the ordering.  In general, two names of different
	* classes may not be compared.
	*
	* @param   obj the non-null object to compare against.
	* @return  a negative integer, zero, or a positive integer as this name
	*          is less than, equal to, or greater than the given name
	* @throws  ClassCastException if obj is not a <tt>Name</tt> of a
	*          type that may be compared with this name
	*
	* @see Comparable#compareTo(Object)
	*/
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Returns the number of components in this name.
	*
	* @return  the number of components in this name
	*/
	@:overload public function size() : Int;
	
	/**
	* Determines whether this name is empty.
	* An empty name is one with zero components.
	*
	* @return  true if this name is empty, false otherwise
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Retrieves the components of this name as an enumeration
	* of strings.  The effect on the enumeration of updates to
	* this name is undefined.  If the name has zero components,
	* an empty (non-null) enumeration is returned.
	*
	* @return  an enumeration of the components of this name, each a string
	*/
	@:overload public function getAll() : java.util.Enumeration<String>;
	
	/**
	* Retrieves a component of this name.
	*
	* @param posn
	*          the 0-based index of the component to retrieve.
	*          Must be in the range [0,size()).
	* @return  the component at index posn
	* @throws  ArrayIndexOutOfBoundsException
	*          if posn is outside the specified range
	*/
	@:overload public function get(posn : Int) : String;
	
	/**
	* Creates a name whose components consist of a prefix of the
	* components of this name.  Subsequent changes to
	* this name will not affect the name that is returned and vice versa.
	*
	* @param posn
	*          the 0-based index of the component at which to stop.
	*          Must be in the range [0,size()].
	* @return  a name consisting of the components at indexes in
	*          the range [0,posn).
	* @throws  ArrayIndexOutOfBoundsException
	*          if posn is outside the specified range
	*/
	@:overload public function getPrefix(posn : Int) : javax.naming.Name;
	
	/**
	* Creates a name whose components consist of a suffix of the
	* components in this name.  Subsequent changes to
	* this name do not affect the name that is returned and vice versa.
	*
	* @param posn
	*          the 0-based index of the component at which to start.
	*          Must be in the range [0,size()].
	* @return  a name consisting of the components at indexes in
	*          the range [posn,size()).  If posn is equal to
	*          size(), an empty name is returned.
	* @throws  ArrayIndexOutOfBoundsException
	*          if posn is outside the specified range
	*/
	@:overload public function getSuffix(posn : Int) : javax.naming.Name;
	
	/**
	* Determines whether this name starts with a specified prefix.
	* A name <tt>n</tt> is a prefix if it is equal to
	* <tt>getPrefix(n.size())</tt>.
	*
	* @param n
	*          the name to check
	* @return  true if <tt>n</tt> is a prefix of this name, false otherwise
	*/
	@:overload public function startsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Determines whether this name ends with a specified suffix.
	* A name <tt>n</tt> is a suffix if it is equal to
	* <tt>getSuffix(size()-n.size())</tt>.
	*
	* @param n
	*          the name to check
	* @return  true if <tt>n</tt> is a suffix of this name, false otherwise
	*/
	@:overload public function endsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Adds the components of a name -- in order -- to the end of this name.
	*
	* @param suffix
	*          the components to add
	* @return  the updated name (not a new one)
	*
	* @throws  InvalidNameException if <tt>suffix</tt> is not a valid name,
	*          or if the addition of the components would violate the syntax
	*          rules of this name
	*/
	@:overload public function addAll(suffix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds the components of a name -- in order -- at a specified position
	* within this name.
	* Components of this name at or after the index of the first new
	* component are shifted up (away from 0) to accommodate the new
	* components.
	*
	* @param n
	*          the components to add
	* @param posn
	*          the index in this name at which to add the new
	*          components.  Must be in the range [0,size()].
	* @return  the updated name (not a new one)
	*
	* @throws  ArrayIndexOutOfBoundsException
	*          if posn is outside the specified range
	* @throws  InvalidNameException if <tt>n</tt> is not a valid name,
	*          or if the addition of the components would violate the syntax
	*          rules of this name
	*/
	@:overload public function addAll(posn : Int, n : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds a single component to the end of this name.
	*
	* @param comp
	*          the component to add
	* @return  the updated name (not a new one)
	*
	* @throws  InvalidNameException if adding <tt>comp</tt> would violate
	*          the syntax rules of this name
	*/
	@:overload public function add(comp : String) : javax.naming.Name;
	
	/**
	* Adds a single component at a specified position within this name.
	* Components of this name at or after the index of the new component
	* are shifted up by one (away from index 0) to accommodate the new
	* component.
	*
	* @param comp
	*          the component to add
	* @param posn
	*          the index at which to add the new component.
	*          Must be in the range [0,size()].
	* @return  the updated name (not a new one)
	*
	* @throws  ArrayIndexOutOfBoundsException
	*          if posn is outside the specified range
	* @throws  InvalidNameException if adding <tt>comp</tt> would violate
	*          the syntax rules of this name
	*/
	@:overload public function add(posn : Int, comp : String) : javax.naming.Name;
	
	/**
	* Removes a component from this name.
	* The component of this name at the specified position is removed.
	* Components with indexes greater than this position
	* are shifted down (toward index 0) by one.
	*
	* @param posn
	*          the index of the component to remove.
	*          Must be in the range [0,size()).
	* @return  the component removed (a String)
	*
	* @throws  ArrayIndexOutOfBoundsException
	*          if posn is outside the specified range
	* @throws  InvalidNameException if deleting the component
	*          would violate the syntax rules of the name
	*/
	@:overload public function remove(posn : Int) : Dynamic;
	
	
}
