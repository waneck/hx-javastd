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
extern class ImageFilter implements java.awt.image.ImageConsumer implements java.lang.Cloneable
{
	/**
	* The consumer of the particular image data stream for which this
	* instance of the ImageFilter is filtering data.  It is not
	* initialized during the constructor, but rather during the
	* getFilterInstance() method call when the FilteredImageSource
	* is creating a unique instance of this object for a particular
	* image data stream.
	* @see #getFilterInstance
	* @see ImageConsumer
	*/
	private var consumer : java.awt.image.ImageConsumer;
	
	/**
	* Returns a unique instance of an ImageFilter object which will
	* actually perform the filtering for the specified ImageConsumer.
	* The default implementation just clones this object.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @param ic the specified <code>ImageConsumer</code>
	* @return an <code>ImageFilter</code> used to perform the
	*         filtering for the specified <code>ImageConsumer</code>.
	*/
	@:overload public function getFilterInstance(ic : java.awt.image.ImageConsumer) : java.awt.image.ImageFilter;
	
	/**
	* Filters the information provided in the setDimensions method
	* of the ImageConsumer interface.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer#setDimensions
	*/
	@:overload public function setDimensions(width : Int, height : Int) : Void;
	
	/**
	* Passes the properties from the source object along after adding a
	* property indicating the stream of filters it has been run through.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	*
	* @param props the properties from the source object
	* @exception NullPointerException if <code>props</code> is null
	*/
	@:overload public function setProperties(props : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Filter the information provided in the setColorModel method
	* of the ImageConsumer interface.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer#setColorModel
	*/
	@:overload public function setColorModel(model : java.awt.image.ColorModel) : Void;
	
	/**
	* Filters the information provided in the setHints method
	* of the ImageConsumer interface.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer#setHints
	*/
	@:overload public function setHints(hints : Int) : Void;
	
	/**
	* Filters the information provided in the setPixels method of the
	* ImageConsumer interface which takes an array of bytes.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer#setPixels
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Void;
	
	/**
	* Filters the information provided in the setPixels method of the
	* ImageConsumer interface which takes an array of integers.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer#setPixels
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	/**
	* Filters the information provided in the imageComplete method of
	* the ImageConsumer interface.
	* <p>
	* Note: This method is intended to be called by the ImageProducer
	* of the Image whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer#imageComplete
	*/
	@:overload public function imageComplete(status : Int) : Void;
	
	/**
	* Responds to a request for a TopDownLeftRight (TDLR) ordered resend
	* of the pixel data from an <code>ImageConsumer</code>.
	* When an <code>ImageConsumer</code> being fed
	* by an instance of this <code>ImageFilter</code>
	* requests a resend of the data in TDLR order,
	* the <code>FilteredImageSource</code>
	* invokes this method of the <code>ImageFilter</code>.
	*
	* <p>
	*
	* An <code>ImageFilter</code> subclass might override this method or not,
	* depending on if and how it can send data in TDLR order.
	* Three possibilities exist:
	*
	* <ul>
	* <li>
	* Do not override this method.
	* This makes the subclass use the default implementation,
	* which is to
	* forward the request
	* to the indicated <code>ImageProducer</code>
	* using this filter as the requesting <code>ImageConsumer</code>.
	* This behavior
	* is appropriate if the filter can determine
	* that it will forward the pixels
	* in TDLR order if its upstream producer object
	* sends them in TDLR order.
	*
	* <li>
	* Override the method to simply send the data.
	* This is appropriate if the filter can handle the request itself &#151;
	* for example,
	* if the generated pixels have been saved in some sort of buffer.
	*
	* <li>
	* Override the method to do nothing.
	* This is appropriate
	* if the filter cannot produce filtered data in TDLR order.
	* </ul>
	*
	* @see ImageProducer#requestTopDownLeftRightResend
	* @param ip the ImageProducer that is feeding this instance of
	* the filter - also the ImageProducer that the request should be
	* forwarded to if necessary
	* @exception NullPointerException if <code>ip</code> is null
	*/
	@:overload public function resendTopDownLeftRight(ip : java.awt.image.ImageProducer) : Void;
	
	/**
	* Clones this object.
	*/
	@:overload public function clone() : Dynamic;
	
	
}
