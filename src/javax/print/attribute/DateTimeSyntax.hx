package javax.print.attribute;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DateTimeSyntax implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Construct a new date-time attribute with the given
	* <code>java.util.Date </code> value.
	*
	* @param  value   <code>java.util.Date</code> value.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>theValue</CODE> is null.
	*/
	@:overload private function new(value : java.util.Date) : Void;
	
	/**
	* Returns this date-time attribute's <code>java.util.Date</code>
	* value.
	* @return the Date.
	*/
	@:overload public function getValue() : java.util.Date;
	
	/**
	* Returns whether this date-time attribute is equivalent to the passed in
	* object. To be equivalent, all of the following conditions must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class DateTimeSyntax.
	* <LI>
	* This date-time attribute's <code>java.util.Date</code> value and
	* <CODE>object</CODE>'s <code>java.util.Date</code> value are
	* equal. </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this date-time
	*          attribute, false otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this date-time attribute. The hashcode is
	* that of this attribute's <code>java.util.Date</code> value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string value corresponding to this date-time attribute.
	* The string value is just this attribute's
	* <code>java.util.Date</code>  value
	* converted to a string.
	*/
	@:overload public function toString() : String;
	
	
}
