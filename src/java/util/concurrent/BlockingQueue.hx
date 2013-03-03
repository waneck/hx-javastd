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
extern interface BlockingQueue<E> extends java.util.Queue<E>
{
	/**
	* Inserts the specified element into this queue if it is possible to do
	* so immediately without violating capacity restrictions, returning
	* <tt>true</tt> upon success and throwing an
	* <tt>IllegalStateException</tt> if no space is currently available.
	* When using a capacity-restricted queue, it is generally preferable to
	* use {@link #offer(Object) offer}.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	* @throws IllegalStateException if the element cannot be added at this
	*         time due to capacity restrictions
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this queue
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this queue
	*/
	@:overload public function add(e : E) : Bool;
	
	/**
	* Inserts the specified element into this queue if it is possible to do
	* so immediately without violating capacity restrictions, returning
	* <tt>true</tt> upon success and <tt>false</tt> if no space is currently
	* available.  When using a capacity-restricted queue, this method is
	* generally preferable to {@link #add}, which can fail to insert an
	* element only by throwing an exception.
	*
	* @param e the element to add
	* @return <tt>true</tt> if the element was added to this queue, else
	*         <tt>false</tt>
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this queue
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this queue
	*/
	@:overload public function offer(e : E) : Bool;
	
	/**
	* Inserts the specified element into this queue, waiting if necessary
	* for space to become available.
	*
	* @param e the element to add
	* @throws InterruptedException if interrupted while waiting
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this queue
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this queue
	*/
	@:overload public function put(e : E) : Void;
	
	/**
	* Inserts the specified element into this queue, waiting up to the
	* specified wait time if necessary for space to become available.
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
	*         prevents it from being added to this queue
	* @throws NullPointerException if the specified element is null
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this queue
	*/
	@:overload public function offer(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Retrieves and removes the head of this queue, waiting if necessary
	* until an element becomes available.
	*
	* @return the head of this queue
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function take() : E;
	
	/**
	* Retrieves and removes the head of this queue, waiting up to the
	* specified wait time if necessary for an element to become available.
	*
	* @param timeout how long to wait before giving up, in units of
	*        <tt>unit</tt>
	* @param unit a <tt>TimeUnit</tt> determining how to interpret the
	*        <tt>timeout</tt> parameter
	* @return the head of this queue, or <tt>null</tt> if the
	*         specified waiting time elapses before an element is available
	* @throws InterruptedException if interrupted while waiting
	*/
	@:overload public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	/**
	* Returns the number of additional elements that this queue can ideally
	* (in the absence of memory or resource constraints) accept without
	* blocking, or <tt>Integer.MAX_VALUE</tt> if there is no intrinsic
	* limit.
	*
	* <p>Note that you <em>cannot</em> always tell if an attempt to insert
	* an element will succeed by inspecting <tt>remainingCapacity</tt>
	* because it may be the case that another thread is about to
	* insert or remove an element.
	*
	* @return the remaining capacity
	*/
	@:overload public function remainingCapacity() : Int;
	
	/**
	* Removes a single instance of the specified element from this queue,
	* if it is present.  More formally, removes an element <tt>e</tt> such
	* that <tt>o.equals(e)</tt>, if this queue contains one or more such
	* elements.
	* Returns <tt>true</tt> if this queue contained the specified element
	* (or equivalently, if this queue changed as a result of the call).
	*
	* @param o element to be removed from this queue, if present
	* @return <tt>true</tt> if this queue changed as a result of the call
	* @throws ClassCastException if the class of the specified element
	*         is incompatible with this queue
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload public function remove(o : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if this queue contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this queue contains
	* at least one element <tt>e</tt> such that <tt>o.equals(e)</tt>.
	*
	* @param o object to be checked for containment in this queue
	* @return <tt>true</tt> if this queue contains the specified element
	* @throws ClassCastException if the class of the specified element
	*         is incompatible with this queue
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null
	*         (<a href="../Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload @:public public function contains(o : Dynamic) : Bool;
	
	/**
	* Removes all available elements from this queue and adds them
	* to the given collection.  This operation may be more
	* efficient than repeatedly polling this queue.  A failure
	* encountered while attempting to add elements to
	* collection <tt>c</tt> may result in elements being in neither,
	* either or both collections when the associated exception is
	* thrown.  Attempts to drain a queue to itself result in
	* <tt>IllegalArgumentException</tt>. Further, the behavior of
	* this operation is undefined if the specified collection is
	* modified while the operation is in progress.
	*
	* @param c the collection to transfer elements into
	* @return the number of elements transferred
	* @throws UnsupportedOperationException if addition of elements
	*         is not supported by the specified collection
	* @throws ClassCastException if the class of an element of this queue
	*         prevents it from being added to the specified collection
	* @throws NullPointerException if the specified collection is null
	* @throws IllegalArgumentException if the specified collection is this
	*         queue, or some property of an element of this queue prevents
	*         it from being added to the specified collection
	*/
	@:overload public function drainTo(c : java.util.Collection<E>) : Int;
	
	/**
	* Removes at most the given number of available elements from
	* this queue and adds them to the given collection.  A failure
	* encountered while attempting to add elements to
	* collection <tt>c</tt> may result in elements being in neither,
	* either or both collections when the associated exception is
	* thrown.  Attempts to drain a queue to itself result in
	* <tt>IllegalArgumentException</tt>. Further, the behavior of
	* this operation is undefined if the specified collection is
	* modified while the operation is in progress.
	*
	* @param c the collection to transfer elements into
	* @param maxElements the maximum number of elements to transfer
	* @return the number of elements transferred
	* @throws UnsupportedOperationException if addition of elements
	*         is not supported by the specified collection
	* @throws ClassCastException if the class of an element of this queue
	*         prevents it from being added to the specified collection
	* @throws NullPointerException if the specified collection is null
	* @throws IllegalArgumentException if the specified collection is this
	*         queue, or some property of an element of this queue prevents
	*         it from being added to the specified collection
	*/
	@:overload public function drainTo(c : java.util.Collection<E>, maxElements : Int) : Int;
	
	
}
