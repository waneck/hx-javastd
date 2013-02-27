package java.awt.image;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class RGBImageFilter extends java.awt.image.ImageFilter
{
	/**
	* The <code>ColorModel</code> to be replaced by
	* <code>newmodel</code> when the user calls
	* {@link #substituteColorModel(ColorModel, ColorModel) substituteColorModel}.
	*/
	private var origmodel : java.awt.image.ColorModel;
	
	/**
	* The <code>ColorModel</code> with which to
	* replace <code>origmodel</code> when the user calls
	* <code>substituteColorModel</code>.
	*/
	private var newmodel : java.awt.image.ColorModel;
	
	/**
	* This boolean indicates whether or not it is acceptable to apply
	* the color filtering of the filterRGB method to the color table
	* entries of an IndexColorModel object in lieu of pixel by pixel
	* filtering.  Subclasses should set this variable to true in their
	* constructor if their filterRGB method does not depend on the
	* coordinate of the pixel being filtered.
	* @see #substituteColorModel
	* @see #filterRGB
	* @see IndexColorModel
	*/
	private var canFilterIndexColorModel : Bool;
	
	/**
	* If the ColorModel is an IndexColorModel and the subclass has
	* set the canFilterIndexColorModel flag to true, we substitute
	* a filtered version of the color model here and wherever
	* that original ColorModel object appears in the setPixels methods.
	* If the ColorModel is not an IndexColorModel or is null, this method
	* overrides the default ColorModel used by the ImageProducer and
	* specifies the default RGB ColorModel instead.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer
	* @see ColorModel#getRGBdefault
	*/
	@:overload override public function setColorModel(model : java.awt.image.ColorModel) : Void;
	
	/**
	* Registers two ColorModel objects for substitution.  If the oldcm
	* is encountered during any of the setPixels methods, the newcm
	* is substituted and the pixels passed through
	* untouched (but with the new ColorModel object).
	* @param oldcm the ColorModel object to be replaced on the fly
	* @param newcm the ColorModel object to replace oldcm on the fly
	*/
	@:overload public function substituteColorModel(oldcm : java.awt.image.ColorModel, newcm : java.awt.image.ColorModel) : Void;
	
	/**
	* Filters an IndexColorModel object by running each entry in its
	* color tables through the filterRGB function that RGBImageFilter
	* subclasses must provide.  Uses coordinates of -1 to indicate that
	* a color table entry is being filtered rather than an actual
	* pixel value.
	* @param icm the IndexColorModel object to be filtered
	* @exception NullPointerException if <code>icm</code> is null
	* @return a new IndexColorModel representing the filtered colors
	*/
	@:overload public function filterIndexColorModel(icm : java.awt.image.IndexColorModel) : java.awt.image.IndexColorModel;
	
	/**
	* Filters a buffer of pixels in the default RGB ColorModel by passing
	* them one by one through the filterRGB method.
	* @param x the X coordinate of the upper-left corner of the region
	*          of pixels
	* @param y the Y coordinate of the upper-left corner of the region
	*          of pixels
	* @param w the width of the region of pixels
	* @param h the height of the region of pixels
	* @param pixels the array of pixels
	* @param off the offset into the <code>pixels</code> array
	* @param scansize the distance from one row of pixels to the next
	*        in the array
	* @see ColorModel#getRGBdefault
	* @see #filterRGB
	*/
	@:overload public function filterRGBPixels(x : Int, y : Int, w : Int, h : Int, pixels : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	/**
	* If the ColorModel object is the same one that has already
	* been converted, then simply passes the pixels through with the
	* converted ColorModel. Otherwise converts the buffer of byte
	* pixels to the default RGB ColorModel and passes the converted
	* buffer to the filterRGBPixels method to be converted one by one.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ColorModel#getRGBdefault
	* @see #filterRGBPixels
	*/
	@:overload override public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Void;
	
	/**
	* If the ColorModel object is the same one that has already
	* been converted, then simply passes the pixels through with the
	* converted ColorModel, otherwise converts the buffer of integer
	* pixels to the default RGB ColorModel and passes the converted
	* buffer to the filterRGBPixels method to be converted one by one.
	* Converts a buffer of integer pixels to the default RGB ColorModel
	* and passes the converted buffer to the filterRGBPixels method.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ColorModel#getRGBdefault
	* @see #filterRGBPixels
	*/
	@:overload override public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	/**
	* Subclasses must specify a method to convert a single input pixel
	* in the default RGB ColorModel to a single output pixel.
	* @param x the X coordinate of the pixel
	* @param y the Y coordinate of the pixel
	* @param rgb the integer pixel representation in the default RGB
	*            color model
	* @return a filtered pixel in the default RGB color model.
	* @see ColorModel#getRGBdefault
	* @see #filterRGBPixels
	*/
	@:overload @:abstract public function filterRGB(x : Int, y : Int, rgb : Int) : Int;
	
	
}
