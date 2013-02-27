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
/**
* Manages per-application resources, e.g. the 1x1 pixmap used for solid color
* fill as well as per-application state e.g. the currently set source picture
* used for composition .
*
* @author Clemens Eisserer
*/
extern class XRCompositeManager
{
	@:overload @:synchronized public static function getInstance(surface : sun.java2d.xr.XRSurfaceData) : XRCompositeManager;
	
	@:overload public function initResources(surface : sun.java2d.xr.XRSurfaceData) : Void;
	
	@:overload public function setForeground(pixel : Int) : Void;
	
	@:overload public function setGradientPaint(gradient : sun.java2d.xr.XRSurfaceData) : Void;
	
	@:overload public function setTexturePaint(texture : sun.java2d.xr.XRSurfaceData) : Void;
	
	@:overload public function XRResetPaint() : Void;
	
	@:overload public function validateCompositeState(comp : java.awt.Composite, xform : java.awt.geom.AffineTransform, paint : java.awt.Paint, sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload public function maskRequired() : Bool;
	
	@:overload public function XRComposite(src : Int, mask : Int, dst : Int, srcX : Int, srcY : Int, maskX : Int, maskY : Int, dstX : Int, dstY : Int, width : Int, height : Int) : Void;
	
	@:overload public function XRCompositeTraps(dst : Int, srcX : Int, srcY : Int, trapList : sun.java2d.jules.TrapezoidList) : Void;
	
	@:overload public function XRRenderRectangles(dst : sun.java2d.xr.XRSurfaceData, rects : sun.java2d.xr.GrowableRectArray) : Void;
	
	@:overload public function compositeBlit(src : sun.java2d.xr.XRSurfaceData, dst : sun.java2d.xr.XRSurfaceData, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	@:overload public function compositeText(dst : Int, glyphSet : Int, maskFormat : Int, elts : sun.java2d.xr.GrowableEltArray) : Void;
	
	@:overload public function getMaskColor() : sun.java2d.xr.XRColor;
	
	@:overload public function getExtraAlphaMask() : Int;
	
	@:overload public function isTexturePaintActive() : Bool;
	
	@:overload public function getAlphaColor() : sun.java2d.xr.XRColor;
	
	@:overload public function getBackend() : sun.java2d.xr.XRBackend;
	
	@:overload public function getExtraAlpha() : Single;
	
	@:overload public function getCompRule() : java.StdTypes.Int8;
	
	@:overload public function getTextRenderer() : sun.font.XRTextRenderer;
	
	@:overload public function getMaskBuffer() : sun.java2d.xr.MaskTileManager;
	
	@:overload public function getMaskImage() : sun.java2d.xr.XRMaskImage;
	
	
}
