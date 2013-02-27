package java.awt.image;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PackedColorModel extends java.awt.image.ColorModel
{
	/**
	* Constructs a <code>PackedColorModel</code> from a color mask array,
	* which specifies which bits in an <code>int</code> pixel representation
	* contain each of the color samples, and an alpha mask.  Color
	* components are in the specified <code>ColorSpace</code>.  The length of
	* <code>colorMaskArray</code> should be the number of components in
	* the <code>ColorSpace</code>.  All of the bits in each mask
	* must be contiguous and fit in the specified number of least significant
	* bits of an <code>int</code> pixel representation.  If the
	* <code>alphaMask</code> is 0, there is no alpha.  If there is alpha,
	* the <code>boolean</code> <code>isAlphaPremultiplied</code> specifies
	* how to interpret color and alpha samples in pixel values.  If the
	* <code>boolean</code> is <code>true</code>, color samples are assumed
	* to have been multiplied by the alpha sample.  The transparency,
	* <code>trans</code>, specifies what alpha values can be represented
	* by this color model.  The transfer type is the type of primitive
	* array used to represent pixel values.
	* @param space the specified <code>ColorSpace</code>
	* @param bits the number of bits in the pixel values
	* @param colorMaskArray array that specifies the masks representing
	*         the bits of the pixel values that represent the color
	*         components
	* @param alphaMask specifies the mask representing
	*         the bits of the pixel values that represent the alpha
	*         component
	* @param isAlphaPremultiplied <code>true</code> if color samples are
	*        premultiplied by the alpha sample; <code>false</code> otherwise
	* @param trans specifies the alpha value that can be represented by
	*        this color model
	* @param transferType the type of array used to represent pixel values
	* @throws IllegalArgumentException if <code>bits</code> is less than
	*         1 or greater than 32
	*/
	@:overload public function new(space : java.awt.color.ColorSpace, bits : Int, colorMaskArray : java.NativeArray<Int>, alphaMask : Int, isAlphaPremultiplied : Bool, trans : Int, transferType : Int) : Void;
	
	/**
	* Constructs a <code>PackedColorModel</code> from the specified
	* masks which indicate which bits in an <code>int</code> pixel
	* representation contain the alpha, red, green and blue color samples.
	* Color components are in the specified <code>ColorSpace</code>, which
	* must be of type ColorSpace.TYPE_RGB.  All of the bits in each
	* mask must be contiguous and fit in the specified number of
	* least significant bits of an <code>int</code> pixel representation.  If
	* <code>amask</code> is 0, there is no alpha.  If there is alpha,
	* the <code>boolean</code> <code>isAlphaPremultiplied</code>
	* specifies how to interpret color and alpha samples
	* in pixel values.  If the <code>boolean</code> is <code>true</code>,
	* color samples are assumed to have been multiplied by the alpha sample.
	* The transparency, <code>trans</code>, specifies what alpha values
	* can be represented by this color model.
	* The transfer type is the type of primitive array used to represent
	* pixel values.
	* @param space the specified <code>ColorSpace</code>
	* @param bits the number of bits in the pixel values
	* @param rmask specifies the mask representing
	*         the bits of the pixel values that represent the red
	*         color component
	* @param gmask specifies the mask representing
	*         the bits of the pixel values that represent the green
	*         color component
	* @param bmask specifies the mask representing
	*         the bits of the pixel values that represent
	*         the blue color component
	* @param amask specifies the mask representing
	*         the bits of the pixel values that represent
	*         the alpha component
	* @param isAlphaPremultiplied <code>true</code> if color samples are
	*        premultiplied by the alpha sample; <code>false</code> otherwise
	* @param trans specifies the alpha value that can be represented by
	*        this color model
	* @param transferType the type of array used to represent pixel values
	* @throws IllegalArgumentException if <code>space</code> is not a
	*         TYPE_RGB space
	* @see ColorSpace
	*/
	@:overload public function new(space : java.awt.color.ColorSpace, bits : Int, rmask : Int, gmask : Int, bmask : Int, amask : Int, isAlphaPremultiplied : Bool, trans : Int, transferType : Int) : Void;
	
	/**
	* Returns the mask indicating which bits in a pixel
	* contain the specified color/alpha sample.  For color
	* samples, <code>index</code> corresponds to the placement of color
	* sample names in the color space.  Thus, an <code>index</code>
	* equal to 0 for a CMYK ColorSpace would correspond to
	* Cyan and an <code>index</code> equal to 1 would correspond to
	* Magenta.  If there is alpha, the alpha <code>index</code> would be:
	* <pre>
	*      alphaIndex = numComponents() - 1;
	* </pre>
	* @param index the specified color or alpha sample
	* @return the mask, which indicates which bits of the <code>int</code>
	*         pixel representation contain the color or alpha sample specified
	*         by <code>index</code>.
	* @throws ArrayIndexOutOfBoundsException if <code>index</code> is
	*         greater than the number of components minus 1 in this
	*         <code>PackedColorModel</code> or if <code>index</code> is
	*         less than zero
	*/
	@:overload @:final public function getMask(index : Int) : Int;
	
	/**
	* Returns a mask array indicating which bits in a pixel
	* contain the color and alpha samples.
	* @return the mask array , which indicates which bits of the
	*         <code>int</code> pixel
	*         representation contain the color or alpha samples.
	*/
	@:overload @:final public function getMasks() : java.NativeArray<Int>;
	
	/**
	* Creates a <code>SampleModel</code> with the specified width and
	* height that has a data layout compatible with this
	* <code>ColorModel</code>.
	* @param w the width (in pixels) of the region of the image data
	*          described
	* @param h the height (in pixels) of the region of the image data
	*          described
	* @return the newly created <code>SampleModel</code>.
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	* @see SampleModel
	*/
	@:overload override public function createCompatibleSampleModel(w : Int, h : Int) : java.awt.image.SampleModel;
	
	/**
	* Checks if the specified <code>SampleModel</code> is compatible
	* with this <code>ColorModel</code>.  If <code>sm</code> is
	* <code>null</code>, this method returns <code>false</code>.
	* @param sm the specified <code>SampleModel</code>,
	* or <code>null</code>
	* @return <code>true</code> if the specified <code>SampleModel</code>
	*         is compatible with this <code>ColorModel</code>;
	*         <code>false</code> otherwise.
	* @see SampleModel
	*/
	@:overload override public function isCompatibleSampleModel(sm : java.awt.image.SampleModel) : Bool;
	
	/**
	* Returns a {@link WritableRaster} representing the alpha channel of
	* an image, extracted from the input <code>WritableRaster</code>.
	* This method assumes that <code>WritableRaster</code> objects
	* associated with this <code>ColorModel</code> store the alpha band,
	* if present, as the last band of image data.  Returns <code>null</code>
	* if there is no separate spatial alpha channel associated with this
	* <code>ColorModel</code>.  This method creates a new
	* <code>WritableRaster</code>, but shares the data array.
	* @param raster a <code>WritableRaster</code> containing an image
	* @return a <code>WritableRaster</code> that represents the alpha
	*         channel of the image contained in <code>raster</code>.
	*/
	@:overload override public function getAlphaRaster(raster : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Tests if the specified <code>Object</code> is an instance
	* of <code>PackedColorModel</code> and equals this
	* <code>PackedColorModel</code>.
	* @param obj the <code>Object</code> to test for equality
	* @return <code>true</code> if the specified <code>Object</code>
	* is an instance of <code>PackedColorModel</code> and equals this
	* <code>PackedColorModel</code>; <code>false</code> otherwise.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	
}
