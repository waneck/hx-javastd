package sun.java2d.x11;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class X11SurfaceData extends sun.java2d.x11.XSurfaceData
{
	@:protected private var depth : Int;
	
	@:overload @:protected @:native private function initSurface(depth : Int, width : Int, height : Int, drawable : haxe.Int64) : Void;
	
	@:public @:static @:final public static var DESC_INT_BGR_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_RGB_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_4BYTE_ABGR_PRE_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_ARGB_PRE_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_IND_OPQ_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_BGR_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_RGB_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_IND_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_GRAY_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_INDEX8_GRAY_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_GRAY_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_INDEX8_GRAY_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_3BYTE_RGB_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_3BYTE_BGR_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_3BYTE_RGB_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_3BYTE_BGR_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_555_RGB_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_565_RGB_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_555_RGB_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_565_RGB_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_INDEXED_X11(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_INDEXED_X11_BM(default, null) : String;
	
	@:public @:static @:final public static var IntBgrX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntRgbX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var FourByteAbgrPreX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntArgbPreX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ThreeByteRgbX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ThreeByteBgrX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UShort555RgbX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UShort565RgbX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UShortIndexedX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteIndexedOpaqueX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteGrayX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Index8GrayX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntBgrX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntRgbX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ThreeByteRgbX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ThreeByteBgrX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UShort555RgbX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UShort565RgbX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UShortIndexedX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteIndexedX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteGrayX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Index8GrayX11_BM(default, null) : sun.java2d.loops.SurfaceType;
	
	@:overload @:public override public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	@:protected private var x11pipe : sun.java2d.x11.X11Renderer;
	
	@:protected private var x11txpipe : sun.java2d.pipe.PixelToShapeConverter;
	
	@:protected @:static private static var x11textpipe : sun.java2d.pipe.TextPipe;
	
	@:protected @:static private static var dgaAvailable : Bool;
	
	/**
	* Returns true if we can use DGA on any of the screens
	*/
	@:overload @:public @:static @:native public static function isDgaAvailable() : Bool;
	
	@:overload @:public @:static public static function isAccelerationEnabled() : Bool;
	
	@:overload @:public override public function makeProxyFor(srcData : sun.java2d.SurfaceData) : sun.java2d.SurfaceDataProxy;
	
	@:overload @:public override public function validatePipe(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload @:public override public function getRenderLoops(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.loops.RenderLoops;
	
	@:overload @:public override public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Method for instantiating a Window SurfaceData
	*/
	@:overload @:public @:static public static function createData(peer : sun.awt.X11ComponentPeer) : sun.java2d.x11.X11SurfaceData.X11SurfaceData_X11WindowSurfaceData;
	
	/**
	* Method for instantiating a Pixmap SurfaceData (offscreen)
	*/
	@:overload @:public @:static public static function createData(gc : sun.awt.X11GraphicsConfig, width : Int, height : Int, cm : java.awt.image.ColorModel, image : java.awt.Image, drawable : haxe.Int64, transparency : Int) : sun.java2d.x11.X11SurfaceData.X11SurfaceData_X11PixmapSurfaceData;
	
	@:overload @:protected private function new(peer : sun.awt.X11ComponentPeer, gc : sun.awt.X11GraphicsConfig, sType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel) : Void;
	
	@:native('getGC') @:overload @:public @:static public static function _getGC(peer : sun.awt.X11ComponentPeer) : sun.awt.X11GraphicsConfig;
	
	/**
	* Returns a boolean indicating whether or not a copyArea from
	* the given rectangle source coordinates might be incomplete
	* and result in X11 GraphicsExposure events being generated
	* from XCopyArea.
	* This method allows the SurfaceData copyArea method to determine
	* if it needs to set the GraphicsExposures attribute of the X11 GC
	* to True or False to receive or avoid the events.
	* @return true if there is any chance that an XCopyArea from the
	*              given source coordinates could produce any X11
	*              Exposure events.
	*/
	@:overload @:public @:abstract public function canSourceSendExposures(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	@:overload @:public override public function copyArea(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, dx : Int, dy : Int) : Bool;
	
	@:native('getSurfaceType') @:overload @:public @:static public static function _getSurfaceType(gc : sun.awt.X11GraphicsConfig, transparency : Int) : sun.java2d.loops.SurfaceType;
	
	@:native('getSurfaceType') @:overload @:public @:static public static function _getSurfaceType(gc : sun.awt.X11GraphicsConfig, transparency : Int, pixmapSurface : Bool) : sun.java2d.loops.SurfaceType;
	
	@:overload @:public override public function invalidate() : Void;
	
	@:overload @:public @:final public function getRenderGC(clip : sun.java2d.pipe.Region, compState : Int, comp : java.awt.Composite, pixel : Int) : haxe.Int64;
	
	@:overload @:public @:final public function getBlitGC(clip : sun.java2d.pipe.Region, needExposures : Bool) : haxe.Int64;
	
	@:overload @:public @:synchronized public function makePipes() : Void;
	
	
}
@:native('sun$java2d$x11$X11SurfaceData$X11WindowSurfaceData') extern class X11SurfaceData_X11WindowSurfaceData extends sun.java2d.x11.X11SurfaceData
{
	@:overload @:public public function new(peer : sun.awt.X11ComponentPeer, gc : sun.awt.X11GraphicsConfig, sType : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public override public function getReplacement() : sun.java2d.SurfaceData;
	
	@:overload @:public override public function getBounds() : java.awt.Rectangle;
	
	@:overload @:public override public function canSourceSendExposures(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Returns destination Component associated with this SurfaceData.
	*/
	@:overload @:public override public function getDestination() : Dynamic;
	
	
}
@:native('sun$java2d$x11$X11SurfaceData$X11PixmapSurfaceData') extern class X11SurfaceData_X11PixmapSurfaceData extends sun.java2d.x11.X11SurfaceData
{
	@:overload @:public public function new(gc : sun.awt.X11GraphicsConfig, width : Int, height : Int, image : java.awt.Image, sType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel, drawable : haxe.Int64, transparency : Int) : Void;
	
	@:overload @:public override public function getReplacement() : sun.java2d.SurfaceData;
	
	/**
	* Need this since the surface data is created with
	* the color model of the target GC, which is always
	* opaque. But in SunGraphics2D.blitSD we choose loops
	* based on the transparency on the source SD, so
	* it could choose wrong loop (blit instead of blitbg,
	* for example).
	*/
	@:overload @:public override public function getTransparency() : Int;
	
	@:overload @:public override public function getBounds() : java.awt.Rectangle;
	
	@:overload @:public override public function canSourceSendExposures(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	@:overload @:public override public function flush() : Void;
	
	/**
	* Returns destination Image associated with this SurfaceData.
	*/
	@:overload @:public override public function getDestination() : Dynamic;
	
	
}
@:native('sun$java2d$x11$X11SurfaceData$LazyPipe') extern class X11SurfaceData_LazyPipe extends sun.java2d.pipe.ValidatePipe
{
	@:overload @:public override public function validate(sg2d : sun.java2d.SunGraphics2D) : Bool;
	
	
}
