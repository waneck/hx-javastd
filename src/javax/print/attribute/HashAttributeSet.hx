package javax.print.attribute;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class HashAttributeSet implements javax.print.attribute.AttributeSet implements java.io.Serializable
{
	/**
	* Construct a new, empty attribute set.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a new attribute set,
	* initially populated with the given attribute.
	*
	* @param  attribute  Attribute value to add to the set.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>attribute</CODE> is null.
	*/
	@:overload public function new(attribute : javax.print.attribute.Attribute) : Void;
	
	/**
	* Construct a new attribute set,
	* initially populated with the values from the
	* given array. The new attribute set is populated by
	* adding the elements of <CODE>attributes</CODE> array to the set in
	* sequence, starting at index 0. Thus, later array elements may replace
	* earlier array elements if the array contains duplicate attribute
	* values or attribute categories.
	*
	* @param  attributes  Array of attribute values to add to the set.
	*                    If null, an empty attribute set is constructed.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if any element of
	*     <CODE>attributes</CODE> is null.
	*/
	@:overload public function new(attributes : java.NativeArray<javax.print.attribute.Attribute>) : Void;
	
	/**
	* Construct a new attribute set,
	* initially populated with the values from the  given set.
	*
	* @param  attributes Set of attributes from which to initialise this set.
	*                 If null, an empty attribute set is constructed.
	*
	*/
	@:overload public function new(attributes : javax.print.attribute.AttributeSet) : Void;
	
	/**
	* Construct a new, empty attribute set, where the members of
	* the attribute set are restricted to the given interface.
	*
	* @param  interfaceName  The interface of which all members of this
	*                     attribute set must be an instance. It is assumed to
	*                     be interface {@link Attribute Attribute} or a
	*                     subinterface thereof.
	* @exception NullPointerException if interfaceName is null.
	*/
	@:overload private function new(interfaceName : Class<Dynamic>) : Void;
	
	/**
	* Construct a new attribute set, initially populated with the given
	* attribute, where the members of the attribute set are restricted to the
	* given interface.
	*
	* @param  attribute      Attribute value to add to the set.
	* @param  interfaceName  The interface of which all members of this
	*                    attribute set must be an instance. It is assumed to
	*                    be interface {@link Attribute Attribute} or a
	*                    subinterface thereof.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>attribute</CODE> is null.
	* @exception NullPointerException if interfaceName is null.
	* @exception  ClassCastException
	*     (unchecked exception) Thrown if <CODE>attribute</CODE> is not an
	*     instance of <CODE>interfaceName</CODE>.
	*/
	@:overload private function new(attribute : javax.print.attribute.Attribute, interfaceName : Class<Dynamic>) : Void;
	
	/**
	* Construct a new attribute set, where the members of the attribute
	* set are restricted to the given interface.
	* The new attribute set is populated
	* by adding the elements of <CODE>attributes</CODE> array to the set in
	* sequence, starting at index 0. Thus, later array elements may replace
	* earlier array elements if the array contains duplicate attribute
	* values or attribute categories.
	*
	* @param  attributes Array of attribute values to add to the set. If
	*                    null, an empty attribute set is constructed.
	* @param  interfaceName  The interface of which all members of this
	*                    attribute set must be an instance. It is assumed to
	*                    be interface {@link Attribute Attribute} or a
	*                    subinterface thereof.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if any element of
	* <CODE>attributes</CODE> is null.
	* @exception NullPointerException if interfaceName is null.
	* @exception  ClassCastException
	*     (unchecked exception) Thrown if any element of
	* <CODE>attributes</CODE> is not an instance of
	* <CODE>interfaceName</CODE>.
	*/
	@:overload private function new(attributes : java.NativeArray<javax.print.attribute.Attribute>, interfaceName : Class<Dynamic>) : Void;
	
	/**
	* Construct a new attribute set, initially populated with the
	* values from the  given set where the members of the attribute
	* set are restricted to the given interface.
	*
	* @param  attributes set of attribute values to initialise the set. If
	*                    null, an empty attribute set is constructed.
	* @param  interfaceName  The interface of which all members of this
	*                    attribute set must be an instance. It is assumed to
	*                    be interface {@link Attribute Attribute} or a
	*                    subinterface thereof.
	*
	* @exception  ClassCastException
	*     (unchecked exception) Thrown if any element of
	* <CODE>attributes</CODE> is not an instance of
	* <CODE>interfaceName</CODE>.
	*/
	@:overload private function new(attributes : javax.print.attribute.AttributeSet, interfaceName : Class<Dynamic>) : Void;
	
	/**
	* Returns the attribute value which this attribute set contains in the
	* given attribute category. Returns <tt>null</tt> if this attribute set
	* does not contain any attribute value in the given attribute category.
	*
	* @param  category  Attribute category whose associated attribute value
	*                   is to be returned. It must be a
	*                   {@link java.lang.Class Class}
	*                   that implements interface {@link Attribute
	*                   Attribute}.
	*
	* @return  The attribute value in the given attribute category contained
	*          in this attribute set, or <tt>null</tt> if this attribute set
	*          does not contain any attribute value in the given attribute
	*          category.
	*
	* @throws  NullPointerException
	*     (unchecked exception) Thrown if the <CODE>category</CODE> is null.
	* @throws  ClassCastException
	*     (unchecked exception) Thrown if the <CODE>category</CODE> is not a
	*     {@link java.lang.Class Class} that implements interface {@link
	*     Attribute Attribute}.
	*/
	@:overload public function get(category : Class<Dynamic>) : javax.print.attribute.Attribute;
	
	/**
	* Adds the specified attribute to this attribute set if it is not
	* already present, first removing any existing in the same
	* attribute category as the specified attribute value.
	*
	* @param  attribute  Attribute value to be added to this attribute set.
	*
	* @return  <tt>true</tt> if this attribute set changed as a result of the
	*          call, i.e., the given attribute value was not already a
	*          member of this attribute set.
	*
	* @throws  NullPointerException
	*    (unchecked exception) Thrown if the <CODE>attribute</CODE> is null.
	* @throws  UnmodifiableSetException
	*    (unchecked exception) Thrown if this attribute set does not support
	*     the <CODE>add()</CODE> operation.
	*/
	@:overload public function add(attribute : javax.print.attribute.Attribute) : Bool;
	
	/**
	* Removes any attribute for this category from this attribute set if
	* present. If <CODE>category</CODE> is null, then
	* <CODE>remove()</CODE> does nothing and returns <tt>false</tt>.
	*
	* @param  category Attribute category to be removed from this
	*                  attribute set.
	*
	* @return  <tt>true</tt> if this attribute set changed as a result of the
	*         call, i.e., the given attribute category had been a member of
	*         this attribute set.
	*
	* @throws  UnmodifiableSetException
	*     (unchecked exception) Thrown if this attribute set does not
	*     support the <CODE>remove()</CODE> operation.
	*/
	@:overload public function remove(category : Class<Dynamic>) : Bool;
	
	/**
	* Removes the specified attribute from this attribute set if
	* present. If <CODE>attribute</CODE> is null, then
	* <CODE>remove()</CODE> does nothing and returns <tt>false</tt>.
	*
	* @param attribute Attribute value to be removed from this attribute set.
	*
	* @return  <tt>true</tt> if this attribute set changed as a result of the
	*         call, i.e., the given attribute value had been a member of
	*         this attribute set.
	*
	* @throws  UnmodifiableSetException
	*     (unchecked exception) Thrown if this attribute set does not
	*     support the <CODE>remove()</CODE> operation.
	*/
	@:overload public function remove(attribute : javax.print.attribute.Attribute) : Bool;
	
	/**
	* Returns <tt>true</tt> if this attribute set contains an
	* attribute for the specified category.
	*
	* @param  category whose presence in this attribute set is
	*            to be tested.
	*
	* @return  <tt>true</tt> if this attribute set contains an attribute
	*         value for the specified category.
	*/
	@:overload public function containsKey(category : Class<Dynamic>) : Bool;
	
	/**
	* Returns <tt>true</tt> if this attribute set contains the given
	* attribute.
	*
	* @param  attribute  value whose presence in this attribute set is
	*            to be tested.
	*
	* @return  <tt>true</tt> if this attribute set contains the given
	*      attribute    value.
	*/
	@:overload public function containsValue(attribute : javax.print.attribute.Attribute) : Bool;
	
	/**
	* Adds all of the elements in the specified set to this attribute.
	* The outcome is the same as if the
	* {@link #add(Attribute) <CODE>add(Attribute)</CODE>}
	* operation had been applied to this attribute set successively with
	* each element from the specified set.
	* The behavior of the <CODE>addAll(AttributeSet)</CODE>
	* operation is unspecified if the specified set is modified while
	* the operation is in progress.
	* <P>
	* If the <CODE>addAll(AttributeSet)</CODE> operation throws an exception,
	* the effect on this attribute set's state is implementation dependent;
	* elements from the specified set before the point of the exception may
	* or may not have been added to this attribute set.
	*
	* @param  attributes  whose elements are to be added to this attribute
	*            set.
	*
	* @return  <tt>true</tt> if this attribute set changed as a result of the
	*          call.
	*
	* @throws  UnmodifiableSetException
	*    (Unchecked exception) Thrown if this attribute set does not
	*     support the <tt>addAll(AttributeSet)</tt> method.
	* @throws  NullPointerException
	*     (Unchecked exception) Thrown if some element in the specified
	*     set is null, or the set is null.
	*
	* @see #add(Attribute)
	*/
	@:overload public function addAll(attributes : javax.print.attribute.AttributeSet) : Bool;
	
	/**
	* Returns the number of attributes in this attribute set. If this
	* attribute set contains more than <tt>Integer.MAX_VALUE</tt> elements,
	* returns  <tt>Integer.MAX_VALUE</tt>.
	*
	* @return  The number of attributes in this attribute set.
	*/
	@:overload public function size() : Int;
	
	/**
	*
	* @return the Attributes contained in this set as an array, zero length
	* if the AttributeSet is empty.
	*/
	@:overload public function toArray() : java.NativeArray<javax.print.attribute.Attribute>;
	
	/**
	* Removes all attributes from this attribute set.
	*
	* @throws  UnmodifiableSetException
	*   (unchecked exception) Thrown if this attribute set does not support
	*     the <CODE>clear()</CODE> operation.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns true if this attribute set contains no attributes.
	*
	* @return true if this attribute set contains no attributes.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Compares the specified object with this attribute set for equality.
	* Returns <tt>true</tt> if the given object is also an attribute set and
	* the two attribute sets contain the same attribute category-attribute
	* value mappings. This ensures that the
	* <tt>equals()</tt> method works properly across different
	* implementations of the AttributeSet interface.
	*
	* @param  object to be compared for equality with this attribute set.
	*
	* @return  <tt>true</tt> if the specified object is equal to this
	*       attribute   set.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this attribute set.
	* The hash code of an attribute set is defined to be the sum
	* of the hash codes of each entry in the AttributeSet.
	* This ensures that <tt>t1.equals(t2)</tt> implies that
	* <tt>t1.hashCode()==t2.hashCode()</tt> for any two attribute sets
	* <tt>t1</tt> and <tt>t2</tt>, as required by the general contract of
	* {@link java.lang.Object#hashCode() <CODE>Object.hashCode()</CODE>}.
	*
	* @return  The hash code value for this attribute set.
	*/
	@:overload public function hashCode() : Int;
	
	
}
