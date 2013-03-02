package java.awt.image;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class VolatileImage extends java.awt.Image implements java.awt.Transparency
{
	/**
	* Validated image is ready to use as-is.
	*/
	public static var IMAGE_OK(default, null) : Int;
	
	/**
	* Validated image has been restored and is now ready to use.
	* Note that restoration causes contents of the image to be lost.
	*/
	public static var IMAGE_RESTORED(default, null) : Int;
	
	/**
	* Validated image is incompatible with supplied
	* <code>GraphicsConfiguration</code> object and should be
	* re-created as appropriate.  Usage of the image as-is
	* after receiving this return code from <code>validate</code>
	* is undefined.
	*/
	public static var IMAGE_INCOMPATIBLE(default, null) : Int;
	
	/**
	* Returns a static snapshot image of this object.  The
	* <code>BufferedImage</code> returned is only current with
	* the <code>VolatileImage</code> at the time of the request
	* and will not be updated with any future changes to the
	* <code>VolatileImage</code>.
	* @return a {@link BufferedImage} representation of this
	*          <code>VolatileImage</code>
	* @see BufferedImage
	*/
	@:overload @:abstract public function getSnapshot() : java.awt.image.BufferedImage;
	
	/**
	* Returns the width of the <code>VolatileImage</code>.
	* @return the width of this <code>VolatileImage</code>.
	*/
	@:overload @:abstract public function getWidth() : Int;
	
	/**
	* Returns the height of the <code>VolatileImage</code>.
	* @return the height of this <code>VolatileImage</code>.
	*/
	@:overload @:abstract public function getHeight() : Int;
	
	/**
	* This returns an ImageProducer for this VolatileImage.
	* Note that the VolatileImage object is optimized for
	* rendering operations and blitting to the screen or other
	* VolatileImage objects, as opposed to reading back the
	* pixels of the image.  Therefore, operations such as
	* <code>getSource</code> may not perform as fast as
	* operations that do not rely on reading the pixels.
	* Note also that the pixel values read from the image are current
	* with those in the image only at the time that they are
	* retrieved. This method takes a snapshot
	* of the image at the time the request is made and the
	* ImageProducer object returned works with
	* that static snapshot image, not the original VolatileImage.
	* Calling getSource()
	* is equivalent to calling getSnapshot().getSource().
	* @return an {@link ImageProducer} that can be used to produce the
	* pixels for a <code>BufferedImage</code> representation of
	* this Image.
	* @see ImageProducer
	* @see #getSnapshot()
	*/
	@:overload public function getSource() : java.awt.image.ImageProducer;
	
	/**
	* This method returns a {@link Graphics2D}, but is here
	* for backwards compatibility.  {@link #createGraphics() createGraphics} is more
	* convenient, since it is declared to return a
	* <code>Graphics2D</code>.
	* @return a <code>Graphics2D</code>, which can be used to draw into
	*          this image.
	*/
	@:overload public function getGraphics() : java.awt.Graphics;
	
	/**
	* Creates a <code>Graphics2D</code>, which can be used to draw into
	* this <code>VolatileImage</code>.
	* @return a <code>Graphics2D</code>, used for drawing into this
	*          image.
	*/
	@:overload @:abstract public function createGraphics() : java.awt.Graphics2D;
	
	/**
	* Attempts to restore the drawing surface of the image if the surface
	* had been lost since the last <code>validate</code> call.  Also
	* validates this image against the given GraphicsConfiguration
	* parameter to see whether operations from this image to the
	* GraphicsConfiguration are compatible.  An example of an
	* incompatible combination might be a situation where a VolatileImage
	* object was created on one graphics device and then was used
	* to render to a different graphics device.  Since VolatileImage
	* objects tend to be very device-specific, this operation might
	* not work as intended, so the return code from this validate
	* call would note that incompatibility.  A null or incorrect
	* value for gc may cause incorrect values to be returned from
	* <code>validate</code> and may cause later problems with rendering.
	*
	* @param   gc   a <code>GraphicsConfiguration</code> object for this
	*          image to be validated against.  A null gc implies that the
	*          validate method should skip the compatibility test.
	* @return  <code>IMAGE_OK</code> if the image did not need validation<BR>
	*          <code>IMAGE_RESTORED</code> if the image needed restoration.
	*          Restoration implies that the contents of the image may have
	*          been affected and the image may need to be re-rendered.<BR>
	*          <code>IMAGE_INCOMPATIBLE</code> if the image is incompatible
	*          with the <code>GraphicsConfiguration</code> object passed
	*          into the <code>validate</code> method.  Incompatibility
	*          implies that the image may need to be recreated with a
	*          new <code>Component</code> or
	*          <code>GraphicsConfiguration</code> in order to get an image
	*          that can be used successfully with this
	*          <code>GraphicsConfiguration</code>.
	*          An incompatible image is not checked for whether restoration
	*          was necessary, so the state of the image is unchanged
	*          after a return value of <code>IMAGE_INCOMPATIBLE</code>
	*          and this return value implies nothing about whether the
	*          image needs to be restored.
	* @see java.awt.GraphicsConfiguration
	* @see java.awt.Component
	* @see #IMAGE_OK
	* @see #IMAGE_RESTORED
	* @see #IMAGE_INCOMPATIBLE
	*/
	@:overload @:abstract public function validate(gc : java.awt.GraphicsConfiguration) : Int;
	
	/**
	* Returns <code>true</code> if rendering data was lost since last
	* <code>validate</code> call.  This method should be called by the
	* application at the end of any series of rendering operations to
	* or from the image to see whether
	* the image needs to be validated and the rendering redone.
	* @return <code>true</code> if the drawing surface needs to be restored;
	* <code>false</code> otherwise.
	*/
	@:overload @:abstract public function contentsLost() : Bool;
	
	/**
	* Returns an ImageCapabilities object which can be
	* inquired as to the specific capabilities of this
	* VolatileImage.  This would allow programmers to find
	* out more runtime information on the specific VolatileImage
	* object that they have created.  For example, the user
	* might create a VolatileImage but the system may have
	* no video memory left for creating an image of that
	* size, so although the object is a VolatileImage, it is
	* not as accelerated as other VolatileImage objects on
	* this platform might be.  The user might want that
	* information to find other solutions to their problem.
	* @return an <code>ImageCapabilities</code> object that contains
	*         the capabilities of this <code>VolatileImage</code>.
	* @since 1.4
	*/
	@:require(java4) @:overload @:abstract public function getCapabilities() : java.awt.ImageCapabilities;
	
	/**
	* The transparency value with which this image was created.
	* @see java.awt.GraphicsConfiguration#createCompatibleVolatileImage(int,
	*      int,int)
	* @see java.awt.GraphicsConfiguration#createCompatibleVolatileImage(int,
	*      int,ImageCapabilities,int)
	* @see Transparency
	* @since 1.5
	*/
	@:require(java5) private var transparency : Int;
	
	/**
	* Returns the transparency.  Returns either OPAQUE, BITMASK,
	* or TRANSLUCENT.
	* @return the transparency of this <code>VolatileImage</code>.
	* @see Transparency#OPAQUE
	* @see Transparency#BITMASK
	* @see Transparency#TRANSLUCENT
	* @since 1.5
	*/
	@:require(java5) @:overload public function getTransparency() : Int;
	
	
}
