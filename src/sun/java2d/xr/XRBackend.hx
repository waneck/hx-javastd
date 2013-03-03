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
* XRender pipeline backend interface.
* Currently there are two different backends implemented:
* - XRBackendJava: And experimental backend, generating protocol directly using java-code and xcb's socket handoff functionality.
* - XRBackendNative: Native 1:1 binding with libX11.
*/
extern interface XRBackend
{
	@:overload @:public public function freePicture(picture : Int) : Void;
	
	@:overload @:public public function freePixmap(pixmap : Int) : Void;
	
	@:overload @:public public function createPixmap(drawable : Int, depth : Int, width : Int, height : Int) : Int;
	
	@:overload @:public public function createPicture(drawable : Int, formatID : Int) : Int;
	
	@:overload @:public public function createGC(drawable : Int) : haxe.Int64;
	
	@:overload @:public public function freeGC(gc : haxe.Int64) : Void;
	
	/* TODO: Use!! */
	@:overload @:public public function copyArea(src : Int, dst : Int, gc : haxe.Int64, srcx : Int, srcy : Int, width : Int, height : Int, dstx : Int, dsty : Int) : Void;
	
	@:overload @:public public function putMaskImage(drawable : Int, gc : haxe.Int64, imageData : java.NativeArray<java.StdTypes.Int8>, sx : Int, sy : Int, dx : Int, dy : Int, width : Int, height : Int, maskOff : Int, maskScan : Int, ea : Single) : Void;
	
	@:overload @:public public function setGCClipRectangles(gc : haxe.Int64, clip : sun.java2d.pipe.Region) : Void;
	
	@:overload @:public public function GCRectangles(drawable : Int, gc : haxe.Int64, rects : sun.java2d.xr.GrowableRectArray) : Void;
	
	@:overload @:public public function setClipRectangles(picture : Int, clip : sun.java2d.pipe.Region) : Void;
	
	@:overload @:public public function setGCExposures(gc : haxe.Int64, exposure : Bool) : Void;
	
	@:overload @:public public function setGCForeground(gc : haxe.Int64, pixel : Int) : Void;
	
	@:overload @:public public function setPictureTransform(picture : Int, transform : java.awt.geom.AffineTransform) : Void;
	
	@:overload @:public public function setPictureRepeat(picture : Int, repeat : Int) : Void;
	
	@:overload @:public public function setFilter(picture : Int, filter : Int) : Void;
	
	@:overload @:public public function renderRectangle(dst : Int, op : java.StdTypes.Int8, color : sun.java2d.xr.XRColor, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function renderRectangles(dst : Int, op : java.StdTypes.Int8, color : sun.java2d.xr.XRColor, rects : sun.java2d.xr.GrowableRectArray) : Void;
	
	@:overload @:public public function renderComposite(op : java.StdTypes.Int8, src : Int, mask : Int, dst : Int, srcX : Int, srcY : Int, maskX : Int, maskY : Int, dstX : Int, dstY : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function XRenderCreateGlyphSet(formatID : Int) : Int;
	
	@:overload @:public public function XRenderAddGlyphs(glyphSet : Int, gl : sun.font.GlyphList, cacheEntries : java.util.List<sun.font.XRGlyphCacheEntry>, pixelData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function XRenderFreeGlyphs(glyphSet : Int, gids : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function XRenderCompositeText(op : java.StdTypes.Int8, src : Int, dst : Int, maskFormatID : Int, xSrc : Int, ySrc : Int, xDst : Int, yDst : Int, glyphset : Int, elts : sun.java2d.xr.GrowableEltArray) : Void;
	
	@:overload @:public public function createRadialGradient(inner : java.awt.geom.Point2D, outer : java.awt.geom.Point2D, innerRadius : Single, outerRadius : Single, fractions : java.NativeArray<Single>, pixels : java.NativeArray<Int>, repeat : Int, transform : java.awt.geom.AffineTransform) : Int;
	
	@:overload @:public public function createLinearGradient(p1 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D, fractions : java.NativeArray<Single>, pixels : java.NativeArray<Int>, repeat : Int, transform : java.awt.geom.AffineTransform) : Int;
	
	@:overload @:public public function setGCMode(gc : haxe.Int64, copy : Bool) : Void;
	
	@:overload @:public public function renderCompositeTrapezoids(op : java.StdTypes.Int8, src : Int, maskFormat : Int, dst : Int, srcX : Int, srcY : Int, trapList : sun.java2d.jules.TrapezoidList) : Void;
	
	
}
