package sun.java2d.pipe;
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
extern class LoopPipe implements sun.java2d.pipe.PixelDrawPipe implements sun.java2d.pipe.PixelFillPipe implements sun.java2d.pipe.ParallelogramPipe implements sun.java2d.pipe.ShapeDrawPipe implements sun.java2d.pipe.LoopBasedPipe
{
	@:overload public function drawLine(sg2d : sun.java2d.SunGraphics2D, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public function drawRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawRoundRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function drawOval(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawArc(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function drawPolyline(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function drawPolygon(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function fillRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillRoundRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function fillOval(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillArc(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function fillPolygon(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function draw(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	/**
	* Return a ShapeSpanIterator instance that normalizes as
	* appropriate for a fill operation as per the settings in
	* the specified SunGraphics2D object.
	*
	* The ShapeSpanIterator will be newly constructed and ready
	* to start taking in geometry.
	*
	* Note that the caller is responsible for calling dispose()
	* on the returned ShapeSpanIterator inside a try/finally block:
	* <pre>
	*     ShapeSpanIterator ssi = LoopPipe.getFillSSI(sg2d);
	*     try {
	*         ssi.setOutputArea(clip);
	*         ssi.appendPath(...); // or appendPoly
	*         // iterate the spans from ssi and operate on them
	*     } finally {
	*         ssi.dispose();
	*     }
	* </pre>
	*/
	@:overload public static function getFillSSI(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.pipe.ShapeSpanIterator;
	
	/*
	* Return a ShapeSpanIterator ready to iterate the spans of the wide
	* outline of Shape s using the attributes of the SunGraphics2D
	* object.
	*
	* The ShapeSpanIterator returned will be fully constructed
	* and filled with the geometry from the Shape widened by the
	* appropriate BasicStroke and normalization parameters taken
	* from the SunGraphics2D object and be ready to start returning
	* spans.
	*
	* Note that the caller is responsible for calling dispose()
	* on the returned ShapeSpanIterator inside a try/finally block.
	* <pre>
	*     ShapeSpanIterator ssi = LoopPipe.getStrokeSpans(sg2d, s);
	*     try {
	*         // iterate the spans from ssi and operate on them
	*     } finally {
	*         ssi.dispose();
	*     }
	* </pre>
	*
	* REMIND: This should return a SpanIterator interface object
	* but the caller needs to dispose() the object and that method
	* is only on ShapeSpanIterator.
	* TODO: Add a dispose() method to the SpanIterator interface.
	*/
	@:overload public static function getStrokeSpans(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : sun.java2d.pipe.ShapeSpanIterator;
	
	@:overload public function fill(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload public function fillParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	@:overload public function drawParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	
}
