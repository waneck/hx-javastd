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
extern class SetOfIntegerSyntax implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Construct a new set-of-integer attribute with the given members in
	* string form.
	*
	* @param  members  Set members in string form. If null, an empty set is
	*                     constructed.
	*
	* @exception  IllegalArgumentException
	*     (Unchecked exception) Thrown if <CODE>members</CODE> does not
	*    obey  the proper syntax.
	*/
	@:overload private function new(members : String) : Void;
	
	/**
	* Construct a new set-of-integer attribute with the given members in
	* array form.
	*
	* @param  members  Set members in array form. If null, an empty set is
	*                     constructed.
	*
	* @exception  NullPointerException
	*     (Unchecked exception) Thrown if any element of
	*     <CODE>members</CODE> is null.
	* @exception  IllegalArgumentException
	*     (Unchecked exception) Thrown if any element of
	*     <CODE>members</CODE> is not a length-one or length-two array or if
	*     any non-null range in <CODE>members</CODE> has a lower bound less
	*     than zero.
	*/
	@:overload private function new(members : java.NativeArray<java.NativeArray<Int>>) : Void;
	
	/**
	* Construct a new set-of-integer attribute containing a single integer.
	*
	* @param  member  Set member.
	*
	* @exception  IllegalArgumentException
	*     (Unchecked exception) Thrown if <CODE>member</CODE> is less than
	*     zero.
	*/
	@:overload private function new(member : Int) : Void;
	
	/**
	* Construct a new set-of-integer attribute containing a single range of
	* integers. If the lower bound is greater than the upper bound (a null
	* range), an empty set is constructed.
	*
	* @param  lowerBound  Lower bound of the range.
	* @param  upperBound  Upper bound of the range.
	*
	* @exception  IllegalArgumentException
	*     (Unchecked exception) Thrown if the range is non-null and
	*     <CODE>lowerBound</CODE> is less than zero.
	*/
	@:overload private function new(lowerBound : Int, upperBound : Int) : Void;
	
	/**
	* Obtain this set-of-integer attribute's members in canonical array form.
	* The returned array is "safe;" the client may alter it without affecting
	* this set-of-integer attribute.
	*
	* @return  This set-of-integer attribute's members in canonical array form.
	*/
	@:overload public function getMembers() : java.NativeArray<java.NativeArray<Int>>;
	
	/**
	* Determine if this set-of-integer attribute contains the given value.
	*
	* @param  x  Integer value.
	*
	* @return  True if this set-of-integer attribute contains the value
	*          <CODE>x</CODE>, false otherwise.
	*/
	@:overload public function contains(x : Int) : Bool;
	
	/**
	* Determine if this set-of-integer attribute contains the given integer
	* attribute's value.
	*
	* @param  attribute  Integer attribute.
	*
	* @return  True if this set-of-integer attribute contains
	*          <CODE>theAttribute</CODE>'s value, false otherwise.
	*/
	@:overload public function contains(attribute : javax.print.attribute.IntegerSyntax) : Bool;
	
	/**
	* Determine the smallest integer in this set-of-integer attribute that is
	* greater than the given value. If there are no integers in this
	* set-of-integer attribute greater than the given value, <CODE>-1</CODE> is
	* returned. (Since a set-of-integer attribute can only contain nonnegative
	* values, <CODE>-1</CODE> will never appear in the set.) You can use the
	* <CODE>next()</CODE> method to iterate through the integer values in a
	* set-of-integer attribute in ascending order, like this:
	* <PRE>
	*     SetOfIntegerSyntax attribute = . . .;
	*     int i = -1;
	*     while ((i = attribute.next (i)) != -1)
	*         {
	*         foo (i);
	*         }
	* </PRE>
	*
	* @param  x  Integer value.
	*
	* @return  The smallest integer in this set-of-integer attribute that is
	*          greater than <CODE>x</CODE>, or <CODE>-1</CODE> if no integer in
	*          this set-of-integer attribute is greater than <CODE>x</CODE>.
	*/
	@:overload public function next(x : Int) : Int;
	
	/**
	* Returns whether this set-of-integer attribute is equivalent to the passed
	* in object. To be equivalent, all of the following conditions must be
	* true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class SetOfIntegerSyntax.
	* <LI>
	* This set-of-integer attribute's members and <CODE>object</CODE>'s
	* members are the same.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this
	*          set-of-integer attribute, false otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this set-of-integer attribute. The hash
	* code is the sum of the lower and upper bounds of the ranges in the
	* canonical array form, or 0 for an empty set.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string value corresponding to this set-of-integer attribute.
	* The string value is a zero-length string if this set is empty. Otherwise,
	* the string value is a comma-separated list of the ranges in the canonical
	* array form, where each range is represented as <CODE>"<I>i</I>"</CODE> if
	* the lower bound equals the upper bound or
	* <CODE>"<I>i</I>-<I>j</I>"</CODE> otherwise.
	*/
	@:overload public function toString() : String;
	
	
}
