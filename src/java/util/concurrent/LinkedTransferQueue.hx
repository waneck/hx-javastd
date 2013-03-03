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
extern class LinkedTransferQueue<E> extends java.util.AbstractQueue<E> implements java.util.concurrent.TransferQueue<E> implements java.io.Serializable
{
	/**
	* Creates an initially empty {@code LinkedTransferQueue}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a {@code LinkedTransferQueue}
	* initially containing the elements of the given collection,
	* added in traversal order of the collection's iterator.
	*
	* @param c the collection of elements to initially contain
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload @:public public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Inserts the specified element at the tail of this queue.
	* As the queue is unbounded, this method will never block.
	*
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function put(e : E) : Void;
	
	/**
	* Inserts the specified element at the tail of this queue.
	* As the queue is unbounded, this method will never block or
	* return {@code false}.
	*
	* @return {@code true} (as specified by
	*  {@link BlockingQueue#offer(Object,long,TimeUnit) BlockingQueue.offer})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function offer(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Inserts the specified element at the tail of this queue.
	* As the queue is unbounded, this method will never return {@code false}.
	*
	* @return {@code true} (as specified by {@link Queue#offer})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function offer(e : E) : Bool;
	
	/**
	* Inserts the specified element at the tail of this queue.
	* As the queue is unbounded, this method will never throw
	* {@link IllegalStateException} or return {@code false}.
	*
	* @return {@code true} (as specified by {@link Collection#add})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function add(e : E) : Bool;
	
	/**
	* Transfers the element to a waiting consumer immediately, if possible.
	*
	* <p>More precisely, transfers the specified element immediately
	* if there exists a consumer already waiting to receive it (in
	* {@link #take} or timed {@link #poll(long,TimeUnit) poll}),
	* otherwise returning {@code false} without enqueuing the element.
	*
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function tryTransfer(e : E) : Bool;
	
	/**
	* Transfers the element to a consumer, waiting if necessary to do so.
	*
	* <p>More precisely, transfers the specified element immediately
	* if there exists a consumer already waiting to receive it (in
	* {@link #take} or timed {@link #poll(long,TimeUnit) poll}),
	* else inserts the specified element at the tail of this queue
	* and waits until the element is received by a consumer.
	*
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function transfer(e : E) : Void;
	
	/**
	* Transfers the element to a consumer if it is possible to do so
	* before the timeout elapses.
	*
	* <p>More precisely, transfers the specified element immediately
	* if there exists a consumer already waiting to receive it (in
	* {@link #take} or timed {@link #poll(long,TimeUnit) poll}),
	* else inserts the specified element at the tail of this queue
	* and waits until the element is received by a consumer,
	* returning {@code false} if the specified wait time elapses
	* before the element can be transferred.
	*
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function tryTransfer(e : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	@:overload @:public public function take() : E;
	
	@:overload @:public public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	@:overload @:public override public function poll() : E;
	
	/**
	* @throws NullPointerException     {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function drainTo(c : java.util.Collection<E>) : Int;
	
	/**
	* @throws NullPointerException     {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
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
	
	@:overload @:public override public function peek() : E;
	
	/**
	* Returns {@code true} if this queue contains no elements.
	*
	* @return {@code true} if this queue contains no elements
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public public function hasWaitingConsumer() : Bool;
	
	/**
	* Returns the number of elements in this queue.  If this queue
	* contains more than {@code Integer.MAX_VALUE} elements, returns
	* {@code Integer.MAX_VALUE}.
	*
	* <p>Beware that, unlike in most collections, this method is
	* <em>NOT</em> a constant-time operation. Because of the
	* asynchronous nature of these queues, determining the current
	* number of elements requires an O(n) traversal.
	*
	* @return the number of elements in this queue
	*/
	@:overload @:public override public function size() : Int;
	
	@:overload @:public public function getWaitingConsumerCount() : Int;
	
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
	* Always returns {@code Integer.MAX_VALUE} because a
	* {@code LinkedTransferQueue} is not capacity constrained.
	*
	* @return {@code Integer.MAX_VALUE} (as specified by
	*         {@link BlockingQueue#remainingCapacity()})
	*/
	@:overload @:public public function remainingCapacity() : Int;
	
	
}
/**
* Queue nodes. Uses Object, not E, for items to allow forgetting
* them after use.  Relies heavily on Unsafe mechanics to minimize
* unnecessary ordering constraints: Writes that are intrinsically
* ordered wrt other accesses or CASes use simple relaxed forms.
*/
@:native('java$util$concurrent$LinkedTransferQueue$Node') @:internal extern class LinkedTransferQueue_Node
{
	
}
@:native('java$util$concurrent$LinkedTransferQueue$Itr') @:internal extern class LinkedTransferQueue_Itr implements java.util.Iterator<Dynamic>
{
	@:overload @:public @:final public function hasNext() : Bool;
	
	@:overload @:public @:final public function next() : Dynamic;
	
	@:overload @:public @:final public function remove() : Void;
	
	
}
