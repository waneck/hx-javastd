package sun.java2d;
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
extern class SurfaceData implements java.awt.Transparency implements sun.java2d.DisposerTarget implements sun.java2d.StateTrackable implements sun.java2d.Surface
{
	@:overload private function new(surfaceType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel) : Void;
	
	@:overload private function new(state : sun.java2d.StateTrackable.StateTrackable_State, surfaceType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel) : Void;
	
	@:overload private function new(trackable : sun.java2d.StateTrackableDelegate, surfaceType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel) : Void;
	
	@:overload private function new(state : sun.java2d.StateTrackable.StateTrackable_State) : Void;
	
	/**
	* Subclasses can set a "blit proxy key" which will be used
	* along with the SurfaceManager.getCacheData() mechanism to
	* store acceleration-compatible cached copies of source images.
	* This key is a "tag" used to identify which cached copies
	* are compatible with this destination SurfaceData.
	* The getSourceSurfaceData() method uses this key to manage
	* cached copies of a source image as described below.
	* <p>
	* The Object used as this key should be as unique as it needs
	* to be to ensure that multiple acceleratible destinations can
	* each store their cached copies separately under different keys
	* without interfering with each other or getting back the wrong
	* cached copy.
	* <p>
	* Many acceleratable SurfaceData objects can use their own
	* GraphicsConfiguration as their proxy key as the GC object will
	* typically be unique to a given screen and pixel format, but
	* other rendering destinations may have more or less stringent
	* sharing requirements.  For instance, X11 pixmaps can be
	* shared on a given screen by any GraphicsConfiguration that
	* has the same depth and SurfaceType.  Multiple such GCs with
	* the same depth and SurfaceType can exist per screen so storing
	* a different cached proxy for each would be a waste.  One can
	* imagine platforms where a single cached copy can be created
	* and shared across all screens and pixel formats - such
	* implementations could use a single heavily shared key Object.
	*/
	@:overload private function setBlitProxyKey(key : Dynamic) : Void;
	
	/**
	* This method is called on a destination SurfaceData to choose
	* the best SurfaceData from a source Image for an imaging
	* operation, with help from its SurfaceManager.
	* The method may determine that the default SurfaceData was
	* really the best choice in the first place, or it may decide
	* to use a cached surface.  Some general decisions about whether
	* acceleration is enabled are made by this method, but any
	* decision based on the type of the source image is made in
	* the makeProxyFor method below when it comes up with the
	* appropriate SurfaceDataProxy instance.
	* The parameters describe the type of imaging operation being performed.
	* <p>
	* If a blitProxyKey was supplied by the subclass then it is
	* used to potentially override the choice of source SurfaceData.
	* The outline of this process is:
	* <ol>
	* <li> Image pipeline asks destSD to find an appropriate
	*      srcSD for a given source Image object.
	* <li> destSD gets the SurfaceManager of the source Image
	*      and first retrieves the default SD from it using
	*      getPrimarySurfaceData()
	* <li> destSD uses its "blit proxy key" (if set) to look for
	*      some cached data stored in the source SurfaceManager
	* <li> If the cached data is null then makeProxyFor() is used
	*      to create some cached data which is stored back in the
	*      source SurfaceManager under the same key for future uses.
	* <li> The cached data will be a SurfaceDataProxy object.
	* <li> The SurfaceDataProxy object is then consulted to
	*      return a replacement SurfaceData object (typically
	*      a cached copy if appropriate, or the original if not).
	* </ol>
	*/
	@:overload public function getSourceSurfaceData(img : java.awt.Image, txtype : Int, comp : sun.java2d.loops.CompositeType, bgColor : java.awt.Color) : SurfaceData;
	
	/**
	* This method is called on a destination SurfaceData to choose
	* a proper SurfaceDataProxy subclass for a source SurfaceData
	* to use to control when and with what surface to override a
	* given image operation.  The argument is the default SurfaceData
	* for the source Image.
	* <p>
	* The type of the return object is chosen based on the
	* acceleration capabilities of this SurfaceData and the
	* type of the given source SurfaceData object.
	* <p>
	* In some cases the original SurfaceData will always be the
	* best choice to use to blit to this SurfaceData.  This can
	* happen if the source image is a hardware surface of the
	* same type as this one and so acceleration will happen without
	* any caching.  It may also be the case that the source image
	* can never be accelerated on this SurfaceData - for example
	* because it is translucent and there are no accelerated
	* translucent image ops for this surface.
	* <p>
	* In those cases there is a special SurfaceDataProxy.UNCACHED
	* instance that represents a NOP for caching purposes - it
	* always returns the original sourceSD object as the replacement
	* copy so no caching is ever performed.
	*/
	@:overload public function makeProxyFor(srcData : SurfaceData) : sun.java2d.SurfaceDataProxy;
	
	/**
	* Extracts the SurfaceManager from the given Image, and then
	* returns the SurfaceData object that would best be suited as the
	* destination surface in some rendering operation.
	*/
	@:overload public static function getPrimarySurfaceData(img : java.awt.Image) : SurfaceData;
	
	/**
	* Restores the contents of the given Image and then returns the new
	* SurfaceData object in use by the Image's SurfaceManager.
	*/
	@:overload public static function restoreContents(img : java.awt.Image) : SurfaceData;
	
	@:overload public function getState() : sun.java2d.StateTrackable.StateTrackable_State;
	
	@:overload public function getStateTracker() : sun.java2d.StateTracker;
	
	/**
	* Marks this surface as dirty.
	*/
	@:overload @:final public function markDirty() : Void;
	
	/**
	* Sets the value of the surfaceLost variable, which indicates whether
	* something has happened to the rendering surface such that it needs
	* to be restored and re-rendered.
	*/
	@:overload public function setSurfaceLost(lost : Bool) : Void;
	
	@:overload public function isSurfaceLost() : Bool;
	
	/**
	* Returns a boolean indicating whether or not this SurfaceData is valid.
	*/
	@:overload @:final public function isValid() : Bool;
	
	@:overload public function getDisposerReferent() : Dynamic;
	
	@:overload public function getNativeOps() : haxe.Int64;
	
	/**
	* Sets this SurfaceData object to the invalid state.  All Graphics
	* objects must get a new SurfaceData object via the refresh method
	* and revalidate their pipelines before continuing.
	*/
	@:overload public function invalidate() : Void;
	
	/**
	* Certain changes in the configuration of a surface require the
	* invalidation of existing associated SurfaceData objects and
	* the creation of brand new ones.  These changes include size,
	* ColorModel, or SurfaceType.  Existing Graphics objects
	* which are directed at such surfaces, however, must continue
	* to render to them even after the change occurs underneath
	* the covers.  The getReplacement() method is called from
	* SunGraphics2D.revalidateAll() when the associated SurfaceData
	* is found to be invalid so that a Graphics object can continue
	* to render to the surface in its new configuration.
	*
	* Such changes only tend to happen to window based surfaces since
	* most image based surfaces never change size or pixel format.
	* Even VolatileImage objects never change size and they only
	* change their pixel format when manually validated against a
	* new GraphicsConfiguration, at which point old Graphics objects
	* are no longer expected to render to them after the validation
	* step.  Thus, only window based surfaces really need to deal
	* with this form of replacement.
	*/
	@:overload @:abstract public function getReplacement() : SurfaceData;
	
	private static var colorPrimitives(default, null) : sun.java2d.pipe.LoopPipe;
	
	public static var outlineTextRenderer(default, null) : sun.java2d.pipe.TextPipe;
	
	public static var solidTextRenderer(default, null) : sun.java2d.pipe.TextPipe;
	
	public static var aaTextRenderer(default, null) : sun.java2d.pipe.TextPipe;
	
	public static var lcdTextRenderer(default, null) : sun.java2d.pipe.TextPipe;
	
	private static var colorPipe(default, null) : sun.java2d.pipe.AlphaColorPipe;
	
	private static var colorViaShape(default, null) : sun.java2d.pipe.PixelToShapeConverter;
	
	private static var colorViaPgram(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var colorText(default, null) : sun.java2d.pipe.TextPipe;
	
	private static var clipColorPipe(default, null) : sun.java2d.pipe.CompositePipe;
	
	private static var clipColorText(default, null) : sun.java2d.pipe.TextPipe;
	
	private static var AAColorShape(default, null) : sun.java2d.pipe.AAShapePipe;
	
	private static var AAColorViaShape(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var AAColorViaPgram(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var AAClipColorShape(default, null) : sun.java2d.pipe.AAShapePipe;
	
	private static var AAClipColorViaShape(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var paintPipe(default, null) : sun.java2d.pipe.CompositePipe;
	
	private static var paintShape(default, null) : sun.java2d.pipe.SpanShapeRenderer;
	
	private static var paintViaShape(default, null) : sun.java2d.pipe.PixelToShapeConverter;
	
	private static var paintText(default, null) : sun.java2d.pipe.TextPipe;
	
	private static var clipPaintPipe(default, null) : sun.java2d.pipe.CompositePipe;
	
	private static var clipPaintText(default, null) : sun.java2d.pipe.TextPipe;
	
	private static var AAPaintShape(default, null) : sun.java2d.pipe.AAShapePipe;
	
	private static var AAPaintViaShape(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var AAClipPaintShape(default, null) : sun.java2d.pipe.AAShapePipe;
	
	private static var AAClipPaintViaShape(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var compPipe(default, null) : sun.java2d.pipe.CompositePipe;
	
	private static var compShape(default, null) : sun.java2d.pipe.SpanShapeRenderer;
	
	private static var compViaShape(default, null) : sun.java2d.pipe.PixelToShapeConverter;
	
	private static var compText(default, null) : sun.java2d.pipe.TextPipe;
	
	private static var clipCompPipe(default, null) : sun.java2d.pipe.CompositePipe;
	
	private static var clipCompText(default, null) : sun.java2d.pipe.TextPipe;
	
	private static var AACompShape(default, null) : sun.java2d.pipe.AAShapePipe;
	
	private static var AACompViaShape(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var AAClipCompShape(default, null) : sun.java2d.pipe.AAShapePipe;
	
	private static var AAClipCompViaShape(default, null) : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var imagepipe(default, null) : sun.java2d.pipe.DrawImagePipe;
	
	@:overload public function canRenderLCDText(sg2d : sun.java2d.SunGraphics2D) : Bool;
	
	@:overload public function canRenderParallelograms(sg2d : sun.java2d.SunGraphics2D) : Bool;
	
	@:overload public function validatePipe(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	/**
	* Returns a MaskFill object that can be used on this destination
	* with the source (paint) and composite types determined by the given
	* SunGraphics2D, or null if no such MaskFill object can be located.
	* Subclasses can override this method if they wish to filter other
	* attributes (such as the hardware capabilities of the destination
	* surface) before returning a specific MaskFill object.
	*/
	@:overload private function getMaskFill(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.loops.MaskFill;
	
	/**
	* Return a RenderLoops object containing all of the basic
	* GraphicsPrimitive objects for rendering to the destination
	* surface with the current attributes of the given SunGraphics2D.
	*/
	@:overload public function getRenderLoops(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.loops.RenderLoops;
	
	/**
	* Construct and return a RenderLoops object containing all of
	* the basic GraphicsPrimitive objects for rendering to the
	* destination surface with the given source, destination, and
	* composite types.
	*/
	@:overload public static function makeRenderLoops(src : sun.java2d.loops.SurfaceType, comp : sun.java2d.loops.CompositeType, dst : sun.java2d.loops.SurfaceType) : sun.java2d.loops.RenderLoops;
	
	/**
	* Return the GraphicsConfiguration object that describes this
	* destination surface.
	*/
	@:overload @:abstract public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Return the SurfaceType object that describes the destination
	* surface.
	*/
	@:overload @:final public function getSurfaceType() : sun.java2d.loops.SurfaceType;
	
	/**
	* Return the ColorModel for the destination surface.
	*/
	@:overload @:final public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Returns the type of this <code>Transparency</code>.
	* @return the field type of this <code>Transparency</code>, which is
	*          either OPAQUE, BITMASK or TRANSLUCENT.
	*/
	@:overload public function getTransparency() : Int;
	
	/**
	* Return a readable Raster which contains the pixels for the
	* specified rectangular region of the destination surface.
	* The coordinate origin of the returned Raster is the same as
	* the device space origin of the destination surface.
	* In some cases the returned Raster might also be writeable.
	* In most cases, the returned Raster might contain more pixels
	* than requested.
	*
	* @see useTightBBoxes
	*/
	@:overload @:abstract public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	/**
	* Does the pixel accessibility of the destination surface
	* suggest that rendering algorithms might want to take
	* extra time to calculate a more accurate bounding box for
	* the operation being performed?
	* The typical case when this will be true is when a copy of
	* the pixels has to be made when doing a getRaster.  The
	* fewer pixels copied, the faster the operation will go.
	*
	* @see getRaster
	*/
	@:overload public function useTightBBoxes() : Bool;
	
	/**
	* Returns the pixel data for the specified Argb value packed
	* into an integer for easy storage and conveyance.
	*/
	@:overload public function pixelFor(rgb : Int) : Int;
	
	/**
	* Returns the pixel data for the specified color packed into an
	* integer for easy storage and conveyance.
	*
	* This method will use the getRGB() method of the Color object
	* and defer to the pixelFor(int rgb) method if not overridden.
	*
	* For now this is a convenience function, but for cases where
	* the highest quality color conversion is requested, this method
	* should be overridden in those cases so that a more direct
	* conversion of the color to the destination color space
	* can be done using the additional information in the Color
	* object.
	*/
	@:overload public function pixelFor(c : java.awt.Color) : Int;
	
	/**
	* Returns the Argb representation for the specified integer value
	* which is packed in the format of the associated ColorModel.
	*/
	@:overload public function rgbFor(pixel : Int) : Int;
	
	/**
	* Returns the bounds of the destination surface.
	*/
	@:overload @:abstract public function getBounds() : java.awt.Rectangle;
	
	/**
	* Performs Security Permissions checks to see if a Custom
	* Composite object should be allowed access to the pixels
	* of this surface.
	*/
	@:overload private function checkCustomComposite() : Void;
	
	/**
	* Fetches private field IndexColorModel.allgrayopaque
	* which is true when all palette entries in the color
	* model are gray and opaque.
	*/
	@:overload @:native private static function isOpaqueGray(icm : java.awt.image.IndexColorModel) : Bool;
	
	/**
	* For our purposes null and NullSurfaceData are the same as
	* they represent a disposed surface.
	*/
	@:overload public static function isNull(sd : SurfaceData) : Bool;
	
	/**
	* Performs a copyarea within this surface.  Returns
	* false if there is no algorithm to perform the copyarea
	* given the current settings of the SunGraphics2D.
	*/
	@:overload public function copyArea(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, dx : Int, dy : Int) : Bool;
	
	/**
	* Synchronously releases resources associated with this surface.
	*/
	@:overload public function flush() : Void;
	
	/**
	* Returns destination associated with this SurfaceData.  This could be
	* either an Image or a Component; subclasses of SurfaceData are
	* responsible for returning the appropriate object.
	*/
	@:overload @:abstract public function getDestination() : Dynamic;
	
	
}
@:native('sun$java2d$SurfaceData$PixelToShapeLoopConverter') @:internal extern class SurfaceData_PixelToShapeLoopConverter extends sun.java2d.pipe.PixelToShapeConverter implements sun.java2d.pipe.LoopBasedPipe
{
	@:overload public function new(pipe : sun.java2d.pipe.ShapeDrawPipe) : Void;
	
	
}
@:native('sun$java2d$SurfaceData$PixelToPgramLoopConverter') @:internal extern class SurfaceData_PixelToPgramLoopConverter extends sun.java2d.pipe.PixelToParallelogramConverter implements sun.java2d.pipe.LoopBasedPipe
{
	@:overload public function new(shapepipe : sun.java2d.pipe.ShapeDrawPipe, pgrampipe : sun.java2d.pipe.ParallelogramPipe, minPenSize : Float, normPosition : Float, adjustfill : Bool) : Void;
	
	
}
