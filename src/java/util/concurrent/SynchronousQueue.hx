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
* Written by Doug Lea, Bill Scherer, and Michael Scott with
* assistance from members of JCP JSR-166 Expert Group and released to
* the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
/**
* A {@linkplain BlockingQueue blocking queue} in which each insert
* operation must wait for a corresponding remove operation by another
* thread, and vice versa.  A synchronous queue does not have any
* internal capacity, not even a capacity of one.  You cannot
* <tt>peek</tt> at a synchronous queue because an element is only
* present when you try to remove it; you cannot insert an element
* (using any method) unless another thread is trying to remove it;
* you cannot iterate as there is nothing to iterate.  The
* <em>head</em> of the queue is the element that the first queued
* inserting thread is trying to add to the queue; if there is no such
* queued thread then no element is available for removal and
* <tt>poll()</tt> will return <tt>null</tt>.  For purposes of other
* <tt>Collection</tt> methods (for example <tt>contains</tt>), a
* <tt>SynchronousQueue</tt> acts as an empty collection.  This queue
* does not permit <tt>null</tt> elements.
*
* <p>Synchronous queues are similar to rendezvous channels used in
* CSP and Ada. They are well suited for handoff designs, in which an
* object running in one thread must sync up with an object running
* in another thread in order to hand it some information, event, or
* task.
*
* <p> This class supports an optional fairness policy for ordering
* waiting producer and consumer threads.  By default, this ordering
* is not guaranteed. However, a queue constructed with fairness set
* to <tt>true</tt> grants threads access in FIFO order.
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
* @author Doug Lea and Bill Scherer and Michael Scott
* @param <E> the type of elements held in this collection
*/
@:require(java5) extern class SynchronousQueue<E> extends java.util.AbstractQueue<E> implements java.util.concurrent.BlockingQueue<E> implements java.io.Serializable
{
	/**
	* Creates a <tt>SynchronousQueue</tt> with nonfair access policy.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <tt>SynchronousQueue</tt> with the specified fairness policy.
	*
	* @param fair if true, waiting threads contend in FIFO order for
	*        access; otherwise the order is unspecified.
	*/
	@:overload @:public public function new(fair : Bool) : Void;
	
	/**
	* Adds the specified element to this queue, waiting if necessary for
	* another thread to receive it.
	*
	* @throws InterruptedException {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function put(o : E) : Void;
	
	/**
	* Inserts the specified element into this queue, waiting if necessary
	* up to the specified wait time for another thread to receive it.
	*
	* @return <tt>true</tt> if successful, or <tt>false</tt> if the
	*         specified waiting time elapses before a consumer appears.
	* @throws InterruptedException {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function offer(o : E, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Bool;
	
	/**
	* Inserts the specified element into this queue, if another thread is
	* waiting to receive it.
	*
	* @param e the element to add
	* @return <tt>true</tt> if the element was added to this queue, else
	*         <tt>false</tt>
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function offer(e : E) : Bool;
	
	/**
	* Retrieves and removes the head of this queue, waiting if necessary
	* for another thread to insert it.
	*
	* @return the head of this queue
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload @:public public function take() : E;
	
	/**
	* Retrieves and removes the head of this queue, waiting
	* if necessary up to the specified wait time, for another thread
	* to insert it.
	*
	* @return the head of this queue, or <tt>null</tt> if the
	*         specified waiting time elapses before an element is present.
	* @throws InterruptedException {@inheritDoc}
	*/
	@:overload @:public public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : E;
	
	/**
	* Retrieves and removes the head of this queue, if another thread
	* is currently making an element available.
	*
	* @return the head of this queue, or <tt>null</tt> if no
	*         element is available.
	*/
	@:overload @:public override public function poll() : E;
	
	/**
	* Always returns <tt>true</tt>.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @return <tt>true</tt>
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Always returns zero.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @return zero.
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Always returns zero.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @return zero.
	*/
	@:overload @:public public function remainingCapacity() : Int;
	
	/**
	* Does nothing.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Always returns <tt>false</tt>.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @param o the element
	* @return <tt>false</tt>
	*/
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	/**
	* Always returns <tt>false</tt>.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @param o the element to remove
	* @return <tt>false</tt>
	*/
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/**
	* Returns <tt>false</tt> unless the given collection is empty.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @param c the collection
	* @return <tt>false</tt> unless given collection is empty
	*/
	@:overload @:public override public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Always returns <tt>false</tt>.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @param c the collection
	* @return <tt>false</tt>
	*/
	@:overload @:public override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Always returns <tt>false</tt>.
	* A <tt>SynchronousQueue</tt> has no internal capacity.
	*
	* @param c the collection
	* @return <tt>false</tt>
	*/
	@:overload @:public override public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Always returns <tt>null</tt>.
	* A <tt>SynchronousQueue</tt> does not return elements
	* unless actively waited on.
	*
	* @return <tt>null</tt>
	*/
	@:overload @:public override public function peek() : E;
	
	/**
	* Returns an empty iterator in which <tt>hasNext</tt> always returns
	* <tt>false</tt>.
	*
	* @return an empty iterator
	*/
	@:overload @:public override public function iterator() : java.util.Iterator<E>;
	
	/**
	* Returns a zero-length array.
	* @return a zero-length array
	*/
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Sets the zeroeth element of the specified array to <tt>null</tt>
	* (if the array has non-zero length) and returns it.
	*
	* @param a the array
	* @return the specified array
	* @throws NullPointerException if the specified array is null
	*/
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
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
	
	
}
/**
* Shared internal API for dual stacks and queues.
*/
@:native('java$util$concurrent$SynchronousQueue$Transferer') @:internal extern class SynchronousQueue_Transferer
{
	
}
/** Dual stack */
@:native('java$util$concurrent$SynchronousQueue$TransferStack') @:internal extern class SynchronousQueue_TransferStack extends java.util.concurrent.SynchronousQueue.SynchronousQueue_Transferer
{
	
}
/** Node class for TransferStacks. */
@:native('java$util$concurrent$SynchronousQueue$TransferStack$SNode') @:internal extern class SynchronousQueue_TransferStack_SNode
{
	
}
/** Dual Queue */
@:native('java$util$concurrent$SynchronousQueue$TransferQueue') @:internal extern class SynchronousQueue_TransferQueue extends java.util.concurrent.SynchronousQueue.SynchronousQueue_Transferer
{
	
}
/** Node class for TransferQueue. */
@:native('java$util$concurrent$SynchronousQueue$TransferQueue$QNode') @:internal extern class SynchronousQueue_TransferQueue_QNode
{
	
}
/*
* To cope with serialization strategy in the 1.5 version of
* SynchronousQueue, we declare some unused classes and fields
* that exist solely to enable serializability across versions.
* These fields are never used, so are initialized only if this
* object is ever serialized or deserialized.
*/
@:native('java$util$concurrent$SynchronousQueue$WaitQueue') @:internal extern class SynchronousQueue_WaitQueue implements java.io.Serializable
{
	
}
@:native('java$util$concurrent$SynchronousQueue$LifoWaitQueue') @:internal extern class SynchronousQueue_LifoWaitQueue extends java.util.concurrent.SynchronousQueue.SynchronousQueue_WaitQueue
{
	
}
@:native('java$util$concurrent$SynchronousQueue$FifoWaitQueue') @:internal extern class SynchronousQueue_FifoWaitQueue extends java.util.concurrent.SynchronousQueue.SynchronousQueue_WaitQueue
{
	
}
