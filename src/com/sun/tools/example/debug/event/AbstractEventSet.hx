package com.sun.tools.example.debug.event;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
extern class AbstractEventSet extends java.util.EventObject implements com.sun.jdi.event.EventSet
{
	@:overload public static function toSpecificEventSet(jdiEventSet : com.sun.jdi.event.EventSet) : AbstractEventSet;
	
	@:overload @:abstract public function notify(listener : com.sun.tools.example.debug.event.JDIListener) : Void;
	
	@:overload public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	@:overload public function getVirtualMachine() : com.sun.jdi.VirtualMachine;
	
	/**
	* Returns the policy used to suspend threads in the target VM
	* for this event set. This policy is selected from the suspend
	* policies for each event's request. The one that suspends the
	* most threads is chosen when the event occurs in the target VM
	* and that policy is returned here. See
	* com.sun.jdi.request.EventRequest for the possible policy values.
	*
	* @return the integer suspendPolicy
	*/
	@:overload public function getSuspendPolicy() : Int;
	
	@:overload public function resume() : Void;
	
	@:overload public function suspendPolicy() : Int;
	
	@:overload public function suspendedAll() : Bool;
	
	@:overload public function suspendedEventThread() : Bool;
	
	@:overload public function suspendedNone() : Bool;
	
	/**
	* Return an iterator specific to {@link Event} objects.
	*/
	@:overload public function eventIterator() : com.sun.jdi.event.EventIterator;
	
	/**
	* Returns the number of elements in this set (its cardinality).  If this
	* set contains more than <tt>Integer.MAX_VALUE</tt> elements, returns
	* <tt>Integer.MAX_VALUE</tt>.
	*
	* @return the number of elements in this set (its cardinality).
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this set contains no elements.
	*
	* @return <tt>true</tt> if this set contains no elements.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if this set contains the specified element.  More
	* formally, returns <tt>true</tt> if and only if this set contains an
	* element <code>e</code> such that <code>(o==null ? e==null :
	* o.equals(e))</code>.
	*
	* @return <tt>true</tt> if this set contains the specified element.
	*/
	@:overload public function contains(o : Dynamic) : Bool;
	
	/**
	* Returns an iterator over the elements in this set.  The elements are
	* returned in no particular order (unless this set is an instance of some
	* class that provides a guarantee).
	*
	* @return an iterator over the elements in this set.
	*/
	@:overload public function iterator() : java.util.Iterator<com.sun.jdi.event.Event>;
	
	/**
	* Returns an array containing all of the elements in this set.
	* Obeys the general contract of the <tt>Collection.toArray</tt> method.
	*
	* @return an array containing all of the elements in this set.
	*/
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array containing all of the elements in this set whose
	* runtime type is that of the specified array.  Obeys the general
	* contract of the <tt>Collection.toArray(Object[])</tt> method.
	*
	* @param a the array into which the elements of this set are to
	*          be stored, if it is big enough {
	return jdiEventSet.XXX();
	} otherwise, a new array of the
	*          same runtime type is allocated for this purpose.
	* @return an array containing the elements of this set.
	* @throws    ArrayStoreException the runtime type of a is not a supertype
	* of the runtime type of every element in this set.
	*/
	@:overload public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* Returns <tt>true</tt> if this set contains all of the elements of the
	* specified collection.  If the specified collection is also a set, this
	* method returns <tt>true</tt> if it is a <i>subset</i> of this set.
	*
	* @param c collection to be checked for containment in this set.
	* @return <tt>true</tt> if this set contains all of the elements of the
	*         specified collection.
	*/
	@:overload public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function add(e : com.sun.jdi.event.Event) : Bool;
	
	@:overload public function remove(o : Dynamic) : Bool;
	
	@:overload public function addAll(coll : java.util.Collection<com.sun.jdi.event.Event>) : Bool;
	
	@:overload public function removeAll(coll : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function retainAll(coll : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function clear() : Void;
	
	/**
	* Adds the specified element to this set if it is not already present
	* (optional operation).  More formally, adds the specified element
	* <tt>e</tt> to this set if the set contains no element <tt>e2</tt>
	* such that
	* <tt>(e==null&nbsp;?&nbsp;e2==null&nbsp;:&nbsp;e.equals(e2))</tt>.
	* If this set already contains the element, the call leaves the set
	* unchanged and returns <tt>false</tt>.  In combination with the
	* restriction on constructors, this ensures that sets never contain
	* duplicate elements.
	*
	* <p>The stipulation above does not imply that sets must accept all
	* elements; sets may refuse to add any particular element, including
	* <tt>null</tt>, and throw an exception, as described in the
	* specification for {@link Collection#add Collection.add}.
	* Individual set implementations should clearly document any
	* restrictions on the elements that they may contain.
	*
	* @param e element to be added to this set
	* @return <tt>true</tt> if this set did not already contain the specified
	*         element
	* @throws UnsupportedOperationException if the <tt>add</tt> operation
	*         is not supported by this set
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this set
	* @throws NullPointerException if the specified element is null and this
	*         set does not permit null elements
	* @throws IllegalArgumentException if some property of the specified element
	*         prevents it from being added to this set
	*/
	@:overload public function add(e : Dynamic) : Bool;
	
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
	@:overload public function containsAll(c : Collection<Dynamic>) : Bool;
	
	/**
	* Adds all of the elements in the specified collection to this collection
	* (optional operation).  The behavior of this operation is undefined if
	* the specified collection is modified while the operation is in progress.
	* (This implies that the behavior of this call is undefined if the
	* specified collection is this collection, and this collection is
	* nonempty.)
	*
	* @param c collection containing elements to be added to this collection
	* @return <tt>true</tt> if this collection changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>addAll</tt> operation
	*         is not supported by this collection
	* @throws ClassCastException if the class of an element of the specified
	*         collection prevents it from being added to this collection
	* @throws NullPointerException if the specified collection contains a
	*         null element and this collection does not permit null elements,
	*         or if the specified collection is null
	* @throws IllegalArgumentException if some property of an element of the
	*         specified collection prevents it from being added to this
	*         collection
	* @throws IllegalStateException if not all the elements can be added at
	*         this time due to insertion restrictions
	* @see #add(Object)
	*/
	@:overload public function addAll(c : Collection<Dynamic>) : Bool;
	
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
	@:overload public function retainAll(c : Collection<Dynamic>) : Bool;
	
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
	@:overload public function removeAll(c : Collection<Dynamic>) : Bool;
	
	
}
