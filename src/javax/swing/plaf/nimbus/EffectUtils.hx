package javax.swing.plaf.nimbus;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class EffectUtils
{
	/**
	* <p>Returns an array of pixels, stored as integers, from a
	* <code>BufferedImage</code>. The pixels are grabbed from a rectangular
	* area defined by a location and two dimensions. Calling this method on
	* an image of type different from <code>BufferedImage.TYPE_INT_ARGB</code>
	* and <code>BufferedImage.TYPE_INT_RGB</code> will unmanage the image.</p>
	*
	* @param img the source image
	* @param x the x location at which to start grabbing pixels
	* @param y the y location at which to start grabbing pixels
	* @param w the width of the rectangle of pixels to grab
	* @param h the height of the rectangle of pixels to grab
	* @param pixels a pre-allocated array of pixels of size w*h; can be null
	* @return <code>pixels</code> if non-null, a new array of integers
	*   otherwise
	* @throws IllegalArgumentException is <code>pixels</code> is non-null and
	*   of length &lt; w*h
	*/
	@:overload public static function getPixels(img : java.awt.image.BufferedImage, x : Int, y : Int, w : Int, h : Int, pixels : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* <p>Writes a rectangular area of pixels in the destination
	* <code>BufferedImage</code>. Calling this method on
	* an image of type different from <code>BufferedImage.TYPE_INT_ARGB</code>
	* and <code>BufferedImage.TYPE_INT_RGB</code> will unmanage the image.</p>
	*
	* @param img the destination image
	* @param x the x location at which to start storing pixels
	* @param y the y location at which to start storing pixels
	* @param w the width of the rectangle of pixels to store
	* @param h the height of the rectangle of pixels to store
	* @param pixels an array of pixels, stored as integers
	* @throws IllegalArgumentException is <code>pixels</code> is non-null and
	*   of length &lt; w*h
	*/
	@:overload public static function setPixels(img : java.awt.image.BufferedImage, x : Int, y : Int, w : Int, h : Int, pixels : java.NativeArray<Int>) : Void;
	
	/**
	* <p>Returns a new <code>BufferedImage</code> using the same color model
	* as the image passed as a parameter. The returned image is only compatible
	* with the image passed as a parameter. This does not mean the returned
	* image is compatible with the hardware.</p>
	*
	* @param image the reference image from which the color model of the new
	*   image is obtained
	* @return a new <code>BufferedImage</code>, compatible with the color model
	*   of <code>image</code>
	*/
	@:overload public static function createColorModelCompatibleImage(image : java.awt.image.BufferedImage) : java.awt.image.BufferedImage;
	
	/**
	* <p>Returns a new translucent compatible image of the specified width and
	* height. That is, the returned <code>BufferedImage</code> is compatible with
	* the graphics hardware. If the method is called in a headless
	* environment, then the returned BufferedImage will be compatible with
	* the source image.</p>
	*
	* @param width the width of the new image
	* @param height the height of the new image
	* @return a new translucent compatible <code>BufferedImage</code> of the
	*   specified width and height
	*/
	@:overload public static function createCompatibleTranslucentImage(width : Int, height : Int) : java.awt.image.BufferedImage;
	
	
}
