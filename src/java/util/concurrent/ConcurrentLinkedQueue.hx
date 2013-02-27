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
extern class ConcurrentLinkedQueue<E> extends java.util.AbstractQueue<E> implements java.util.Queue<E> implements java.io.Serializable
{
	/**
	* Creates a {@code ConcurrentLinkedQueue} that is initially empty.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a {@code ConcurrentLinkedQueue}
	* initially containing the elements of the given collection,
	* added in traversal order of the collection's iterator.
	*
	* @param c the collection of elements to initially contain
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Inserts the specified element at the tail of this queue.
	* As the queue is unbounded, this method will never throw
	* {@link IllegalStateException} or return {@code false}.
	*
	* @return {@code true} (as specified by {@link Collection#add})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* Inserts the specified element at the tail of this queue.
	* As the queue is unbounded, this method will never return {@code false}.
	*
	* @return {@code true} (as specified by {@link Queue#offer})
	* @throws NullPointerException if the specified element is null
	*/
	@:overload override public function offer(e : E) : Bool;
	
	@:overload override public function poll() : E;
	
	@:overload override public function peek() : E;
	
	/**
	* Returns {@code true} if this queue contains no elements.
	*
	* @return {@code true} if this queue contains no elements
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Returns the number of elements in this queue.  If this queue
	* contains more than {@code Integer.MAX_VALUE} elements, returns
	* {@code Integer.MAX_VALUE}.
	*
	* <p>Beware that, unlike in most collections, this method is
	* <em>NOT</em> a constant-time operation. Because of the
	* asynchronous nature of these queues, determining the current
	* number of elements requires an O(n) traversal.
	* Additionally, if elements are added or removed during execution
	* of this method, the returned result may be inaccurate.  Thus,
	* this method is typically not very useful in concurrent
	* applications.
	*
	* @return the number of elements in this queue
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns {@code true} if this queue contains the specified element.
	* More formally, returns {@code true} if and only if this queue contains
	* at least one element {@code e} such that {@code o.equals(e)}.
	*
	* @param o object to be checked for containment in this queue
	* @return {@code true} if this queue contains the specified element
	*/
	@:overload override public function contains(o : Dynamic) : Bool;
	
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
	@:overload override public function remove(o : Dynamic) : Bool;
	
	/**
	* Appends all of the elements in the specified collection to the end of
	* this queue, in the order that they are returned by the specified
	* collection's iterator.  Attempts to {@code addAll} of a queue to
	* itself result in {@code IllegalArgumentException}.
	*
	* @param c the elements to be inserted into this queue
	* @return {@code true} if this queue changed as a result of the call
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	* @throws IllegalArgumentException if the collection is this queue
	*/
	@:overload override public function addAll(c : java.util.Collection<E>) : Bool;
	
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
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
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
	@:overload override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
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
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	
}
/*
* This is a modification of the Michael & Scott algorithm,
* adapted for a garbage-collected environment, with support for
* interior node deletion (to support remove(Object)).  For
* explanation, read the paper.
*
* Note that like most non-blocking algorithms in this package,
* this implementation relies on the fact that in garbage
* collected systems, there is no possibility of ABA problems due
* to recycled nodes, so there is no need to use "counted
* pointers" or related techniques seen in versions used in
* non-GC'ed settings.
*
* The fundamental invariants are:
* - There is exactly one (last) Node with a null next reference,
*   which is CASed when enqueueing.  This last Node can be
*   reached in O(1) time from tail, but tail is merely an
*   optimization - it can always be reached in O(N) time from
*   head as well.
* - The elements contained in the queue are the non-null items in
*   Nodes that are reachable from head.  CASing the item
*   reference of a Node to null atomically removes it from the
*   queue.  Reachability of all elements from head must remain
*   true even in the case of concurrent modifications that cause
*   head to advance.  A dequeued Node may remain in use
*   indefinitely due to creation of an Iterator or simply a
*   poll() that has lost its time slice.
*
* The above might appear to imply that all Nodes are GC-reachable
* from a predecessor dequeued Node.  That would cause two problems:
* - allow a rogue Iterator to cause unbounded memory retention
* - cause cross-generational linking of old Nodes to new Nodes if
*   a Node was tenured while live, which generational GCs have a
*   hard time dealing with, causing repeated major collections.
* However, only non-deleted Nodes need to be reachable from
* dequeued Nodes, and reachability does not necessarily have to
* be of the kind understood by the GC.  We use the trick of
* linking a Node that has just been dequeued to itself.  Such a
* self-link implicitly means to advance to head.
*
* Both head and tail are permitted to lag.  In fact, failing to
* update them every time one could is a significant optimization
* (fewer CASes). As with LinkedTransferQueue (see the internal
* documentation for that class), we use a slack threshold of two;
* that is, we update head/tail when the current pointer appears
* to be two or more steps away from the first/last node.
*
* Since head and tail are updated concurrently and independently,
* it is possible for tail to lag behind head (why not)?
*
* CASing a Node's item reference to null atomically removes the
* element from the queue.  Iterators skip over Nodes with null
* items.  Prior implementations of this class had a race between
* poll() and remove(Object) where the same element would appear
* to be successfully removed by two concurrent operations.  The
* method remove(Object) also lazily unlinks deleted Nodes, but
* this is merely an optimization.
*
* When constructing a Node (before enqueuing it) we avoid paying
* for a volatile write to item by using Unsafe.putObject instead
* of a normal write.  This allows the cost of enqueue to be
* "one-and-a-half" CASes.
*
* Both head and tail may or may not point to a Node with a
* non-null item.  If the queue is empty, all items must of course
* be null.  Upon creation, both head and tail refer to a dummy
* Node with null item.  Both head and tail are only updated using
* CAS, so they never regress, although again this is merely an
* optimization.
*/
@:native('java$util$concurrent$ConcurrentLinkedQueue$Node') @:internal extern class ConcurrentLinkedQueue_Node<E>
{
	
}
@:native('java$util$concurrent$ConcurrentLinkedQueue$Itr') @:internal extern class ConcurrentLinkedQueue_Itr implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
