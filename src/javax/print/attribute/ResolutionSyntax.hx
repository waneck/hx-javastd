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
extern class ResolutionSyntax implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Value to indicate units of dots per inch (dpi). It is actually the
	* conversion factor by which to multiply dpi to yield dphi (100).
	*/
	public static var DPI(default, null) : Int;
	
	/**
	* Value to indicate units of dots per centimeter (dpcm). It is actually
	* the conversion factor by which to multiply dpcm to yield dphi (254).
	*/
	public static var DPCM(default, null) : Int;
	
	/**
	* Construct a new resolution attribute from the given items.
	*
	* @param  crossFeedResolution
	*     Cross feed direction resolution.
	* @param  feedResolution
	*     Feed direction resolution.
	* @param units
	*     Unit conversion factor, e.g. {@link #DPI <CODE>DPI</CODE>} or
	* {@link    #DPCM <CODE>DPCM</CODE>}.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>crossFeedResolution</CODE> <
	*     1 or <CODE>feedResolution</CODE> < 1 or <CODE>units</CODE> < 1.
	*/
	@:overload public function new(crossFeedResolution : Int, feedResolution : Int, units : Int) : Void;
	
	/**
	* Get this resolution attribute's resolution values in the given units.
	* The values are rounded to the nearest integer.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #DPI <CODE>DPI</CODE>} or
	* {@link   #DPCM <CODE>DPCM</CODE>}.
	*
	* @return  A two-element array with the cross feed direction resolution
	*          at index 0 and the feed direction resolution at index 1.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function getResolution(units : Int) : java.NativeArray<Int>;
	
	/**
	* Returns this resolution attribute's cross feed direction resolution in
	* the given units. The value is rounded to the nearest integer.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #DPI <CODE>DPI</CODE>} or
	* {@link  #DPCM <CODE>DPCM</CODE>}.
	*
	* @return  Cross feed direction resolution.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function getCrossFeedResolution(units : Int) : Int;
	
	/**
	* Returns this resolution attribute's feed direction resolution in the
	* given units. The value is rounded to the nearest integer.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #DPI <CODE>DPI</CODE>} or {@link
	*     #DPCM <CODE>DPCM</CODE>}.
	*
	* @return  Feed direction resolution.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function getFeedResolution(units : Int) : Int;
	
	/**
	* Returns a string version of this resolution attribute in the given units.
	* The string takes the form <CODE>"<I>C</I>x<I>F</I> <I>U</I>"</CODE>,
	* where <I>C</I> is the cross feed direction resolution, <I>F</I> is the
	* feed direction resolution, and <I>U</I> is the units name. The values are
	* rounded to the nearest integer.
	*
	* @param  units
	*     Unit conversion factor, e.g. {@link #DPI <CODE>DPI</CODE>} or {@link
	*     #DPCM <CODE>DPCM</CODE>}.
	* @param  unitsName
	*     Units name string, e.g. <CODE>"dpi"</CODE> or <CODE>"dpcm"</CODE>. If
	*     null, no units name is appended to the result.
	*
	* @return  String version of this resolution attribute.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>units</CODE> < 1.
	*/
	@:overload public function toString(units : Int, unitsName : String) : String;
	
	/**
	* Determine whether this resolution attribute's value is less than or
	* equal to the given resolution attribute's value. This is true if all
	* of the following conditions are true:
	* <UL>
	* <LI>
	* This attribute's cross feed direction resolution is less than or equal to
	* the <CODE>other</CODE> attribute's cross feed direction resolution.
	* <LI>
	* This attribute's feed direction resolution is less than or equal to the
	* <CODE>other</CODE> attribute's feed direction resolution.
	* </UL>
	*
	* @param  other  Resolution attribute to compare with.
	*
	* @return  True if this resolution attribute is less than or equal to the
	*          <CODE>other</CODE> resolution attribute, false otherwise.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>other</CODE> is null.
	*/
	@:overload public function lessThanOrEquals(other : ResolutionSyntax) : Bool;
	
	/**
	* Returns whether this resolution attribute is equivalent to the passed in
	* object. To be equivalent, all of the following conditions must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class ResolutionSyntax.
	* <LI>
	* This attribute's cross feed direction resolution is equal to
	* <CODE>object</CODE>'s cross feed direction resolution.
	* <LI>
	* This attribute's feed direction resolution is equal to
	* <CODE>object</CODE>'s feed direction resolution.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this resolution
	*          attribute, false otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this resolution attribute.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string version of this resolution attribute. The string takes
	* the form <CODE>"<I>C</I>x<I>F</I> dphi"</CODE>, where <I>C</I> is the
	* cross feed direction resolution and <I>F</I> is the feed direction
	* resolution. The values are reported in the internal units of dphi.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns this resolution attribute's cross feed direction resolution in
	* units of dphi. (For use in a subclass.)
	*
	* @return  Cross feed direction resolution.
	*/
	@:overload private function getCrossFeedResolutionDphi() : Int;
	
	/**
	* Returns this resolution attribute's feed direction resolution in units
	* of dphi. (For use in a subclass.)
	*
	* @return  Feed direction resolution.
	*/
	@:overload private function getFeedResolutionDphi() : Int;
	
	
}
