package javax.print.attribute.standard;
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
extern class MediaPrintableArea implements javax.print.attribute.DocAttribute implements javax.print.attribute.PrintRequestAttribute implements javax.print.attribute.PrintJobAttribute
{
	/**
	* Value to indicate units of inches (in). It is actually the conversion
	* factor by which to multiply inches to yield &#181;m (25400).
	*/
	@:public @:static @:final public static var INCH(default, null) : Int;
	
	/**
	* Value to indicate units of millimeters (mm). It is actually the
	* conversion factor by which to multiply mm to yield &#181;m (1000).
	*/
	@:public @:static @:final public static var MM(default, null) : Int;
	
	/**
	* Constructs a MediaPrintableArea object from floating point values.
	* @param x      printable x
	* @param y      printable y
	* @param w      printable width
	* @param h      printable height
	* @param units  in which the values are expressed.
	*
	* @exception  IllegalArgumentException
	*     Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE> < 0
	*     or <CODE>w</CODE> <= 0 or <CODE>h</CODE> <= 0 or
	*     <CODE>units</CODE> < 1.
	*/
	@:overload @:public public function new(x : Single, y : Single, w : Single, h : Single, units : Int) : Void;
	
	/**
	* Constructs a MediaPrintableArea object from integer values.
	* @param x      printable x
	* @param y      printable y
	* @param w      printable width
	* @param h      printable height
	* @param units  in which the values are expressed.
	*
	* @exception  IllegalArgumentException
	*     Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE> < 0
	*     or <CODE>w</CODE> <= 0 or <CODE>h</CODE> <= 0 or
	*     <CODE>units</CODE> < 1.
	*/
	@:overload @:public public function new(x : Int, y : Int, w : Int, h : Int, units : Int) : Void;
	
	/**
	* Get the printable area as an array of 4 values in the order
	* x, y, w, h. The values returned are in the given units.
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return printable area as array of x, y, w, h in the specified units.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload @:public public function getPrintableArea(units : Int) : java.NativeArray<Single>;
	
	/**
	* Get the x location of the origin of the printable area in the
	* specified units.
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return  x location of the origin of the printable area in the
	* specified units.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload @:public public function getX(units : Int) : Single;
	
	/**
	* Get the y location of the origin of the printable area in the
	* specified units.
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return  y location of the origin of the printable area in the
	* specified units.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload @:public public function getY(units : Int) : Single;
	
	/**
	* Get the width of the printable area in the specified units.
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return  width of the printable area in the specified units.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload @:public public function getWidth(units : Int) : Single;
	
	/**
	* Get the height of the printable area in the specified units.
	* @param  units
	*     Unit conversion factor, e.g. {@link #INCH <CODE>INCH</CODE>} or
	*     {@link #MM <CODE>MM</CODE>}.
	*
	* @return  height of the printable area in the specified units.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload @:public public function getHeight(units : Int) : Single;
	
	/**
	* Returns whether this media margins attribute is equivalent to the passed
	* in object.
	* To be equivalent, all of the following conditions must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class MediaPrintableArea.
	* <LI>
	* The origin and dimensions are the same.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this media margins
	*          attribute, false otherwise.
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class MediaPrintableArea, the category is
	* class MediaPrintableArea itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:public @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class MediaPrintableArea,
	* the category name is <CODE>"media-printable-area"</CODE>.
	* <p>This is not an IPP V1.1 attribute.
	*
	* @return  Attribute category name.
	*/
	@:overload @:public @:final public function getName() : String;
	
	/**
	* Returns a string version of this rectangular size attribute in the
	* given units.
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
	@:overload @:public public function toString(units : Int, unitsName : String) : String;
	
	/**
	* Returns a string version of this rectangular size attribute in mm.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a hash code value for this attribute.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
