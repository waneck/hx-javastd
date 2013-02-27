package com.sun.corba.se.spi.ior;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class TaggedProfileTemplateBase extends com.sun.corba.se.spi.ior.IdentifiableContainerBase implements com.sun.corba.se.spi.ior.TaggedProfileTemplate
{
	@:overload public function write(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload public function getIOPComponents(orb : com.sun.corba.se.spi.orb.ORB, id : Int) : java.NativeArray<org.omg.IOP.TaggedComponent>;
	
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
	* @param e element to be appended to this list
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	* @throws UnsupportedOperationException if the <tt>add</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this list
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	* @throws IllegalArgumentException if some property of this element
	*         prevents it from being added to this list
	*/
	@:overload override public function add(e : Dynamic) : Bool;
	
	/**
	* Returns the number of elements in this list.  If this list contains
	* more than <tt>Integer.MAX_VALUE</tt> elements, returns
	* <tt>Integer.MAX_VALUE</tt>.
	*
	* @return the number of elements in this list
	*/
	@:overload override public function size() : Int;
	
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
	@:overload @:public @:public public function retainAll(c : Collection<Dynamic>) : Bool;
	
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
	* Replaces the element at the specified position in this list with the
	* specified element (optional operation).
	*
	* @param index index of the element to replace
	* @param element element to be stored at the specified position
	* @return the element previously at the specified position
	* @throws UnsupportedOperationException if the <tt>set</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this list
	* @throws NullPointerException if the specified element is null and
	*         this list does not permit null elements
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt;= size()</tt>)
	*/
	@:overload override public function set(index : Int, element : Dynamic) : Dynamic;
	
	/** Return the (type) identity of this entity.
	* @return int
	*/
	@:overload @:public public function getId() : Int;
	
	/**
	* Returns <tt>true</tt> if this list contains no elements.
	*
	* @return <tt>true</tt> if this list contains no elements
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Returns the element at the specified position in this list.
	*
	* @param index index of the element to return
	* @return the element at the specified position in this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt;= size()</tt>)
	*/
	@:overload override public function get(index : Int) : Dynamic;
	
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
	@:overload @:public public function addAll(c : Collection<Dynamic>) : Bool;
	
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
	* Removes all of the elements from this list (optional operation).
	* The list will be empty after this call returns.
	*
	* @throws UnsupportedOperationException if the <tt>clear</tt> operation
	*         is not supported by this list
	*/
	@:overload override public function clear() : Void;
	
	/** Return an iterator that iterates over tagged components with
	* identifier id.  It is not possible to modify the list through this
	* iterator.
	*/
	@:overload override public function iteratorById(id : Int) : java.util.Iterator<Dynamic>;
	
	/** Return true if temp is equivalent to this template.  Equivalence
	* means that in some sense an invocation on a profile created by this
	* template has the same results as an invocation on a profile
	* created from temp.  Equivalence may be weaker than equality.
	*/
	@:overload public function isEquivalent(temp : TaggedProfileTemplate) : Bool;
	
	/**
	* Returns the index of the last occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the highest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o.equals(get(i)))</tt>,
	* or -1 if there is no such index.
	*
	* @param o element to search for
	* @return the index of the last occurrence of the specified element in
	*         this list, or -1 if this list does not contain the element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this list
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload override public function lastIndexOf(o : Dynamic) : Int;
	
	/** Write the profile create( oktemp, id ) to the OutputStream os.
	*/
	@:overload public function write(oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, id : com.sun.corba.se.spi.ior.ObjectId, os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
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
	
	/**
	* Returns the index of the first occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the lowest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o.equals(get(i)))</tt>,
	* or -1 if there is no such index.
	*
	* @param o element to search for
	* @return the index of the first occurrence of the specified element in
	*         this list, or -1 if this list does not contain the element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this list
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload override public function indexOf(o : Dynamic) : Int;
	
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
	
	@:overload override public function makeImmutable() : Void;
	
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
	@:overload @:public @:public public function removeAll(c : Collection<Dynamic>) : Bool;
	
	/**
	* Inserts all of the elements in the specified collection into this
	* list at the specified position (optional operation).  Shifts the
	* element currently at that position (if any) and any subsequent
	* elements to the right (increases their indices).  The new elements
	* will appear in this list in the order that they are returned by the
	* specified collection's iterator.  The behavior of this operation is
	* undefined if the specified collection is modified while the
	* operation is in progress.  (Note that this will occur if the specified
	* collection is this list, and it's nonempty.)
	*
	* @param index index at which to insert the first element from the
	*              specified collection
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
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt; size()</tt>)
	*/
	@:overload override public function addAll(index : Int, c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Returns a list iterator over the elements in this list (in proper
	* sequence), starting at the specified position in the list.
	* The specified index indicates the first element that would be
	* returned by an initial call to {@link ListIterator#next next}.
	* An initial call to {@link ListIterator#previous previous} would
	* return the element with the specified index minus one.
	*
	* @param index index of the first element to be returned from the
	*        list iterator (by a call to {@link ListIterator#next next})
	* @return a list iterator over the elements in this list (in proper
	*         sequence), starting at the specified position in the list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         ({@code index < 0 || index > size()})
	*/
	@:overload override public function listIterator(index : Int) : java.util.ListIterator<Dynamic>;
	
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
	@:overload override public function addAll(c : java.util.Collection<Dynamic>) : Bool;
	
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
	* Returns a list iterator over the elements in this list (in proper
	* sequence).
	*
	* @return a list iterator over the elements in this list (in proper
	*         sequence)
	*/
	@:overload override public function listIterator() : java.util.ListIterator<Dynamic>;
	
	/**
	* Returns a view of the portion of this list between the specified
	* <tt>fromIndex</tt>, inclusive, and <tt>toIndex</tt>, exclusive.  (If
	* <tt>fromIndex</tt> and <tt>toIndex</tt> are equal, the returned list is
	* empty.)  The returned list is backed by this list, so non-structural
	* changes in the returned list are reflected in this list, and vice-versa.
	* The returned list supports all of the optional list operations supported
	* by this list.<p>
	*
	* This method eliminates the need for explicit range operations (of
	* the sort that commonly exist for arrays).  Any operation that expects
	* a list can be used as a range operation by passing a subList view
	* instead of a whole list.  For example, the following idiom
	* removes a range of elements from a list:
	* <pre>
	*      list.subList(from, to).clear();
	* </pre>
	* Similar idioms may be constructed for <tt>indexOf</tt> and
	* <tt>lastIndexOf</tt>, and all of the algorithms in the
	* <tt>Collections</tt> class can be applied to a subList.<p>
	*
	* The semantics of the list returned by this method become undefined if
	* the backing list (i.e., this list) is <i>structurally modified</i> in
	* any way other than via the returned list.  (Structural modifications are
	* those that change the size of this list, or otherwise perturb it in such
	* a fashion that iterations in progress may yield incorrect results.)
	*
	* @param fromIndex low endpoint (inclusive) of the subList
	* @param toIndex high endpoint (exclusive) of the subList
	* @return a view of the specified range within this list
	* @throws IndexOutOfBoundsException for an illegal endpoint index value
	*         (<tt>fromIndex &lt; 0 || toIndex &gt; size ||
	*         fromIndex &gt; toIndex</tt>)
	*/
	@:overload override public function subList(fromIndex : Int, toIndex : Int) : List<Dynamic>;
	
	@:overload public function writeContents(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	/** Create a TaggedProfile from this template.
	*/
	@:overload public function create(oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, id : com.sun.corba.se.spi.ior.ObjectId) : com.sun.corba.se.spi.ior.TaggedProfile;
	
	/**
	* Inserts the specified element at the specified position in this list
	* (optional operation).  Shifts the element currently at that position
	* (if any) and any subsequent elements to the right (adds one to their
	* indices).
	*
	* @param index index at which the specified element is to be inserted
	* @param element element to be inserted
	* @throws UnsupportedOperationException if the <tt>add</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this list
	* @throws NullPointerException if the specified element is null and
	*         this list does not permit null elements
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt; size()</tt>)
	*/
	@:overload override public function add(index : Int, element : Dynamic) : Void;
	
	/**
	* Removes the element at the specified position in this list (optional
	* operation).  Shifts any subsequent elements to the left (subtracts one
	* from their indices).  Returns the element that was removed from the
	* list.
	*
	* @param index the index of the element to be removed
	* @return the element previously at the specified position
	* @throws UnsupportedOperationException if the <tt>remove</tt> operation
	*         is not supported by this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt;= size()</tt>)
	*/
	@:overload override public function remove(index : Int) : Dynamic;
	
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
	@:overload @:public @:public public function containsAll(c : Collection<Dynamic>) : Bool;
	
	/**
	* Returns an iterator over the elements in this list in proper sequence.
	*
	* @return an iterator over the elements in this list in proper sequence
	*/
	@:overload override public function iterator() : java.util.Iterator<Dynamic>;
	
	
}
