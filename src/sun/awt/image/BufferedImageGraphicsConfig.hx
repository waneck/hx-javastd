package sun.awt.image;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferedImageGraphicsConfig extends java.awt.GraphicsConfiguration
{
	@:overload public static function getConfig(bImg : java.awt.image.BufferedImage) : BufferedImageGraphicsConfig;
	
	@:overload public function new(bufImg : java.awt.image.BufferedImage, comp : java.awt.Component) : Void;
	
	/**
	* Return the graphics device associated with this configuration.
	*/
	@:overload override public function getDevice() : java.awt.GraphicsDevice;
	
	/**
	* Returns a BufferedImage with channel layout and color model
	* compatible with this graphics configuration.  This method
	* has nothing to do with memory-mapping
	* a device.  This BufferedImage has
	* a layout and color model
	* that is closest to this native device configuration and thus
	* can be optimally blitted to this device.
	*/
	@:overload override public function createCompatibleImage(width : Int, height : Int) : java.awt.image.BufferedImage;
	
	/**
	* Returns the color model associated with this configuration.
	*/
	@:overload override public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Returns the color model associated with this configuration that
	* supports the specified transparency.
	*/
	@:overload override public function getColorModel(transparency : Int) : java.awt.image.ColorModel;
	
	/**
	* Returns the default Transform for this configuration.  This
	* Transform is typically the Identity transform for most normal
	* screens.  Device coordinates for screen and printer devices will
	* have the origin in the upper left-hand corner of the target region of
	* the device, with X coordinates
	* increasing to the right and Y coordinates increasing downwards.
	* For image buffers, this Transform will be the Identity transform.
	*/
	@:overload override public function getDefaultTransform() : java.awt.geom.AffineTransform;
	
	/**
	*
	* Returns a Transform that can be composed with the default Transform
	* of a Graphics2D so that 72 units in user space will equal 1 inch
	* in device space.
	* Given a Graphics2D, g, one can reset the transformation to create
	* such a mapping by using the following pseudocode:
	* <pre>
	*      GraphicsConfiguration gc = g.getGraphicsConfiguration();
	*
	*      g.setTransform(gc.getDefaultTransform());
	*      g.transform(gc.getNormalizingTransform());
	* </pre>
	* Note that sometimes this Transform will be identity (e.g. for
	* printers or metafile output) and that this Transform is only
	* as accurate as the information supplied by the underlying system.
	* For image buffers, this Transform will be the Identity transform,
	* since there is no valid distance measurement.
	*/
	@:overload override public function getNormalizingTransform() : java.awt.geom.AffineTransform;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	
}