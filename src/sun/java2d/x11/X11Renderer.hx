package sun.java2d.x11;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class X11Renderer implements sun.java2d.pipe.PixelDrawPipe implements sun.java2d.pipe.PixelFillPipe implements sun.java2d.pipe.ShapeDrawPipe
{
	@:overload public static function getInstance() : X11Renderer;
	
	@:overload public function drawLine(sg2d : sun.java2d.SunGraphics2D, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public function drawRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawRoundRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function drawOval(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawArc(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function drawPolyline(sg2d : sun.java2d.SunGraphics2D, xpoints : java.NativeArray<Int>, ypoints : java.NativeArray<Int>, npoints : Int) : Void;
	
	@:overload public function drawPolygon(sg2d : sun.java2d.SunGraphics2D, xpoints : java.NativeArray<Int>, ypoints : java.NativeArray<Int>, npoints : Int) : Void;
	
	@:overload public function fillRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillRoundRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function fillOval(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillArc(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function fillPolygon(sg2d : sun.java2d.SunGraphics2D, xpoints : java.NativeArray<Int>, ypoints : java.NativeArray<Int>, npoints : Int) : Void;
	
	@:overload public function draw(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload public function fill(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	
}
@:native('sun$java2d$x11$X11Renderer$X11TracingRenderer') extern class X11Renderer_X11TracingRenderer extends X11Renderer
{
	
}
