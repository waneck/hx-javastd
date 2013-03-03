package javax.management.relation;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RoleUnresolvedList extends java.util.ArrayList<Dynamic>
{
	/**
	* Constructs an empty RoleUnresolvedList.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs an empty RoleUnresolvedList with the initial capacity
	* specified.
	*
	* @param initialCapacity  initial capacity
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a {@code RoleUnresolvedList} containing the elements of the
	* {@code List} specified, in the order in which they are returned by
	* the {@code List}'s iterator. The {@code RoleUnresolvedList} instance has
	* an initial capacity of 110% of the size of the {@code List}
	* specified.
	*
	* @param list the {@code List} that defines the initial contents of
	* the new {@code RoleUnresolvedList}.
	*
	* @exception IllegalArgumentException if the {@code list} parameter
	* is {@code null} or if the {@code list} parameter contains any
	* non-RoleUnresolved objects.
	*
	* @see ArrayList#ArrayList(java.util.Collection)
	*/
	@:overload @:public public function new(list : java.util.List<javax.management.relation.RoleUnresolved>) : Void;
	
	/**
	* Return a view of this list as a {@code List<RoleUnresolved>}.
	* Changes to the returned value are reflected by changes
	* to the original {@code RoleUnresolvedList} and vice versa.
	*
	* @return a {@code List<RoleUnresolved>} whose contents
	* reflect the contents of this {@code RoleUnresolvedList}.
	*
	* <p>If this method has ever been called on a given
	* {@code RoleUnresolvedList} instance, a subsequent attempt to add
	* an object to that instance which is not a {@code RoleUnresolved}
	* will fail with an {@code IllegalArgumentException}. For compatibility
	* reasons, a {@code RoleUnresolvedList} on which this method has never
	* been called does allow objects other than {@code RoleUnresolved}s to
	* be added.</p>
	*
	* @throws IllegalArgumentException if this {@code RoleUnresolvedList}
	* contains an element that is not a {@code RoleUnresolved}.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function asList() : java.util.List<javax.management.relation.RoleUnresolved>;
	
	/**
	* Adds the RoleUnresolved specified as the last element of the list.
	*
	* @param role - the unresolved role to be added.
	*
	* @exception IllegalArgumentException  if the unresolved role is null.
	*/
	@:overload @:public public function add(role : javax.management.relation.RoleUnresolved) : Void;
	
	/**
	* Inserts the unresolved role specified as an element at the position
	* specified.
	* Elements with an index greater than or equal to the current position are
	* shifted up.
	*
	* @param index - The position in the list where the new
	* RoleUnresolved object is to be inserted.
	* @param role - The RoleUnresolved object to be inserted.
	*
	* @exception IllegalArgumentException  if the unresolved role is null.
	* @exception IndexOutOfBoundsException if index is out of range
	* (<code>index &lt; 0 || index &gt; size()</code>).
	*/
	@:overload @:public public function add(index : Int, role : javax.management.relation.RoleUnresolved) : Void;
	
	/**
	* Sets the element at the position specified to be the unresolved role
	* specified.
	* The previous element at that position is discarded.
	*
	* @param index - The position specified.
	* @param role - The value to which the unresolved role element
	* should be set.
	*
	* @exception IllegalArgumentException   if the unresolved role is null.
	* @exception IndexOutOfBoundsException if index is out of range
	* (<code>index &lt; 0 || index &gt;= size()</code>).
	*/
	@:overload @:public public function set(index : Int, role : javax.management.relation.RoleUnresolved) : Void;
	
	/**
	* Appends all the elements in the RoleUnresolvedList specified to the end
	* of the list, in the order in which they are returned by the Iterator of
	* the RoleUnresolvedList specified.
	*
	* @param roleList - Elements to be inserted into the list
	* (can be null).
	*
	* @return true if this list changed as a result of the call.
	*
	* @exception IndexOutOfBoundsException  if accessing with an index
	* outside of the list.
	*/
	@:overload @:public public function addAll(roleList : javax.management.relation.RoleUnresolvedList) : Bool;
	
	/**
	* Inserts all of the elements in the RoleUnresolvedList specified into
	* this list, starting at the specified position, in the order in which
	* they are returned by the Iterator of the RoleUnresolvedList specified.
	*
	* @param index - Position at which to insert the first element from the
	* RoleUnresolvedList specified.
	* @param roleList - Elements to be inserted into the list.
	*
	* @return true if this list changed as a result of the call.
	*
	* @exception IllegalArgumentException  if the role is null.
	* @exception IndexOutOfBoundsException if index is out of range
	* (<code>index &lt; 0 || index &gt; size()</code>).
	*/
	@:overload @:public public function addAll(index : Int, roleList : javax.management.relation.RoleUnresolvedList) : Bool;
	
	/*
	* Override all of the methods from ArrayList<Object> that might add
	* a non-RoleUnresolved to the List, and disallow that if asList has
	* ever been called on this instance.
	*/
	@:overload @:public override public function add(o : Dynamic) : Bool;
	
	@:overload @:public override public function add(index : Int, element : Dynamic) : Void;
	
	@:overload @:public override public function addAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload @:public override public function addAll(index : Int, c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload @:public override public function set(index : Int, element : Dynamic) : Dynamic;
	
	
}
