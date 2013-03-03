package sun.java2d.opengl;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class OGLRenderer extends sun.java2d.pipe.BufferedRenderPipe
{
	@:overload @:protected override private function validateContext(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload @:protected override private function validateContextAA(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload @:protected @:native override private function drawPoly(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int, isClosed : Bool, transX : Int, transY : Int) : Void;
	
	
}
@:native('sun$java2d$opengl$OGLRenderer$Tracer') @:internal extern class OGLRenderer_Tracer extends sun.java2d.opengl.OGLRenderer
{
	@:overload @:public override public function getAAParallelogramPipe() : sun.java2d.pipe.ParallelogramPipe;
	
	@:overload @:protected override private function validateContext(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload @:public override public function drawLine(sg2d : sun.java2d.SunGraphics2D, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload @:public override public function drawRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected override private function drawPoly(sg2d : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int, isClosed : Bool) : Void;
	
	@:overload @:public override public function fillRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected override private function drawPath(sg2d : sun.java2d.SunGraphics2D, p2df : java.awt.geom.Path2D.Path2D_Float, transx : Int, transy : Int) : Void;
	
	@:overload @:protected override private function fillPath(sg2d : sun.java2d.SunGraphics2D, p2df : java.awt.geom.Path2D.Path2D_Float, transx : Int, transy : Int) : Void;
	
	@:overload @:protected override private function fillSpans(sg2d : sun.java2d.SunGraphics2D, si : sun.java2d.pipe.SpanIterator, transx : Int, transy : Int) : Void;
	
	@:overload @:public override public function fillParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	@:overload @:public override public function drawParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	@:overload @:public public function copyArea(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, dx : Int, dy : Int) : Void;
	
	
}
