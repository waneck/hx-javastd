package sun.java2d.pipe;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
extern class PixelToShapeConverter implements sun.java2d.pipe.PixelDrawPipe implements sun.java2d.pipe.PixelFillPipe
{
	@:overload public function new(pipe : sun.java2d.pipe.ShapeDrawPipe) : Void;
	
	@:overload public function drawLine(sg : sun.java2d.SunGraphics2D, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public function drawRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function fillRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function drawRoundRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, aW : Int, aH : Int) : Void;
	
	@:overload public function fillRoundRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, aW : Int, aH : Int) : Void;
	
	@:overload public function drawOval(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function fillOval(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function drawArc(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, start : Int, extent : Int) : Void;
	
	@:overload public function fillArc(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, start : Int, extent : Int) : Void;
	
	@:overload public function drawPolyline(sg : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function drawPolygon(sg : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function fillPolygon(sg : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	
}
