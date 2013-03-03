package sun.java2d.loops;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/*
* @author Charlton Innovations, Inc.
*/
extern class GeneralRenderer
{
	/**
	* GeneralRenderer collection
	* Basically, a collection of components which permit basic
	* rendering to occur on rasters of any format
	*/
	@:overload @:public @:static public static function register() : Void;
	
	@:overload @:public @:static public static function doDrawRect(pw : sun.java2d.loops.GeneralRenderer.PixelWriter, sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public @:static public static function adjustLine(boundPts : java.NativeArray<Int>, cxmin : Int, cymin : Int, cx2 : Int, cy2 : Int) : Bool;
	
	
}
@:internal extern class SetFillRectANY extends sun.java2d.loops.FillRect
{
	@:overload @:public override public function FillRect(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class PixelWriterDrawHandler extends sun.java2d.loops.ProcessPath.ProcessPath_DrawHandler
{
	@:overload @:public public function new(sData : sun.java2d.SurfaceData, pw : sun.java2d.loops.GeneralRenderer.PixelWriter, clip : sun.java2d.pipe.Region, strokeHint : Int) : Void;
	
	@:overload @:public override public function drawLine(x0 : Int, y0 : Int, x1 : Int, y1 : Int) : Void;
	
	@:overload @:public override public function drawPixel(x0 : Int, y0 : Int) : Void;
	
	@:overload @:public override public function drawScanline(x0 : Int, x1 : Int, y0 : Int) : Void;
	
	
}
@:internal extern class SetFillPathANY extends sun.java2d.loops.FillPath
{
	@:overload @:public override public function FillPath(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, transx : Int, transy : Int, p2df : java.awt.geom.Path2D.Path2D_Float) : Void;
	
	
}
@:internal extern class SetFillSpansANY extends sun.java2d.loops.FillSpans
{
	@:overload @:public override public function FillSpans(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, si : sun.java2d.pipe.SpanIterator) : Void;
	
	
}
@:internal extern class SetDrawLineANY extends sun.java2d.loops.DrawLine
{
	@:overload @:public override public function DrawLine(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	
}
@:internal extern class SetDrawPolygonsANY extends sun.java2d.loops.DrawPolygons
{
	@:overload @:public override public function DrawPolygons(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : java.NativeArray<Int>, numPolys : Int, transx : Int, transy : Int, close : Bool) : Void;
	
	
}
@:internal extern class SetDrawPathANY extends sun.java2d.loops.DrawPath
{
	@:overload @:public override public function DrawPath(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, transx : Int, transy : Int, p2df : java.awt.geom.Path2D.Path2D_Float) : Void;
	
	
}
@:internal extern class SetDrawRectANY extends sun.java2d.loops.DrawRect
{
	@:overload @:public override public function DrawRect(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class XorFillRectANY extends sun.java2d.loops.FillRect
{
	@:overload @:public override public function FillRect(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class XorFillPathANY extends sun.java2d.loops.FillPath
{
	@:overload @:public override public function FillPath(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, transx : Int, transy : Int, p2df : java.awt.geom.Path2D.Path2D_Float) : Void;
	
	
}
@:internal extern class XorFillSpansANY extends sun.java2d.loops.FillSpans
{
	@:overload @:public override public function FillSpans(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, si : sun.java2d.pipe.SpanIterator) : Void;
	
	
}
@:internal extern class XorDrawLineANY extends sun.java2d.loops.DrawLine
{
	@:overload @:public override public function DrawLine(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	
}
@:internal extern class XorDrawPolygonsANY extends sun.java2d.loops.DrawPolygons
{
	@:overload @:public override public function DrawPolygons(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : java.NativeArray<Int>, numPolys : Int, transx : Int, transy : Int, close : Bool) : Void;
	
	
}
@:internal extern class XorDrawPathANY extends sun.java2d.loops.DrawPath
{
	@:overload @:public override public function DrawPath(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, transx : Int, transy : Int, p2df : java.awt.geom.Path2D.Path2D_Float) : Void;
	
	
}
@:internal extern class XorDrawRectANY extends sun.java2d.loops.DrawRect
{
	@:overload @:public override public function DrawRect(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class XorDrawGlyphListANY extends sun.java2d.loops.DrawGlyphList
{
	@:overload @:public override public function DrawGlyphList(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, gl : sun.font.GlyphList) : Void;
	
	
}
@:internal extern class XorDrawGlyphListAAANY extends sun.java2d.loops.DrawGlyphListAA
{
	@:overload @:public override public function DrawGlyphListAA(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, gl : sun.font.GlyphList) : Void;
	
	
}
@:internal extern class PixelWriter
{
	@:protected private var dstRast : java.awt.image.WritableRaster;
	
	@:overload @:public public function setRaster(dstRast : java.awt.image.WritableRaster) : Void;
	
	@:overload @:public @:abstract public function writePixel(x : Int, y : Int) : Void;
	
	
}
@:internal extern class SolidPixelWriter extends sun.java2d.loops.GeneralRenderer.PixelWriter
{
	@:protected private var srcData : Dynamic;
	
	@:overload @:public override public function writePixel(x : Int, y : Int) : Void;
	
	
}
@:internal extern class XorPixelWriter extends sun.java2d.loops.GeneralRenderer.PixelWriter
{
	@:protected private var dstCM : java.awt.image.ColorModel;
	
	@:overload @:public override public function writePixel(x : Int, y : Int) : Void;
	
	@:overload @:protected @:abstract private function xorPixel(pixData : Dynamic) : Void;
	
	
}
@:native('sun$java2d$loops$XorPixelWriter$ByteData') extern class XorPixelWriter_ByteData extends sun.java2d.loops.GeneralRenderer.XorPixelWriter
{
	@:overload @:protected override private function xorPixel(pixData : Dynamic) : Void;
	
	
}
@:native('sun$java2d$loops$XorPixelWriter$ShortData') extern class XorPixelWriter_ShortData extends sun.java2d.loops.GeneralRenderer.XorPixelWriter
{
	@:overload @:protected override private function xorPixel(pixData : Dynamic) : Void;
	
	
}
@:native('sun$java2d$loops$XorPixelWriter$IntData') extern class XorPixelWriter_IntData extends sun.java2d.loops.GeneralRenderer.XorPixelWriter
{
	@:overload @:protected override private function xorPixel(pixData : Dynamic) : Void;
	
	
}
@:native('sun$java2d$loops$XorPixelWriter$FloatData') extern class XorPixelWriter_FloatData extends sun.java2d.loops.GeneralRenderer.XorPixelWriter
{
	@:overload @:protected override private function xorPixel(pixData : Dynamic) : Void;
	
	
}
@:native('sun$java2d$loops$XorPixelWriter$DoubleData') extern class XorPixelWriter_DoubleData extends sun.java2d.loops.GeneralRenderer.XorPixelWriter
{
	@:overload @:protected override private function xorPixel(pixData : Dynamic) : Void;
	
	
}
