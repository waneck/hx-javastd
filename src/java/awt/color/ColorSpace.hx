package java.awt.color;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**********************************************************************
**********************************************************************
**********************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997                      ***
*** As  an unpublished  work pursuant to Title 17 of the United    ***
*** States Code.  All rights reserved.                             ***
**********************************************************************
**********************************************************************
**********************************************************************/
extern class ColorSpace implements java.io.Serializable
{
	/**
	* Any of the family of XYZ color spaces.
	*/
	public static var TYPE_XYZ(default, null) : Int;
	
	/**
	* Any of the family of Lab color spaces.
	*/
	public static var TYPE_Lab(default, null) : Int;
	
	/**
	* Any of the family of Luv color spaces.
	*/
	public static var TYPE_Luv(default, null) : Int;
	
	/**
	* Any of the family of YCbCr color spaces.
	*/
	public static var TYPE_YCbCr(default, null) : Int;
	
	/**
	* Any of the family of Yxy color spaces.
	*/
	public static var TYPE_Yxy(default, null) : Int;
	
	/**
	* Any of the family of RGB color spaces.
	*/
	public static var TYPE_RGB(default, null) : Int;
	
	/**
	* Any of the family of GRAY color spaces.
	*/
	public static var TYPE_GRAY(default, null) : Int;
	
	/**
	* Any of the family of HSV color spaces.
	*/
	public static var TYPE_HSV(default, null) : Int;
	
	/**
	* Any of the family of HLS color spaces.
	*/
	public static var TYPE_HLS(default, null) : Int;
	
	/**
	* Any of the family of CMYK color spaces.
	*/
	public static var TYPE_CMYK(default, null) : Int;
	
	/**
	* Any of the family of CMY color spaces.
	*/
	public static var TYPE_CMY(default, null) : Int;
	
	/**
	* Generic 2 component color spaces.
	*/
	public static var TYPE_2CLR(default, null) : Int;
	
	/**
	* Generic 3 component color spaces.
	*/
	public static var TYPE_3CLR(default, null) : Int;
	
	/**
	* Generic 4 component color spaces.
	*/
	public static var TYPE_4CLR(default, null) : Int;
	
	/**
	* Generic 5 component color spaces.
	*/
	public static var TYPE_5CLR(default, null) : Int;
	
	/**
	* Generic 6 component color spaces.
	*/
	public static var TYPE_6CLR(default, null) : Int;
	
	/**
	* Generic 7 component color spaces.
	*/
	public static var TYPE_7CLR(default, null) : Int;
	
	/**
	* Generic 8 component color spaces.
	*/
	public static var TYPE_8CLR(default, null) : Int;
	
	/**
	* Generic 9 component color spaces.
	*/
	public static var TYPE_9CLR(default, null) : Int;
	
	/**
	* Generic 10 component color spaces.
	*/
	public static var TYPE_ACLR(default, null) : Int;
	
	/**
	* Generic 11 component color spaces.
	*/
	public static var TYPE_BCLR(default, null) : Int;
	
	/**
	* Generic 12 component color spaces.
	*/
	public static var TYPE_CCLR(default, null) : Int;
	
	/**
	* Generic 13 component color spaces.
	*/
	public static var TYPE_DCLR(default, null) : Int;
	
	/**
	* Generic 14 component color spaces.
	*/
	public static var TYPE_ECLR(default, null) : Int;
	
	/**
	* Generic 15 component color spaces.
	*/
	public static var TYPE_FCLR(default, null) : Int;
	
	/**
	* The sRGB color space defined at
	* <A href="http://www.w3.org/pub/WWW/Graphics/Color/sRGB.html">
	* http://www.w3.org/pub/WWW/Graphics/Color/sRGB.html
	* </A>.
	*/
	public static var CS_sRGB(default, null) : Int;
	
	/**
	* A built-in linear RGB color space.  This space is based on the
	* same RGB primaries as CS_sRGB, but has a linear tone reproduction curve.
	*/
	public static var CS_LINEAR_RGB(default, null) : Int;
	
	/**
	* The CIEXYZ conversion color space defined above.
	*/
	public static var CS_CIEXYZ(default, null) : Int;
	
	/**
	* The Photo YCC conversion color space.
	*/
	public static var CS_PYCC(default, null) : Int;
	
	/**
	* The built-in linear gray scale color space.
	*/
	public static var CS_GRAY(default, null) : Int;
	
	/**
	* Constructs a ColorSpace object given a color space type
	* and the number of components.
	* @param type one of the <CODE>ColorSpace</CODE> type constants
	* @param numcomponents the number of components in the color space
	*/
	@:overload private function new(type : Int, numcomponents : Int) : Void;
	
	/**
	* Returns a ColorSpace representing one of the specific
	* predefined color spaces.
	* @param colorspace a specific color space identified by one of
	*        the predefined class constants (e.g. CS_sRGB, CS_LINEAR_RGB,
	*        CS_CIEXYZ, CS_GRAY, or CS_PYCC)
	* @return the requested <CODE>ColorSpace</CODE> object
	*/
	@:overload public static function getInstance(colorspace : Int) : ColorSpace;
	
	/**
	* Returns true if the ColorSpace is CS_sRGB.
	* @return <CODE>true</CODE> if this is a <CODE>CS_sRGB</CODE> color
	*         space, <code>false</code> if it is not
	*/
	@:overload public function isCS_sRGB() : Bool;
	
	/**
	* Transforms a color value assumed to be in this ColorSpace
	* into a value in the default CS_sRGB color space.
	* <p>
	* This method transforms color values using algorithms designed
	* to produce the best perceptual match between input and output
	* colors.  In order to do colorimetric conversion of color values,
	* you should use the <code>toCIEXYZ</code>
	* method of this color space to first convert from the input
	* color space to the CS_CIEXYZ color space, and then use the
	* <code>fromCIEXYZ</code> method of the CS_sRGB color space to
	* convert from CS_CIEXYZ to the output color space.
	* See {@link #toCIEXYZ(float[]) toCIEXYZ} and
	* {@link #fromCIEXYZ(float[]) fromCIEXYZ} for further information.
	* <p>
	* @param colorvalue a float array with length of at least the number
	*        of components in this ColorSpace
	* @return a float array of length 3
	* @throws ArrayIndexOutOfBoundsException if array length is not
	*         at least the number of components in this ColorSpace
	*/
	@:overload @:abstract public function toRGB(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Transforms a color value assumed to be in the default CS_sRGB
	* color space into this ColorSpace.
	* <p>
	* This method transforms color values using algorithms designed
	* to produce the best perceptual match between input and output
	* colors.  In order to do colorimetric conversion of color values,
	* you should use the <code>toCIEXYZ</code>
	* method of the CS_sRGB color space to first convert from the input
	* color space to the CS_CIEXYZ color space, and then use the
	* <code>fromCIEXYZ</code> method of this color space to
	* convert from CS_CIEXYZ to the output color space.
	* See {@link #toCIEXYZ(float[]) toCIEXYZ} and
	* {@link #fromCIEXYZ(float[]) fromCIEXYZ} for further information.
	* <p>
	* @param rgbvalue a float array with length of at least 3
	* @return a float array with length equal to the number of
	*         components in this ColorSpace
	* @throws ArrayIndexOutOfBoundsException if array length is not
	*         at least 3
	*/
	@:overload @:abstract public function fromRGB(rgbvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Transforms a color value assumed to be in this ColorSpace
	* into the CS_CIEXYZ conversion color space.
	* <p>
	* This method transforms color values using relative colorimetry,
	* as defined by the International Color Consortium standard.  This
	* means that the XYZ values returned by this method are represented
	* relative to the D50 white point of the CS_CIEXYZ color space.
	* This representation is useful in a two-step color conversion
	* process in which colors are transformed from an input color
	* space to CS_CIEXYZ and then to an output color space.  This
	* representation is not the same as the XYZ values that would
	* be measured from the given color value by a colorimeter.
	* A further transformation is necessary to compute the XYZ values
	* that would be measured using current CIE recommended practices.
	* See the {@link ICC_ColorSpace#toCIEXYZ(float[]) toCIEXYZ} method of
	* <code>ICC_ColorSpace</code> for further information.
	* <p>
	* @param colorvalue a float array with length of at least the number
	*        of components in this ColorSpace
	* @return a float array of length 3
	* @throws ArrayIndexOutOfBoundsException if array length is not
	*         at least the number of components in this ColorSpace.
	*/
	@:overload @:abstract public function toCIEXYZ(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Transforms a color value assumed to be in the CS_CIEXYZ conversion
	* color space into this ColorSpace.
	* <p>
	* This method transforms color values using relative colorimetry,
	* as defined by the International Color Consortium standard.  This
	* means that the XYZ argument values taken by this method are represented
	* relative to the D50 white point of the CS_CIEXYZ color space.
	* This representation is useful in a two-step color conversion
	* process in which colors are transformed from an input color
	* space to CS_CIEXYZ and then to an output color space.  The color
	* values returned by this method are not those that would produce
	* the XYZ value passed to the method when measured by a colorimeter.
	* If you have XYZ values corresponding to measurements made using
	* current CIE recommended practices, they must be converted to D50
	* relative values before being passed to this method.
	* See the {@link ICC_ColorSpace#fromCIEXYZ(float[]) fromCIEXYZ} method of
	* <code>ICC_ColorSpace</code> for further information.
	* <p>
	* @param colorvalue a float array with length of at least 3
	* @return a float array with length equal to the number of
	*         components in this ColorSpace
	* @throws ArrayIndexOutOfBoundsException if array length is not
	*         at least 3
	*/
	@:overload @:abstract public function fromCIEXYZ(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns the color space type of this ColorSpace (for example
	* TYPE_RGB, TYPE_XYZ, ...).  The type defines the
	* number of components of the color space and the interpretation,
	* e.g. TYPE_RGB identifies a color space with three components - red,
	* green, and blue.  It does not define the particular color
	* characteristics of the space, e.g. the chromaticities of the
	* primaries.
	*
	* @return the type constant that represents the type of this
	*         <CODE>ColorSpace</CODE>
	*/
	@:overload public function getType() : Int;
	
	/**
	* Returns the number of components of this ColorSpace.
	* @return The number of components in this <CODE>ColorSpace</CODE>.
	*/
	@:overload public function getNumComponents() : Int;
	
	/**
	* Returns the name of the component given the component index.
	*
	* @param idx the component index
	* @return the name of the component at the specified index
	* @throws IllegalArgumentException if <code>idx</code> is
	*         less than 0 or greater than numComponents - 1
	*/
	@:overload public function getName(idx : Int) : String;
	
	/**
	* Returns the minimum normalized color component value for the
	* specified component.  The default implementation in this abstract
	* class returns 0.0 for all components.  Subclasses should override
	* this method if necessary.
	*
	* @param component the component index
	* @return the minimum normalized component value
	* @throws IllegalArgumentException if component is less than 0 or
	*         greater than numComponents - 1
	* @since 1.4
	*/
	@:require(java4) @:overload public function getMinValue(component : Int) : Single;
	
	/**
	* Returns the maximum normalized color component value for the
	* specified component.  The default implementation in this abstract
	* class returns 1.0 for all components.  Subclasses should override
	* this method if necessary.
	*
	* @param component the component index
	* @return the maximum normalized component value
	* @throws IllegalArgumentException if component is less than 0 or
	*         greater than numComponents - 1
	* @since 1.4
	*/
	@:require(java4) @:overload public function getMaxValue(component : Int) : Single;
	
	
}
