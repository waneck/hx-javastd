package java.awt.image;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ReplicateScaleFilter extends java.awt.image.ImageFilter
{
	/**
	* The width of the source image.
	*/
	private var srcWidth : Int;
	
	/**
	* The height of the source image.
	*/
	private var srcHeight : Int;
	
	/**
	* The target width to scale the image.
	*/
	private var destWidth : Int;
	
	/**
	* The target height to scale the image.
	*/
	private var destHeight : Int;
	
	/**
	* An <code>int</code> array containing information about a
	* row of pixels.
	*/
	private var srcrows : java.NativeArray<Int>;
	
	/**
	* An <code>int</code> array containing information about a
	* column of pixels.
	*/
	private var srccols : java.NativeArray<Int>;
	
	/**
	* A <code>byte</code> array initialized with a size of
	* {@link #destWidth} and used to deliver a row of pixel
	* data to the {@link ImageConsumer}.
	*/
	private var outpixbuf : Dynamic;
	
	/**
	* Constructs a ReplicateScaleFilter that scales the pixels from
	* its source Image as specified by the width and height parameters.
	* @param width the target width to scale the image
	* @param height the target height to scale the image
	* @throws IllegalArgumentException if <code>width</code> equals
	*         zero or <code>height</code> equals zero
	*/
	@:overload public function new(width : Int, height : Int) : Void;
	
	/**
	* Passes along the properties from the source object after adding a
	* property indicating the scale applied.
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
	@:overload override public function setProperties(props : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Override the dimensions of the source image and pass the dimensions
	* of the new scaled size to the ImageConsumer.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer
	*/
	@:overload override public function setDimensions(w : Int, h : Int) : Void;
	
	/**
	* Choose which rows and columns of the delivered byte pixels are
	* needed for the destination scaled image and pass through just
	* those rows and columns that are needed, replicated as necessary.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	*/
	@:overload override public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Void;
	
	/**
	* Choose which rows and columns of the delivered int pixels are
	* needed for the destination scaled image and pass through just
	* those rows and columns that are needed, replicated as necessary.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose pixels
	* are being filtered. Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	*/
	@:overload override public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	
}
