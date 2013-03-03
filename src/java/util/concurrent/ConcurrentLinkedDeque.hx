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
* Written by Doug Lea and Martin Buchholz with assistance from members of
* JCP JSR-166 Expert Group and released to the public domain, as explained
* at http://creativecommons.org/publicdomain/zero/1.0/
*/
extern class ConcurrentLinkedDeque<E> extends java.util.AbstractCollection<E> implements java.util.Deque<E> implements java.io.Serializable
{
	/**
	* Constructs an empty deque.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a deque initially containing the elements of
	* the given collection, added in traversal order of the
	* collection's iterator.
	*
	* @param c the collection of elements to initially contain
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload @:public public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Inserts the specified element at the front of this deque.
	* As the deque is unbounded, this method will never throw
	* {@link IllegalStateException}.
	*
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function addFirst(e : E) : Void;
	
	/**
	* Inserts the specified element at the end of this deque.
	* As the deque is unbounded, this method will never throw
	* {@link IllegalStateException}.
	*
	* <p>This method is equivalent to {@link #add}.
	*
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function addLast(e : E) : Void;
	
	/**
	* Inserts the specified element at the front of this deque.
	* As the deque is unbounded, this method will never return {@code false}.
	*
	* @return {@code true} (as specified by {@link Deque#offerFirst})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function offerFirst(e : E) : Bool;
	
	/**
	* Inserts the specified element at the end of this deque.
	* As the deque is unbounded, this method will never return {@code false}.
	*
	* <p>This method is equivalent to {@link #add}.
	*
	* @return {@code true} (as specified by {@link Deque#offerLast})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function offerLast(e : E) : Bool;
	
	@:overload @:public public function peekFirst() : E;
	
	@:overload @:public public function peekLast() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function getFirst() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function getLast() : E;
	
	@:overload @:public public function pollFirst() : E;
	
	@:overload @:public public function pollLast() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function removeFirst() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function removeLast() : E;
	
	/**
	* Inserts the specified element at the tail of this deque.
	* As the deque is unbounded, this method will never return {@code false}.
	*
	* @return {@code true} (as specified by {@link Queue#offer})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function offer(e : E) : Bool;
	
	/**
	* Inserts the specified element at the tail of this deque.
	* As the deque is unbounded, this method will never throw
	* {@link IllegalStateException} or return {@code false}.
	*
	* @return {@code true} (as specified by {@link Collection#add})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function add(e : E) : Bool;
	
	@:overload @:public public function poll() : E;
	
	@:overload @:public public function remove() : E;
	
	@:overload @:public public function peek() : E;
	
	@:overload @:public public function element() : E;
	
	@:overload @:public public function push(e : E) : Void;
	
	@:overload @:public public function pop() : E;
	
	/**
	* Removes the first element {@code e} such that
	* {@code o.equals(e)}, if such an element exists in this deque.
	* If the deque does not contain the element, it is unchanged.
	*
	* @param o element to be removed from this deque, if present
	* @return {@code true} if the deque contained the specified element
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function removeFirstOccurrence(o : Dynamic) : Bool;
	
	/**
	* Removes the last element {@code e} such that
	* {@code o.equals(e)}, if such an element exists in this deque.
	* If the deque does not contain the element, it is unchanged.
	*
	* @param o element to be removed from this deque, if present
	* @return {@code true} if the deque contained the specified element
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function removeLastOccurrence(o : Dynamic) : Bool;
	
	/**
	* Returns {@code true} if this deque contains at least one
	* element {@code e} such that {@code o.equals(e)}.
	*
	* @param o element whose presence in this deque is to be tested
	* @return {@code true} if this deque contains the specified element
	*/
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	/**
	* Returns {@code true} if this collection contains no elements.
	*
	* @return {@code true} if this collection contains no elements
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Returns the number of elements in this deque.  If this deque
	* contains more than {@code Integer.MAX_VALUE} elements, it
	* returns {@code Integer.MAX_VALUE}.
	*
	* <p>Beware that, unlike in most collections, this method is
	* <em>NOT</em> a constant-time operation. Because of the
	* asynchronous nature of these deques, determining the current
	* number of elements requires traversing them all to count them.
	* Additionally, it is possible for the size to change during
	* execution of this method, in which case the returned result
	* will be inaccurate. Thus, this method is typically not very
	* useful in concurrent applications.
	*
	* @return the number of elements in this deque
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Removes the first element {@code e} such that
	* {@code o.equals(e)}, if such an element exists in this deque.
	* If the deque does not contain the element, it is unchanged.
	*
	* @param o element to be removed from this deque, if present
	* @return {@code true} if the deque contained the specified element
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/**
	* Appends all of the elements in the specified collection to the end of
	* this deque, in the order that they are returned by the specified
	* collection's iterator.  Attempts to {@code addAll} of a deque to
	* itself result in {@code IllegalArgumentException}.
	*
	* @param c the elements to be inserted into this deque
	* @return {@code true} if this deque changed as a result of the call
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	* @throws IllegalArgumentException if the collection is this deque
	*/
	@:overload @:public override public function addAll(c : java.util.Collection<E>) : Bool;
	
	/**
	* Removes all of the elements from this deque.
	*/
	@:overload @:public override public function clear() : Void;
	
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
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this deque,
	* in proper sequence (from first to last element); the runtime
	* type of the returned array is that of the specified array.  If
	* the deque fits in the specified array, it is returned therein.
	* Otherwise, a new array is allocated with the runtime type of
	* the specified array and the size of this deque.
	*
	* <p>If this deque fits in the specified array with room to spare
	* (i.e., the array has more elements than this deque), the element in
	* the array immediately following the end of the deque is set to
	* {@code null}.
	*
	* <p>Like the {@link #toArray()} method, this method acts as
	* bridge between array-based and collection-based APIs.  Further,
	* this method allows precise control over the runtime type of the
	* output array, and may, under certain circumstances, be used to
	* save allocation costs.
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
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
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
	@:overload @:public override public function iterator() : java.util.Iterator<E>;
	
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
	@:overload @:public public function descendingIterator() : java.util.Iterator<E>;
	
	
}
@:native('java$util$concurrent$ConcurrentLinkedDeque$Node') @:internal extern class ConcurrentLinkedDeque_Node<E>
{
	
}
@:native('java$util$concurrent$ConcurrentLinkedDeque$AbstractItr') @:internal extern class ConcurrentLinkedDeque_AbstractItr implements java.util.Iterator<Dynamic>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	
}
/** Forward iterator */
@:native('java$util$concurrent$ConcurrentLinkedDeque$Itr') @:internal extern class ConcurrentLinkedDeque_Itr extends java.util.concurrent.ConcurrentLinkedDeque.ConcurrentLinkedDeque_AbstractItr
{
	
}
/** Descending iterator */
@:native('java$util$concurrent$ConcurrentLinkedDeque$DescendingItr') @:internal extern class ConcurrentLinkedDeque_DescendingItr extends java.util.concurrent.ConcurrentLinkedDeque.ConcurrentLinkedDeque_AbstractItr
{
	
}
