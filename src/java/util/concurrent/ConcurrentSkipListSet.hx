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
extern class ConcurrentSkipListSet<E> extends java.util.AbstractSet<E> implements java.util.NavigableSet<E> implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Constructs a new, empty set that orders its elements according to
	* their {@linkplain Comparable natural ordering}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new, empty set that orders its elements according to
	* the specified comparator.
	*
	* @param comparator the comparator that will be used to order this set.
	*        If <tt>null</tt>, the {@linkplain Comparable natural
	*        ordering} of the elements will be used.
	*/
	@:overload @:public public function new(comparator : java.util.Comparator<E>) : Void;
	
	/**
	* Constructs a new set containing the elements in the specified
	* collection, that orders its elements according to their
	* {@linkplain Comparable natural ordering}.
	*
	* @param c The elements that will comprise the new set
	* @throws ClassCastException if the elements in <tt>c</tt> are
	*         not {@link Comparable}, or are not mutually comparable
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload @:public public function new(c : java.util.Collection<E>) : Void;
	
	/**
	* Constructs a new set containing the same elements and using the
	* same ordering as the specified sorted set.
	*
	* @param s sorted set whose elements will comprise the new set
	* @throws NullPointerException if the specified sorted set or any
	*         of its elements are null
	*/
	@:overload @:public public function new(s : java.util.SortedSet<E>) : Void;
	
	/**
	* Returns a shallow copy of this <tt>ConcurrentSkipListSet</tt>
	* instance. (The elements themselves are not cloned.)
	*
	* @return a shallow copy of this set
	*/
	@:overload @:public public function clone() : java.util.concurrent.ConcurrentSkipListSet<E>;
	
	/**
	* Returns the number of elements in this set.  If this set
	* contains more than <tt>Integer.MAX_VALUE</tt> elements, it
	* returns <tt>Integer.MAX_VALUE</tt>.
	*
	* <p>Beware that, unlike in most collections, this method is
	* <em>NOT</em> a constant-time operation. Because of the
	* asynchronous nature of these sets, determining the current
	* number of elements requires traversing them all to count them.
	* Additionally, it is possible for the size to change during
	* execution of this method, in which case the returned result
	* will be inaccurate. Thus, this method is typically not very
	* useful in concurrent applications.
	*
	* @return the number of elements in this set
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this set contains no elements.
	* @return <tt>true</tt> if this set contains no elements
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if this set contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this set
	* contains an element <tt>e</tt> such that <tt>o.equals(e)</tt>.
	*
	* @param o object to be checked for containment in this set
	* @return <tt>true</tt> if this set contains the specified element
	* @throws ClassCastException if the specified element cannot be
	*         compared with the elements currently in this set
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	/**
	* Adds the specified element to this set if it is not already present.
	* More formally, adds the specified element <tt>e</tt> to this set if
	* the set contains no element <tt>e2</tt> such that <tt>e.equals(e2)</tt>.
	* If this set already contains the element, the call leaves the set
	* unchanged and returns <tt>false</tt>.
	*
	* @param e element to be added to this set
	* @return <tt>true</tt> if this set did not already contain the
	*         specified element
	* @throws ClassCastException if <tt>e</tt> cannot be compared
	*         with the elements currently in this set
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function add(e : E) : Bool;
	
	/**
	* Removes the specified element from this set if it is present.
	* More formally, removes an element <tt>e</tt> such that
	* <tt>o.equals(e)</tt>, if this set contains such an element.
	* Returns <tt>true</tt> if this set contained the element (or
	* equivalently, if this set changed as a result of the call).
	* (This set will not contain the element once the call returns.)
	*
	* @param o object to be removed from this set, if present
	* @return <tt>true</tt> if this set contained the specified element
	* @throws ClassCastException if <tt>o</tt> cannot be compared
	*         with the elements currently in this set
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/**
	* Removes all of the elements from this set.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Returns an iterator over the elements in this set in ascending order.
	*
	* @return an iterator over the elements in this set in ascending order
	*/
	@:overload @:public override public function iterator() : java.util.Iterator<E>;
	
	/**
	* Returns an iterator over the elements in this set in descending order.
	*
	* @return an iterator over the elements in this set in descending order
	*/
	@:overload @:public public function descendingIterator() : java.util.Iterator<E>;
	
	/**
	* Compares the specified object with this set for equality.  Returns
	* <tt>true</tt> if the specified object is also a set, the two sets
	* have the same size, and every member of the specified set is
	* contained in this set (or equivalently, every member of this set is
	* contained in the specified set).  This definition ensures that the
	* equals method works properly across different implementations of the
	* set interface.
	*
	* @param o the object to be compared for equality with this set
	* @return <tt>true</tt> if the specified object is equal to this set
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	/**
	* Removes from this set all of its elements that are contained in
	* the specified collection.  If the specified collection is also
	* a set, this operation effectively modifies this set so that its
	* value is the <i>asymmetric set difference</i> of the two sets.
	*
	* @param  c collection containing elements to be removed from this set
	* @return <tt>true</tt> if this set changed as a result of the call
	* @throws ClassCastException if the types of one or more elements in this
	*         set are incompatible with the specified collection
	* @throws NullPointerException if the specified collection or any
	*         of its elements are null
	*/
	@:overload @:public override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function lower(e : E) : E;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function floor(e : E) : E;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function ceiling(e : E) : E;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if the specified element is null
	*/
	@:overload @:public public function higher(e : E) : E;
	
	@:overload @:public public function pollFirst() : E;
	
	@:overload @:public public function pollLast() : E;
	
	/* ---------------- SortedSet operations -------------- */
	@:overload @:public public function comparator() : java.util.Comparator<E>;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function first() : E;
	
	/**
	* @throws NoSuchElementException {@inheritDoc}
	*/
	@:overload @:public public function last() : E;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromElement} or
	*         {@code toElement} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function subSet(fromElement : E, fromInclusive : Bool, toElement : E, toInclusive : Bool) : java.util.NavigableSet<E>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code toElement} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function headSet(toElement : E, inclusive : Bool) : java.util.NavigableSet<E>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromElement} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function tailSet(fromElement : E, inclusive : Bool) : java.util.NavigableSet<E>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromElement} or
	*         {@code toElement} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function subSet(fromElement : E, toElement : E) : java.util.NavigableSet<E>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code toElement} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function headSet(toElement : E) : java.util.NavigableSet<E>;
	
	/**
	* @throws ClassCastException {@inheritDoc}
	* @throws NullPointerException if {@code fromElement} is null
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function tailSet(fromElement : E) : java.util.NavigableSet<E>;
	
	/**
	* Returns a reverse order view of the elements contained in this set.
	* The descending set is backed by this set, so changes to the set are
	* reflected in the descending set, and vice-versa.
	*
	* <p>The returned set has an ordering equivalent to
	* <tt>{@link Collections#reverseOrder(Comparator) Collections.reverseOrder}(comparator())</tt>.
	* The expression {@code s.descendingSet().descendingSet()} returns a
	* view of {@code s} essentially equivalent to {@code s}.
	*
	* @return a reverse order view of this set
	*/
	@:overload @:public public function descendingSet() : java.util.NavigableSet<E>;
	
	
}
