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
/**
* An unbounded {@linkplain BlockingQueue blocking queue} of
* <tt>Delayed</tt> elements, in which an element can only be taken
* when its delay has expired.  The <em>head</em> of the queue is that
* <tt>Delayed</tt> element whose delay expired furthest in the
* past.  If no delay has expired there is no head and <tt>poll</tt>
* will return <tt>null</tt>. Expiration occurs when an element's
* <tt>getDelay(TimeUnit.NANOSECONDS)</tt> method returns a value less
* than or equal to zero.  Even though unexpired elements cannot be
* removed using <tt>take</tt> or <tt>poll</tt>, they are otherwise
* treated as normal elements. For example, the <tt>size</tt> method
* returns the count of both expired and unexpired elements.
* This queue does not permit null elements.
*
* <p>This class and its iterator implement all of the
* <em>optional</em> methods of the {@link Collection} and {@link
* Iterator} interfaces.
*
* <p>This class is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @since 1.5
* @author Doug Lea
* @param <E> the type of elements held in this collection
*/
@:require(java5) extern class DelayQueue<E> extends java.util.AbstractQueue<E> implements java.util.concurrent.BlockingQueue<E>
{
	/**
	* Creates a new <tt>DelayQueue</tt> that is initially empty.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a <tt>DelayQueue</tt> initially containing the elements of the
	* given collection of {@link Delayed} instances.
	*
	* @param c the collection of elements to initially contain
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Inserts the specified element into this delay queue.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* Inserts the specified element into this delay queue.
	*
	* @param e the element to add
	* @return <tt>true</tt>
	* @throws NullPointerException if the specified element is null
	*/
	@:overload override public function offer(e : E) : Bool;
	
	/**
	* Inserts the specified element into this delay queue. As the queue is
	* unbounded this method will never block.
	*
	* @param e the element to add
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function put(e : E) : Void;
	
	/**
	* Inserts the specified element into this delay queue. As the queue is
	* unbounded this method will never block.
	*
	* @param e the element to add
	* @param timeout This parameter is ignored as the method never blocks
	* @param unit This parameter is ignored as the method never blocks
	* @return <tt>true</tt>
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function offer(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Retrieves and removes the head of this queue, or returns <tt>null</tt>
	* if this queue has no elements with an expired delay.
	*
	* @return the head of this queue, or <tt>null</tt> if this
	*         queue has no elements with an expired delay
	*/
	@:overload override public function poll() : E;
	
	/**
	* Retrieves and removes the head of this queue, waiting if necessary
	* until an element with an expired delay is available on this queue.
	*
	* @return the head of this queue
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function take() : E;
	
	/**
	* Retrieves and removes the head of this queue, waiting if necessary
	* until an element with an expired delay is available on this queue,
	* or the specified wait time expires.
	*
	* @return the head of this queue, or <tt>null</tt> if the
	*         specified waiting time elapses before an element with
	*         an expired delay becomes available
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	/**
	* Retrieves, but does not remove, the head of this queue, or
	* returns <tt>null</tt> if this queue is empty.  Unlike
	* <tt>poll</tt>, if no expired elements are available in the queue,
	* this method returns the element that will expire next,
	* if one exists.
	*
	* @return the head of this queue, or <tt>null</tt> if this
	*         queue is empty.
	*/
	@:overload override public function peek() : E;
	
	@:overload override public function size() : Int;
	
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
	* Atomically removes all of the elements from this delay queue.
	* The queue will be empty after this call returns.
	* Elements with an unexpired delay are not waited for; they are
	* simply discarded from the queue.
	*/
	@:overload override public function clear() : Void;
	
	/**
	* Always returns <tt>Integer.MAX_VALUE</tt> because
	* a <tt>DelayQueue</tt> is not capacity constrained.
	*
	* @return <tt>Integer.MAX_VALUE</tt>
	*/
	@:overload public function remainingCapacity() : Int;
	
	/**
	* Returns an array containing all of the elements in this queue.
	* The returned array elements are in no particular order.
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
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this queue; the
	* runtime type of the returned array is that of the specified array.
	* The returned array elements are in no particular order.
	* If the queue fits in the specified array, it is returned therein.
	* Otherwise, a new array is allocated with the runtime type of the
	* specified array and the size of this queue.
	*
	* <p>If this queue fits in the specified array with room to spare
	* (i.e., the array has more elements than this queue), the element in
	* the array immediately following the end of the queue is set to
	* <tt>null</tt>.
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>The following code can be used to dump a delay queue into a newly
	* allocated array of <tt>Delayed</tt>:
	*
	* <pre>
	*     Delayed[] a = q.toArray(new Delayed[0]);</pre>
	*
	* Note that <tt>toArray(new Object[0])</tt> is identical in function to
	* <tt>toArray()</tt>.
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
	@:overload override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* Removes a single instance of the specified element from this
	* queue, if it is present, whether or not it has expired.
	*/
	@:overload override public function remove(o : Dynamic) : Bool;
	
	/**
	* Returns an iterator over all the elements (both expired and
	* unexpired) in this queue. The iterator does not return the
	* elements in any particular order.
	*
	* <p>The returned iterator is a "weakly consistent" iterator that
	* will never throw {@link java.util.ConcurrentModificationException
	* ConcurrentModificationException}, and guarantees to traverse
	* elements as they existed upon construction of the iterator, and
	* may (but is not guaranteed to) reflect any modifications
	* subsequent to construction.
	*
	* @return an iterator over the elements in this queue
	*/
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	
}
/**
* Snapshot iterator that works off copy of underlying q array.
*/
@:native('java$util$concurrent$DelayQueue$Itr') @:internal extern class DelayQueue_Itr implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
