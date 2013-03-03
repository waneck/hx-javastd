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
extern class LinkedBlockingQueue<E> extends java.util.AbstractQueue<E> implements java.util.concurrent.BlockingQueue<E> implements java.io.Serializable
{
	/**
	* Creates a {@code LinkedBlockingQueue} with a capacity of
	* {@link Integer#MAX_VALUE}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a {@code LinkedBlockingQueue} with the given (fixed) capacity.
	*
	* @param capacity the capacity of this queue
	* @throws IllegalArgumentException if {@code capacity} is not greater
	*         than zero
	*/
	@:overload @:public public function new(capacity : Int) : Void;
	
	/**
	* Creates a {@code LinkedBlockingQueue} with a capacity of
	* {@link Integer#MAX_VALUE}, initially containing the elements of the
	* given collection,
	* added in traversal order of the collection's iterator.
	*
	* @param c the collection of elements to initially contain
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload @:public public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Returns the number of elements in this queue.
	*
	* @return the number of elements in this queue
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns the number of additional elements that this queue can ideally
	* (in the absence of memory or resource constraints) accept without
	* blocking. This is always equal to the initial capacity of this queue
	* less the current {@code size} of this queue.
	*
	* <p>Note that you <em>cannot</em> always tell if an attempt to insert
	* an element will succeed by inspecting {@code remainingCapacity}
	* because it may be the case that another thread is about to
	* insert or remove an element.
	*/
	@:overload @:public public function remainingCapacity() : Int;
	
	/**
	* Inserts the specified element at the tail of this queue, waiting if
	* necessary for space to become available.
	*
	* @throws InterruptedException {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function put(e : E) : Void;
	
	/**
	* Inserts the specified element at the tail of this queue, waiting if
	* necessary up to the specified wait time for space to become available.
	*
	* @return {@code true} if successful, or {@code false} if
	*         the specified waiting time elapses before space is available.
	* @throws InterruptedException {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function offer(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Inserts the specified element at the tail of this queue if it is
	* possible to do so immediately without exceeding the queue's capacity,
	* returning {@code true} upon success and {@code false} if this queue
	* is full.
	* When using a capacity-restricted queue, this method is generally
	* preferable to method {@link BlockingQueue#add add}, which can fail to
	* insert an element only by throwing an exception.
	*
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function offer(e : E) : Bool;
	
	@:overload @:public public function take() : E;
	
	@:overload @:public public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	@:overload @:public override public function poll() : E;
	
	@:overload @:public override public function peek() : E;
	
	/**
	* Removes a single instance of the specified element from this queue,
	* if it is present.  More formally, removes an element {@code e} such
	* that {@code o.equals(e)}, if this queue contains one or more such
	* elements.
	* Returns {@code true} if this queue contained the specified element
	* (or equivalently, if this queue changed as a result of the call).
	*
	* @param o element to be removed from this queue, if present
	* @return {@code true} if this queue changed as a result of the call
	*/
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/**
	* Returns {@code true} if this queue contains the specified element.
	* More formally, returns {@code true} if and only if this queue contains
	* at least one element {@code e} such that {@code o.equals(e)}.
	*
	* @param o object to be checked for containment in this queue
	* @return {@code true} if this queue contains the specified element
	*/
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	/**
	* Returns an array containing all of the elements in this queue, in
	* proper sequence.
	*
	* <p>The returned array will be "safe" in that no references to it are
	* maintained by this queue.  (In other words, this method must allocate
	* a new array).  The caller is thus free to modify the returned array.
	*
	* <p>This method acts as bridge between array-based and collection-based
	* APIs.
	*
	* @return an array containing all of the elements in this queue
	*/
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this queue, in
	* proper sequence; the runtime type of the returned array is that of
	* the specified array.  If the queue fits in the specified array, it
	* is returned therein.  Otherwise, a new array is allocated with the
	* runtime type of the specified array and the size of this queue.
	*
	* <p>If this queue fits in the specified array with room to spare
	* (i.e., the array has more elements than this queue), the element in
	* the array immediately following the end of the queue is set to
	* {@code null}.
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>Suppose {@code x} is a queue known to contain only strings.
	* The following code can be used to dump the queue into a newly
	* allocated array of {@code String}:
	*
	* <pre>
	*     String[] y = x.toArray(new String[0]);</pre>
	*
	* Note that {@code toArray(new Object[0])} is identical in function to
	* {@code toArray()}.
	*
	* @param a the array into which the elements of the queue are to
	*          be stored, if it is big enough; otherwise, a new array of the
	*          same runtime type is allocated for this purpose
	* @return an array containing all of the elements in this queue
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this queue
	* @throws NullPointerException if the specified array is null
	*/
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload @:public override public function toString() : String;
	
	/**
	* Atomically removes all of the elements from this queue.
	* The queue will be empty after this call returns.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	*/
	@:overload @:public public function drainTo(c : java.util.Collection<E>) : Int;
	
	/**
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	*/
	@:overload @:public public function drainTo(c : java.util.Collection<E>, maxElements : Int) : Int;
	
	/**
	* Returns an iterator over the elements in this queue in proper sequence.
	* The elements will be returned in order from first (head) to last (tail).
	*
	* <p>The returned iterator is a "weakly consistent" iterator that
	* will never throw {@link java.util.ConcurrentModificationException
	* ConcurrentModificationException}, and guarantees to traverse
	* elements as they existed upon construction of the iterator, and
	* may (but is not guaranteed to) reflect any modifications
	* subsequent to construction.
	*
	* @return an iterator over the elements in this queue in proper sequence
	*/
	@:overload @:public override public function iterator() : java.util.Iterator<E>;
	
	
}
/**
* Linked list node class
*/
@:native('java$util$concurrent$LinkedBlockingQueue$Node') @:internal extern class LinkedBlockingQueue_Node<E>
{
	
}
@:native('java$util$concurrent$LinkedBlockingQueue$Itr') @:internal extern class LinkedBlockingQueue_Itr implements java.util.Iterator<Dynamic>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	
}
