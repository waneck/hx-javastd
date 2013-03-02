package java.util;
/*
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
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Josh Bloch of Google Inc. and released to the public domain,
* as explained at http://creativecommons.org/publicdomain/zero/1.0/.
*/
/**
* Resizable-array implementation of the {@link Deque} interface.  Array
* deques have no capacity restrictions; they grow as necessary to support
* usage.  They are not thread-safe; in the absence of external
* synchronization, they do not support concurrent access by multiple threads.
* Null elements are prohibited.  This class is likely to be faster than
* {@link Stack} when used as a stack, and faster than {@link LinkedList}
* when used as a queue.
*
* <p>Most <tt>ArrayDeque</tt> operations run in amortized constant time.
* Exceptions include {@link #remove(Object) remove}, {@link
* #removeFirstOccurrence removeFirstOccurrence}, {@link #removeLastOccurrence
* removeLastOccurrence}, {@link #contains contains}, {@link #iterator
* iterator.remove()}, and the bulk operations, all of which run in linear
* time.
*
* <p>The iterators returned by this class's <tt>iterator</tt> method are
* <i>fail-fast</i>: If the deque is modified at any time after the iterator
* is created, in any way except through the iterator's own <tt>remove</tt>
* method, the iterator will generally throw a {@link
* ConcurrentModificationException}.  Thus, in the face of concurrent
* modification, the iterator fails quickly and cleanly, rather than risking
* arbitrary, non-deterministic behavior at an undetermined time in the
* future.
*
* <p>Note that the fail-fast behavior of an iterator cannot be guaranteed
* as it is, generally speaking, impossible to make any hard guarantees in the
* presence of unsynchronized concurrent modification.  Fail-fast iterators
* throw <tt>ConcurrentModificationException</tt> on a best-effort basis.
* Therefore, it would be wrong to write a program that depended on this
* exception for its correctness: <i>the fail-fast behavior of iterators
* should be used only to detect bugs.</i>
*
* <p>This class and its iterator implement all of the
* <em>optional</em> methods of the {@link Collection} and {@link
* Iterator} interfaces.
*
* <p>This class is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @author  Josh Bloch and Doug Lea
* @since   1.6
* @param <E> the type of elements held in this collection
*/
@:require(java6) extern class ArrayDeque<E> extends java.util.AbstractCollection<E> implements java.util.Deque<E> implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Constructs an empty array deque with an initial capacity
	* sufficient to hold 16 elements.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an empty array deque with an initial capacity
	* sufficient to hold the specified number of elements.
	*
	* @param numElements  lower bound on initial capacity of the deque
	*/
	@:overload public function new(numElements : Int) : Void;
	
	/**
	* Constructs a deque containing the elements of the specified
	* collection, in the order they are returned by the collection's
	* iterator.  (The first element returned by the collection's
	* iterator becomes the first element, or <i>front</i> of the
	* deque.)
	*
	* @param c the collection whose elements are to be placed into the deque
	* @throws NullPointerException if the specified collection is null
	*/
	@:overload public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Inserts the specified element at the front of this deque.
	*
	* @param e the element to add
	* @throws NullPointerException if the specified element is null
	*/
	@:overload public function addFirst(e : E) : Void;
	
	/**
	* Inserts the specified element at the end of this deque.
	*
	* <p>This method is equivalent to {@link #add}.
	*
	* @param e the element to add
	* @throws NullPointerException if the specified element is null
	*/
	@:overload public function addLast(e : E) : Void;
	
	/**
	* Inserts the specified element at the front of this deque.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Deque#offerFirst})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload public function offerFirst(e : E) : Bool;
	
	/**
	* Inserts the specified element at the end of this deque.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Deque#offerLast})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload public function offerLast(e : E) : Bool;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function removeFirst() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function removeLast() : E;
	
	@:overload public function pollFirst() : E;
	
	@:overload public function pollLast() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function getFirst() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function getLast() : E;
	
	@:overload public function peekFirst() : E;
	
	@:overload public function peekLast() : E;
	
	/**
	* Removes the first occurrence of the specified element in this
	* deque (when traversing the deque from head to tail).
	* If the deque does not contain the element, it is unchanged.
	* More formally, removes the first element <tt>e</tt> such that
	* <tt>o.equals(e)</tt> (if such an element exists).
	* Returns <tt>true</tt> if this deque contained the specified element
	* (or equivalently, if this deque changed as a result of the call).
	*
	* @param o element to be removed from this deque, if present
	* @return <tt>true</tt> if the deque contained the specified element
	*/
	@:overload public function removeFirstOccurrence(o : Dynamic) : Bool;
	
	/**
	* Removes the last occurrence of the specified element in this
	* deque (when traversing the deque from head to tail).
	* If the deque does not contain the element, it is unchanged.
	* More formally, removes the last element <tt>e</tt> such that
	* <tt>o.equals(e)</tt> (if such an element exists).
	* Returns <tt>true</tt> if this deque contained the specified element
	* (or equivalently, if this deque changed as a result of the call).
	*
	* @param o element to be removed from this deque, if present
	* @return <tt>true</tt> if the deque contained the specified element
	*/
	@:overload public function removeLastOccurrence(o : Dynamic) : Bool;
	
	/**
	* Inserts the specified element at the end of this deque.
	*
	* <p>This method is equivalent to {@link #addLast}.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* Inserts the specified element at the end of this deque.
	*
	* <p>This method is equivalent to {@link #offerLast}.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Queue#offer})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload public function offer(e : E) : Bool;
	
	/**
	* Retrieves and removes the head of the queue represented by this deque.
	*
	* This method differs from {@link #poll poll} only in that it throws an
	* exception if this deque is empty.
	*
	* <p>This method is equivalent to {@link #removeFirst}.
	*
	* @return the head of the queue represented by this deque
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function remove() : E;
	
	/**
	* Retrieves and removes the head of the queue represented by this deque
	* (in other words, the first element of this deque), or returns
	* <tt>null</tt> if this deque is empty.
	*
	* <p>This method is equivalent to {@link #pollFirst}.
	*
	* @return the head of the queue represented by this deque, or
	*         <tt>null</tt> if this deque is empty
	*/
	@:overload public function poll() : E;
	
	/**
	* Retrieves, but does not remove, the head of the queue represented by
	* this deque.  This method differs from {@link #peek peek} only in
	* that it throws an exception if this deque is empty.
	*
	* <p>This method is equivalent to {@link #getFirst}.
	*
	* @return the head of the queue represented by this deque
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function element() : E;
	
	/**
	* Retrieves, but does not remove, the head of the queue represented by
	* this deque, or returns <tt>null</tt> if this deque is empty.
	*
	* <p>This method is equivalent to {@link #peekFirst}.
	*
	* @return the head of the queue represented by this deque, or
	*         <tt>null</tt> if this deque is empty
	*/
	@:overload public function peek() : E;
	
	/**
	* Pushes an element onto the stack represented by this deque.  In other
	* words, inserts the element at the front of this deque.
	*
	* <p>This method is equivalent to {@link #addFirst}.
	*
	* @param e the element to push
	* @throws NullPointerException if the specified element is null
	*/
	@:overload public function push(e : E) : Void;
	
	/**
	* Pops an element from the stack represented by this deque.  In other
	* words, removes and returns the first element of this deque.
	*
	* <p>This method is equivalent to {@link #removeFirst()}.
	*
	* @return the element at the front of this deque (which is the top
	*         of the stack represented by this deque)
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function pop() : E;
	
	/**
	* Returns the number of elements in this deque.
	*
	* @return the number of elements in this deque
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this deque contains no elements.
	*
	* @return <tt>true</tt> if this deque contains no elements
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Returns an iterator over the elements in this deque.  The elements
	* will be ordered from first (head) to last (tail).  This is the same
	* order that elements would be dequeued (via successive calls to
	* {@link #remove} or popped (via successive calls to {@link #pop}).
	*
	* @return an iterator over the elements in this deque
	*/
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	@:overload public function descendingIterator() : java.util.Iterator<E>;
	
	/**
	* Returns <tt>true</tt> if this deque contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this deque contains
	* at least one element <tt>e</tt> such that <tt>o.equals(e)</tt>.
	*
	* @param o object to be checked for containment in this deque
	* @return <tt>true</tt> if this deque contains the specified element
	*/
	@:overload override public function contains(o : Dynamic) : Bool;
	
	/**
	* Removes a single instance of the specified element from this deque.
	* If the deque does not contain the element, it is unchanged.
	* More formally, removes the first element <tt>e</tt> such that
	* <tt>o.equals(e)</tt> (if such an element exists).
	* Returns <tt>true</tt> if this deque contained the specified element
	* (or equivalently, if this deque changed as a result of the call).
	*
	* <p>This method is equivalent to {@link #removeFirstOccurrence}.
	*
	* @param o element to be removed from this deque, if present
	* @return <tt>true</tt> if this deque contained the specified element
	*/
	@:overload override public function remove(o : Dynamic) : Bool;
	
	/**
	* Removes all of the elements from this deque.
	* The deque will be empty after this call returns.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Returns an array containing all of the elements in this deque
	* in proper sequence (from first to last element).
	*
	* <p>The returned array will be "safe" in that no references to it are
	* maintained by this deque.  (In other words, this method must allocate
	* a new array).  The caller is thus free to modify the returned array.
	*
	* <p>This method acts as bridge between array-based and collection-based
	* APIs.
	*
	* @return an array containing all of the elements in this deque
	*/
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this deque in
	* proper sequence (from first to last element); the runtime type of the
	* returned array is that of the specified array.  If the deque fits in
	* the specified array, it is returned therein.  Otherwise, a new array
	* is allocated with the runtime type of the specified array and the
	* size of this deque.
	*
	* <p>If this deque fits in the specified array with room to spare
	* (i.e., the array has more elements than this deque), the element in
	* the array immediately following the end of the deque is set to
	* <tt>null</tt>.
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>Suppose <tt>x</tt> is a deque known to contain only strings.
	* The following code can be used to dump the deque into a newly
	* allocated array of <tt>String</tt>:
	*
	* <pre>
	*     String[] y = x.toArray(new String[0]);</pre>
	*
	* Note that <tt>toArray(new Object[0])</tt> is identical in function to
	* <tt>toArray()</tt>.
	*
	* @param a the array into which the elements of the deque are to
	*          be stored, if it is big enough; otherwise, a new array of the
	*          same runtime type is allocated for this purpose
	* @return an array containing all of the elements in this deque
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this deque
	* @throws NullPointerException if the specified array is null
	*/
	@:overload override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* Returns a copy of this deque.
	*
	* @return a copy of this deque
	*/
	@:overload public function clone() : java.util.ArrayDeque<E>;
	
	
}
@:native('java$util$ArrayDeque$DeqIterator') @:internal extern class ArrayDeque_DeqIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
@:native('java$util$ArrayDeque$DescendingIterator') @:internal extern class ArrayDeque_DescendingIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
