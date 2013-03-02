package javax.management;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AttributeList extends java.util.ArrayList<Dynamic>
{
	/**
	* Constructs an empty <CODE>AttributeList</CODE>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an empty <CODE>AttributeList</CODE> with
	* the initial capacity specified.
	*
	* @param initialCapacity the initial capacity of the
	* <code>AttributeList</code>, as specified by {@link
	* ArrayList#ArrayList(int)}.
	*/
	@:overload public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs an <CODE>AttributeList</CODE> containing the
	* elements of the <CODE>AttributeList</CODE> specified, in the
	* order in which they are returned by the
	* <CODE>AttributeList</CODE>'s iterator.  The
	* <CODE>AttributeList</CODE> instance has an initial capacity of
	* 110% of the size of the <CODE>AttributeList</CODE> specified.
	*
	* @param list the <code>AttributeList</code> that defines the initial
	* contents of the new <code>AttributeList</code>.
	*
	* @see ArrayList#ArrayList(java.util.Collection)
	*/
	@:overload public function new(list : javax.management.AttributeList) : Void;
	
	/**
	* Constructs an {@code AttributeList} containing the elements of the
	* {@code List} specified, in the order in which they are returned by
	* the {@code List}'s iterator.
	*
	* @param list the {@code List} that defines the initial contents of
	* the new {@code AttributeList}.
	*
	* @exception IllegalArgumentException if the {@code list} parameter
	* is {@code null} or if the {@code list} parameter contains any
	* non-Attribute objects.
	*
	* @see ArrayList#ArrayList(java.util.Collection)
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(list : java.util.List<javax.management.Attribute>) : Void;
	
	/**
	* Return a view of this list as a {@code List<Attribute>}.
	* Changes to the returned value are reflected by changes
	* to the original {@code AttributeList} and vice versa.
	*
	* @return a {@code List<Attribute>} whose contents
	* reflect the contents of this {@code AttributeList}.
	*
	* <p>If this method has ever been called on a given
	* {@code AttributeList} instance, a subsequent attempt to add
	* an object to that instance which is not an {@code Attribute}
	* will fail with a {@code IllegalArgumentException}. For compatibility
	* reasons, an {@code AttributeList} on which this method has never
	* been called does allow objects other than {@code Attribute}s to
	* be added.</p>
	*
	* @throws IllegalArgumentException if this {@code AttributeList} contains
	* an element that is not an {@code Attribute}.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function asList() : java.util.List<javax.management.Attribute>;
	
	/**
	* Adds the {@code Attribute} specified as the last element of the list.
	*
	* @param object  The attribute to be added.
	*/
	@:overload public function add(object : javax.management.Attribute) : Void;
	
	/**
	* Inserts the attribute specified as an element at the position specified.
	* Elements with an index greater than or equal to the current position are
	* shifted up. If the index is out of range (index < 0 || index >
	* size()) a RuntimeOperationsException should be raised, wrapping the
	* java.lang.IndexOutOfBoundsException thrown.
	*
	* @param object  The <CODE>Attribute</CODE> object to be inserted.
	* @param index The position in the list where the new {@code Attribute}
	* object is to be inserted.
	*/
	@:overload public function add(index : Int, object : javax.management.Attribute) : Void;
	
	/**
	* Sets the element at the position specified to be the attribute specified.
	* The previous element at that position is discarded. If the index is
	* out of range (index < 0 || index > size() a RuntimeOperationsException
	* should be raised, wrapping the java.lang.IndexOutOfBoundsException thrown.
	*
	* @param object  The value to which the attribute element should be set.
	* @param index  The position specified.
	*/
	@:overload public function set(index : Int, object : javax.management.Attribute) : Void;
	
	/**
	* Appends all the elements in the <CODE>AttributeList</CODE> specified to
	* the end of the list, in the order in which they are returned by the
	* Iterator of the <CODE>AttributeList</CODE> specified.
	*
	* @param list  Elements to be inserted into the list.
	*
	* @return true if this list changed as a result of the call.
	*
	* @see ArrayList#addAll(java.util.Collection)
	*/
	@:overload public function addAll(list : javax.management.AttributeList) : Bool;
	
	/**
	* Inserts all of the elements in the <CODE>AttributeList</CODE> specified
	* into this list, starting at the specified position, in the order in which
	* they are returned by the Iterator of the {@code AttributeList} specified.
	* If the index is out of range (index < 0 || index > size() a
	* RuntimeOperationsException should be raised, wrapping the
	* java.lang.IndexOutOfBoundsException thrown.
	*
	* @param list  Elements to be inserted into the list.
	* @param index  Position at which to insert the first element from the
	* <CODE>AttributeList</CODE> specified.
	*
	* @return true if this list changed as a result of the call.
	*
	* @see ArrayList#addAll(int, java.util.Collection)
	*/
	@:overload public function addAll(index : Int, list : javax.management.AttributeList) : Bool;
	
	/**
	* {@inheritDoc}
	* @throws IllegalArgumentException if this {@code AttributeList} is
	* <a href="#type-safe">type-safe</a> and {@code element} is not an
	* {@code Attribute}.
	*/
	@:overload public function add(element : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	* @throws IllegalArgumentException if this {@code AttributeList} is
	* <a href="#type-safe">type-safe</a> and {@code element} is not an
	* {@code Attribute}.
	*/
	@:overload public function add(index : Int, element : Dynamic) : Void;
	
	/**
	* {@inheritDoc}
	* @throws IllegalArgumentException if this {@code AttributeList} is
	* <a href="#type-safe">type-safe</a> and {@code c} contains an
	* element that is not an {@code Attribute}.
	*/
	@:overload public function addAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* {@inheritDoc}
	* @throws IllegalArgumentException if this {@code AttributeList} is
	* <a href="#type-safe">type-safe</a> and {@code c} contains an
	* element that is not an {@code Attribute}.
	*/
	@:overload public function addAll(index : Int, c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* {@inheritDoc}
	* @throws IllegalArgumentException if this {@code AttributeList} is
	* <a href="#type-safe">type-safe</a> and {@code element} is not an
	* {@code Attribute}.
	*/
	@:overload public function set(index : Int, element : Dynamic) : Dynamic;
	
	
}
