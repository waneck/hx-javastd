package sun.java2d.xr;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class XRSurfaceData extends sun.java2d.x11.XSurfaceData
{
	private var depth : Int;
	
	@:overload @:native private function XRInitSurface(depth : Int, width : Int, height : Int, drawable : haxe.Int64, pictFormat : Int) : Void;
	
	public static var DESC_BYTE_A8_X11(default, null) : String;
	
	public static var DESC_INT_RGB_X11(default, null) : String;
	
	public static var DESC_INT_ARGB_X11(default, null) : String;
	
	public static var ByteA8X11(default, null) : sun.java2d.loops.SurfaceType;
	
	public static var IntRgbX11(default, null) : sun.java2d.loops.SurfaceType;
	
	public static var IntArgbPreX11(default, null) : sun.java2d.loops.SurfaceType;
	
	@:overload override public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	private var xrpipe : sun.java2d.xr.XRRenderer;
	
	private var xrtxpipe : sun.java2d.pipe.PixelToShapeConverter;
	
	private var xrtextpipe : sun.java2d.pipe.TextPipe;
	
	private var xrDrawImage : sun.java2d.xr.XRDrawImage;
	
	private var aaShapePipe : sun.java2d.pipe.ShapeDrawPipe;
	
	private var aaPixelToShapeConv : sun.java2d.pipe.PixelToShapeConverter;
	
	@:overload public static function initXRSurfaceData() : Void;
	
	/**
	* Synchronized accessor method for isDrawableValid.
	*/
	@:overload private function isXRDrawableValid() : Bool;
	
	@:overload public function makeProxyFor(srcData : sun.java2d.SurfaceData) : sun.java2d.SurfaceDataProxy;
	
	@:overload override public function validatePipe(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload override private function getMaskFill(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.loops.MaskFill;
	
	@:overload override public function getRenderLoops(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.loops.RenderLoops;
	
	@:overload override public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Method for instantiating a Window SurfaceData
	*/
	@:overload public static function createData(peer : sun.awt.X11ComponentPeer) : XRSurfaceData_XRWindowSurfaceData;
	
	/**
	* Method for instantiating a Pixmap SurfaceData (offscreen).
	* If the surface * is opaque a 24-bit/RGB surface is chosen,
	* otherwise a 32-bit ARGB surface.
	*/
	@:overload public static function createData(gc : sun.java2d.xr.XRGraphicsConfig, width : Int, height : Int, cm : java.awt.image.ColorModel, image : java.awt.Image, drawable : haxe.Int64, transparency : Int) : XRSurfaceData_XRPixmapSurfaceData;
	
	@:overload private function new(peer : sun.awt.X11ComponentPeer, gc : sun.java2d.xr.XRGraphicsConfig, sType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel, depth : Int, transparency : Int) : Void;
	
	@:overload private function new(renderQueue : sun.java2d.xr.XRBackend) : Void;
	
	/**
	* Inits the XRender-data-structures which belong to the XRSurfaceData.
	*
	* @param pictureFormat
	*/
	@:overload public function initXRender(pictureFormat : Int) : Void;
	
	@:native('getGC') @:overload public static function _getGC(peer : sun.awt.X11ComponentPeer) : sun.java2d.xr.XRGraphicsConfig;
	
	/**
	* Returns a boolean indicating whether or not a copyArea from the given
	* rectangle source coordinates might be incomplete and result in X11
	* GraphicsExposure events being generated from XCopyArea. This method
	* allows the SurfaceData copyArea method to determine if it needs to set
	* the GraphicsExposures attribute of the X11 GC to True or False to receive
	* or avoid the events.
	*
	* @return true if there is any chance that an XCopyArea from the given
	*         source coordinates could produce any X11 Exposure events.
	*/
	@:overload @:abstract public function canSourceSendExposures(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* CopyArea is implemented using the "old" X11 GC, therefor clip and
	* needExposures have to be validated against that GC. Pictures and GCs
	* don't share state.
	*/
	@:overload public function validateCopyAreaGC(gcClip : sun.java2d.pipe.Region, needExposures : Bool) : Void;
	
	@:overload override public function copyArea(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, dx : Int, dy : Int) : Bool;
	
	/**
	* Returns the XRender SurfaceType which is able to fullfill the specified
	* transparency requirement.
	*/
	@:native('getSurfaceType') @:overload public static function _getSurfaceType(gc : sun.java2d.xr.XRGraphicsConfig, transparency : Int) : sun.java2d.loops.SurfaceType;
	
	@:overload override public function invalidate() : Void;
	
	public var picture : Int;
	
	public var maskBuffer : sun.java2d.xr.XRCompositeManager;
	
	/**
	* Validates the Surface when used as destination.
	*/
	@:overload public function validateAsDestination(sg2d : sun.java2d.SunGraphics2D, clip : sun.java2d.pipe.Region) : Void;
	
	@:overload @:synchronized public function makePipes() : Void;
	
	@:overload public function getGC() : haxe.Int64;
	
	@:overload public function getPicture() : Int;
	
	@:overload public function getXid() : Int;
	
	@:overload public function getGraphicsConfig() : sun.java2d.xr.XRGraphicsConfig;
	
	
}
@:native('sun$java2d$xr$XRSurfaceData$XRWindowSurfaceData') extern class XRSurfaceData_XRWindowSurfaceData extends XRSurfaceData
{
	@:overload public function new(peer : sun.awt.X11ComponentPeer, gc : sun.java2d.xr.XRGraphicsConfig, sType : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload override public function getReplacement() : sun.java2d.SurfaceData;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	@:overload override public function canSourceSendExposures(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Returns destination Component associated with this SurfaceData.
	*/
	@:overload override public function getDestination() : Dynamic;
	
	@:overload override public function invalidate() : Void;
	
	
}
@:native('sun$java2d$xr$XRSurfaceData$XRInternalSurfaceData') extern class XRSurfaceData_XRInternalSurfaceData extends XRSurfaceData
{
	@:overload public function new(renderQueue : sun.java2d.xr.XRBackend, pictXid : Int, transform : java.awt.geom.AffineTransform) : Void;
	
	@:overload override public function canSourceSendExposures(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	@:overload override public function getDestination() : Dynamic;
	
	@:overload override public function getReplacement() : sun.java2d.SurfaceData;
	
	
}
@:native('sun$java2d$xr$XRSurfaceData$XRPixmapSurfaceData') extern class XRSurfaceData_XRPixmapSurfaceData extends XRSurfaceData
{
	@:overload public function new(gc : sun.java2d.xr.XRGraphicsConfig, width : Int, height : Int, image : java.awt.Image, sType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel, drawable : haxe.Int64, transparency : Int, pictFormat : Int, depth : Int) : Void;
	
	@:overload public function initSurface(depth : Int, width : Int, height : Int, drawable : haxe.Int64, pictFormat : Int) : Void;
	
	@:overload override public function getReplacement() : sun.java2d.SurfaceData;
	
	/**
	* Need this since the surface data is created with the color model of
	* the target GC, which is always opaque. But in SunGraphics2D.blitSD we
	* choose loops based on the transparency on the source SD, so it could
	* choose wrong loop (blit instead of blitbg, for example).
	*/
	@:overload override public function getTransparency() : Int;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	@:overload override public function canSourceSendExposures(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	@:overload override public function flush() : Void;
	
	/**
	* Returns destination Image associated with this SurfaceData.
	*/
	@:overload override public function getDestination() : Dynamic;
	
	
}
@:native('sun$java2d$xr$XRSurfaceData$LazyPipe') extern class XRSurfaceData_LazyPipe extends sun.java2d.pipe.ValidatePipe
{
	@:overload override public function validate(sg2d : sun.java2d.SunGraphics2D) : Bool;
	
	
}
