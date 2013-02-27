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
extern class Size2DSyntax implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Value to indicate units of inches (in). It is actually the conversion
	* factor by which to multiply inches to yield &#181;m (25400).
	*/
	public static var INCH(default, null) : Int;
	
	/**
	* Value to indicate units of millimeters (mm). It is actually the
	* conversion factor by which to multiply mm to yield &#181;m (1000).
	*/
	public static var MM(default, null) : Int;
	
	/**
	* Construct a new two-dimensional size attribute from the given
	* floating-point values.
	*
	* @param  x  X dimension.
	* @param  y  Y dimension.
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @exception  IllegalArgumentException
	*     (Unchecked exception) Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE>
	*     < 0 or <CODE>units</CODE> < 1.
	*/
	@:overload private function new(x : Single, y : Single, units : Int) : Void;
	
	/**
	* Construct a new two-dimensional size attribute from the given integer
	* values.
	*
	* @param  x  X dimension.
	* @param  y  Y dimension.
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @exception  IllegalArgumentException
	*   (Unchecked exception) Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE>
	*    < 0 or <CODE>units</CODE> < 1.
	*/
	@:overload private function new(x : Int, y : Int, units : Int) : Void;
	
	/**
	* Get this two-dimensional size attribute's dimensions in the given units
	* as floating-point values.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return  A two-element array with the X dimension at index 0 and the Y
	*          dimension at index 1.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function getSize(units : Int) : java.NativeArray<Single>;
	
	/**
	* Returns this two-dimensional size attribute's X dimension in the given
	* units as a floating-point value.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return  X dimension.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function getX(units : Int) : Single;
	
	/**
	* Returns this two-dimensional size attribute's Y dimension in the given
	* units as a floating-point value.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return  Y dimension.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function getY(units : Int) : Single;
	
	/**
	* Returns a string version of this two-dimensional size attribute in the
	* given units. The string takes the form <CODE>"<I>X</I>x<I>Y</I>
	* <I>U</I>"</CODE>, where <I>X</I> is the X dimension, <I>Y</I> is the Y
	* dimension, and <I>U</I> is the units name. The values are displayed in
	* floating point.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	* @param  unitsName
	*     Units name string, e.g. <CODE>"in"</CODE> or <CODE>"mm"</CODE>. If
	*     null, no units name is appended to the result.
	*
	* @return  String version of this two-dimensional size attribute.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function toString(units : Int, unitsName : String) : String;
	
	/**
	* Returns whether this two-dimensional size attribute is equivalent to the
	* passed in object. To be equivalent, all of the following conditions must
	* be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class Size2DSyntax.
	* <LI>
	* This attribute's X dimension is equal to <CODE>object</CODE>'s X
	* dimension.
	* <LI>
	* This attribute's Y dimension is equal to <CODE>object</CODE>'s Y
	* dimension.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this
	*          two-dimensional size attribute, false otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this two-dimensional size attribute.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string version of this two-dimensional size attribute. The
	* string takes the form <CODE>"<I>X</I>x<I>Y</I> um"</CODE>, where
	* <I>X</I> is the X dimension and <I>Y</I> is the Y dimension.
	* The values are reported in the internal units of micrometers.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns this two-dimensional size attribute's X dimension in units of
	* micrometers (&#181;m). (For use in a subclass.)
	*
	* @return  X dimension (&#181;m).
	*/
	@:overload private function getXMicrometers() : Int;
	
	/**
	* Returns this two-dimensional size attribute's Y dimension in units of
	* micrometers (&#181;m). (For use in a subclass.)
	*
	* @return  Y dimension (&#181;m).
	*/
	@:overload private function getYMicrometers() : Int;
	
	
}
