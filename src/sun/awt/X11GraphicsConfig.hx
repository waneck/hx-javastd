package sun.awt;
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
extern class X11GraphicsConfig extends java.awt.GraphicsConfiguration implements sun.awt.image.SurfaceManager.SurfaceManager_ProxiedGraphicsConfig
{
	/**
	* This is an implementation of a GraphicsConfiguration object for a
	* single X11 visual.
	*
	* @see GraphicsEnvironment
	* @see GraphicsDevice
	*/
	@:protected private var screen : sun.awt.X11GraphicsDevice;
	
	@:protected private var visual : Int;
	
	@:protected private var bitsPerPixel : Int;
	
	@:protected private var surfaceType : sun.java2d.loops.SurfaceType;
	
	@:public public var solidloops : sun.java2d.loops.RenderLoops;
	
	@:overload @:public @:static public static function getConfig(device : sun.awt.X11GraphicsDevice, visualnum : Int, depth : Int, colormap : Int, doubleBuffer : Bool) : sun.awt.X11GraphicsConfig;
	
	/*
	* Note this method is currently here for backward compatability
	* as this was the method used in jdk 1.2 beta4 to create the
	* X11GraphicsConfig objects. Java3D code had called this method
	* explicitly so without this, if a user tries to use JDK1.2 fcs
	* with Java3D beta1, a NoSuchMethod execption is thrown and
	* the program exits. REMOVE this method after Java3D fcs is
	* released!
	*/
	@:overload @:public @:static public static function getConfig(device : sun.awt.X11GraphicsDevice, visualnum : Int, depth : Int, colormap : Int, type : Int) : sun.awt.X11GraphicsConfig;
	
	@:overload @:protected private function new(device : sun.awt.X11GraphicsDevice, visualnum : Int, depth : Int, colormap : Int, doubleBuffer : Bool) : Void;
	
	/**
	* Return the graphics device associated with this configuration.
	*/
	@:overload @:public override public function getDevice() : java.awt.GraphicsDevice;
	
	/**
	* Returns the visual id associated with this configuration.
	*/
	@:overload @:public public function getVisual() : Int;
	
	/**
	* Returns the depth associated with this configuration.
	*/
	@:overload @:public public function getDepth() : Int;
	
	/**
	* Returns the colormap associated with this configuration.
	*/
	@:overload @:public public function getColormap() : Int;
	
	/**
	* Returns a number of bits allocated per pixel
	* (might be different from depth)
	*/
	@:overload @:public public function getBitsPerPixel() : Int;
	
	@:overload @:public @:synchronized public function getSurfaceType() : sun.java2d.loops.SurfaceType;
	
	@:overload @:public public function getProxyKey() : Dynamic;
	
	/**
	* Return the RenderLoops this type of destination uses for
	* solid fills and strokes.
	*/
	@:overload @:public @:synchronized public function getSolidLoops(stype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.RenderLoops;
	
	/**
	* Returns the color model associated with this configuration.
	*/
	@:overload @:public @:synchronized override public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Returns the color model associated with this configuration that
	* supports the specified transparency.
	*/
	@:overload @:public override public function getColorModel(transparency : Int) : java.awt.image.ColorModel;
	
	@:overload @:public @:static public static function createDCM32(rMask : Int, gMask : Int, bMask : Int, aMask : Int, aPre : Bool) : java.awt.image.DirectColorModel;
	
	@:overload @:public @:static public static function createABGRCCM() : java.awt.image.ComponentColorModel;
	
	/**
	* Returns the default Transform for this configuration.  This
	* Transform is typically the Identity transform for most normal
	* screens.  Device coordinates for screen and printer devices will
	* have the origin in the upper left-hand corner of the target region of
	* the device, with X coordinates
	* increasing to the right and Y coordinates increasing downwards.
	* For image buffers, this Transform will be the Identity transform.
	*/
	@:overload @:public override public function getDefaultTransform() : java.awt.geom.AffineTransform;
	
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
	@:overload @:public override public function getNormalizingTransform() : java.awt.geom.AffineTransform;
	
	@:overload @:public public function getAData() : haxe.Int64;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function getBounds() : java.awt.Rectangle;
	
	@:overload @:public @:native public function pGetBounds(screenNum : Int) : java.awt.Rectangle;
	
	@:overload @:public override public function getBufferCapabilities() : java.awt.BufferCapabilities;
	
	@:overload @:public override public function getImageCapabilities() : java.awt.ImageCapabilities;
	
	@:overload @:public public function isDoubleBuffered() : Bool;
	
	/**
	* Creates a new SurfaceData that will be associated with the given
	* X11ComponentPeer.
	*/
	@:overload @:public public function createSurfaceData(peer : sun.awt.X11ComponentPeer) : sun.java2d.SurfaceData;
	
	/**
	* Creates a new hidden-acceleration image of the given width and height
	* that is associated with the target Component.
	*/
	@:overload @:public public function createAcceleratedImage(target : java.awt.Component, width : Int, height : Int) : java.awt.Image;
	
	/**
	* Attempts to create an XDBE-based backbuffer for the given peer.  If
	* the requested configuration is not natively supported, an AWTException
	* is thrown.  Otherwise, if the backbuffer creation is successful, a
	* handle to the native backbuffer is returned.
	*/
	@:overload @:public public function createBackBuffer(peer : sun.awt.X11ComponentPeer, numBuffers : Int, caps : java.awt.BufferCapabilities) : haxe.Int64;
	
	/**
	* Destroys the backbuffer object represented by the given handle value.
	*/
	@:overload @:public @:native public function destroyBackBuffer(backBuffer : haxe.Int64) : Void;
	
	/**
	* Creates a VolatileImage that essentially wraps the target Component's
	* backbuffer, using the provided backbuffer handle.
	*/
	@:overload @:public public function createBackBufferImage(target : java.awt.Component, backBuffer : haxe.Int64) : java.awt.image.VolatileImage;
	
	/**
	* Performs the native XDBE flip operation for the given target Component.
	*/
	@:overload @:public public function flip(peer : sun.awt.X11ComponentPeer, target : java.awt.Component, xBackBuffer : java.awt.image.VolatileImage, x1 : Int, y1 : Int, x2 : Int, y2 : Int, flipAction : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	@:overload @:public override public function isTranslucencyCapable() : Bool;
	
	
}
@:native('sun$awt$X11GraphicsConfig$XDBECapabilities') @:internal extern class X11GraphicsConfig_XDBECapabilities extends java.awt.BufferCapabilities
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$awt$X11GraphicsConfig$X11GCDisposerRecord') @:internal extern class X11GraphicsConfig_X11GCDisposerRecord implements sun.java2d.DisposerRecord
{
	@:overload @:public public function new(x11CfgData : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized public function dispose() : Void;
	
	
}
