package java.util;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Private implementation class for EnumSet, for "jumbo" enum types
* (i.e., those with more than 64 elements).
*
* @author Josh Bloch
* @since 1.5
* @serial exclude
*/
@:require(java5) @:internal extern class JumboEnumSet<E> extends java.util.EnumSet<E>
{
	/**
	* Returns an iterator over the elements contained in this set.  The
	* iterator traverses the elements in their <i>natural order</i> (which is
	* the order in which the enum constants are declared). The returned
	* Iterator is a "weakly consistent" iterator that will never throw {@link
	* ConcurrentModificationException}.
	*
	* @return an iterator over the elements contained in this set
	*/
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	/**
	* Returns the number of elements in this set.
	*
	* @return the number of elements in this set
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this set contains no elements.
	*
	* @return <tt>true</tt> if this set contains no elements
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if this set contains the specified element.
	*
	* @param e element to be checked for containment in this collection
	* @return <tt>true</tt> if this set contains the specified element
	*/
	@:overload override public function contains(e : Dynamic) : Bool;
	
	/**
	* Adds the specified element to this set if it is not already present.
	*
	* @param e element to be added to this set
	* @return <tt>true</tt> if the set changed as a result of the call
	*
	* @throws NullPointerException if <tt>e</tt> is null
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* Removes the specified element from this set if it is present.
	*
	* @param e element to be removed from this set, if present
	* @return <tt>true</tt> if the set contained the specified element
	*/
	@:overload override public function remove(e : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if this set contains all of the elements
	* in the specified collection.
	*
	* @param c collection to be checked for containment in this set
	* @return <tt>true</tt> if this set contains all of the elements
	*        in the specified collection
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload override public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Adds all of the elements in the specified collection to this set.
	*
	* @param c collection whose elements are to be added to this set
	* @return <tt>true</tt> if this set changed as a result of the call
	* @throws NullPointerException if the specified collection or any of
	*     its elements are null
	*/
	@:overload override public function addAll(c : java.util.Collection<E>) : Bool;
	
	/**
	* Removes from this set all of its elements that are contained in
	* the specified collection.
	*
	* @param c elements to be removed from this set
	* @return <tt>true</tt> if this set changed as a result of the call
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Retains only the elements in this set that are contained in the
	* specified collection.
	*
	* @param c elements to be retained in this set
	* @return <tt>true</tt> if this set changed as a result of the call
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload override public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Removes all of the elements from this set.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Compares the specified object with this set for equality.  Returns
	* <tt>true</tt> if the given object is also a set, the two sets have
	* the same size, and every member of the given set is contained in
	* this set.
	*
	* @param e object to be compared for equality with this set
	* @return <tt>true</tt> if the specified object is equal to this set
	*/
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function clone() : java.util.EnumSet<E>;
	
	
}
@:native('java$util$JumboEnumSet$EnumSetIterator') @:internal extern class JumboEnumSet_EnumSetIterator<E> implements java.util.Iterator<E>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : E;
	
	@:overload public function remove() : Void;
	
	
}
