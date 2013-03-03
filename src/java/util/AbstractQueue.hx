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
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
/**
* This class provides skeletal implementations of some {@link Queue}
* operations. The implementations in this class are appropriate when
* the base implementation does <em>not</em> allow <tt>null</tt>
* elements.  Methods {@link #add add}, {@link #remove remove}, and
* {@link #element element} are based on {@link #offer offer}, {@link
* #poll poll}, and {@link #peek peek}, respectively, but throw
* exceptions instead of indicating failure via <tt>false</tt> or
* <tt>null</tt> returns.
*
* <p>A <tt>Queue</tt> implementation that extends this class must
* minimally define a method {@link Queue#offer} which does not permit
* insertion of <tt>null</tt> elements, along with methods {@link
* Queue#peek}, {@link Queue#poll}, {@link Collection#size}, and
* {@link Collection#iterator}.  Typically, additional methods will be
* overridden as well.  If these requirements cannot be met, consider
* instead subclassing {@link AbstractCollection}.
*
* <p>This class is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @since 1.5
* @author Doug Lea
* @param <E> the type of elements held in this collection
*/
@:require(java5) extern class AbstractQueue<E> extends java.util.AbstractCollection<E> implements java.util.Queue<E>
{
	/**
	* Constructor for use by subclasses.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Inserts the specified element into this queue if it is possible to do so
	* immediately without violating capacity restrictions, returning
	* <tt>true</tt> upon success and throwing an <tt>IllegalStateException</tt>
	* if no space is currently available.
	*
	* <p>This implementation returns <tt>true</tt> if <tt>offer</tt> succeeds,
	* else throws an <tt>IllegalStateException</tt>.
	*
	* @param e the element to add
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	* @throws IllegalStateException if the element cannot be added at this
	*         time due to capacity restrictions
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this queue
	* @throws NullPointerException if the specified element is null and
	*         this queue does not permit null elements
	* @throws IllegalArgumentException if some property of this element
	*         prevents it from being added to this queue
	*/
	@:overload @:public override public function add(e : E) : Bool;
	
	/**
	* Retrieves and removes the head of this queue.  This method differs
	* from {@link #poll poll} only in that it throws an exception if this
	* queue is empty.
	*
	* <p>This implementation returns the result of <tt>poll</tt>
	* unless the queue is empty.
	*
	* @return the head of this queue
	* @throws NoSuchElementException if this queue is empty
	*/
	@:overload @:public public function remove() : E;
	
	/**
	* Retrieves, but does not remove, the head of this queue.  This method
	* differs from {@link #peek peek} only in that it throws an exception if
	* this queue is empty.
	*
	* <p>This implementation returns the result of <tt>peek</tt>
	* unless the queue is empty.
	*
	* @return the head of this queue
	* @throws NoSuchElementException if this queue is empty
	*/
	@:overload @:public public function element() : E;
	
	/**
	* Removes all of the elements from this queue.
	* The queue will be empty after this call returns.
	*
	* <p>This implementation repeatedly invokes {@link #poll poll} until it
	* returns <tt>null</tt>.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Adds all of the elements in the specified collection to this
	* queue.  Attempts to addAll of a queue to itself result in
	* <tt>IllegalArgumentException</tt>. Further, the behavior of
	* this operation is undefined if the specified collection is
	* modified while the operation is in progress.
	*
	* <p>This implementation iterates over the specified collection,
	* and adds each element returned by the iterator to this
	* queue, in turn.  A runtime exception encountered while
	* trying to add an element (including, in particular, a
	* <tt>null</tt> element) may result in only some of the elements
	* having been successfully added when the associated exception is
	* thrown.
	*
	* @param c collection containing elements to be added to this queue
	* @return <tt>true</tt> if this queue changed as a result of the call
	* @throws ClassCastException if the class of an element of the specified
	*         collection prevents it from being added to this queue
	* @throws NullPointerException if the specified collection contains a
	*         null element and this queue does not permit null elements,
	*         or if the specified collection is null
	* @throws IllegalArgumentException if some property of an element of the
	*         specified collection prevents it from being added to this
	*         queue, or if the specified collection is this queue
	* @throws IllegalStateException if not all the elements can be added at
	*         this time due to insertion restrictions
	* @see #add(Object)
	*/
	@:overload @:public override public function addAll(c : java.util.Collection<E>) : Bool;
	
	/**
	* Returns an array containing all of the elements in this collection;
	* the runtime type of the returned array is that of the specified array.
	* If the collection fits in the specified array, it is returned therein.
	* Otherwise, a new array is allocated with the runtime type of the
	* specified array and the size of this collection.
	*
	* <p>If this collection fits in the specified array with room to spare
	* (i.e., the array has more elements than this collection), the element
	* in the array immediately following the end of the collection is set to
	* <tt>null</tt>.  (This is useful in determining the length of this
	* collection <i>only</i> if the caller knows that this collection does
	* not contain any <tt>null</tt> elements.)
	*
	* <p>If this collection makes any guarantees as to what order its elements
	* are returned by its iterator, this method must return the elements in
	* the same order.
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>Suppose <tt>x</tt> is a collection known to contain only strings.
	* The following code can be used to dump the collection into a newly
	* allocated array of <tt>String</tt>:
	*
	* <pre>
	*     String[] y = x.toArray(new String[0]);</pre>
	*
	* Note that <tt>toArray(new Object[0])</tt> is identical in function to
	* <tt>toArray()</tt>.
	*
	* @param a the array into which the elements of this collection are to be
	*        stored, if it is big enough; otherwise, a new array of the same
	*        runtime type is allocated for this purpose.
	* @return an array containing all of the elements in this collection
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this collection
	* @throws NullPointerException if the specified array is null
	*/
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* Returns the number of elements in this collection.  If this collection
	* contains more than <tt>Integer.MAX_VALUE</tt> elements, returns
	* <tt>Integer.MAX_VALUE</tt>.
	*
	* @return the number of elements in this collection
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this collection contains all of the elements
	* in the specified collection.
	*
	* @param  c collection to be checked for containment in this collection
	* @return <tt>true</tt> if this collection contains all of the elements
	*         in the specified collection
	* @throws ClassCastException if the types of one or more elements
	*         in the specified collection are incompatible with this
	*         collection
	*         (<a href="#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified collection contains one
	*         or more null elements and this collection does not permit null
	*         elements
	*         (<a href="#optional-restrictions">optional</a>),
	*         or if the specified collection is null.
	* @see    #contains(Object)
	*/
	@:overload @:public override public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Retains only the elements in this collection that are contained in the
	* specified collection (optional operation).  In other words, removes from
	* this collection all of its elements that are not contained in the
	* specified collection.
	*
	* @param c collection containing elements to be retained in this collection
	* @return <tt>true</tt> if this collection changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>retainAll</tt> operation
	*         is not supported by this collection
	* @throws ClassCastException if the types of one or more elements
	*         in this collection are incompatible with the specified
	*         collection
	*         (<a href="#optional-restrictions">optional</a>)
	* @throws NullPointerException if this collection contains one or more
	*         null elements and the specified collection does not permit null
	*         elements
	*         (<a href="#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	* @see #contains(Object)
	*/
	@:overload @:public override public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Removes all of this collection's elements that are also contained in the
	* specified collection (optional operation).  After this call returns,
	* this collection will contain no elements in common with the specified
	* collection.
	*
	* @param c collection containing elements to be removed from this collection
	* @return <tt>true</tt> if this collection changed as a result of the
	*         call
	* @throws UnsupportedOperationException if the <tt>removeAll</tt> method
	*         is not supported by this collection
	* @throws ClassCastException if the types of one or more elements
	*         in this collection are incompatible with the specified
	*         collection
	*         (<a href="#optional-restrictions">optional</a>)
	* @throws NullPointerException if this collection contains one or more
	*         null elements and the specified collection does not support
	*         null elements
	*         (<a href="#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	* @see #contains(Object)
	*/
	@:overload @:public override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Inserts the specified element into this queue if it is possible to do
	* so immediately without violating capacity restrictions.
	* When using a capacity-restricted queue, this method is generally
	* preferable to {@link #add}, which can fail to insert an element only
	* by throwing an exception.
	*
	* @param e the element to add
	* @return <tt>true</tt> if the element was added to this queue, else
	*         <tt>false</tt>
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this queue
	* @throws NullPointerException if the specified element is null and
	*         this queue does not permit null elements
	* @throws IllegalArgumentException if some property of this element
	*         prevents it from being added to this queue
	*/
	@:overload @:public public function offer(e : E) : Bool;
	
	/**
	* Returns an array containing all of the elements in this collection.
	* If this collection makes any guarantees as to what order its elements
	* are returned by its iterator, this method must return the elements in
	* the same order.
	*
	* <p>The returned array will be "safe" in that no references to it are
	* maintained by this collection.  (In other words, this method must
	* allocate a new array even if this collection is backed by an array).
	* The caller is thus free to modify the returned array.
	*
	* <p>This method acts as bridge between array-based and collection-based
	* APIs.
	*
	* @return an array containing all of the elements in this collection
	*/
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns <tt>true</tt> if this collection contains no elements.
	*
	* @return <tt>true</tt> if this collection contains no elements
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Removes a single instance of the specified element from this
	* collection, if it is present (optional operation).  More formally,
	* removes an element <tt>e</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;e==null&nbsp;:&nbsp;o.equals(e))</tt>, if
	* this collection contains one or more such elements.  Returns
	* <tt>true</tt> if this collection contained the specified element (or
	* equivalently, if this collection changed as a result of the call).
	*
	* @param o element to be removed from this collection, if present
	* @return <tt>true</tt> if an element was removed as a result of this call
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this collection
	*         (<a href="#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         collection does not permit null elements
	*         (<a href="#optional-restrictions">optional</a>)
	* @throws UnsupportedOperationException if the <tt>remove</tt> operation
	*         is not supported by this collection
	*/
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/**
	* Retrieves and removes the head of this queue,
	* or returns <tt>null</tt> if this queue is empty.
	*
	* @return the head of this queue, or <tt>null</tt> if this queue is empty
	*/
	@:overload @:public public function poll() : E;
	
	/**
	* Retrieves, but does not remove, the head of this queue,
	* or returns <tt>null</tt> if this queue is empty.
	*
	* @return the head of this queue, or <tt>null</tt> if this queue is empty
	*/
	@:overload @:public public function peek() : E;
	
	/**
	* Returns an iterator over the elements in this collection.  There are no
	* guarantees concerning the order in which the elements are returned
	* (unless this collection is an instance of some class that provides a
	* guarantee).
	*
	* @return an <tt>Iterator</tt> over the elements in this collection
	*/
	@:overload @:public override public function iterator() : java.util.Iterator<E>;
	
	/**
	* Returns <tt>true</tt> if this collection contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this collection
	* contains at least one element <tt>e</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;e==null&nbsp;:&nbsp;o.equals(e))</tt>.
	*
	* @param o element whose presence in this collection is to be tested
	* @return <tt>true</tt> if this collection contains the specified
	*         element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this collection
	*         (<a href="#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         collection does not permit null elements
	*         (<a href="#optional-restrictions">optional</a>)
	*/
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	
}
