package java.awt.image;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MemoryImageSource implements java.awt.image.ImageProducer
{
	/**
	* Constructs an ImageProducer object which uses an array of bytes
	* to produce data for an Image object.
	* @param w the width of the rectangle of pixels
	* @param h the height of the rectangle of pixels
	* @param cm the specified <code>ColorModel</code>
	* @param pix an array of pixels
	* @param off the offset into the array of where to store the
	*        first pixel
	* @param scan the distance from one row of pixels to the next in
	*        the array
	* @see java.awt.Component#createImage
	*/
	@:overload @:public public function new(w : Int, h : Int, cm : java.awt.image.ColorModel, pix : java.NativeArray<java.StdTypes.Int8>, off : Int, scan : Int) : Void;
	
	/**
	* Constructs an ImageProducer object which uses an array of bytes
	* to produce data for an Image object.
	* @param w the width of the rectangle of pixels
	* @param h the height of the rectangle of pixels
	* @param cm the specified <code>ColorModel</code>
	* @param pix an array of pixels
	* @param off the offset into the array of where to store the
	*        first pixel
	* @param scan the distance from one row of pixels to the next in
	*        the array
	* @param props a list of properties that the <code>ImageProducer</code>
	*        uses to process an image
	* @see java.awt.Component#createImage
	*/
	@:overload @:public public function new(w : Int, h : Int, cm : java.awt.image.ColorModel, pix : java.NativeArray<java.StdTypes.Int8>, off : Int, scan : Int, props : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Constructs an ImageProducer object which uses an array of integers
	* to produce data for an Image object.
	* @param w the width of the rectangle of pixels
	* @param h the height of the rectangle of pixels
	* @param cm the specified <code>ColorModel</code>
	* @param pix an array of pixels
	* @param off the offset into the array of where to store the
	*        first pixel
	* @param scan the distance from one row of pixels to the next in
	*        the array
	* @see java.awt.Component#createImage
	*/
	@:overload @:public public function new(w : Int, h : Int, cm : java.awt.image.ColorModel, pix : java.NativeArray<Int>, off : Int, scan : Int) : Void;
	
	/**
	* Constructs an ImageProducer object which uses an array of integers
	* to produce data for an Image object.
	* @param w the width of the rectangle of pixels
	* @param h the height of the rectangle of pixels
	* @param cm the specified <code>ColorModel</code>
	* @param pix an array of pixels
	* @param off the offset into the array of where to store the
	*        first pixel
	* @param scan the distance from one row of pixels to the next in
	*        the array
	* @param props a list of properties that the <code>ImageProducer</code>
	*        uses to process an image
	* @see java.awt.Component#createImage
	*/
	@:overload @:public public function new(w : Int, h : Int, cm : java.awt.image.ColorModel, pix : java.NativeArray<Int>, off : Int, scan : Int, props : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Constructs an ImageProducer object which uses an array of integers
	* in the default RGB ColorModel to produce data for an Image object.
	* @param w the width of the rectangle of pixels
	* @param h the height of the rectangle of pixels
	* @param pix an array of pixels
	* @param off the offset into the array of where to store the
	*        first pixel
	* @param scan the distance from one row of pixels to the next in
	*        the array
	* @see java.awt.Component#createImage
	* @see ColorModel#getRGBdefault
	*/
	@:overload @:public public function new(w : Int, h : Int, pix : java.NativeArray<Int>, off : Int, scan : Int) : Void;
	
	/**
	* Constructs an ImageProducer object which uses an array of integers
	* in the default RGB ColorModel to produce data for an Image object.
	* @param w the width of the rectangle of pixels
	* @param h the height of the rectangle of pixels
	* @param pix an array of pixels
	* @param off the offset into the array of where to store the
	*        first pixel
	* @param scan the distance from one row of pixels to the next in
	*        the array
	* @param props a list of properties that the <code>ImageProducer</code>
	*        uses to process an image
	* @see java.awt.Component#createImage
	* @see ColorModel#getRGBdefault
	*/
	@:overload @:public public function new(w : Int, h : Int, pix : java.NativeArray<Int>, off : Int, scan : Int, props : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Adds an ImageConsumer to the list of consumers interested in
	* data for this image.
	* @param ic the specified <code>ImageConsumer</code>
	* @throws NullPointerException if the specified
	*           <code>ImageConsumer</code> is null
	* @see ImageConsumer
	*/
	@:overload @:public @:synchronized public function addConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Determines if an ImageConsumer is on the list of consumers currently
	* interested in data for this image.
	* @param ic the specified <code>ImageConsumer</code>
	* @return <code>true</code> if the <code>ImageConsumer</code>
	* is on the list; <code>false</code> otherwise.
	* @see ImageConsumer
	*/
	@:overload @:public @:synchronized public function isConsumer(ic : java.awt.image.ImageConsumer) : Bool;
	
	/**
	* Removes an ImageConsumer from the list of consumers interested in
	* data for this image.
	* @param ic the specified <code>ImageConsumer</code>
	* @see ImageConsumer
	*/
	@:overload @:public @:synchronized public function removeConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Adds an ImageConsumer to the list of consumers interested in
	* data for this image and immediately starts delivery of the
	* image data through the ImageConsumer interface.
	* @param ic the specified <code>ImageConsumer</code>
	* image data through the ImageConsumer interface.
	* @see ImageConsumer
	*/
	@:overload @:public public function startProduction(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Requests that a given ImageConsumer have the image data delivered
	* one more time in top-down, left-right order.
	* @param ic the specified <code>ImageConsumer</code>
	* @see ImageConsumer
	*/
	@:overload @:public public function requestTopDownLeftRightResend(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Changes this memory image into a multi-frame animation or a
	* single-frame static image depending on the animated parameter.
	* <p>This method should be called immediately after the
	* MemoryImageSource is constructed and before an image is
	* created with it to ensure that all ImageConsumers will
	* receive the correct multi-frame data.  If an ImageConsumer
	* is added to this ImageProducer before this flag is set then
	* that ImageConsumer will see only a snapshot of the pixel
	* data that was available when it connected.
	* @param animated <code>true</code> if the image is a
	*       multi-frame animation
	*/
	@:overload @:public @:synchronized public function setAnimated(animated : Bool) : Void;
	
	/**
	* Specifies whether this animated memory image should always be
	* updated by sending the complete buffer of pixels whenever
	* there is a change.
	* This flag is ignored if the animation flag is not turned on
	* through the setAnimated() method.
	* <p>This method should be called immediately after the
	* MemoryImageSource is constructed and before an image is
	* created with it to ensure that all ImageConsumers will
	* receive the correct pixel delivery hints.
	* @param fullbuffers <code>true</code> if the complete pixel
	*             buffer should always
	* be sent
	* @see #setAnimated
	*/
	@:overload @:public @:synchronized public function setFullBufferUpdates(fullbuffers : Bool) : Void;
	
	/**
	* Sends a whole new buffer of pixels to any ImageConsumers that
	* are currently interested in the data for this image and notify
	* them that an animation frame is complete.
	* This method only has effect if the animation flag has been
	* turned on through the setAnimated() method.
	* @see #newPixels(int, int, int, int, boolean)
	* @see ImageConsumer
	* @see #setAnimated
	*/
	@:overload @:public public function newPixels() : Void;
	
	/**
	* Sends a rectangular region of the buffer of pixels to any
	* ImageConsumers that are currently interested in the data for
	* this image and notify them that an animation frame is complete.
	* This method only has effect if the animation flag has been
	* turned on through the setAnimated() method.
	* If the full buffer update flag was turned on with the
	* setFullBufferUpdates() method then the rectangle parameters
	* will be ignored and the entire buffer will always be sent.
	* @param x the x coordinate of the upper left corner of the rectangle
	* of pixels to be sent
	* @param y the y coordinate of the upper left corner of the rectangle
	* of pixels to be sent
	* @param w the width of the rectangle of pixels to be sent
	* @param h the height of the rectangle of pixels to be sent
	* @see #newPixels(int, int, int, int, boolean)
	* @see ImageConsumer
	* @see #setAnimated
	* @see #setFullBufferUpdates
	*/
	@:overload @:public @:synchronized public function newPixels(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Sends a rectangular region of the buffer of pixels to any
	* ImageConsumers that are currently interested in the data for
	* this image.
	* If the framenotify parameter is true then the consumers are
	* also notified that an animation frame is complete.
	* This method only has effect if the animation flag has been
	* turned on through the setAnimated() method.
	* If the full buffer update flag was turned on with the
	* setFullBufferUpdates() method then the rectangle parameters
	* will be ignored and the entire buffer will always be sent.
	* @param x the x coordinate of the upper left corner of the rectangle
	* of pixels to be sent
	* @param y the y coordinate of the upper left corner of the rectangle
	* of pixels to be sent
	* @param w the width of the rectangle of pixels to be sent
	* @param h the height of the rectangle of pixels to be sent
	* @param framenotify <code>true</code> if the consumers should be sent a
	* {@link ImageConsumer#SINGLEFRAMEDONE SINGLEFRAMEDONE} notification
	* @see ImageConsumer
	* @see #setAnimated
	* @see #setFullBufferUpdates
	*/
	@:overload @:public @:synchronized public function newPixels(x : Int, y : Int, w : Int, h : Int, framenotify : Bool) : Void;
	
	/**
	* Changes to a new byte array to hold the pixels for this image.
	* If the animation flag has been turned on through the setAnimated()
	* method, then the new pixels will be immediately delivered to any
	* ImageConsumers that are currently interested in the data for
	* this image.
	* @param newpix the new pixel array
	* @param newmodel the specified <code>ColorModel</code>
	* @param offset the offset into the array
	* @param scansize the distance from one row of pixels to the next in
	* the array
	* @see #newPixels(int, int, int, int, boolean)
	* @see #setAnimated
	*/
	@:overload @:public @:synchronized public function newPixels(newpix : java.NativeArray<java.StdTypes.Int8>, newmodel : java.awt.image.ColorModel, offset : Int, scansize : Int) : Void;
	
	/**
	* Changes to a new int array to hold the pixels for this image.
	* If the animation flag has been turned on through the setAnimated()
	* method, then the new pixels will be immediately delivered to any
	* ImageConsumers that are currently interested in the data for
	* this image.
	* @param newpix the new pixel array
	* @param newmodel the specified <code>ColorModel</code>
	* @param offset the offset into the array
	* @param scansize the distance from one row of pixels to the next in
	* the array
	* @see #newPixels(int, int, int, int, boolean)
	* @see #setAnimated
	*/
	@:overload @:public @:synchronized public function newPixels(newpix : java.NativeArray<Int>, newmodel : java.awt.image.ColorModel, offset : Int, scansize : Int) : Void;
	
	
}
