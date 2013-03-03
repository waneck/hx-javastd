package sun.java2d.pipe;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AAShapePipe implements sun.java2d.pipe.ShapeDrawPipe implements sun.java2d.pipe.ParallelogramPipe
{
	@:overload @:public public function new(pipe : sun.java2d.pipe.CompositePipe) : Void;
	
	@:overload @:public public function draw(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload @:public public function fill(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload @:public public function fillParallelogram(sg : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	@:overload @:public public function drawParallelogram(sg : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	@:overload @:public @:synchronized @:static public static function getAlphaTile(len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:synchronized @:static public static function dropAlphaTile(t : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function renderPath(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape, bs : java.awt.BasicStroke) : Void;
	
	@:overload @:public public function renderTiles(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape, aatg : sun.java2d.pipe.AATileGenerator, abox : java.NativeArray<Int>) : Void;
	
	
}
