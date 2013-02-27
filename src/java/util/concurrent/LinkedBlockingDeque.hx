package java.util.concurrent;
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
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
extern class LinkedBlockingDeque<E> extends java.util.AbstractQueue<E> implements java.util.concurrent.BlockingDeque<E> implements java.io.Serializable
{
	/**
	* Creates a {@code LinkedBlockingDeque} with a capacity of
	* {@link Integer#MAX_VALUE}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a {@code LinkedBlockingDeque} with the given (fixed) capacity.
	*
	* @param capacity the capacity of this deque
	* @throws IllegalArgumentException if {@code capacity} is less than 1
	*/
	@:overload public function new(capacity : Int) : Void;
	
	/**
	* Creates a {@code LinkedBlockingDeque} with a capacity of
	* {@link Integer#MAX_VALUE}, initially containing the elements of
	* the given collection, added in traversal order of the
	* collection's iterator.
	*
	* @param c the collection of elements to initially contain
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws NullPointerException  {@inheritDoc}
	*/
	@:overload public function addFirst(e : E) : Void;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws NullPointerException  {@inheritDoc}
	*/
	@:overload public function addLast(e : E) : Void;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function offerFirst(e : E) : Bool;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function offerLast(e : E) : Bool;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function putFirst(e : E) : Void;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function putLast(e : E) : Void;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function offerFirst(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function offerLast(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
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
	
	@:overload public function takeFirst() : E;
	
	@:overload public function takeLast() : E;
	
	@:overload public function pollFirst(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	@:overload public function pollLast(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
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
	
	@:overload public function removeFirstOccurrence(o : Dynamic) : Bool;
	
	@:overload public function removeLastOccurrence(o : Dynamic) : Bool;
	
	/**
	* Inserts the specified element at the end of this deque unless it would
	* violate capacity restrictions.  When using a capacity-restricted deque,
	* it is generally preferable to use method {@link #offer(Object) offer}.
	*
	* <p>This method is equivalent to {@link #addLast}.
	*
	* @throws IllegalStateException if the element cannot be added at this
	*         time due to capacity restrictions
	* @throws NullPointerException if the specified element is null
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* @throws NullPointerException if the specified element is null
	*/
	@:overload override public function offer(e : E) : Bool;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function put(e : E) : Void;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function offer(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Retrieves and removes the head of the queue represented by this deque.
	* This method differs from {@link #poll poll} only in that it throws an
	* exception if this deque is empty.
	*
	* <p>This method is equivalent to {@link #removeFirst() removeFirst}.
	*
	* @return the head of the queue represented by this deque
	* @throws NoSuchElementException if this deque is empty
	*/
	@:overload override public function remove() : E;
	
	@:overload override public function poll() : E;
	
	@:overload public function take() : E;
	
	@:overload public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	/**
	* Retrieves, but does not remove, the head of the queue represented by
	* this deque.  This method differs from {@link #peek peek} only in that
	* it throws an exception if this deque is empty.
	*
	* <p>This method is equivalent to {@link #getFirst() getFirst}.
	*
	* @return the head of the queue represented by this deque
	* @throws NoSuchElementException if this deque is empty
	*/
	@:overload override public function element() : E;
	
	@:overload override public function peek() : E;
	
	/**
	* Returns the number of additional elements that this deque can ideally
	* (in the absence of memory or resource constraints) accept without
	* blocking. This is always equal to the initial capacity of this deque
	* less the current {@code size} of this deque.
	*
	* <p>Note that you <em>cannot</em> always tell if an attempt to insert
	* an element will succeed by inspecting {@code remainingCapacity}
	* because it may be the case that another thread is about to
	* insert or remove an element.
	*/
	@:overload public function remainingCapacity() : Int;
	
	/**
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	*/
	@:overload public function drainTo(c : java.util.Collection<E>) : Int;
	
	/**
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	*/
	@:overload public function drainTo(c : java.util.Collection<E>, maxElements : Int) : Int;
	
	/**
	* @throws IllegalStateException {@inheritDoc}
	* @throws NullPointerException  {@inheritDoc}
	*/
	@:overload public function push(e : E) : Void;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload public function pop() : E;
	
	/**
	* Removes the first occurrence of the specified element from this deque.
	* If the deque does not contain the element, it is unchanged.
	* More formally, removes the first element {@code e} such that
	* {@code o.equals(e)} (if such an element exists).
	* Returns {@code true} if this deque contained the specified element
	* (or equivalently, if this deque changed as a result of the call).
	*
	* <p>This method is equivalent to
	* {@link #removeFirstOccurrence(Object) removeFirstOccurrence}.
	*
	* @param o element to be removed from this deque, if present
	* @return {@code true} if this deque changed as a result of the call
	*/
	@:overload override public function remove(o : Dynamic) : Bool;
	
	/**
	* Returns the number of elements in this deque.
	*
	* @return the number of elements in this deque
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns {@code true} if this deque contains the specified element.
	* More formally, returns {@code true} if and only if this deque contains
	* at least one element {@code e} such that {@code o.equals(e)}.
	*
	* @param o object to be checked for containment in this deque
	* @return {@code true} if this deque contains the specified element
	*/
	@:overload override public function contains(o : Dynamic) : Bool;
	
	/**
	* Returns an array containing all of the elements in this deque, in
	* proper sequence (from first to last element).
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
	* Returns an array containing all of the elements in this deque, in
	* proper sequence; the runtime type of the returned array is that of
	* the specified array.  If the deque fits in the specified array, it
	* is returned therein.  Otherwise, a new array is allocated with the
	* runtime type of the specified array and the size of this deque.
	*
	* <p>If this deque fits in the specified array with room to spare
	* (i.e., the array has more elements than this deque), the element in
	* the array immediately following the end of the deque is set to
	* {@code null}.
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>Suppose {@code x} is a deque known to contain only strings.
	* The following code can be used to dump the deque into a newly
	* allocated array of {@code String}:
	*
	* <pre>
	*     String[] y = x.toArray(new String[0]);</pre>
	*
	* Note that {@code toArray(new Object[0])} is identical in function to
	* {@code toArray()}.
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
	
	@:overload override public function toString() : String;
	
	/**
	* Atomically removes all of the elements from this deque.
	* The deque will be empty after this call returns.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Returns an iterator over the elements in this deque in proper sequence.
	* The elements will be returned in order from first (head) to last (tail).
	*
	* <p>The returned iterator is a "weakly consistent" iterator that
	* will never throw {@link java.util.ConcurrentModificationException
	* ConcurrentModificationException}, and guarantees to traverse
	* elements as they existed upon construction of the iterator, and
	* may (but is not guaranteed to) reflect any modifications
	* subsequent to construction.
	*
	* @return an iterator over the elements in this deque in proper sequence
	*/
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	/**
	* Returns an iterator over the elements in this deque in reverse
	* sequential order.  The elements will be returned in order from
	* last (tail) to first (head).
	*
	* <p>The returned iterator is a "weakly consistent" iterator that
	* will never throw {@link java.util.ConcurrentModificationException
	* ConcurrentModificationException}, and guarantees to traverse
	* elements as they existed upon construction of the iterator, and
	* may (but is not guaranteed to) reflect any modifications
	* subsequent to construction.
	*
	* @return an iterator over the elements in this deque in reverse order
	*/
	@:overload public function descendingIterator() : java.util.Iterator<E>;
	
	
}
/** Doubly-linked list node class */
@:native('java$util$concurrent$LinkedBlockingDeque$Node') @:internal extern class LinkedBlockingDeque_Node<E>
{
	
}
/**
* Base class for Iterators for LinkedBlockingDeque
*/
@:native('java$util$concurrent$LinkedBlockingDeque$AbstractItr') @:internal extern class LinkedBlockingDeque_AbstractItr implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
/** Forward iterator */
@:native('java$util$concurrent$LinkedBlockingDeque$Itr') @:internal extern class LinkedBlockingDeque_Itr extends LinkedBlockingDeque_AbstractItr
{
	
}
/** Descending iterator */
@:native('java$util$concurrent$LinkedBlockingDeque$DescendingItr') @:internal extern class LinkedBlockingDeque_DescendingItr extends LinkedBlockingDeque_AbstractItr
{
	
}
