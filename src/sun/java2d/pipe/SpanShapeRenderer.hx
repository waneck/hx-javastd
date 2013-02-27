package sun.java2d.pipe;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class SpanShapeRenderer implements sun.java2d.pipe.ShapeDrawPipe
{
	@:overload public function draw(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	public static var NON_RECTILINEAR_TRANSFORM_MASK(default, null) : Int;
	
	@:overload public function fill(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload @:abstract public function startSequence(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape, devR : java.awt.Rectangle, bbox : java.NativeArray<Int>) : Dynamic;
	
	@:overload @:abstract public function renderBox(ctx : Dynamic, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:abstract public function endSequence(ctx : Dynamic) : Void;
	
	@:overload public function renderRect(sg : sun.java2d.SunGraphics2D, r : java.awt.geom.Rectangle2D) : Void;
	
	@:overload public function renderSpans(sg : sun.java2d.SunGraphics2D, clipRegion : sun.java2d.pipe.Region, s : java.awt.Shape, sr : sun.java2d.pipe.ShapeSpanIterator) : Void;
	
	@:overload public function spanClipLoop(ctx : Dynamic, sr : sun.java2d.pipe.SpanIterator, r : sun.java2d.pipe.Region, abox : java.NativeArray<Int>) : Void;
	
	
}
@:native('sun$java2d$pipe$SpanShapeRenderer$Composite') extern class SpanShapeRenderer_Composite extends SpanShapeRenderer
{
	@:overload public function new(pipe : sun.java2d.pipe.CompositePipe) : Void;
	
	@:overload override public function startSequence(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape, devR : java.awt.Rectangle, bbox : java.NativeArray<Int>) : Dynamic;
	
	@:overload override public function renderBox(ctx : Dynamic, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function endSequence(ctx : Dynamic) : Void;
	
	
}
@:native('sun$java2d$pipe$SpanShapeRenderer$Simple') extern class SpanShapeRenderer_Simple extends SpanShapeRenderer implements sun.java2d.pipe.LoopBasedPipe
{
	@:overload override public function startSequence(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape, devR : java.awt.Rectangle, bbox : java.NativeArray<Int>) : Dynamic;
	
	@:overload override public function renderBox(ctx : Dynamic, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function endSequence(ctx : Dynamic) : Void;
	
	
}
