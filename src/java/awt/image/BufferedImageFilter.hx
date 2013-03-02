package java.awt.image;
/*
* Copyright (c) 1997, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferedImageFilter extends java.awt.image.ImageFilter implements java.lang.Cloneable
{
	/**
	* Constructs a <code>BufferedImageFilter</code> with the
	* specified single-source/single-destination operator.
	* @param op the specified <code>BufferedImageOp</code> to
	*           use to filter a <code>BufferedImage</code>
	* @throws NullPointerException if op is null
	*/
	@:overload public function new(op : java.awt.image.BufferedImageOp) : Void;
	
	/**
	* Returns the <code>BufferedImageOp</code>.
	* @return the operator of this <code>BufferedImageFilter</code>.
	*/
	@:overload public function getBufferedImageOp() : java.awt.image.BufferedImageOp;
	
	/**
	* Filters the information provided in the
	* {@link ImageConsumer#setDimensions(int, int) setDimensions } method
	* of the {@link ImageConsumer} interface.
	* <p>
	* Note: This method is intended to be called by the
	* {@link ImageProducer} of the <code>Image</code> whose pixels are
	* being filtered. Developers using this class to retrieve pixels from
	* an image should avoid calling this method directly since that
	* operation could result in problems with retrieving the requested
	* pixels.
	* <p>
	* @param width the width to which to set the width of this
	*        <code>BufferedImageFilter</code>
	* @param height the height to which to set the height of this
	*        <code>BufferedImageFilter</code>
	* @see ImageConsumer#setDimensions
	*/
	@:overload public function setDimensions(width : Int, height : Int) : Void;
	
	/**
	* Filters the information provided in the
	* {@link ImageConsumer#setColorModel(ColorModel) setColorModel} method
	* of the <code>ImageConsumer</code> interface.
	* <p>
	* If <code>model</code> is <code>null</code>, this
	* method clears the current <code>ColorModel</code> of this
	* <code>BufferedImageFilter</code>.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code>
	* whose pixels are being filtered.  Developers using this
	* class to retrieve pixels from an image
	* should avoid calling this method directly since that
	* operation could result in problems with retrieving the
	* requested pixels.
	* @param model the {@link ColorModel} to which to set the
	*        <code>ColorModel</code> of this <code>BufferedImageFilter</code>
	* @see ImageConsumer#setColorModel
	*/
	@:overload public function setColorModel(model : java.awt.image.ColorModel) : Void;
	
	/**
	* Filters the information provided in the <code>setPixels</code>
	* method of the <code>ImageConsumer</code> interface which takes
	* an array of bytes.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered.  Developers using
	* this class to retrieve pixels from an image should avoid calling
	* this method directly since that operation could result in problems
	* with retrieving the requested pixels.
	* @throws IllegalArgumentException if width or height are less than
	* zero.
	* @see ImageConsumer#setPixels(int, int, int, int, ColorModel, byte[],
	int, int)
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Void;
	
	/**
	* Filters the information provided in the <code>setPixels</code>
	* method of the <code>ImageConsumer</code> interface which takes
	* an array of integers.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose
	* pixels are being filtered.  Developers using this class to
	* retrieve pixels from an image should avoid calling this method
	* directly since that operation could result in problems
	* with retrieving the requested pixels.
	* @throws IllegalArgumentException if width or height are less than
	* zero.
	* @see ImageConsumer#setPixels(int, int, int, int, ColorModel, int[],
	int, int)
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	/**
	* Filters the information provided in the <code>imageComplete</code>
	* method of the <code>ImageConsumer</code> interface.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered.  Developers using
	* this class to retrieve pixels from an image should avoid calling
	* this method directly since that operation could result in problems
	* with retrieving the requested pixels.
	* @param status the status of image loading
	* @throws ImagingOpException if there was a problem calling the filter
	* method of the <code>BufferedImageOp</code> associated with this
	* instance.
	* @see ImageConsumer#imageComplete
	*/
	@:overload public function imageComplete(status : Int) : Void;
	
	
}
