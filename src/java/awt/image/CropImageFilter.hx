package java.awt.image;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CropImageFilter extends java.awt.image.ImageFilter
{
	/**
	* Constructs a CropImageFilter that extracts the absolute rectangular
	* region of pixels from its source Image as specified by the x, y,
	* w, and h parameters.
	* @param x the x location of the top of the rectangle to be extracted
	* @param y the y location of the top of the rectangle to be extracted
	* @param w the width of the rectangle to be extracted
	* @param h the height of the rectangle to be extracted
	*/
	@:overload public function new(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Passes along  the properties from the source object after adding a
	* property indicating the cropped region.
	* This method invokes <code>super.setProperties</code>,
	* which might result in additional properties being added.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	*/
	@:overload public function setProperties(props : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Override the source image's dimensions and pass the dimensions
	* of the rectangular cropped region to the ImageConsumer.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose
	* pixels are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer
	*/
	@:overload public function setDimensions(w : Int, h : Int) : Void;
	
	/**
	* Determine whether the delivered byte pixels intersect the region to
	* be extracted and passes through only that subset of pixels that
	* appear in the output region.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose
	* pixels are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Void;
	
	/**
	* Determine if the delivered int pixels intersect the region to
	* be extracted and pass through only that subset of pixels that
	* appear in the output region.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose
	* pixels are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	
}
