package sun.java2d.opengl;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class GLXGraphicsConfig extends sun.awt.X11GraphicsConfig implements sun.java2d.opengl.OGLGraphicsConfig
{
	@:overload @:public override public function getProxyKey() : Dynamic;
	
	@:overload @:public public function createManagedSurface(w : Int, h : Int, transparency : Int) : sun.java2d.SurfaceData;
	
	@:overload @:public @:static public static function getConfig(device : sun.awt.X11GraphicsDevice, visualnum : Int) : sun.java2d.opengl.GLXGraphicsConfig;
	
	/**
	* Returns true if the provided capability bit is present for this config.
	* See OGLContext.java for a list of supported capabilities.
	*/
	@:overload @:public @:final public function isCapPresent(cap : Int) : Bool;
	
	@:overload @:public @:final public function getNativeConfigInfo() : haxe.Int64;
	
	/**
	* {@inheritDoc}
	*
	* @see sun.java2d.pipe.hw.BufferedContextProvider#getContext
	*/
	@:overload @:public @:final public function getContext() : sun.java2d.opengl.OGLContext;
	
	@:overload @:public override public function createCompatibleImage(width : Int, height : Int) : java.awt.image.BufferedImage;
	
	@:overload @:public override public function getColorModel(transparency : Int) : java.awt.image.ColorModel;
	
	@:overload @:public override public function toString() : String;
	
	/**
	* Creates a new SurfaceData that will be associated with the given
	* X11ComponentPeer.
	*/
	@:overload @:public override public function createSurfaceData(peer : sun.awt.X11ComponentPeer) : sun.java2d.SurfaceData;
	
	/**
	* Creates a new hidden-acceleration image of the given width and height
	* that is associated with the target Component.
	*/
	@:overload @:public override public function createAcceleratedImage(target : java.awt.Component, width : Int, height : Int) : java.awt.Image;
	
	/**
	* Attempts to create a GLX-based backbuffer for the given peer.  If
	* the requested configuration is not natively supported, an AWTException
	* is thrown.  Otherwise, if the backbuffer creation is successful, a
	* value of 1 is returned.
	*/
	@:overload @:public override public function createBackBuffer(peer : sun.awt.X11ComponentPeer, numBuffers : Int, caps : java.awt.BufferCapabilities) : haxe.Int64;
	
	/**
	* Destroys the backbuffer object represented by the given handle value.
	*/
	@:overload @:public override public function destroyBackBuffer(backBuffer : haxe.Int64) : Void;
	
	/**
	* Creates a VolatileImage that essentially wraps the target Component's
	* backbuffer (the provided backbuffer handle is essentially ignored).
	*/
	@:overload @:public override public function createBackBufferImage(target : java.awt.Component, backBuffer : haxe.Int64) : java.awt.image.VolatileImage;
	
	/**
	* Performs the native GLX flip operation for the given target Component.
	*/
	@:overload @:public override public function flip(peer : sun.awt.X11ComponentPeer, target : java.awt.Component, xBackBuffer : java.awt.image.VolatileImage, x1 : Int, y1 : Int, x2 : Int, y2 : Int, flipAction : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	@:overload @:public override public function getBufferCapabilities() : java.awt.BufferCapabilities;
	
	@:overload @:public override public function getImageCapabilities() : java.awt.ImageCapabilities;
	
	/**
	* {@inheritDoc}
	*
	* @see sun.java2d.pipe.hw.AccelGraphicsConfig#createCompatibleVolatileImage
	*/
	@:overload @:public public function createCompatibleVolatileImage(width : Int, height : Int, transparency : Int, type : Int) : java.awt.image.VolatileImage;
	
	/**
	* {@inheritDoc}
	*
	* @see sun.java2d.pipe.hw.AccelGraphicsConfig#getContextCapabilities
	*/
	@:overload @:public public function getContextCapabilities() : sun.java2d.pipe.hw.ContextCapabilities;
	
	@:overload @:public public function addDeviceEventListener(l : sun.java2d.pipe.hw.AccelDeviceEventListener) : Void;
	
	@:overload @:public public function removeDeviceEventListener(l : sun.java2d.pipe.hw.AccelDeviceEventListener) : Void;
	
	
}
/**
* This is a small helper class that allows us to execute
* getGLXConfigInfo() on the queue flushing thread.
*/
@:native('sun$java2d$opengl$GLXGraphicsConfig$GLXGetConfigInfo') @:internal extern class GLXGraphicsConfig_GLXGetConfigInfo implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	@:overload @:public public function getConfigInfo() : haxe.Int64;
	
	
}
@:native('sun$java2d$opengl$GLXGraphicsConfig$GLXBufferCaps') @:internal extern class GLXGraphicsConfig_GLXBufferCaps extends java.awt.BufferCapabilities
{
	@:overload @:public public function new(dblBuf : Bool) : Void;
	
	
}
@:native('sun$java2d$opengl$GLXGraphicsConfig$GLXImageCaps') @:internal extern class GLXGraphicsConfig_GLXImageCaps extends java.awt.ImageCapabilities
{
	@:overload @:public override public function isTrueVolatile() : Bool;
	
	
}
