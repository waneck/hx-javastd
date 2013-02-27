package sun.java2d.pipe;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Base class for enqueuing rendering operations in a single-threaded
* rendering environment.  Instead of each operation being rendered
* immediately by the underlying graphics library, the operation will be
* added to the provided RenderQueue, which will be processed at a later
* time by a single thread.
*
* This class provides implementations of drawLine(), drawRect(), drawPoly(),
* fillRect(), draw(Shape), and fill(Shape), which are useful for a
* hardware-accelerated renderer.  The other draw*() and fill*() methods
* simply delegate to draw(Shape) and fill(Shape), respectively.
*/
extern class BufferedRenderPipe implements sun.java2d.pipe.PixelDrawPipe implements sun.java2d.pipe.PixelFillPipe implements sun.java2d.pipe.ShapeDrawPipe implements sun.java2d.pipe.ParallelogramPipe
{
	private var rq : sun.java2d.pipe.RenderQueue;
	
	private var buf : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function new(rq : sun.java2d.pipe.RenderQueue) : Void;
	
	@:overload public function getAAParallelogramPipe() : sun.java2d.pipe.ParallelogramPipe;
	
	/**
	* Validates the state in the provided SunGraphics2D object and sets up
	* any special resources for this operation (e.g. enabling gradient
	* shading).
	*/
	@:overload @:abstract private function validateContext(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload @:abstract private function validateContextAA(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload public function drawLine(sg2d : sun.java2d.SunGraphics2D, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public function drawRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawRoundRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function fillRoundRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function drawOval(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillOval(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawArc(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function fillArc(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload private function drawPoly(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int, isClosed : Bool) : Void;
	
	@:overload @:abstract private function drawPoly(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int, isClosed : Bool, transX : Int, transY : Int) : Void;
	
	@:overload public function drawPolyline(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function drawPolygon(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function fillPolygon(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload private function drawPath(sg2d : sun.java2d.SunGraphics2D, p2df : java.awt.geom.Path2D.Path2D_Float, transx : Int, transy : Int) : Void;
	
	@:overload private function fillPath(sg2d : sun.java2d.SunGraphics2D, p2df : java.awt.geom.Path2D.Path2D_Float, transx : Int, transy : Int) : Void;
	
	@:overload private function fillSpans(sg2d : sun.java2d.SunGraphics2D, si : sun.java2d.pipe.SpanIterator, transx : Int, transy : Int) : Void;
	
	@:overload public function fillParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	@:overload public function drawParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	@:overload public function draw(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload public function fill(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	
}
@:native('sun$java2d$pipe$BufferedRenderPipe$BufferedDrawHandler') @:internal extern class BufferedRenderPipe_BufferedDrawHandler extends sun.java2d.loops.ProcessPath.ProcessPath_DrawHandler
{
	/**
	* drawPath() support...
	*/
	@:overload override public function drawLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload override public function drawPixel(x : Int, y : Int) : Void;
	
	/**
	* Called from fillPath() to indicate that we are about to
	* start issuing drawScanline() calls.
	*/
	@:overload public function startFillPath() : Void;
	
	@:overload override public function drawScanline(x1 : Int, x2 : Int, y : Int) : Void;
	
	/**
	* Called from fillPath() to indicate that we are done
	* issuing drawScanline() calls.
	*/
	@:overload public function endFillPath() : Void;
	
	
}
@:native('sun$java2d$pipe$BufferedRenderPipe$AAParallelogramPipe') @:internal extern class BufferedRenderPipe_AAParallelogramPipe implements sun.java2d.pipe.ParallelogramPipe
{
	@:overload public function fillParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	@:overload public function drawParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	
}
