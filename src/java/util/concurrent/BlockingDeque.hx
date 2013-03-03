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
* A {@link Deque} that additionally supports blocking operations that wait
* for the deque to become non-empty when retrieving an element, and wait for
* space to become available in the deque when storing an element.
*
* <p><tt>BlockingDeque</tt> methods come in four forms, with different ways
* of handling operations that cannot be satisfied immediately, but may be
* satisfied at some point in the future:
* one throws an exception, the second returns a special value (either
* <tt>null</tt> or <tt>false</tt>, depending on the operation), the third
* blocks the current thread indefinitely until the operation can succeed,
* and the fourth blocks for only a given maximum time limit before giving
* up.  These methods are summarized in the following table:
*
* <p>
* <table BORDER CELLPADDING=3 CELLSPACING=1>
*  <tr>
*    <td ALIGN=CENTER COLSPAN = 5> <b>First Element (Head)</b></td>
*  </tr>
*  <tr>
*    <td></td>
*    <td ALIGN=CENTER><em>Throws exception</em></td>
*    <td ALIGN=CENTER><em>Special value</em></td>
*    <td ALIGN=CENTER><em>Blocks</em></td>
*    <td ALIGN=CENTER><em>Times out</em></td>
*  </tr>
*  <tr>
*    <td><b>Insert</b></td>
*    <td>{@link #addFirst addFirst(e)}</td>
*    <td>{@link #offerFirst(Object) offerFirst(e)}</td>
*    <td>{@link #putFirst putFirst(e)}</td>
*    <td>{@link #offerFirst(Object, long, TimeUnit) offerFirst(e, time, unit)}</td>
*  </tr>
*  <tr>
*    <td><b>Remove</b></td>
*    <td>{@link #removeFirst removeFirst()}</td>
*    <td>{@link #pollFirst pollFirst()}</td>
*    <td>{@link #takeFirst takeFirst()}</td>
*    <td>{@link #pollFirst(long, TimeUnit) pollFirst(time, unit)}</td>
*  </tr>
*  <tr>
*    <td><b>Examine</b></td>
*    <td>{@link #getFirst getFirst()}</td>
*    <td>{@link #peekFirst peekFirst()}</td>
*    <td><em>not applicable</em></td>
*    <td><em>not applicable</em></td>
*  </tr>
*  <tr>
*    <td ALIGN=CENTER COLSPAN = 5> <b>Last Element (Tail)</b></td>
*  </tr>
*  <tr>
*    <td></td>
*    <td ALIGN=CENTER><em>Throws exception</em></td>
*    <td ALIGN=CENTER><em>Special value</em></td>
*    <td ALIGN=CENTER><em>Blocks</em></td>
*    <td ALIGN=CENTER><em>Times out</em></td>
*  </tr>
*  <tr>
*    <td><b>Insert</b></td>
*    <td>{@link #addLast addLast(e)}</td>
*    <td>{@link #offerLast(Object) offerLast(e)}</td>
*    <td>{@link #putLast putLast(e)}</td>
*    <td>{@link #offerLast(Object, long, TimeUnit) offerLast(e, time, unit)}</td>
*  </tr>
*  <tr>
*    <td><b>Remove</b></td>
*    <td>{@link #removeLast() removeLast()}</td>
*    <td>{@link #pollLast() pollLast()}</td>
*    <td>{@link #takeLast takeLast()}</td>
*    <td>{@link #pollLast(long, TimeUnit) pollLast(time, unit)}</td>
*  </tr>
*  <tr>
*    <td><b>Examine</b></td>
*    <td>{@link #getLast getLast()}</td>
*    <td>{@link #peekLast peekLast()}</td>
*    <td><em>not applicable</em></td>
*    <td><em>not applicable</em></td>
*  </tr>
* </table>
*
* <p>Like any {@link BlockingQueue}, a <tt>BlockingDeque</tt> is thread safe,
* does not permit null elements, and may (or may not) be
* capacity-constrained.
*
* <p>A <tt>BlockingDeque</tt> implementation may be used directly as a FIFO
* <tt>BlockingQueue</tt>. The methods inherited from the
* <tt>BlockingQueue</tt> interface are precisely equivalent to
* <tt>BlockingDeque</tt> methods as indicated in the following table:
*
* <p>
* <table BORDER CELLPADDING=3 CELLSPACING=1>
*  <tr>
*    <td ALIGN=CENTER> <b><tt>BlockingQueue</tt> Method</b></td>
*    <td ALIGN=CENTER> <b>Equivalent <tt>BlockingDeque</tt> Method</b></td>
*  </tr>
*  <tr>
*    <td ALIGN=CENTER COLSPAN = 2> <b>Insert</b></td>
*  </tr>
*  <tr>
*    <td>{@link #add(Object) add(e)}</td>
*    <td>{@link #addLast(Object) addLast(e)}</td>
*  </tr>
*  <tr>
*    <td>{@link #offer(Object) offer(e)}</td>
*    <td>{@link #offerLast(Object) offerLast(e)}</td>
*  </tr>
*  <tr>
*    <td>{@link #put(Object) put(e)}</td>
*    <td>{@link #putLast(Object) putLast(e)}</td>
*  </tr>
*  <tr>
*    <td>{@link #offer(Object, long, TimeUnit) offer(e, time, unit)}</td>
*    <td>{@link #offerLast(Object, long, TimeUnit) offerLast(e, time, unit)}</td>
*  </tr>
*  <tr>
*    <td ALIGN=CENTER COLSPAN = 2> <b>Remove</b></td>
*  </tr>
*  <tr>
*    <td>{@link #remove() remove()}</td>
*    <td>{@link #removeFirst() removeFirst()}</td>
*  </tr>
*  <tr>
*    <td>{@link #poll() poll()}</td>
*    <td>{@link #pollFirst() pollFirst()}</td>
*  </tr>
*  <tr>
*    <td>{@link #take() take()}</td>
*    <td>{@link #takeFirst() takeFirst()}</td>
*  </tr>
*  <tr>
*    <td>{@link #poll(long, TimeUnit) poll(time, unit)}</td>
*    <td>{@link #pollFirst(long, TimeUnit) pollFirst(time, unit)}</td>
*  </tr>
*  <tr>
*    <td ALIGN=CENTER COLSPAN = 2> <b>Examine</b></td>
*  </tr>
*  <tr>
*    <td>{@link #element() element()}</td>
*    <td>{@link #getFirst() getFirst()}</td>
*  </tr>
*  <tr>
*    <td>{@link #peek() peek()}</td>
*    <td>{@link #peekFirst() peekFirst()}</td>
*  </tr>
* </table>
*
* <p>Memory consistency effects: As with other concurrent
* collections, actions in a thread prior to placing an object into a
* {@code BlockingDeque}
* <a href="package-summary.html#MemoryVisibility"><i>happen-before</i></a>
* actions subsequent to the access or removal of that element from
* the {@code BlockingDeque} in another thread.
*
* <p>This interface is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @since 1.6
* @author Doug Lea
* @param <E> the type of elements held in this collection
*/
@:require(java6) extern interface BlockingDeque<E> extends java.util.concurrent.BlockingQueue<E> extends java.util.Deque<E>
{
	/**
	* Inserts the specified element at the front of this deque if it is
	* possible to do so immediately without violating capacity restrictions,
	* throwing an <tt>IllegalStateException</tt> if no space is currently
	* available.  When using a capacity-restricted deque, it is generally
	* preferable to use {@link #offerFirst(Object) offerFirst}.
	*
	* @param e the element to add
	* @throws IllegalStateException {@inheritDoc}
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function addFirst(e : E) : Void;
	
	/**
	* Inserts the specified element at the end of this deque if it is
	* possible to do so immediately without violating capacity restrictions,
	* throwing an <tt>IllegalStateException</tt> if no space is currently
	* available.  When using a capacity-restricted deque, it is generally
	* preferable to use {@link #offerLast(Object) offerLast}.
	*
	* @param e the element to add
	* @throws IllegalStateException {@inheritDoc}
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function addLast(e : E) : Void;
	
	/**
	* Inserts the specified element at the front of this deque if it is
	* possible to do so immediately without violating capacity restrictions,
	* returning <tt>true</tt> upon success and <tt>false</tt> if no space is
	* currently available.
	* When using a capacity-restricted deque, this method is generally
	* preferable to the {@link #addFirst(Object) addFirst} method, which can
	* fail to insert an element only by throwing an exception.
	*
	* @param e the element to add
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function offerFirst(e : E) : Bool;
	
	/**
	* Inserts the specified element at the end of this deque if it is
	* possible to do so immediately without violating capacity restrictions,
	* returning <tt>true</tt> upon success and <tt>false</tt> if no space is
	* currently available.
	* When using a capacity-restricted deque, this method is generally
	* preferable to the {@link #addLast(Object) addLast} method, which can
	* fail to insert an element only by throwing an exception.
	*
	* @param e the element to add
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function offerLast(e : E) : Bool;
	
	/**
	* Inserts the specified element at the front of this deque,
	* waiting if necessary for space to become available.
	*
	* @param e the element to add
	* @throws InterruptedException if interrupted while waiting
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function putFirst(e : E) : Void;
	
	/**
	* Inserts the specified element at the end of this deque,
	* waiting if necessary for space to become available.
	*
	* @param e the element to add
	* @throws InterruptedException if interrupted while waiting
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function putLast(e : E) : Void;
	
	/**
	* Inserts the specified element at the front of this deque,
	* waiting up to the specified wait time if necessary for space to
	* become available.
	*
	* @param e the element to add
	* @param timeout how long to wait before giving up, in units of
	*        <tt>unit</tt>
	* @param unit a <tt>TimeUnit</tt> determining how to interpret the
	*        <tt>timeout</tt> parameter
	* @return <tt>true</tt> if successful, or <tt>false</tt> if
	*         the specified waiting time elapses before space is available
	* @throws InterruptedException if interrupted while waiting
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function offerFirst(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Inserts the specified element at the end of this deque,
	* waiting up to the specified wait time if necessary for space to
	* become available.
	*
	* @param e the element to add
	* @param timeout how long to wait before giving up, in units of
	*        <tt>unit</tt>
	* @param unit a <tt>TimeUnit</tt> determining how to interpret the
	*        <tt>timeout</tt> parameter
	* @return <tt>true</tt> if successful, or <tt>false</tt> if
	*         the specified waiting time elapses before space is available
	* @throws InterruptedException if interrupted while waiting
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function offerLast(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Retrieves and removes the first element of this deque, waiting
	* if necessary until an element becomes available.
	*
	* @return the head of this deque
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function takeFirst() : E;
	
	/**
	* Retrieves and removes the last element of this deque, waiting
	* if necessary until an element becomes available.
	*
	* @return the tail of this deque
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function takeLast() : E;
	
	/**
	* Retrieves and removes the first element of this deque, waiting
	* up to the specified wait time if necessary for an element to
	* become available.
	*
	* @param timeout how long to wait before giving up, in units of
	*        <tt>unit</tt>
	* @param unit a <tt>TimeUnit</tt> determining how to interpret the
	*        <tt>timeout</tt> parameter
	* @return the head of this deque, or <tt>null</tt> if the specified
	*         waiting time elapses before an element is available
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function pollFirst(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	/**
	* Retrieves and removes the last element of this deque, waiting
	* up to the specified wait time if necessary for an element to
	* become available.
	*
	* @param timeout how long to wait before giving up, in units of
	*        <tt>unit</tt>
	* @param unit a <tt>TimeUnit</tt> determining how to interpret the
	*        <tt>timeout</tt> parameter
	* @return the tail of this deque, or <tt>null</tt> if the specified
	*         waiting time elapses before an element is available
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function pollLast(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	/**
	* Removes the first occurrence of the specified element from this deque.
	* If the deque does not contain the element, it is unchanged.
	* More formally, removes the first element <tt>e</tt> such that
	* <tt>o.equals(e)</tt> (if such an element exists).
	* Returns <tt>true</tt> if this deque contained the specified element
	* (or equivalently, if this deque changed as a result of the call).
	*
	* @param o element to be removed from this deque, if present
	* @return <tt>true</tt> if an element was removed as a result of this call
	* @throws ClassCastException if the class of the specified element
	*         is incompatible with this deque
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload public function removeFirstOccurrence(o : Dynamic) : Bool;
	
	/**
	* Removes the last occurrence of the specified element from this deque.
	* If the deque does not contain the element, it is unchanged.
	* More formally, removes the last element <tt>e</tt> such that
	* <tt>o.equals(e)</tt> (if such an element exists).
	* Returns <tt>true</tt> if this deque contained the specified element
	* (or equivalently, if this deque changed as a result of the call).
	*
	* @param o element to be removed from this deque, if present
	* @return <tt>true</tt> if an element was removed as a result of this call
	* @throws ClassCastException if the class of the specified element
	*         is incompatible with this deque
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload public function removeLastOccurrence(o : Dynamic) : Bool;
	
	/**
	* Inserts the specified element into the queue represented by this deque
	* (in other words, at the tail of this deque) if it is possible to do so
	* immediately without violating capacity restrictions, returning
	* <tt>true</tt> upon success and throwing an
	* <tt>IllegalStateException</tt> if no space is currently available.
	* When using a capacity-restricted deque, it is generally preferable to
	* use {@link #offer(Object) offer}.
	*
	* <p>This method is equivalent to {@link #addLast(Object) addLast}.
	*
	* @param e the element to add
	* @throws IllegalStateException {@inheritDoc}
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function add(e : E) : Bool;
	
	/**
	* Inserts the specified element into the queue represented by this deque
	* (in other words, at the tail of this deque) if it is possible to do so
	* immediately without violating capacity restrictions, returning
	* <tt>true</tt> upon success and <tt>false</tt> if no space is currently
	* available.  When using a capacity-restricted deque, this method is
	* generally preferable to the {@link #add} method, which can fail to
	* insert an element only by throwing an exception.
	*
	* <p>This method is equivalent to {@link #offerLast(Object) offerLast}.
	*
	* @param e the element to add
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function offer(e : E) : Bool;
	
	/**
	* Inserts the specified element into the queue represented by this deque
	* (in other words, at the tail of this deque), waiting if necessary for
	* space to become available.
	*
	* <p>This method is equivalent to {@link #putLast(Object) putLast}.
	*
	* @param e the element to add
	* @throws InterruptedException {@inheritDoc}
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function put(e : E) : Void;
	
	/**
	* Inserts the specified element into the queue represented by this deque
	* (in other words, at the tail of this deque), waiting up to the
	* specified wait time if necessary for space to become available.
	*
	* <p>This method is equivalent to
	* {@link #offerLast(Object,long,TimeUnit) offerLast}.
	*
	* @param e the element to add
	* @return <tt>true</tt> if the element was added to this deque, else
	*         <tt>false</tt>
	* @throws InterruptedException {@inheritDoc}
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this deque
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this deque
	*/
	@:overload public function offer(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Retrieves and removes the head of the queue represented by this deque
	* (in other words, the first element of this deque).
	* This method differs from {@link #poll poll} only in that it
	* throws an exception if this deque is empty.
	*
	* <p>This method is equivalent to {@link #removeFirst() removeFirst}.
	*
	* @return the head of the queue represented by this deque
	* @throws NoSuchElementException if this deque is empty
	*/
	@:overload public function remove() : E;
	
	/**
	* Retrieves and removes the head of the queue represented by this deque
	* (in other words, the first element of this deque), or returns
	* <tt>null</tt> if this deque is empty.
	*
	* <p>This method is equivalent to {@link #pollFirst()}.
	*
	* @return the head of this deque, or <tt>null</tt> if this deque is empty
	*/
	@:overload public function poll() : E;
	
	/**
	* Retrieves and removes the head of the queue represented by this deque
	* (in other words, the first element of this deque), waiting if
	* necessary until an element becomes available.
	*
	* <p>This method is equivalent to {@link #takeFirst() takeFirst}.
	*
	* @return the head of this deque
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function take() : E;
	
	/**
	* Retrieves and removes the head of the queue represented by this deque
	* (in other words, the first element of this deque), waiting up to the
	* specified wait time if necessary for an element to become available.
	*
	* <p>This method is equivalent to
	* {@link #pollFirst(long,TimeUnit) pollFirst}.
	*
	* @return the head of this deque, or <tt>null</tt> if the
	*         specified waiting time elapses before an element is available
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	/**
	* Retrieves, but does not remove, the head of the queue represented by
	* this deque (in other words, the first element of this deque).
	* This method differs from {@link #peek peek} only in that it throws an
	* exception if this deque is empty.
	*
	* <p>This method is equivalent to {@link #getFirst() getFirst}.
	*
	* @return the head of this deque
	* @throws NoSuchElementException if this deque is empty
	*/
	@:overload public function element() : E;
	
	/**
	* Retrieves, but does not remove, the head of the queue represented by
	* this deque (in other words, the first element of this deque), or
	* returns <tt>null</tt> if this deque is empty.
	*
	* <p>This method is equivalent to {@link #peekFirst() peekFirst}.
	*
	* @return the head of this deque, or <tt>null</tt> if this deque is empty
	*/
	@:overload public function peek() : E;
	
	/**
	* Removes the first occurrence of the specified element from this deque.
	* If the deque does not contain the element, it is unchanged.
	* More formally, removes the first element <tt>e</tt> such that
	* <tt>o.equals(e)</tt> (if such an element exists).
	* Returns <tt>true</tt> if this deque contained the specified element
	* (or equivalently, if this deque changed as a result of the call).
	*
	* <p>This method is equivalent to
	* {@link #removeFirstOccurrence(Object) removeFirstOccurrence}.
	*
	* @param o element to be removed from this deque, if present
	* @return <tt>true</tt> if this deque changed as a result of the call
	* @throws ClassCastException if the class of the specified element
	*         is incompatible with this deque
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload public function remove(o : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if this deque contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this deque contains
	* at least one element <tt>e</tt> such that <tt>o.equals(e)</tt>.
	*
	* @param o object to be checked for containment in this deque
	* @return <tt>true</tt> if this deque contains the specified element
	* @throws ClassCastException if the class of the specified element
	*         is incompatible with this deque
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload @:public public function contains(o : Dynamic) : Bool;
	
	/**
	* Returns the number of elements in this deque.
	*
	* @return the number of elements in this deque
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Returns an iterator over the elements in this deque in proper sequence.
	* The elements will be returned in order from first (head) to last (tail).
	*
	* @return an iterator over the elements in this deque in proper sequence
	*/
	@:overload public function iterator() : java.util.Iterator<E>;
	
	/**
	* Pushes an element onto the stack represented by this deque.  In other
	* words, inserts the element at the front of this deque unless it would
	* violate capacity restrictions.
	*
	* <p>This method is equivalent to {@link #addFirst(Object) addFirst}.
	*
	* @throws IllegalStateException {@inheritDoc}
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function push(e : E) : Void;
	
	
}
