package java.awt.image;
/*
* Copyright (c) 1995, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class FilteredImageSource implements java.awt.image.ImageProducer
{
	/**
	* Constructs an ImageProducer object from an existing ImageProducer
	* and a filter object.
	* @param orig the specified <code>ImageProducer</code>
	* @param imgf the specified <code>ImageFilter</code>
	* @see ImageFilter
	* @see java.awt.Component#createImage
	*/
	@:overload public function new(orig : java.awt.image.ImageProducer, imgf : java.awt.image.ImageFilter) : Void;
	
	/**
	* Adds the specified <code>ImageConsumer</code>
	* to the list of consumers interested in data for the filtered image.
	* An instance of the original <code>ImageFilter</code>
	* is created
	* (using the filter's <code>getFilterInstance</code> method)
	* to manipulate the image data
	* for the specified <code>ImageConsumer</code>.
	* The newly created filter instance
	* is then passed to the <code>addConsumer</code> method
	* of the original <code>ImageProducer</code>.
	*
	* <p>
	* This method is public as a side effect
	* of this class implementing
	* the <code>ImageProducer</code> interface.
	* It should not be called from user code,
	* and its behavior if called from user code is unspecified.
	*
	* @param ic  the consumer for the filtered image
	* @see ImageConsumer
	*/
	@:overload @:synchronized public function addConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Determines whether an ImageConsumer is on the list of consumers
	* currently interested in data for this image.
	*
	* <p>
	* This method is public as a side effect
	* of this class implementing
	* the <code>ImageProducer</code> interface.
	* It should not be called from user code,
	* and its behavior if called from user code is unspecified.
	*
	* @param ic the specified <code>ImageConsumer</code>
	* @return true if the ImageConsumer is on the list; false otherwise
	* @see ImageConsumer
	*/
	@:overload @:synchronized public function isConsumer(ic : java.awt.image.ImageConsumer) : Bool;
	
	/**
	* Removes an ImageConsumer from the list of consumers interested in
	* data for this image.
	*
	* <p>
	* This method is public as a side effect
	* of this class implementing
	* the <code>ImageProducer</code> interface.
	* It should not be called from user code,
	* and its behavior if called from user code is unspecified.
	*
	* @see ImageConsumer
	*/
	@:overload @:synchronized public function removeConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Starts production of the filtered image.
	* If the specified <code>ImageConsumer</code>
	* isn't already a consumer of the filtered image,
	* an instance of the original <code>ImageFilter</code>
	* is created
	* (using the filter's <code>getFilterInstance</code> method)
	* to manipulate the image data
	* for the <code>ImageConsumer</code>.
	* The filter instance for the <code>ImageConsumer</code>
	* is then passed to the <code>startProduction</code> method
	* of the original <code>ImageProducer</code>.
	*
	* <p>
	* This method is public as a side effect
	* of this class implementing
	* the <code>ImageProducer</code> interface.
	* It should not be called from user code,
	* and its behavior if called from user code is unspecified.
	*
	* @param ic  the consumer for the filtered image
	* @see ImageConsumer
	*/
	@:overload public function startProduction(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Requests that a given ImageConsumer have the image data delivered
	* one more time in top-down, left-right order.  The request is
	* handed to the ImageFilter for further processing, since the
	* ability to preserve the pixel ordering depends on the filter.
	*
	* <p>
	* This method is public as a side effect
	* of this class implementing
	* the <code>ImageProducer</code> interface.
	* It should not be called from user code,
	* and its behavior if called from user code is unspecified.
	*
	* @see ImageConsumer
	*/
	@:overload public function requestTopDownLeftRightResend(ic : java.awt.image.ImageConsumer) : Void;
	
	
}
