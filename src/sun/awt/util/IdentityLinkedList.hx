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
extern class IdentityLinkedList<E> extends java.util.AbstractSequentialList<E> implements java.util.List<E> implements java.util.Deque<E>
{
	/**
	* Constructs an empty list.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a list containing the elements of the specified
	* collection, in the order they are returned by the collection's
	* iterator.
	*
	* @param  c the collection whose elements are to be placed into this list
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Returns the first element in this list.
	*
	* @return the first element in this list
	* @throws NoSuchElementException if this list is empty
	*/
	@:overload public function getFirst() : E;
	
	/**
	* Returns the last element in this list.
	*
	* @return the last element in this list
	* @throws NoSuchElementException if this list is empty
	*/
	@:overload public function getLast() : E;
	
	/**
	* Removes and returns the first element from this list.
	*
	* @return the first element from this list
	* @throws NoSuchElementException if this list is empty
	*/
	@:overload public function removeFirst() : E;
	
	/**
	* Removes and returns the last element from this list.
	*
	* @return the last element from this list
	* @throws NoSuchElementException if this list is empty
	*/
	@:overload public function removeLast() : E;
	
	/**
	* Inserts the specified element at the beginning of this list.
	*
	* @param e the element to add
	*/
	@:overload public function addFirst(e : E) : Void;
	
	/**
	* Appends the specified element to the end of this list.
	*
	* <p>This method is equivalent to {@link #add}.
	*
	* @param e the element to add
	*/
	@:overload public function addLast(e : E) : Void;
	
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
	* Returns the number of elements in this list.
	*
	* @return the number of elements in this list
	*/
	@:overload override public function size() : Int;
	
	/**
	* Appends the specified element to the end of this list.
	*
	* <p>This method is equivalent to {@link #addLast}.
	*
	* @param e element to be appended to this list
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* Removes the first occurrence of the specified element from this list,
	* if it is present.  If this list does not contain the element, it is
	* unchanged.  More formally, removes the element with the lowest index
	* <tt>i</tt> such that <tt>get(i)==o</tt>
	* (if such an element exists).  Returns <tt>true</tt> if this list
	* contained the specified element (or equivalently, if this list
	* changed as a result of the call).
	*
	* @param o element to be removed from this list, if present
	* @return <tt>true</tt> if this list contained the specified element
	*/
	@:overload override public function remove(o : Dynamic) : Bool;
	
	/**
	* Appends all of the elements in the specified collection to the end of
	* this list, in the order that they are returned by the specified
	* collection's iterator.  The behavior of this operation is undefined if
	* the specified collection is modified while the operation is in
	* progress.  (Note that this will occur if the specified collection is
	* this list, and it's nonempty.)
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
	* @param index index at which to insert the first element
	*              from the specified collection
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload override public function addAll(index : Int, c : java.util.Collection<E>) : Bool;
	
	/**
	* Removes all of the elements from this list.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Returns the element at the specified position in this list.
	*
	* @param index index of the element to return
	* @return the element at the specified position in this list
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function get(index : Int) : E;
	
	/**
	* Replaces the element at the specified position in this list with the
	* specified element.
	*
	* @param index index of the element to replace
	* @param element element to be stored at the specified position
	* @return the element previously at the specified position
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function set(index : Int, element : E) : E;
	
	/**
	* Inserts the specified element at the specified position in this list.
	* Shifts the element currently at that position (if any) and any
	* subsequent elements to the right (adds one to their indices).
	*
	* @param index index at which the specified element is to be inserted
	* @param element element to be inserted
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function add(index : Int, element : E) : Void;
	
	/**
	* Removes the element at the specified position in this list.  Shifts any
	* subsequent elements to the left (subtracts one from their indices).
	* Returns the element that was removed from the list.
	*
	* @param index the index of the element to be removed
	* @return the element previously at the specified position
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function remove(index : Int) : E;
	
	/**
	* Returns the index of the first occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the lowest index <tt>i</tt> such that
	* <tt>get(i)==o</tt>,
	* or -1 if there is no such index.
	*
	* @param o element to search for
	* @return the index of the first occurrence of the specified element in
	*         this list, or -1 if this list does not contain the element
	*/
	@:overload override public function indexOf(o : Dynamic) : Int;
	
	/**
	* Returns the index of the last occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the highest index <tt>i</tt> such that
	* <tt>get(i)==o</tt>,
	* or -1 if there is no such index.
	*
	* @param o element to search for
	* @return the index of the last occurrence of the specified element in
	*         this list, or -1 if this list does not contain the element
	*/
	@:overload override public function lastIndexOf(o : Dynamic) : Int;
	
	/**
	* Retrieves, but does not remove, the head (first element) of this list.
	* @return the head of this list, or <tt>null</tt> if this list is empty
	* @since 1.5
	*/
	@:require(java5) @:overload public function peek() : E;
	
	/**
	* Retrieves, but does not remove, the head (first element) of this list.
	* @return the head of this list
	* @throws NoSuchElementException if this list is empty
	* @since 1.5
	*/
	@:require(java5) @:overload public function element() : E;
	
	/**
	* Retrieves and removes the head (first element) of this list
	* @return the head of this list, or <tt>null</tt> if this list is empty
	* @since 1.5
	*/
	@:require(java5) @:overload public function poll() : E;
	
	/**
	* Retrieves and removes the head (first element) of this list.
	*
	* @return the head of this list
	* @throws NoSuchElementException if this list is empty
	* @since 1.5
	*/
	@:require(java5) @:overload public function remove() : E;
	
	/**
	* Adds the specified element as the tail (last element) of this list.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Queue#offer})
	* @since 1.5
	*/
	@:require(java5) @:overload public function offer(e : E) : Bool;
	
	/**
	* Inserts the specified element at the front of this list.
	*
	* @param e the element to insert
	* @return <tt>true</tt> (as specified by {@link Deque#offerFirst})
	* @since 1.6
	*/
	@:require(java6) @:overload public function offerFirst(e : E) : Bool;
	
	/**
	* Inserts the specified element at the end of this list.
	*
	* @param e the element to insert
	* @return <tt>true</tt> (as specified by {@link Deque#offerLast})
	* @since 1.6
	*/
	@:require(java6) @:overload public function offerLast(e : E) : Bool;
	
	/**
	* Retrieves, but does not remove, the first element of this list,
	* or returns <tt>null</tt> if this list is empty.
	*
	* @return the first element of this list, or <tt>null</tt>
	*         if this list is empty
	* @since 1.6
	*/
	@:require(java6) @:overload public function peekFirst() : E;
	
	/**
	* Retrieves, but does not remove, the last element of this list,
	* or returns <tt>null</tt> if this list is empty.
	*
	* @return the last element of this list, or <tt>null</tt>
	*         if this list is empty
	* @since 1.6
	*/
	@:require(java6) @:overload public function peekLast() : E;
	
	/**
	* Retrieves and removes the first element of this list,
	* or returns <tt>null</tt> if this list is empty.
	*
	* @return the first element of this list, or <tt>null</tt> if
	*     this list is empty
	* @since 1.6
	*/
	@:require(java6) @:overload public function pollFirst() : E;
	
	/**
	* Retrieves and removes the last element of this list,
	* or returns <tt>null</tt> if this list is empty.
	*
	* @return the last element of this list, or <tt>null</tt> if
	*     this list is empty
	* @since 1.6
	*/
	@:require(java6) @:overload public function pollLast() : E;
	
	/**
	* Pushes an element onto the stack represented by this list.  In other
	* words, inserts the element at the front of this list.
	*
	* <p>This method is equivalent to {@link #addFirst}.
	*
	* @param e the element to push
	* @since 1.6
	*/
	@:require(java6) @:overload public function push(e : E) : Void;
	
	/**
	* Pops an element from the stack represented by this list.  In other
	* words, removes and returns the first element of this list.
	*
	* <p>This method is equivalent to {@link #removeFirst()}.
	*
	* @return the element at the front of this list (which is the top
	*         of the stack represented by this list)
	* @throws NoSuchElementException if this list is empty
	* @since 1.6
	*/
	@:require(java6) @:overload public function pop() : E;
	
	/**
	* Removes the first occurrence of the specified element in this
	* list (when traversing the list from head to tail).  If the list
	* does not contain the element, it is unchanged.
	*
	* @param o element to be removed from this list, if present
	* @return <tt>true</tt> if the list contained the specified element
	* @since 1.6
	*/
	@:require(java6) @:overload public function removeFirstOccurrence(o : Dynamic) : Bool;
	
	/**
	* Removes the last occurrence of the specified element in this
	* list (when traversing the list from head to tail).  If the list
	* does not contain the element, it is unchanged.
	*
	* @param o element to be removed from this list, if present
	* @return <tt>true</tt> if the list contained the specified element
	* @since 1.6
	*/
	@:require(java6) @:overload public function removeLastOccurrence(o : Dynamic) : Bool;
	
	/**
	* Returns a list-iterator of the elements in this list (in proper
	* sequence), starting at the specified position in the list.
	* Obeys the general contract of <tt>List.listIterator(int)</tt>.<p>
	*
	* The list-iterator is <i>fail-fast</i>: if the list is structurally
	* modified at any time after the Iterator is created, in any way except
	* through the list-iterator's own <tt>remove</tt> or <tt>add</tt>
	* methods, the list-iterator will throw a
	* <tt>ConcurrentModificationException</tt>.  Thus, in the face of
	* concurrent modification, the iterator fails quickly and cleanly, rather
	* than risking arbitrary, non-deterministic behavior at an undetermined
	* time in the future.
	*
	* @param index index of the first element to be returned from the
	*              list-iterator (by a call to <tt>next</tt>)
	* @return a ListIterator of the elements in this list (in proper
	*         sequence), starting at the specified position in the list
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @see List#listIterator(int)
	*/
	@:overload override public function listIterator(index : Int) : java.util.ListIterator<E>;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload public function descendingIterator() : java.util.Iterator<E>;
	
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
	* @return an array containing all of the elements in this list
	*         in proper sequence
	*/
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this list in
	* proper sequence (from first to last element); the runtime type of
	* the returned array is that of the specified array.  If the list fits
	* in the specified array, it is returned therein.  Otherwise, a new
	* array is allocated with the runtime type of the specified array and
	* the size of this list.
	*
	* <p>If the list fits in the specified array with room to spare (i.e.,
	* the array has more elements than the list), the element in the array
	* immediately following the end of the list is set to <tt>null</tt>.
	* (This is useful in determining the length of the list <i>only</i> if
	* the caller knows that the list does not contain any null elements.)
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
	* @return an array containing the elements of the list
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this list
	* @throws NullPointerException if the specified array is null
	*/
	@:overload override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	
}
@:native('sun$awt$util$IdentityLinkedList$ListItr') @:internal extern class IdentityLinkedList_ListItr implements java.util.ListIterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function hasPrevious() : Bool;
	
	@:overload public function previous() : Dynamic;
	
	@:overload public function nextIndex() : Int;
	
	@:overload public function previousIndex() : Int;
	
	@:overload public function remove() : Void;
	
	@:overload public function set(e : Dynamic) : Void;
	
	@:overload public function add(e : Dynamic) : Void;
	
	
}
@:native('sun$awt$util$IdentityLinkedList$Entry') @:internal extern class IdentityLinkedList_Entry<E>
{
	
}
/** Adapter to provide descending iterators via ListItr.previous */
@:native('sun$awt$util$IdentityLinkedList$DescendingIterator') @:internal extern class IdentityLinkedList_DescendingIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
