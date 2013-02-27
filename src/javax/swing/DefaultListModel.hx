package javax.swing;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
* This class loosely implements the <code>java.util.Vector</code>
* API, in that it implements the 1.1.x version of
* <code>java.util.Vector</code>, has no collection class support,
* and notifies the <code>ListDataListener</code>s when changes occur.
* Presently it delegates to a <code>Vector</code>,
* in a future release it will be a real Collection implementation.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @param <E> the type of the elements of this model
*
* @author Hans Muller
*/
extern class DefaultListModel<E> extends javax.swing.AbstractListModel<E>
{
	/**
	* Returns the number of components in this list.
	* <p>
	* This method is identical to <code>size</code>, which implements the
	* <code>List</code> interface defined in the 1.2 Collections framework.
	* This method exists in conjunction with <code>setSize</code> so that
	* <code>size</code> is identifiable as a JavaBean property.
	*
	* @return  the number of components in this list
	* @see #size()
	*/
	@:overload override public function getSize() : Int;
	
	/**
	* Returns the component at the specified index.
	* <blockquote>
	* <b>Note:</b> Although this method is not deprecated, the preferred
	*    method to use is <code>get(int)</code>, which implements the
	*    <code>List</code> interface defined in the 1.2 Collections framework.
	* </blockquote>
	* @param      index   an index into this list
	* @return     the component at the specified index
	* @exception  ArrayIndexOutOfBoundsException  if the <code>index</code>
	*             is negative or greater than the current size of this
	*             list
	* @see #get(int)
	*/
	@:overload override public function getElementAt(index : Int) : E;
	
	/**
	* Copies the components of this list into the specified array.
	* The array must be big enough to hold all the objects in this list,
	* else an <code>IndexOutOfBoundsException</code> is thrown.
	*
	* @param   anArray   the array into which the components get copied
	* @see Vector#copyInto(Object[])
	*/
	@:overload public function copyInto(anArray : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Trims the capacity of this list to be the list's current size.
	*
	* @see Vector#trimToSize()
	*/
	@:overload public function trimToSize() : Void;
	
	/**
	* Increases the capacity of this list, if necessary, to ensure
	* that it can hold at least the number of components specified by
	* the minimum capacity argument.
	*
	* @param   minCapacity   the desired minimum capacity
	* @see Vector#ensureCapacity(int)
	*/
	@:overload public function ensureCapacity(minCapacity : Int) : Void;
	
	/**
	* Sets the size of this list.
	*
	* @param   newSize   the new size of this list
	* @see Vector#setSize(int)
	*/
	@:overload public function setSize(newSize : Int) : Void;
	
	/**
	* Returns the current capacity of this list.
	*
	* @return  the current capacity
	* @see Vector#capacity()
	*/
	@:overload public function capacity() : Int;
	
	/**
	* Returns the number of components in this list.
	*
	* @return  the number of components in this list
	* @see Vector#size()
	*/
	@:overload public function size() : Int;
	
	/**
	* Tests whether this list has any components.
	*
	* @return  <code>true</code> if and only if this list has
	*          no components, that is, its size is zero;
	*          <code>false</code> otherwise
	* @see Vector#isEmpty()
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns an enumeration of the components of this list.
	*
	* @return  an enumeration of the components of this list
	* @see Vector#elements()
	*/
	@:overload public function elements() : java.util.Enumeration<E>;
	
	/**
	* Tests whether the specified object is a component in this list.
	*
	* @param   elem   an object
	* @return  <code>true</code> if the specified object
	*          is the same as a component in this list
	* @see Vector#contains(Object)
	*/
	@:overload public function contains(elem : Dynamic) : Bool;
	
	/**
	* Searches for the first occurrence of <code>elem</code>.
	*
	* @param   elem   an object
	* @return  the index of the first occurrence of the argument in this
	*          list; returns <code>-1</code> if the object is not found
	* @see Vector#indexOf(Object)
	*/
	@:overload public function indexOf(elem : Dynamic) : Int;
	
	/**
	* Searches for the first occurrence of <code>elem</code>, beginning
	* the search at <code>index</code>.
	*
	* @param   elem    an desired component
	* @param   index   the index from which to begin searching
	* @return  the index where the first occurrence of <code>elem</code>
	*          is found after <code>index</code>; returns <code>-1</code>
	*          if the <code>elem</code> is not found in the list
	* @see Vector#indexOf(Object,int)
	*/
	@:overload public function indexOf(elem : Dynamic, index : Int) : Int;
	
	/**
	* Returns the index of the last occurrence of <code>elem</code>.
	*
	* @param   elem   the desired component
	* @return  the index of the last occurrence of <code>elem</code>
	*          in the list; returns <code>-1</code> if the object is not found
	* @see Vector#lastIndexOf(Object)
	*/
	@:overload public function lastIndexOf(elem : Dynamic) : Int;
	
	/**
	* Searches backwards for <code>elem</code>, starting from the
	* specified index, and returns an index to it.
	*
	* @param  elem    the desired component
	* @param  index   the index to start searching from
	* @return the index of the last occurrence of the <code>elem</code>
	*          in this list at position less than <code>index</code>;
	*          returns <code>-1</code> if the object is not found
	* @see Vector#lastIndexOf(Object,int)
	*/
	@:overload public function lastIndexOf(elem : Dynamic, index : Int) : Int;
	
	/**
	* Returns the component at the specified index.
	* Throws an <code>ArrayIndexOutOfBoundsException</code> if the index
	* is negative or not less than the size of the list.
	* <blockquote>
	* <b>Note:</b> Although this method is not deprecated, the preferred
	*    method to use is <code>get(int)</code>, which implements the
	*    <code>List</code> interface defined in the 1.2 Collections framework.
	* </blockquote>
	*
	* @param      index   an index into this list
	* @return     the component at the specified index
	* @see #get(int)
	* @see Vector#elementAt(int)
	*/
	@:overload public function elementAt(index : Int) : E;
	
	/**
	* Returns the first component of this list.
	* Throws a <code>NoSuchElementException</code> if this
	* vector has no components.
	* @return     the first component of this list
	* @see Vector#firstElement()
	*/
	@:overload public function firstElement() : E;
	
	/**
	* Returns the last component of the list.
	* Throws a <code>NoSuchElementException</code> if this vector
	* has no components.
	*
	* @return  the last component of the list
	* @see Vector#lastElement()
	*/
	@:overload public function lastElement() : E;
	
	/**
	* Sets the component at the specified <code>index</code> of this
	* list to be the specified element. The previous component at that
	* position is discarded.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code> if the index
	* is invalid.
	* <blockquote>
	* <b>Note:</b> Although this method is not deprecated, the preferred
	*    method to use is <code>set(int,Object)</code>, which implements the
	*    <code>List</code> interface defined in the 1.2 Collections framework.
	* </blockquote>
	*
	* @param      element what the component is to be set to
	* @param      index   the specified index
	* @see #set(int,Object)
	* @see Vector#setElementAt(Object,int)
	*/
	@:overload public function setElementAt(element : E, index : Int) : Void;
	
	/**
	* Deletes the component at the specified index.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code> if the index
	* is invalid.
	* <blockquote>
	* <b>Note:</b> Although this method is not deprecated, the preferred
	*    method to use is <code>remove(int)</code>, which implements the
	*    <code>List</code> interface defined in the 1.2 Collections framework.
	* </blockquote>
	*
	* @param      index   the index of the object to remove
	* @see #remove(int)
	* @see Vector#removeElementAt(int)
	*/
	@:overload public function removeElementAt(index : Int) : Void;
	
	/**
	* Inserts the specified element as a component in this list at the
	* specified <code>index</code>.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code> if the index
	* is invalid.
	* <blockquote>
	* <b>Note:</b> Although this method is not deprecated, the preferred
	*    method to use is <code>add(int,Object)</code>, which implements the
	*    <code>List</code> interface defined in the 1.2 Collections framework.
	* </blockquote>
	*
	* @param      element the component to insert
	* @param      index   where to insert the new component
	* @exception  ArrayIndexOutOfBoundsException  if the index was invalid
	* @see #add(int,Object)
	* @see Vector#insertElementAt(Object,int)
	*/
	@:overload public function insertElementAt(element : E, index : Int) : Void;
	
	/**
	* Adds the specified component to the end of this list.
	*
	* @param   element   the component to be added
	* @see Vector#addElement(Object)
	*/
	@:overload public function addElement(element : E) : Void;
	
	/**
	* Removes the first (lowest-indexed) occurrence of the argument
	* from this list.
	*
	* @param   obj   the component to be removed
	* @return  <code>true</code> if the argument was a component of this
	*          list; <code>false</code> otherwise
	* @see Vector#removeElement(Object)
	*/
	@:overload public function removeElement(obj : Dynamic) : Bool;
	
	/**
	* Removes all components from this list and sets its size to zero.
	* <blockquote>
	* <b>Note:</b> Although this method is not deprecated, the preferred
	*    method to use is <code>clear</code>, which implements the
	*    <code>List</code> interface defined in the 1.2 Collections framework.
	* </blockquote>
	*
	* @see #clear()
	* @see Vector#removeAllElements()
	*/
	@:overload public function removeAllElements() : Void;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a String representation of this object
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns an array containing all of the elements in this list in the
	* correct order.
	*
	* @return an array containing the elements of the list
	* @see Vector#toArray()
	*/
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns the element at the specified position in this list.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code>
	* if the index is out of range
	* (<code>index &lt; 0 || index &gt;= size()</code>).
	*
	* @param index index of element to return
	*/
	@:overload public function get(index : Int) : E;
	
	/**
	* Replaces the element at the specified position in this list with the
	* specified element.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code>
	* if the index is out of range
	* (<code>index &lt; 0 || index &gt;= size()</code>).
	*
	* @param index index of element to replace
	* @param element element to be stored at the specified position
	* @return the element previously at the specified position
	*/
	@:overload public function set(index : Int, element : E) : E;
	
	/**
	* Inserts the specified element at the specified position in this list.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code> if the
	* index is out of range
	* (<code>index &lt; 0 || index &gt; size()</code>).
	*
	* @param index index at which the specified element is to be inserted
	* @param element element to be inserted
	*/
	@:overload public function add(index : Int, element : E) : Void;
	
	/**
	* Removes the element at the specified position in this list.
	* Returns the element that was removed from the list.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code>
	* if the index is out of range
	* (<code>index &lt; 0 || index &gt;= size()</code>).
	*
	* @param index the index of the element to removed
	* @return the element previously at the specified position
	*/
	@:overload public function remove(index : Int) : E;
	
	/**
	* Removes all of the elements from this list.  The list will
	* be empty after this call returns (unless it throws an exception).
	*/
	@:overload public function clear() : Void;
	
	/**
	* Deletes the components at the specified range of indexes.
	* The removal is inclusive, so specifying a range of (1,5)
	* removes the component at index 1 and the component at index 5,
	* as well as all components in between.
	* <p>
	* Throws an <code>ArrayIndexOutOfBoundsException</code>
	* if the index was invalid.
	* Throws an <code>IllegalArgumentException</code> if
	* <code>fromIndex &gt; toIndex</code>.
	*
	* @param      fromIndex the index of the lower end of the range
	* @param      toIndex   the index of the upper end of the range
	* @see        #remove(int)
	*/
	@:overload public function removeRange(fromIndex : Int, toIndex : Int) : Void;
	
	
}
