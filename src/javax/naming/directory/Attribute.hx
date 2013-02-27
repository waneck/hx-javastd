package javax.naming.directory;
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
extern interface Attribute extends java.lang.Cloneable extends java.io.Serializable
{
	/**
	* Retrieves an enumeration of the attribute's values.
	* The behaviour of this enumeration is unspecified
	* if the attribute's values are added, changed,
	* or removed while the enumeration is in progress.
	* If the attribute values are ordered, the enumeration's items
	* will be ordered.
	*
	* @return A non-null enumeration of the attribute's values.
	* Each element of the enumeration is a possibly null Object. The object's
	* class is the class of the attribute value. The element is null
	* if the attribute's value is null.
	* If the attribute has zero values, an empty enumeration
	* is returned.
	* @exception NamingException
	*         If a naming exception was encountered while retrieving
	*         the values.
	* @see #isOrdered
	*/
	@:overload public function getAll() : javax.naming.NamingEnumeration<Dynamic>;
	
	/**
	* Retrieves one of this attribute's values.
	* If the attribute has more than one value and is unordered, any one of
	* the values is returned.
	* If the attribute has more than one value and is ordered, the
	* first value is returned.
	*
	* @return A possibly null object representing one of
	*        the attribute's value. It is null if the attribute's value
	*        is null.
	* @exception NamingException
	*         If a naming exception was encountered while retrieving
	*         the value.
	* @exception java.util.NoSuchElementException
	*         If this attribute has no values.
	*/
	@:overload public function get() : Dynamic;
	
	/**
	* Retrieves the number of values in this attribute.
	*
	* @return The nonnegative number of values in this attribute.
	*/
	@:overload public function size() : Int;
	
	/**
	* Retrieves the id of this attribute.
	*
	* @return The id of this attribute. It cannot be null.
	*/
	@:overload public function getID() : String;
	
	/**
	* Determines whether a value is in the attribute.
	* Equality is determined by the implementation, which may use
	* <tt>Object.equals()</tt> or schema information to determine equality.
	*
	* @param attrVal The possibly null value to check. If null, check
	*  whether the attribute has an attribute value whose value is null.
	* @return true if attrVal is one of this attribute's values; false otherwise.
	* @see java.lang.Object#equals
	* @see BasicAttribute#equals
	*/
	@:overload public function contains(attrVal : Dynamic) : Bool;
	
	/**
	* Adds a new value to the attribute.
	* If the attribute values are unordered and
	* <tt>attrVal</tt> is already in the attribute, this method does nothing.
	* If the attribute values are ordered, <tt>attrVal</tt> is added to the end of
	* the list of attribute values.
	*<p>
	* Equality is determined by the implementation, which may use
	* <tt>Object.equals()</tt> or schema information to determine equality.
	*
	* @param attrVal The new possibly null value to add. If null, null
	*  is added as an attribute value.
	* @return true if a value was added; false otherwise.
	*/
	@:overload public function add(attrVal : Dynamic) : Bool;
	
	/**
	* Removes a specified value from the attribute.
	* If <tt>attrval</tt> is not in the attribute, this method does nothing.
	* If the attribute values are ordered, the first occurrence of
	* <tt>attrVal</tt> is removed and attribute values at indices greater
	* than the removed
	* value are shifted up towards the head of the list (and their indices
	* decremented by one).
	*<p>
	* Equality is determined by the implementation, which may use
	* <tt>Object.equals()</tt> or schema information to determine equality.
	*
	* @param attrval The possibly null value to remove from this attribute.
	* If null, remove the attribute value that is null.
	* @return true if the value was removed; false otherwise.
	*/
	@:overload public function remove(attrval : Dynamic) : Bool;
	
	/**
	* Removes all values from this attribute.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Retrieves the syntax definition associated with the attribute.
	* An attribute's syntax definition specifies the format
	* of the attribute's value(s). Note that this is different from
	* the attribute value's representation as a Java object. Syntax
	* definition refers to the directory's notion of <em>syntax</em>.
	*<p>
	* For example, even though a value might be
	* a Java String object, its directory syntax might be "Printable String"
	* or "Telephone Number". Or a value might be a byte array, and its
	* directory syntax is "JPEG" or "Certificate".
	* For example, if this attribute's syntax is "JPEG",
	* this method would return the syntax definition for "JPEG".
	* <p>
	* The information that you can retrieve from a syntax definition
	* is directory-dependent.
	*<p>
	* If an implementation does not support schemas, it should throw
	* OperationNotSupportedException. If an implementation does support
	* schemas, it should define this method to return the appropriate
	* information.
	* @return The attribute's syntax definition. Null if the implementation
	*    supports schemas but this particular attribute does not have
	*    any schema information.
	* @exception OperationNotSupportedException If getting the schema
	*         is not supported.
	* @exception NamingException If a naming exception occurs while getting
	*         the schema.
	*/
	@:overload public function getAttributeSyntaxDefinition() : javax.naming.directory.DirContext;
	
	/**
	* Retrieves the attribute's schema definition.
	* An attribute's schema definition contains information
	* such as whether the attribute is multivalued or single-valued,
	* the matching rules to use when comparing the attribute's values.
	*
	* The information that you can retrieve from an attribute definition
	* is directory-dependent.
	*
	*<p>
	* If an implementation does not support schemas, it should throw
	* OperationNotSupportedException. If an implementation does support
	* schemas, it should define this method to return the appropriate
	* information.
	* @return This attribute's schema definition. Null if the implementation
	*     supports schemas but this particular attribute does not have
	*     any schema information.
	* @exception OperationNotSupportedException If getting the schema
	*         is not supported.
	* @exception NamingException If a naming exception occurs while getting
	*         the schema.
	*/
	@:overload public function getAttributeDefinition() : javax.naming.directory.DirContext;
	
	/**
	* Determines whether this attribute's values are ordered.
	* If an attribute's values are ordered, duplicate values are allowed.
	* If an attribute's values are unordered, they are presented
	* in any order and there are no duplicate values.
	* @return true if this attribute's values are ordered; false otherwise.
	* @see #get(int)
	* @see #remove(int)
	* @see #add(int, java.lang.Object)
	* @see #set(int, java.lang.Object)
	*/
	@:overload public function isOrdered() : Bool;
	
	/**
	* Retrieves the attribute value from the ordered list of attribute values.
	* This method returns the value at the <tt>ix</tt> index of the list of
	* attribute values.
	* If the attribute values are unordered,
	* this method returns the value that happens to be at that index.
	* @param ix The index of the value in the ordered list of attribute values.
	* 0 <= <tt>ix</tt> < <tt>size()</tt>.
	* @return The possibly null attribute value at index <tt>ix</tt>;
	*   null if the attribute value is null.
	* @exception NamingException If a naming exception was encountered while
	* retrieving the value.
	* @exception IndexOutOfBoundsException If <tt>ix</tt> is outside the specified range.
	*/
	@:overload public function get(ix : Int) : Dynamic;
	
	/**
	* Removes an attribute value from the ordered list of attribute values.
	* This method removes the value at the <tt>ix</tt> index of the list of
	* attribute values.
	* If the attribute values are unordered,
	* this method removes the value that happens to be at that index.
	* Values located at indices greater than <tt>ix</tt> are shifted up towards
	* the front of the list (and their indices decremented by one).
	*
	* @param ix The index of the value to remove.
	* 0 <= <tt>ix</tt> < <tt>size()</tt>.
	* @return The possibly null attribute value at index <tt>ix</tt> that was removed;
	*   null if the attribute value is null.
	* @exception IndexOutOfBoundsException If <tt>ix</tt> is outside the specified range.
	*/
	@:overload public function remove(ix : Int) : Dynamic;
	
	/**
	* Adds an attribute value to the ordered list of attribute values.
	* This method adds <tt>attrVal</tt> to the list of attribute values at
	* index <tt>ix</tt>.
	* Values located at indices at or greater than <tt>ix</tt> are
	* shifted down towards the end of the list (and their indices incremented
	* by one).
	* If the attribute values are unordered and already have <tt>attrVal</tt>,
	* <tt>IllegalStateException</tt> is thrown.
	*
	* @param ix The index in the ordered list of attribute values to add the new value.
	* 0 <= <tt>ix</tt> <= <tt>size()</tt>.
	* @param attrVal The possibly null attribute value to add; if null, null is
	* the value added.
	* @exception IndexOutOfBoundsException If <tt>ix</tt> is outside the specified range.
	* @exception IllegalStateException If the attribute values are unordered and
	* <tt>attrVal</tt> is one of those values.
	*/
	@:overload public function add(ix : Int, attrVal : Dynamic) : Void;
	
	/**
	* Sets an attribute value in the ordered list of attribute values.
	* This method sets the value at the <tt>ix</tt> index of the list of
	* attribute values to be <tt>attrVal</tt>. The old value is removed.
	* If the attribute values are unordered,
	* this method sets the value that happens to be at that index
	* to <tt>attrVal</tt>, unless <tt>attrVal</tt> is already one of the values.
	* In that case, <tt>IllegalStateException</tt> is thrown.
	*
	* @param ix The index of the value in the ordered list of attribute values.
	* 0 <= <tt>ix</tt> < <tt>size()</tt>.
	* @param attrVal The possibly null attribute value to use.
	* If null, 'null' replaces the old value.
	* @return The possibly null attribute value at index ix that was replaced.
	*   Null if the attribute value was null.
	* @exception IndexOutOfBoundsException If <tt>ix</tt> is outside the specified range.
	* @exception IllegalStateException If <tt>attrVal</tt> already exists and the
	*    attribute values are unordered.
	*/
	@:overload public function set(ix : Int, attrVal : Dynamic) : Dynamic;
	
	
}
