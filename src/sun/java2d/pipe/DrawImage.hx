package sun.java2d.pipe;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DrawImage implements sun.java2d.pipe.DrawImagePipe
{
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, bgColor : java.awt.Color) : Bool;
	
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx : Int, dy : Int, sx : Int, sy : Int, w : Int, h : Int, bgColor : java.awt.Color) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, bgColor : java.awt.Color) : Bool;
	
	/*
	* This method is only called in those circumstances where the
	* operation has a non-null secondary transform specfied.  Its
	* role is to check for various optimizations based on the types
	* of both the secondary and SG2D transforms and to do some
	* quick calculations to avoid having to combine the transforms
	* and/or to call a more generalized method.
	*/
	@:overload private function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, extraAT : java.awt.geom.AffineTransform, interpType : Int) : Void;
	
	/*
	* This method is called with a final rendering transform that
	* has combined all of the information about the Graphics2D
	* transform attribute with the transformations specified by
	* the arguments to the drawImage call.
	* Its role is to see if the combined transform ends up being
	* acceleratable by either a renderImageCopy or renderImageScale
	* once all of the math is done.
	*
	* Note: The transform supplied here has an origin that is
	* already adjusted to point to the device location where
	* the (sx1, sy1) location of the source image should be placed.
	*/
	@:overload private function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, tx : java.awt.geom.AffineTransform, interpType : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color) : Void;
	
	/*
	* Check the bounding coordinates of the transformed source
	* image to see if they fall on integer coordinates such
	* that they will cause no interpolation anomalies if we
	* use our simplified Blit or ScaledBlit operations instead
	* of a full transform operation.
	*/
	@:overload private function tryCopyOrScale(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color, interpType : Int, coords : java.NativeArray<Float>) : Bool;
	
	@:overload private function renderImageXform(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, tx : java.awt.geom.AffineTransform, interpType : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color) : Void;
	
	@:overload private function renderImageCopy(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, bgColor : java.awt.Color, dx : Int, dy : Int, sx : Int, sy : Int, w : Int, h : Int) : Bool;
	
	@:overload private function renderImageScale(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, bgColor : java.awt.Color, interpType : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color) : Bool;
	
	@:overload public static function closeToInteger(i : Int, d : Float) : Bool;
	
	@:overload public static function isSimpleTranslate(sg : sun.java2d.SunGraphics2D) : Bool;
	
	@:overload private static function isBgOperation(srcData : sun.java2d.SurfaceData, bgColor : java.awt.Color) : Bool;
	
	@:overload private function getBufferedImage(img : java.awt.Image) : java.awt.image.BufferedImage;
	
	@:overload private function blitSurfaceData(sg : sun.java2d.SunGraphics2D, clipRegion : sun.java2d.pipe.Region, srcData : sun.java2d.SurfaceData, dstData : sun.java2d.SurfaceData, srcType : sun.java2d.loops.SurfaceType, dstType : sun.java2d.loops.SurfaceType, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int, bgColor : java.awt.Color) : Void;
	
	@:overload private function scaleSurfaceData(sg : sun.java2d.SunGraphics2D, clipRegion : sun.java2d.pipe.Region, srcData : sun.java2d.SurfaceData, dstData : sun.java2d.SurfaceData, srcType : sun.java2d.loops.SurfaceType, dstType : sun.java2d.loops.SurfaceType, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Bool;
	
	@:overload private static function imageReady(sunimg : sun.awt.image.ToolkitImage, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx : Int, dy : Int, sx : Int, sy : Int, w : Int, h : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, atfm : java.awt.geom.AffineTransform, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
	
}
