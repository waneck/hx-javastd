package sun.awt.util;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class IdentityArrayList<E> extends java.util.AbstractList<E> implements java.util.List<E> implements java.util.RandomAccess
{
	/**
	* Constructs an empty list with the specified initial capacity.
	*
	* @param   initialCapacity   the initial capacity of the list
	* @exception IllegalArgumentException if the specified initial capacity
	*            is negative
	*/
	@:overload public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs an empty list with an initial capacity of ten.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a list containing the elements of the specified
	* collection, in the order they are returned by the collection's
	* iterator.
	*
	* @param c the collection whose elements are to be placed into this list
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Trims the capacity of this <tt>IdentityArrayList</tt> instance to be the
	* list's current size.  An application can use this operation to minimize
	* the storage of an <tt>IdentityArrayList</tt> instance.
	*/
	@:overload public function trimToSize() : Void;
	
	/**
	* Increases the capacity of this <tt>IdentityArrayList</tt> instance, if
	* necessary, to ensure that it can hold at least the number of elements
	* specified by the minimum capacity argument.
	*
	* @param   minCapacity   the desired minimum capacity
	*/
	@:overload public function ensureCapacity(minCapacity : Int) : Void;
	
	/**
	* Returns the number of elements in this list.
	*
	* @return the number of elements in this list
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this list contains no elements.
	*
	* @return <tt>true</tt> if this list contains no elements
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if this list contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this list contains
	* at least one element <tt>e</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;e==null&nbsp;:&nbsp;o == e)</tt>.
	*
	* @param o element whose presence in this list is to be tested
	* @return <tt>true</tt> if this list contains the specified element
	*/
	@:overload override public function contains(o : Dynamic) : Bool;
	
	/**
	* Returns the index of the first occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the lowest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o == get(i))</tt>,
	* or -1 if there is no such index.
	*/
	@:overload override public function indexOf(o : Dynamic) : Int;
	
	/**
	* Returns the index of the last occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the highest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o == get(i))</tt>,
	* or -1 if there is no such index.
	*/
	@:overload override public function lastIndexOf(o : Dynamic) : Int;
	
	/**
	* Returns an array containing all of the elements in this list
	* in proper sequence (from first to last element).
	*
	* <p>The returned array will be "safe" in that no references to it are
	* maintained by this list.  (In other words, this method must allocate
	* a new array).  The caller is thus free to modify the returned array.
	*
	* <p>This method acts as bridge between array-based and collection-based
	* APIs.
	*
	* @return an array containing all of the elements in this list in
	*         proper sequence
	*/
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this list in proper
	* sequence (from first to last element); the runtime type of the returned
	* array is that of the specified array.  If the list fits in the
	* specified array, it is returned therein.  Otherwise, a new array is
	* allocated with the runtime type of the specified array and the size of
	* this list.
	*
	* <p>If the list fits in the specified array with room to spare
	* (i.e., the array has more elements than the list), the element in
	* the array immediately following the end of the collection is set to
	* <tt>null</tt>.  (This is useful in determining the length of the
	* list <i>only</i> if the caller knows that the list does not contain
	* any null elements.)
	*
	* @param a the array into which the elements of the list are to
	*          be stored, if it is big enough; otherwise, a new array of the
	*          same runtime type is allocated for this purpose.
	* @return an array containing the elements of the list
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this list
	* @throws NullPointerException if the specified array is null
	*/
	@:overload override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* Returns the element at the specified position in this list.
	*
	* @param  index index of the element to return
	* @return the element at the specified position in this list
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function get(index : Int) : E;
	
	/**
	* Replaces the element at the specified position in this list with
	* the specified element.
	*
	* @param index index of the element to replace
	* @param element element to be stored at the specified position
	* @return the element previously at the specified position
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function set(index : Int, element : E) : E;
	
	/**
	* Appends the specified element to the end of this list.
	*
	* @param e element to be appended to this list
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* Inserts the specified element at the specified position in this
	* list. Shifts the element currently at that position (if any) and
	* any subsequent elements to the right (adds one to their indices).
	*
	* @param index index at which the specified element is to be inserted
	* @param element element to be inserted
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function add(index : Int, element : E) : Void;
	
	/**
	* Removes the element at the specified position in this list.
	* Shifts any subsequent elements to the left (subtracts one from their
	* indices).
	*
	* @param index the index of the element to be removed
	* @return the element that was removed from the list
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function remove(index : Int) : E;
	
	/**
	* Removes the first occurrence of the specified element from this list,
	* if it is present.  If the list does not contain the element, it is
	* unchanged.  More formally, removes the element with the lowest index
	* <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o == get(i))</tt>
	* (if such an element exists).  Returns <tt>true</tt> if this list
	* contained the specified element (or equivalently, if this list
	* changed as a result of the call).
	*
	* @param o element to be removed from this list, if present
	* @return <tt>true</tt> if this list contained the specified element
	*/
	@:overload override public function remove(o : Dynamic) : Bool;
	
	/**
	* Removes all of the elements from this list.  The list will
	* be empty after this call returns.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Appends all of the elements in the specified collection to the end of
	* this list, in the order that they are returned by the
	* specified collection's Iterator.  The behavior of this operation is
	* undefined if the specified collection is modified while the operation
	* is in progress.  (This implies that the behavior of this call is
	* undefined if the specified collection is this list, and this
	* list is nonempty.)
	*
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload override public function addAll(c : java.util.Collection<E>) : Bool;
	
	/**
	* Inserts all of the elements in the specified collection into this
	* list, starting at the specified position.  Shifts the element
	* currently at that position (if any) and any subsequent elements to
	* the right (increases their indices).  The new elements will appear
	* in the list in the order that they are returned by the
	* specified collection's iterator.
	*
	* @param index index at which to insert the first element from the
	*              specified collection
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload override public function addAll(index : Int, c : java.util.Collection<E>) : Bool;
	
	/**
	* Removes from this list all of the elements whose index is between
	* <tt>fromIndex</tt>, inclusive, and <tt>toIndex</tt>, exclusive.
	* Shifts any succeeding elements to the left (reduces their index).
	* This call shortens the list by <tt>(toIndex - fromIndex)</tt> elements.
	* (If <tt>toIndex==fromIndex</tt>, this operation has no effect.)
	*
	* @param fromIndex index of first element to be removed
	* @param toIndex index after last element to be removed
	* @throws IndexOutOfBoundsException if fromIndex or toIndex out of
	*              range (fromIndex &lt; 0 || fromIndex &gt;= size() || toIndex
	*              &gt; size() || toIndex &lt; fromIndex)
	*/
	@:overload override private function removeRange(fromIndex : Int, toIndex : Int) : Void;
	
	
}
