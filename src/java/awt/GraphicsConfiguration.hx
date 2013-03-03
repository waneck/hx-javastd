package java.awt;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class GraphicsConfiguration
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Instances must be obtained from a suitable factory or query method.
	*
	* @see GraphicsDevice#getConfigurations
	* @see GraphicsDevice#getDefaultConfiguration
	* @see GraphicsDevice#getBestConfiguration
	* @see Graphics2D#getDeviceConfiguration
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Returns the {@link GraphicsDevice} associated with this
	* <code>GraphicsConfiguration</code>.
	* @return a <code>GraphicsDevice</code> object that is
	* associated with this <code>GraphicsConfiguration</code>.
	*/
	@:overload @:public @:abstract public function getDevice() : java.awt.GraphicsDevice;
	
	/**
	* Returns a {@link BufferedImage} with a data layout and color model
	* compatible with this <code>GraphicsConfiguration</code>.  This
	* method has nothing to do with memory-mapping
	* a device.  The returned <code>BufferedImage</code> has
	* a layout and color model that is closest to this native device
	* configuration and can therefore be optimally blitted to this
	* device.
	* @param width the width of the returned <code>BufferedImage</code>
	* @param height the height of the returned <code>BufferedImage</code>
	* @return a <code>BufferedImage</code> whose data layout and color
	* model is compatible with this <code>GraphicsConfiguration</code>.
	*/
	@:overload @:public public function createCompatibleImage(width : Int, height : Int) : java.awt.image.BufferedImage;
	
	/**
	* Returns a <code>BufferedImage</code> that supports the specified
	* transparency and has a data layout and color model
	* compatible with this <code>GraphicsConfiguration</code>.  This
	* method has nothing to do with memory-mapping
	* a device. The returned <code>BufferedImage</code> has a layout and
	* color model that can be optimally blitted to a device
	* with this <code>GraphicsConfiguration</code>.
	* @param width the width of the returned <code>BufferedImage</code>
	* @param height the height of the returned <code>BufferedImage</code>
	* @param transparency the specified transparency mode
	* @return a <code>BufferedImage</code> whose data layout and color
	* model is compatible with this <code>GraphicsConfiguration</code>
	* and also supports the specified transparency.
	* @throws IllegalArgumentException if the transparency is not a valid value
	* @see Transparency#OPAQUE
	* @see Transparency#BITMASK
	* @see Transparency#TRANSLUCENT
	*/
	@:overload @:public public function createCompatibleImage(width : Int, height : Int, transparency : Int) : java.awt.image.BufferedImage;
	
	/**
	* Returns a {@link VolatileImage} with a data layout and color model
	* compatible with this <code>GraphicsConfiguration</code>.
	* The returned <code>VolatileImage</code>
	* may have data that is stored optimally for the underlying graphics
	* device and may therefore benefit from platform-specific rendering
	* acceleration.
	* @param width the width of the returned <code>VolatileImage</code>
	* @param height the height of the returned <code>VolatileImage</code>
	* @return a <code>VolatileImage</code> whose data layout and color
	* model is compatible with this <code>GraphicsConfiguration</code>.
	* @see Component#createVolatileImage(int, int)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function createCompatibleVolatileImage(width : Int, height : Int) : java.awt.image.VolatileImage;
	
	/**
	* Returns a {@link VolatileImage} with a data layout and color model
	* compatible with this <code>GraphicsConfiguration</code>.
	* The returned <code>VolatileImage</code>
	* may have data that is stored optimally for the underlying graphics
	* device and may therefore benefit from platform-specific rendering
	* acceleration.
	* @param width the width of the returned <code>VolatileImage</code>
	* @param height the height of the returned <code>VolatileImage</code>
	* @param transparency the specified transparency mode
	* @return a <code>VolatileImage</code> whose data layout and color
	* model is compatible with this <code>GraphicsConfiguration</code>.
	* @throws IllegalArgumentException if the transparency is not a valid value
	* @see Transparency#OPAQUE
	* @see Transparency#BITMASK
	* @see Transparency#TRANSLUCENT
	* @see Component#createVolatileImage(int, int)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function createCompatibleVolatileImage(width : Int, height : Int, transparency : Int) : java.awt.image.VolatileImage;
	
	/**
	* Returns a {@link VolatileImage} with a data layout and color model
	* compatible with this <code>GraphicsConfiguration</code>, using
	* the specified image capabilities.
	* If the <code>caps</code> parameter is null, it is effectively ignored
	* and this method will create a VolatileImage without regard to
	* <code>ImageCapabilities</code> constraints.
	*
	* The returned <code>VolatileImage</code> has
	* a layout and color model that is closest to this native device
	* configuration and can therefore be optimally blitted to this
	* device.
	* @return a <code>VolatileImage</code> whose data layout and color
	* model is compatible with this <code>GraphicsConfiguration</code>.
	* @param width the width of the returned <code>VolatileImage</code>
	* @param height the height of the returned <code>VolatileImage</code>
	* @param caps the image capabilities
	* @exception AWTException if the supplied image capabilities could not
	* be met by this graphics configuration
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function createCompatibleVolatileImage(width : Int, height : Int, caps : java.awt.ImageCapabilities) : java.awt.image.VolatileImage;
	
	/**
	* Returns a {@link VolatileImage} with a data layout and color model
	* compatible with this <code>GraphicsConfiguration</code>, using
	* the specified image capabilities and transparency value.
	* If the <code>caps</code> parameter is null, it is effectively ignored
	* and this method will create a VolatileImage without regard to
	* <code>ImageCapabilities</code> constraints.
	*
	* The returned <code>VolatileImage</code> has
	* a layout and color model that is closest to this native device
	* configuration and can therefore be optimally blitted to this
	* device.
	* @param width the width of the returned <code>VolatileImage</code>
	* @param height the height of the returned <code>VolatileImage</code>
	* @param caps the image capabilities
	* @param transparency the specified transparency mode
	* @return a <code>VolatileImage</code> whose data layout and color
	* model is compatible with this <code>GraphicsConfiguration</code>.
	* @see Transparency#OPAQUE
	* @see Transparency#BITMASK
	* @see Transparency#TRANSLUCENT
	* @throws IllegalArgumentException if the transparency is not a valid value
	* @exception AWTException if the supplied image capabilities could not
	* be met by this graphics configuration
	* @see Component#createVolatileImage(int, int)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function createCompatibleVolatileImage(width : Int, height : Int, caps : java.awt.ImageCapabilities, transparency : Int) : java.awt.image.VolatileImage;
	
	/**
	* Returns the {@link ColorModel} associated with this
	* <code>GraphicsConfiguration</code>.
	* @return a <code>ColorModel</code> object that is associated with
	* this <code>GraphicsConfiguration</code>.
	*/
	@:overload @:public @:abstract public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Returns the <code>ColorModel</code> associated with this
	* <code>GraphicsConfiguration</code> that supports the specified
	* transparency.
	* @param transparency the specified transparency mode
	* @return a <code>ColorModel</code> object that is associated with
	* this <code>GraphicsConfiguration</code> and supports the
	* specified transparency or null if the transparency is not a valid
	* value.
	* @see Transparency#OPAQUE
	* @see Transparency#BITMASK
	* @see Transparency#TRANSLUCENT
	*/
	@:overload @:public @:abstract public function getColorModel(transparency : Int) : java.awt.image.ColorModel;
	
	/**
	* Returns the default {@link AffineTransform} for this
	* <code>GraphicsConfiguration</code>. This
	* <code>AffineTransform</code> is typically the Identity transform
	* for most normal screens.  The default <code>AffineTransform</code>
	* maps coordinates onto the device such that 72 user space
	* coordinate units measure approximately 1 inch in device
	* space.  The normalizing transform can be used to make
	* this mapping more exact.  Coordinates in the coordinate space
	* defined by the default <code>AffineTransform</code> for screen and
	* printer devices have the origin in the upper left-hand corner of
	* the target region of the device, with X coordinates
	* increasing to the right and Y coordinates increasing downwards.
	* For image buffers not associated with a device, such as those not
	* created by <code>createCompatibleImage</code>,
	* this <code>AffineTransform</code> is the Identity transform.
	* @return the default <code>AffineTransform</code> for this
	* <code>GraphicsConfiguration</code>.
	*/
	@:overload @:public @:abstract public function getDefaultTransform() : java.awt.geom.AffineTransform;
	
	/**
	*
	* Returns a <code>AffineTransform</code> that can be concatenated
	* with the default <code>AffineTransform</code>
	* of a <code>GraphicsConfiguration</code> so that 72 units in user
	* space equals 1 inch in device space.
	* <p>
	* For a particular {@link Graphics2D}, g, one
	* can reset the transformation to create
	* such a mapping by using the following pseudocode:
	* <pre>
	*      GraphicsConfiguration gc = g.getDeviceConfiguration();
	*
	*      g.setTransform(gc.getDefaultTransform());
	*      g.transform(gc.getNormalizingTransform());
	* </pre>
	* Note that sometimes this <code>AffineTransform</code> is identity,
	* such as for printers or metafile output, and that this
	* <code>AffineTransform</code> is only as accurate as the information
	* supplied by the underlying system.  For image buffers not
	* associated with a device, such as those not created by
	* <code>createCompatibleImage</code>, this
	* <code>AffineTransform</code> is the Identity transform
	* since there is no valid distance measurement.
	* @return an <code>AffineTransform</code> to concatenate to the
	* default <code>AffineTransform</code> so that 72 units in user
	* space is mapped to 1 inch in device space.
	*/
	@:overload @:public @:abstract public function getNormalizingTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the bounds of the <code>GraphicsConfiguration</code>
	* in the device coordinates. In a multi-screen environment
	* with a virtual device, the bounds can have negative X
	* or Y origins.
	* @return the bounds of the area covered by this
	* <code>GraphicsConfiguration</code>.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:abstract public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns the buffering capabilities of this
	* <code>GraphicsConfiguration</code>.
	* @return the buffering capabilities of this graphics
	* configuration object
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getBufferCapabilities() : java.awt.BufferCapabilities;
	
	/**
	* Returns the image capabilities of this
	* <code>GraphicsConfiguration</code>.
	* @return the image capabilities of this graphics
	* configuration object
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getImageCapabilities() : java.awt.ImageCapabilities;
	
	/**
	* Returns whether this {@code GraphicsConfiguration} supports
	* the {@link GraphicsDevice.WindowTranslucency#PERPIXEL_TRANSLUCENT
	* PERPIXEL_TRANSLUCENT} kind of translucency.
	*
	* @return whether the given GraphicsConfiguration supports
	*         the translucency effects.
	*
	* @see Window#setBackground(Color)
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function isTranslucencyCapable() : Bool;
	
	
}
@:native('java$awt$GraphicsConfiguration$DefaultBufferCapabilities') @:internal extern class GraphicsConfiguration_DefaultBufferCapabilities extends java.awt.BufferCapabilities
{
	@:overload @:public public function new(imageCaps : java.awt.ImageCapabilities) : Void;
	
	
}
