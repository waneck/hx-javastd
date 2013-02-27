package com.sun.imageio.plugins.common;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageUtil
{
	/**
	* Creates a <code>ColorModel</code> that may be used with the
	* specified <code>SampleModel</code>.  If a suitable
	* <code>ColorModel</code> cannot be found, this method returns
	* <code>null</code>.
	*
	* <p> Suitable <code>ColorModel</code>s are guaranteed to exist
	* for all instances of <code>ComponentSampleModel</code>.
	* For 1- and 3- banded <code>SampleModel</code>s, the returned
	* <code>ColorModel</code> will be opaque.  For 2- and 4-banded
	* <code>SampleModel</code>s, the output will use alpha transparency
	* which is not premultiplied.  1- and 2-banded data will use a
	* grayscale <code>ColorSpace</code>, and 3- and 4-banded data a sRGB
	* <code>ColorSpace</code>. Data with 5 or more bands will have a
	* <code>BogusColorSpace</code>.</p>
	*
	* <p>An instance of <code>DirectColorModel</code> will be created for
	* instances of <code>SinglePixelPackedSampleModel</code> with no more
	* than 4 bands.</p>
	*
	* <p>An instance of <code>IndexColorModel</code> will be created for
	* instances of <code>MultiPixelPackedSampleModel</code>. The colormap
	* will be a grayscale ramp with <code>1&nbsp;<<&nbsp;numberOfBits</code>
	* entries ranging from zero to at most 255.</p>
	*
	* @return An instance of <code>ColorModel</code> that is suitable for
	*         the supplied <code>SampleModel</code>, or <code>null</code>.
	*
	* @throws IllegalArgumentException  If <code>sampleModel</code> is
	*         <code>null</code>.
	*/
	@:overload @:final public static function createColorModel(sampleModel : java.awt.image.SampleModel) : java.awt.image.ColorModel;
	
	/**
	* For the case of binary data (<code>isBinary()</code> returns
	* <code>true</code>), return the binary data as a packed byte array.
	* The data will be packed as eight bits per byte with no bit offset,
	* i.e., the first bit in each image line will be the left-most of the
	* first byte of the line.  The line stride in bytes will be
	* <code>(int)((getWidth()+7)/8)</code>.  The length of the returned
	* array will be the line stride multiplied by <code>getHeight()</code>
	*
	* @return the binary data as a packed array of bytes with zero offset
	* of <code>null</code> if the data are not binary.
	* @throws IllegalArgumentException if <code>isBinary()</code> returns
	* <code>false</code> with the <code>SampleModel</code> of the
	* supplied <code>Raster</code> as argument.
	*/
	@:overload public static function getPackedBinaryData(raster : java.awt.image.Raster, rect : java.awt.Rectangle) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the binary data unpacked into an array of bytes.
	* The line stride will be the width of the <code>Raster</code>.
	*
	* @throws IllegalArgumentException if <code>isBinary()</code> returns
	* <code>false</code> with the <code>SampleModel</code> of the
	* supplied <code>Raster</code> as argument.
	*/
	@:overload public static function getUnpackedBinaryData(raster : java.awt.image.Raster, rect : java.awt.Rectangle) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Sets the supplied <code>Raster</code>'s data from an array
	* of packed binary data of the form returned by
	* <code>getPackedBinaryData()</code>.
	*
	* @throws IllegalArgumentException if <code>isBinary()</code> returns
	* <code>false</code> with the <code>SampleModel</code> of the
	* supplied <code>Raster</code> as argument.
	*/
	@:overload public static function setPackedBinaryData(binaryDataArray : java.NativeArray<java.StdTypes.Int8>, raster : java.awt.image.WritableRaster, rect : java.awt.Rectangle) : Void;
	
	/**
	* Copies data into the packed array of the <code>Raster</code>
	* from an array of unpacked data of the form returned by
	* <code>getUnpackedBinaryData()</code>.
	*
	* <p> If the data are binary, then the target bit will be set if
	* and only if the corresponding byte is non-zero.
	*
	* @throws IllegalArgumentException if <code>isBinary()</code> returns
	* <code>false</code> with the <code>SampleModel</code> of the
	* supplied <code>Raster</code> as argument.
	*/
	@:overload public static function setUnpackedBinaryData(bdata : java.NativeArray<java.StdTypes.Int8>, raster : java.awt.image.WritableRaster, rect : java.awt.Rectangle) : Void;
	
	@:overload public static function isBinary(sm : java.awt.image.SampleModel) : Bool;
	
	@:overload public static function createColorModel(colorSpace : java.awt.color.ColorSpace, sampleModel : java.awt.image.SampleModel) : java.awt.image.ColorModel;
	
	@:overload public static function getElementSize(sm : java.awt.image.SampleModel) : Int;
	
	@:overload public static function getTileSize(sm : java.awt.image.SampleModel) : haxe.Int64;
	
	@:overload public static function getBandSize(sm : java.awt.image.SampleModel) : haxe.Int64;
	
	/**
	* Tests whether the color indices represent a gray-scale image.
	*
	* @param r The red channel color indices.
	* @param g The green channel color indices.
	* @param b The blue channel color indices.
	* @return If all the indices have 256 entries, and are identical mappings,
	*         return <code>true</code>; otherwise, return <code>false</code>.
	*/
	@:overload public static function isIndicesForGrayscale(r : java.NativeArray<java.StdTypes.Int8>, g : java.NativeArray<java.StdTypes.Int8>, b : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/** Converts the provided object to <code>String</code> */
	@:overload public static function convertObjectToString(obj : Dynamic) : String;
	
	/** Checks that the provided <code>ImageWriter</code> can encode
	* the provided <code>ImageTypeSpecifier</code> or not.  If not, an
	* <code>IIOException</code> will be thrown.
	* @param writer The provided <code>ImageWriter</code>.
	* @param type The image to be tested.
	* @throws IIOException If the writer cannot encoded the provided image.
	*/
	@:overload @:final public static function canEncodeImage(writer : javax.imageio.ImageWriter, type : javax.imageio.ImageTypeSpecifier) : Void;
	
	/** Checks that the provided <code>ImageWriter</code> can encode
	* the provided <code>ColorModel</code> and <code>SampleModel</code>.
	* If not, an <code>IIOException</code> will be thrown.
	* @param writer The provided <code>ImageWriter</code>.
	* @param colorModel The provided <code>ColorModel</code>.
	* @param sampleModel The provided <code>SampleModel</code>.
	* @throws IIOException If the writer cannot encoded the provided image.
	*/
	@:overload @:final public static function canEncodeImage(writer : javax.imageio.ImageWriter, colorModel : java.awt.image.ColorModel, sampleModel : java.awt.image.SampleModel) : Void;
	
	/**
	* Returns whether the image has contiguous data across rows.
	*/
	@:overload @:final public static function imageIsContiguous(image : java.awt.image.RenderedImage) : Bool;
	
	
}
