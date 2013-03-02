package sun.java2d.xr;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XRPMBlitLoops
{
	@:overload public function new() : Void;
	
	@:overload public static function register() : Void;
	
	/**
	* Caches a SW surface using a temporary pixmap. The pixmap is held by a WeakReference,
	*  allowing it to shrink again after some time.
	*/
	@:overload private static function cacheToTmpSurface(src : sun.java2d.SurfaceData, dst : sun.java2d.xr.XRSurfaceData, w : Int, h : Int, sx : Int, sy : Int) : sun.java2d.xr.XRSurfaceData;
	
	
}
@:internal extern class XRPMBlit extends sun.java2d.loops.Blit
{
	@:overload public function new(srcType : sun.java2d.loops.SurfaceType, dstType : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class XRPMScaledBlit extends sun.java2d.loops.ScaledBlit
{
	@:overload public function new(srcType : sun.java2d.loops.SurfaceType, dstType : sun.java2d.loops.SurfaceType) : Void;
	
	/*
	* TODO: This breaks scales with non-integer coordinates!?!?!
	*/
	@:overload override public function Scale(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	
}
@:internal extern class XRPMTransformedBlit extends sun.java2d.loops.TransformBlit
{
	/**
	* Called also if scale+transform is set
	*
	* @author Clemens Eisserer
	*/
	@:overload public function new(srcType : sun.java2d.loops.SurfaceType, dstType : sun.java2d.loops.SurfaceType) : Void;
	
	/*
	* Calculates the composite-rectangle required for transformed blits. This
	* method is functionally equal to: Shape shp =
	* xform.createTransformedShape(rect); Rectangle bounds = shp.getBounds();
	* but performs significantly better.
	*/
	@:overload public function getCompositeBounds(tr : java.awt.geom.AffineTransform, dstx : Int, dsty : Int, width : Int, height : Int) : java.awt.Rectangle;
	
	@:overload override public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, xform : java.awt.geom.AffineTransform, hint : Int, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	/* TODO: Is mask ever omitable??? ... should be for 90 degree rotation and no shear, but we always need to use RepeatPad */
	@:overload private static function isMaskOmittable(trx : java.awt.geom.AffineTransform, comp : java.awt.Composite, filter : Int) : Bool;
	
	
}
@:internal extern class XrSwToPMBlit extends sun.java2d.loops.Blit
{
	@:overload public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class XrSwToPMScaledBlit extends sun.java2d.loops.ScaledBlit
{
	@:overload override public function Scale(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	
}
@:internal extern class XrSwToPMTransformedBlit extends sun.java2d.loops.TransformBlit
{
	@:overload override public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, xform : java.awt.geom.AffineTransform, hint : Int, sx : Int, sy : Int, dstx : Int, dsty : Int, w : Int, h : Int) : Void;
	
	
}
