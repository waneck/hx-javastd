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
extern class IntegerSyntax implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Construct a new integer attribute with the given integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload private function new(value : Int) : Void;
	
	/**
	* Construct a new integer attribute with the given integer value, which
	* must lie within the given range.
	*
	* @param  value       Integer value.
	* @param  lowerBound  Lower bound.
	* @param  upperBound  Upper bound.
	*
	* @exception  IllegalArgumentException
	*     (Unchecked exception) Thrown if <CODE>value</CODE> is less than
	*     <CODE>lowerBound</CODE> or greater than
	*     <CODE>upperBound</CODE>.
	*/
	@:overload private function new(value : Int, lowerBound : Int, upperBound : Int) : Void;
	
	/**
	* Returns this integer attribute's integer value.
	* @return the integer value
	*/
	@:overload public function getValue() : Int;
	
	/**
	* Returns whether this integer attribute is equivalent to the passed in
	* object. To be equivalent, all of the following conditions must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class IntegerSyntax.
	* <LI>
	* This integer attribute's value and <CODE>object</CODE>'s value are
	* equal.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this integer
	*          attribute, false otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this integer attribute. The hash code is
	* just this integer attribute's integer value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string value corresponding to this integer attribute. The
	* string value is just this integer attribute's integer value converted to
	* a string.
	*/
	@:overload public function toString() : String;
	
	
}
