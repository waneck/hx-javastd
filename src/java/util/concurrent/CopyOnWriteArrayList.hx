package java.util.concurrent;
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
/*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group.  Adapted and released, under explicit permission,
* from JDK ArrayList.java which carries the following copyright:
*
* Copyright 1997 by Sun Microsystems, Inc.,
* 901 San Antonio Road, Palo Alto, California, 94303, U.S.A.
* All rights reserved.
*/
extern class CopyOnWriteArrayList<E> implements java.util.List<E> implements java.util.RandomAccess implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Creates an empty list.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a list containing the elements of the specified
	* collection, in the order they are returned by the collection's
	* iterator.
	*
	* @param c the collection of initially held elements
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Creates a list holding a copy of the given array.
	*
	* @param toCopyIn the array (a copy of this array is used as the
	*        internal array)
	* @throws NullPointerException if the specified array is null
	*/
	@:overload public function new(toCopyIn : java.NativeArray<E>) : Void;
	
	/**
	* Returns the number of elements in this list.
	*
	* @return the number of elements in this list
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this list contains no elements.
	*
	* @return <tt>true</tt> if this list contains no elements
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if this list contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this list contains
	* at least one element <tt>e</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;e==null&nbsp;:&nbsp;o.equals(e))</tt>.
	*
	* @param o element whose presence in this list is to be tested
	* @return <tt>true</tt> if this list contains the specified element
	*/
	@:overload public function contains(o : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function indexOf(o : Dynamic) : Int;
	
	/**
	* Returns the index of the first occurrence of the specified element in
	* this list, searching forwards from <tt>index</tt>, or returns -1 if
	* the element is not found.
	* More formally, returns the lowest index <tt>i</tt> such that
	* <tt>(i&nbsp;&gt;=&nbsp;index&nbsp;&amp;&amp;&nbsp;(e==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;e.equals(get(i))))</tt>,
	* or -1 if there is no such index.
	*
	* @param e element to search for
	* @param index index to start searching from
	* @return the index of the first occurrence of the element in
	*         this list at position <tt>index</tt> or later in the list;
	*         <tt>-1</tt> if the element is not found.
	* @throws IndexOutOfBoundsException if the specified index is negative
	*/
	@:overload public function indexOf(e : E, index : Int) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function lastIndexOf(o : Dynamic) : Int;
	
	/**
	* Returns the index of the last occurrence of the specified element in
	* this list, searching backwards from <tt>index</tt>, or returns -1 if
	* the element is not found.
	* More formally, returns the highest index <tt>i</tt> such that
	* <tt>(i&nbsp;&lt;=&nbsp;index&nbsp;&amp;&amp;&nbsp;(e==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;e.equals(get(i))))</tt>,
	* or -1 if there is no such index.
	*
	* @param e element to search for
	* @param index index to start searching backwards from
	* @return the index of the last occurrence of the element at position
	*         less than or equal to <tt>index</tt> in this list;
	*         -1 if the element is not found.
	* @throws IndexOutOfBoundsException if the specified index is greater
	*         than or equal to the current size of this list
	*/
	@:overload public function lastIndexOf(e : E, index : Int) : Int;
	
	/**
	* Returns a shallow copy of this list.  (The elements themselves
	* are not copied.)
	*
	* @return a clone of this list
	*/
	@:overload public function clone() : Dynamic;
	
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
	* @return an array containing all the elements in this list
	*/
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this list in
	* proper sequence (from first to last element); the runtime type of
	* the returned array is that of the specified array.  If the list fits
	* in the specified array, it is returned therein.  Otherwise, a new
	* array is allocated with the runtime type of the specified array and
	* the size of this list.
	*
	* <p>If this list fits in the specified array with room to spare
	* (i.e., the array has more elements than this list), the element in
	* the array immediately following the end of the list is set to
	* <tt>null</tt>.  (This is useful in determining the length of this
	* list <i>only</i> if the caller knows that this list does not contain
	* any null elements.)
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>Suppose <tt>x</tt> is a list known to contain only strings.
	* The following code can be used to dump the list into a newly
	* allocated array of <tt>String</tt>:
	*
	* <pre>
	*     String[] y = x.toArray(new String[0]);</pre>
	*
	* Note that <tt>toArray(new Object[0])</tt> is identical in function to
	* <tt>toArray()</tt>.
	*
	* @param a the array into which the elements of the list are to
	*          be stored, if it is big enough; otherwise, a new array of the
	*          same runtime type is allocated for this purpose.
	* @return an array containing all the elements in this list
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this list
	* @throws NullPointerException if the specified array is null
	*/
	@:overload public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function get(index : Int) : E;
	
	/**
	* Replaces the element at the specified position in this list with the
	* specified element.
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function set(index : Int, element : E) : E;
	
	/**
	* Appends the specified element to the end of this list.
	*
	* @param e element to be appended to this list
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	*/
	@:overload public function add(e : E) : Bool;
	
	/**
	* Inserts the specified element at the specified position in this
	* list. Shifts the element currently at that position (if any) and
	* any subsequent elements to the right (adds one to their indices).
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function add(index : Int, element : E) : Void;
	
	/**
	* Removes the element at the specified position in this list.
	* Shifts any subsequent elements to the left (subtracts one from their
	* indices).  Returns the element that was removed from the list.
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function remove(index : Int) : E;
	
	/**
	* Removes the first occurrence of the specified element from this list,
	* if it is present.  If this list does not contain the element, it is
	* unchanged.  More formally, removes the element with the lowest index
	* <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o.equals(get(i)))</tt>
	* (if such an element exists).  Returns <tt>true</tt> if this list
	* contained the specified element (or equivalently, if this list
	* changed as a result of the call).
	*
	* @param o element to be removed from this list, if present
	* @return <tt>true</tt> if this list contained the specified element
	*/
	@:overload public function remove(o : Dynamic) : Bool;
	
	/**
	* Append the element if not present.
	*
	* @param e element to be added to this list, if absent
	* @return <tt>true</tt> if the element was added
	*/
	@:overload public function addIfAbsent(e : E) : Bool;
	
	/**
	* Returns <tt>true</tt> if this list contains all of the elements of the
	* specified collection.
	*
	* @param c collection to be checked for containment in this list
	* @return <tt>true</tt> if this list contains all of the elements of the
	*         specified collection
	* @throws NullPointerException if the specified collection is null
	* @see #contains(Object)
	*/
	@:overload public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Removes from this list all of its elements that are contained in
	* the specified collection. This is a particularly expensive operation
	* in this class because of the need for an internal temporary array.
	*
	* @param c collection containing elements to be removed from this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws ClassCastException if the class of an element of this list
	*         is incompatible with the specified collection
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if this list contains a null element and the
	*         specified collection does not permit null elements
	*         (<a href="../Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	*/
	@:overload public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Retains only the elements in this list that are contained in the
	* specified collection.  In other words, removes from this list all of
	* its elements that are not contained in the specified collection.
	*
	* @param c collection containing elements to be retained in this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws ClassCastException if the class of an element of this list
	*         is incompatible with the specified collection
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if this list contains a null element and the
	*         specified collection does not permit null elements
	*         (<a href="../Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	*/
	@:overload public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Appends all of the elements in the specified collection that
	* are not already contained in this list, to the end of
	* this list, in the order that they are returned by the
	* specified collection's iterator.
	*
	* @param c collection containing elements to be added to this list
	* @return the number of elements added
	* @throws NullPointerException if the specified collection is null
	* @see #addIfAbsent(Object)
	*/
	@:overload public function addAllAbsent(c : java.util.Collection<E>) : Int;
	
	/**
	* Removes all of the elements from this list.
	* The list will be empty after this call returns.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Appends all of the elements in the specified collection to the end
	* of this list, in the order that they are returned by the specified
	* collection's iterator.
	*
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws NullPointerException if the specified collection is null
	* @see #add(Object)
	*/
	@:overload public function addAll(c : java.util.Collection<E>) : Bool;
	
	/**
	* Inserts all of the elements in the specified collection into this
	* list, starting at the specified position.  Shifts the element
	* currently at that position (if any) and any subsequent elements to
	* the right (increases their indices).  The new elements will appear
	* in this list in the order that they are returned by the
	* specified collection's iterator.
	*
	* @param index index at which to insert the first element
	*        from the specified collection
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @throws NullPointerException if the specified collection is null
	* @see #add(int,Object)
	*/
	@:overload public function addAll(index : Int, c : java.util.Collection<E>) : Bool;
	
	/**
	* Returns a string representation of this list.  The string
	* representation consists of the string representations of the list's
	* elements in the order they are returned by its iterator, enclosed in
	* square brackets (<tt>"[]"</tt>).  Adjacent elements are separated by
	* the characters <tt>", "</tt> (comma and space).  Elements are
	* converted to strings as by {@link String#valueOf(Object)}.
	*
	* @return a string representation of this list
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares the specified object with this list for equality.
	* Returns {@code true} if the specified object is the same object
	* as this object, or if it is also a {@link List} and the sequence
	* of elements returned by an {@linkplain List#iterator() iterator}
	* over the specified list is the same as the sequence returned by
	* an iterator over this list.  The two sequences are considered to
	* be the same if they have the same length and corresponding
	* elements at the same position in the sequence are <em>equal</em>.
	* Two elements {@code e1} and {@code e2} are considered
	* <em>equal</em> if {@code (e1==null ? e2==null : e1.equals(e2))}.
	*
	* @param o the object to be compared for equality with this list
	* @return {@code true} if the specified object is equal to this list
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this list.
	*
	* <p>This implementation uses the definition in {@link List#hashCode}.
	*
	* @return the hash code value for this list
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns an iterator over the elements in this list in proper sequence.
	*
	* <p>The returned iterator provides a snapshot of the state of the list
	* when the iterator was constructed. No synchronization is needed while
	* traversing the iterator. The iterator does <em>NOT</em> support the
	* <tt>remove</tt> method.
	*
	* @return an iterator over the elements in this list in proper sequence
	*/
	@:overload public function iterator() : java.util.Iterator<E>;
	
	/**
	* {@inheritDoc}
	*
	* <p>The returned iterator provides a snapshot of the state of the list
	* when the iterator was constructed. No synchronization is needed while
	* traversing the iterator. The iterator does <em>NOT</em> support the
	* <tt>remove</tt>, <tt>set</tt> or <tt>add</tt> methods.
	*/
	@:overload public function listIterator() : java.util.ListIterator<E>;
	
	/**
	* {@inheritDoc}
	*
	* <p>The returned iterator provides a snapshot of the state of the list
	* when the iterator was constructed. No synchronization is needed while
	* traversing the iterator. The iterator does <em>NOT</em> support the
	* <tt>remove</tt>, <tt>set</tt> or <tt>add</tt> methods.
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function listIterator(index : Int) : java.util.ListIterator<E>;
	
	/**
	* Returns a view of the portion of this list between
	* <tt>fromIndex</tt>, inclusive, and <tt>toIndex</tt>, exclusive.
	* The returned list is backed by this list, so changes in the
	* returned list are reflected in this list.
	*
	* <p>The semantics of the list returned by this method become
	* undefined if the backing list (i.e., this list) is modified in
	* any way other than via the returned list.
	*
	* @param fromIndex low endpoint (inclusive) of the subList
	* @param toIndex high endpoint (exclusive) of the subList
	* @return a view of the specified range within this list
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function subList(fromIndex : Int, toIndex : Int) : java.util.List<E>;
	
	
}
@:native('java$util$concurrent$CopyOnWriteArrayList$COWIterator') @:internal extern class CopyOnWriteArrayList_COWIterator<E> implements java.util.ListIterator<E>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function hasPrevious() : Bool;
	
	@:overload public function next() : E;
	
	@:overload public function previous() : E;
	
	@:overload public function nextIndex() : Int;
	
	@:overload public function previousIndex() : Int;
	
	/**
	* Not supported. Always throws UnsupportedOperationException.
	* @throws UnsupportedOperationException always; <tt>remove</tt>
	*         is not supported by this iterator.
	*/
	@:overload public function remove() : Void;
	
	/**
	* Not supported. Always throws UnsupportedOperationException.
	* @throws UnsupportedOperationException always; <tt>set</tt>
	*         is not supported by this iterator.
	*/
	@:overload public function set(e : E) : Void;
	
	/**
	* Not supported. Always throws UnsupportedOperationException.
	* @throws UnsupportedOperationException always; <tt>add</tt>
	*         is not supported by this iterator.
	*/
	@:overload public function add(e : E) : Void;
	
	
}
/**
* Sublist for CopyOnWriteArrayList.
* This class extends AbstractList merely for convenience, to
* avoid having to define addAll, etc. This doesn't hurt, but
* is wasteful.  This class does not need or use modCount
* mechanics in AbstractList, but does need to check for
* concurrent modification using similar mechanics.  On each
* operation, the array that we expect the backing list to use
* is checked and updated.  Since we do this for all of the
* base operations invoked by those defined in AbstractList,
* all is well.  While inefficient, this is not worth
* improving.  The kinds of list operations inherited from
* AbstractList are already so slow on COW sublists that
* adding a bit more space/time doesn't seem even noticeable.
*/
@:native('java$util$concurrent$CopyOnWriteArrayList$COWSubList') @:internal extern class CopyOnWriteArrayList_COWSubList<E> extends java.util.AbstractList<E> implements java.util.RandomAccess
{
	@:overload public function set(index : Int, element : E) : E;
	
	@:overload public function get(index : Int) : E;
	
	@:overload public function size() : Int;
	
	@:overload public function add(index : Int, element : E) : Void;
	
	@:overload public function clear() : Void;
	
	@:overload public function remove(index : Int) : E;
	
	@:overload public function remove(o : Dynamic) : Bool;
	
	@:overload public function iterator() : java.util.Iterator<E>;
	
	@:overload public function listIterator(index : Int) : java.util.ListIterator<E>;
	
	@:overload public function subList(fromIndex : Int, toIndex : Int) : java.util.List<E>;
	
	
}
@:native('java$util$concurrent$CopyOnWriteArrayList$COWSubListIterator') @:internal extern class CopyOnWriteArrayList_COWSubListIterator<E> implements java.util.ListIterator<E>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : E;
	
	@:overload public function hasPrevious() : Bool;
	
	@:overload public function previous() : E;
	
	@:overload public function nextIndex() : Int;
	
	@:overload public function previousIndex() : Int;
	
	@:overload public function remove() : Void;
	
	@:overload public function set(e : E) : Void;
	
	@:overload public function add(e : E) : Void;
	
	
}
