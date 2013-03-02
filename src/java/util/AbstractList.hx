package java.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class provides a skeletal implementation of the {@link List}
* interface to minimize the effort required to implement this interface
* backed by a "random access" data store (such as an array).  For sequential
* access data (such as a linked list), {@link AbstractSequentialList} should
* be used in preference to this class.
*
* <p>To implement an unmodifiable list, the programmer needs only to extend
* this class and provide implementations for the {@link #get(int)} and
* {@link List#size() size()} methods.
*
* <p>To implement a modifiable list, the programmer must additionally
* override the {@link #set(int, Object) set(int, E)} method (which otherwise
* throws an {@code UnsupportedOperationException}).  If the list is
* variable-size the programmer must additionally override the
* {@link #add(int, Object) add(int, E)} and {@link #remove(int)} methods.
*
* <p>The programmer should generally provide a void (no argument) and collection
* constructor, as per the recommendation in the {@link Collection} interface
* specification.
*
* <p>Unlike the other abstract collection implementations, the programmer does
* <i>not</i> have to provide an iterator implementation; the iterator and
* list iterator are implemented by this class, on top of the "random access"
* methods:
* {@link #get(int)},
* {@link #set(int, Object) set(int, E)},
* {@link #add(int, Object) add(int, E)} and
* {@link #remove(int)}.
*
* <p>The documentation for each non-abstract method in this class describes its
* implementation in detail.  Each of these methods may be overridden if the
* collection being implemented admits a more efficient implementation.
*
* <p>This class is a member of the
* <a href="{@docRoot}/../technotes/guides/collections/index.html">
* Java Collections Framework</a>.
*
* @author  Josh Bloch
* @author  Neal Gafter
* @since 1.2
*/
@:require(java2) extern class AbstractList<E> extends java.util.AbstractCollection<E> implements java.util.List<E>
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload private function new() : Void;
	
	/**
	* Appends the specified element to the end of this list (optional
	* operation).
	*
	* <p>Lists that support this operation may place limitations on what
	* elements may be added to this list.  In particular, some
	* lists will refuse to add null elements, and others will impose
	* restrictions on the type of elements that may be added.  List
	* classes should clearly specify in their documentation any restrictions
	* on what elements may be added.
	*
	* <p>This implementation calls {@code add(size(), e)}.
	*
	* <p>Note that this implementation throws an
	* {@code UnsupportedOperationException} unless
	* {@link #add(int, Object) add(int, E)} is overridden.
	*
	* @param e element to be appended to this list
	* @return {@code true} (as specified by {@link Collection#add})
	* @throws UnsupportedOperationException if the {@code add} operation
	*         is not supported by this list
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this list
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	* @throws IllegalArgumentException if some property of this element
	*         prevents it from being added to this list
	*/
	@:overload override public function add(e : E) : Bool;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:abstract public function get(index : Int) : E;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation always throws an
	* {@code UnsupportedOperationException}.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	* @throws IndexOutOfBoundsException     {@inheritDoc}
	*/
	@:overload public function set(index : Int, element : E) : E;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation always throws an
	* {@code UnsupportedOperationException}.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	* @throws IndexOutOfBoundsException     {@inheritDoc}
	*/
	@:overload public function add(index : Int, element : E) : Void;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation always throws an
	* {@code UnsupportedOperationException}.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws IndexOutOfBoundsException     {@inheritDoc}
	*/
	@:overload public function remove(index : Int) : E;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation first gets a list iterator (with
	* {@code listIterator()}).  Then, it iterates over the list until the
	* specified element is found or the end of the list is reached.
	*
	* @throws ClassCastException   {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function indexOf(o : Dynamic) : Int;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation first gets a list iterator that points to the end
	* of the list (with {@code listIterator(size())}).  Then, it iterates
	* backwards over the list until the specified element is found, or the
	* beginning of the list is reached.
	*
	* @throws ClassCastException   {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function lastIndexOf(o : Dynamic) : Int;
	
	/**
	* Removes all of the elements from this list (optional operation).
	* The list will be empty after this call returns.
	*
	* <p>This implementation calls {@code removeRange(0, size())}.
	*
	* <p>Note that this implementation throws an
	* {@code UnsupportedOperationException} unless {@code remove(int
	* index)} or {@code removeRange(int fromIndex, int toIndex)} is
	* overridden.
	*
	* @throws UnsupportedOperationException if the {@code clear} operation
	*         is not supported by this list
	*/
	@:overload override public function clear() : Void;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation gets an iterator over the specified collection
	* and iterates over it, inserting the elements obtained from the
	* iterator into this list at the appropriate position, one at a time,
	* using {@code add(int, E)}.
	* Many implementations will override this method for efficiency.
	*
	* <p>Note that this implementation throws an
	* {@code UnsupportedOperationException} unless
	* {@link #add(int, Object) add(int, E)} is overridden.
	*
	* @throws UnsupportedOperationException {@inheritDoc}
	* @throws ClassCastException            {@inheritDoc}
	* @throws NullPointerException          {@inheritDoc}
	* @throws IllegalArgumentException      {@inheritDoc}
	* @throws IndexOutOfBoundsException     {@inheritDoc}
	*/
	@:overload public function addAll(index : Int, c : java.util.Collection<E>) : Bool;
	
	/**
	* Returns an iterator over the elements in this list in proper sequence.
	*
	* <p>This implementation returns a straightforward implementation of the
	* iterator interface, relying on the backing list's {@code size()},
	* {@code get(int)}, and {@code remove(int)} methods.
	*
	* <p>Note that the iterator returned by this method will throw an
	* {@link UnsupportedOperationException} in response to its
	* {@code remove} method unless the list's {@code remove(int)} method is
	* overridden.
	*
	* <p>This implementation can be made to throw runtime exceptions in the
	* face of concurrent modification, as described in the specification
	* for the (protected) {@link #modCount} field.
	*
	* @return an iterator over the elements in this list in proper sequence
	*/
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation returns {@code listIterator(0)}.
	*
	* @see #listIterator(int)
	*/
	@:overload public function listIterator() : java.util.ListIterator<E>;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation returns a straightforward implementation of the
	* {@code ListIterator} interface that extends the implementation of the
	* {@code Iterator} interface returned by the {@code iterator()} method.
	* The {@code ListIterator} implementation relies on the backing list's
	* {@code get(int)}, {@code set(int, E)}, {@code add(int, E)}
	* and {@code remove(int)} methods.
	*
	* <p>Note that the list iterator returned by this implementation will
	* throw an {@link UnsupportedOperationException} in response to its
	* {@code remove}, {@code set} and {@code add} methods unless the
	* list's {@code remove(int)}, {@code set(int, E)}, and
	* {@code add(int, E)} methods are overridden.
	*
	* <p>This implementation can be made to throw runtime exceptions in the
	* face of concurrent modification, as described in the specification for
	* the (protected) {@link #modCount} field.
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function listIterator(index : Int) : java.util.ListIterator<E>;
	
	/**
	* {@inheritDoc}
	*
	* <p>This implementation returns a list that subclasses
	* {@code AbstractList}.  The subclass stores, in private fields, the
	* offset of the subList within the backing list, the size of the subList
	* (which can change over its lifetime), and the expected
	* {@code modCount} value of the backing list.  There are two variants
	* of the subclass, one of which implements {@code RandomAccess}.
	* If this list implements {@code RandomAccess} the returned list will
	* be an instance of the subclass that implements {@code RandomAccess}.
	*
	* <p>The subclass's {@code set(int, E)}, {@code get(int)},
	* {@code add(int, E)}, {@code remove(int)}, {@code addAll(int,
	* Collection)} and {@code removeRange(int, int)} methods all
	* delegate to the corresponding methods on the backing abstract list,
	* after bounds-checking the index and adjusting for the offset.  The
	* {@code addAll(Collection c)} method merely returns {@code addAll(size,
	* c)}.
	*
	* <p>The {@code listIterator(int)} method returns a "wrapper object"
	* over a list iterator on the backing list, which is created with the
	* corresponding method on the backing list.  The {@code iterator} method
	* merely returns {@code listIterator()}, and the {@code size} method
	* merely returns the subclass's {@code size} field.
	*
	* <p>All methods first check to see if the actual {@code modCount} of
	* the backing list is equal to its expected value, and throw a
	* {@code ConcurrentModificationException} if it is not.
	*
	* @throws IndexOutOfBoundsException if an endpoint index value is out of range
	*         {@code (fromIndex < 0 || toIndex > size)}
	* @throws IllegalArgumentException if the endpoint indices are out of order
	*         {@code (fromIndex > toIndex)}
	*/
	@:overload public function subList(fromIndex : Int, toIndex : Int) : java.util.List<E>;
	
	/**
	* Compares the specified object with this list for equality.  Returns
	* {@code true} if and only if the specified object is also a list, both
	* lists have the same size, and all corresponding pairs of elements in
	* the two lists are <i>equal</i>.  (Two elements {@code e1} and
	* {@code e2} are <i>equal</i> if {@code (e1==null ? e2==null :
	* e1.equals(e2))}.)  In other words, two lists are defined to be
	* equal if they contain the same elements in the same order.<p>
	*
	* This implementation first checks if the specified object is this
	* list. If so, it returns {@code true}; if not, it checks if the
	* specified object is a list. If not, it returns {@code false}; if so,
	* it iterates over both lists, comparing corresponding pairs of elements.
	* If any comparison returns {@code false}, this method returns
	* {@code false}.  If either iterator runs out of elements before the
	* other it returns {@code false} (as the lists are of unequal length);
	* otherwise it returns {@code true} when the iterations complete.
	*
	* @param o the object to be compared for equality with this list
	* @return {@code true} if the specified object is equal to this list
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this list.
	*
	* <p>This implementation uses exactly the code that is used to define the
	* list hash function in the documentation for the {@link List#hashCode}
	* method.
	*
	* @return the hash code value for this list
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Removes from this list all of the elements whose index is between
	* {@code fromIndex}, inclusive, and {@code toIndex}, exclusive.
	* Shifts any succeeding elements to the left (reduces their index).
	* This call shortens the list by {@code (toIndex - fromIndex)} elements.
	* (If {@code toIndex==fromIndex}, this operation has no effect.)
	*
	* <p>This method is called by the {@code clear} operation on this list
	* and its subLists.  Overriding this method to take advantage of
	* the internals of the list implementation can <i>substantially</i>
	* improve the performance of the {@code clear} operation on this list
	* and its subLists.
	*
	* <p>This implementation gets a list iterator positioned before
	* {@code fromIndex}, and repeatedly calls {@code ListIterator.next}
	* followed by {@code ListIterator.remove} until the entire range has
	* been removed.  <b>Note: if {@code ListIterator.remove} requires linear
	* time, this implementation requires quadratic time.</b>
	*
	* @param fromIndex index of first element to be removed
	* @param toIndex index after last element to be removed
	*/
	@:overload private function removeRange(fromIndex : Int, toIndex : Int) : Void;
	
	/**
	* The number of times this list has been <i>structurally modified</i>.
	* Structural modifications are those that change the size of the
	* list, or otherwise perturb it in such a fashion that iterations in
	* progress may yield incorrect results.
	*
	* <p>This field is used by the iterator and list iterator implementation
	* returned by the {@code iterator} and {@code listIterator} methods.
	* If the value of this field changes unexpectedly, the iterator (or list
	* iterator) will throw a {@code ConcurrentModificationException} in
	* response to the {@code next}, {@code remove}, {@code previous},
	* {@code set} or {@code add} operations.  This provides
	* <i>fail-fast</i> behavior, rather than non-deterministic behavior in
	* the face of concurrent modification during iteration.
	*
	* <p><b>Use of this field by subclasses is optional.</b> If a subclass
	* wishes to provide fail-fast iterators (and list iterators), then it
	* merely has to increment this field in its {@code add(int, E)} and
	* {@code remove(int)} methods (and any other methods that it overrides
	* that result in structural modifications to the list).  A single call to
	* {@code add(int, E)} or {@code remove(int)} must add no more than
	* one to this field, or the iterators (and list iterators) will throw
	* bogus {@code ConcurrentModificationExceptions}.  If an implementation
	* does not wish to provide fail-fast iterators, this field may be
	* ignored.
	*/
	@:transient private var modCount : Int;
	
	/**
	* Returns an array containing all of the elements in this list in
	* proper sequence (from first to last element); the runtime type of
	* the returned array is that of the specified array.  If the list fits
	* in the specified array, it is returned therein.  Otherwise, a new
	* array is allocated with the runtime type of the specified array and
	* the size of this list.
	*
	* <p>If the list fits in the specified array with room to spare (i.e.,
	* the array has more elements than the list), the element in the array
	* immediately following the end of the list is set to <tt>null</tt>.
	* (This is useful in determining the length of the list <i>only</i> if
	* the caller knows that the list does not contain any null elements.)
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>Suppose <tt>x</tt> is a list known to contain only strings.
	* The following code can be used to dump the list into a newly
	* allocated array of <tt>String</tt>:
	*
	* <pre>
	*     String[] y = x.toArray(new String[0]);</pre>
	*
	* Note that <tt>toArray(new Object[0])</tt> is identical in function to
	* <tt>toArray()</tt>.
	*
	* @param a the array into which the elements of this list are to
	*          be stored, if it is big enough; otherwise, a new array of the
	*          same runtime type is allocated for this purpose.
	* @return an array containing the elements of this list
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this list
	* @throws NullPointerException if the specified array is null
	*/
	@:overload override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* Returns the number of elements in this list.  If this list contains
	* more than <tt>Integer.MAX_VALUE</tt> elements, returns
	* <tt>Integer.MAX_VALUE</tt>.
	*
	* @return the number of elements in this list
	*/
	@:overload override public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this list contains all of the elements of the
	* specified collection.
	*
	* @param  c collection to be checked for containment in this list
	* @return <tt>true</tt> if this list contains all of the elements of the
	*         specified collection
	* @throws ClassCastException if the types of one or more elements
	*         in the specified collection are incompatible with this
	*         list
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified collection contains one
	*         or more null elements and this list does not permit null
	*         elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #contains(Object)
	*/
	@:overload override public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Retains only the elements in this list that are contained in the
	* specified collection (optional operation).  In other words, removes
	* from this list all of its elements that are not contained in the
	* specified collection.
	*
	* @param c collection containing elements to be retained in this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>retainAll</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of an element of this list
	*         is incompatible with the specified collection
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if this list contains a null element and the
	*         specified collection does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	* @see #contains(Object)
	*/
	@:overload override public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Removes from this list all of its elements that are contained in the
	* specified collection (optional operation).
	*
	* @param c collection containing elements to be removed from this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>removeAll</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of an element of this list
	*         is incompatible with the specified collection
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if this list contains a null element and the
	*         specified collection does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	* @see #contains(Object)
	*/
	@:overload override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Appends all of the elements in the specified collection to the end of
	* this list, in the order that they are returned by the specified
	* collection's iterator (optional operation).  The behavior of this
	* operation is undefined if the specified collection is modified while
	* the operation is in progress.  (Note that this will occur if the
	* specified collection is this list, and it's nonempty.)
	*
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>addAll</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of an element of the specified
	*         collection prevents it from being added to this list
	* @throws NullPointerException if the specified collection contains one
	*         or more null elements and this list does not permit null
	*         elements, or if the specified collection is null
	* @throws IllegalArgumentException if some property of an element of the
	*         specified collection prevents it from being added to this list
	* @see #add(Object)
	*/
	@:overload override public function addAll(c : java.util.Collection<E>) : Bool;
	
	/**
	* Returns an array containing all of the elements in this list in proper
	* sequence (from first to last element).
	*
	* <p>The returned array will be "safe" in that no references to it are
	* maintained by this list.  (In other words, this method must
	* allocate a new array even if this list is backed by an array).
	* The caller is thus free to modify the returned array.
	*
	* <p>This method acts as bridge between array-based and collection-based
	* APIs.
	*
	* @return an array containing all of the elements in this list in proper
	*         sequence
	* @see Arrays#asList(Object[])
	*/
	@:overload override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns <tt>true</tt> if this list contains no elements.
	*
	* @return <tt>true</tt> if this list contains no elements
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Removes the first occurrence of the specified element from this list,
	* if it is present (optional operation).  If this list does not contain
	* the element, it is unchanged.  More formally, removes the element with
	* the lowest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o.equals(get(i)))</tt>
	* (if such an element exists).  Returns <tt>true</tt> if this list
	* contained the specified element (or equivalently, if this list changed
	* as a result of the call).
	*
	* @param o element to be removed from this list, if present
	* @return <tt>true</tt> if this list contained the specified element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this list
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws UnsupportedOperationException if the <tt>remove</tt> operation
	*         is not supported by this list
	*/
	@:overload override public function remove(o : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if this list contains the specified element.
	* More formally, returns <tt>true</tt> if and only if this list contains
	* at least one element <tt>e</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;e==null&nbsp;:&nbsp;o.equals(e))</tt>.
	*
	* @param o element whose presence in this list is to be tested
	* @return <tt>true</tt> if this list contains the specified element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this list
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload override public function contains(o : Dynamic) : Bool;
	
	
}
@:native('java$util$AbstractList$Itr') @:internal extern class AbstractList_Itr implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
@:native('java$util$AbstractList$ListItr') @:internal extern class AbstractList_ListItr extends java.util.AbstractList.AbstractList_Itr implements java.util.ListIterator<Dynamic>
{
	@:overload public function hasPrevious() : Bool;
	
	@:overload public function previous() : Dynamic;
	
	@:overload public function nextIndex() : Int;
	
	@:overload public function previousIndex() : Int;
	
	@:overload public function set(e : Dynamic) : Void;
	
	@:overload public function add(e : Dynamic) : Void;
	
	
}
@:internal extern class SubList<E> extends java.util.AbstractList<E>
{
	@:overload override public function set(index : Int, element : E) : E;
	
	@:overload override public function get(index : Int) : E;
	
	@:overload override public function size() : Int;
	
	@:overload override public function add(index : Int, element : E) : Void;
	
	@:overload override public function remove(index : Int) : E;
	
	@:overload override private function removeRange(fromIndex : Int, toIndex : Int) : Void;
	
	@:overload override public function addAll(c : java.util.Collection<E>) : Bool;
	
	@:overload override public function addAll(index : Int, c : java.util.Collection<E>) : Bool;
	
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	@:overload override public function listIterator(index : Int) : java.util.ListIterator<E>;
	
	@:overload override public function subList(fromIndex : Int, toIndex : Int) : java.util.List<E>;
	
	
}
@:internal extern class RandomAccessSubList<E> extends java.util.AbstractList.SubList<E> implements java.util.RandomAccess
{
	@:overload override public function subList(fromIndex : Int, toIndex : Int) : java.util.List<E>;
	
	
}
