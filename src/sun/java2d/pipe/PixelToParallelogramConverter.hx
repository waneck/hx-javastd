package sun.java2d.pipe;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class PixelToParallelogramConverter extends sun.java2d.pipe.PixelToShapeConverter implements sun.java2d.pipe.ShapeDrawPipe
{
	/**
	* @param shapepipe pipeline to forward shape calls to
	* @param pgrampipe pipeline to forward parallelogram calls to
	*                  (and drawLine calls if possible)
	* @param minPenSize minimum pen size for dropout control
	* @param normPosition sub-pixel location to normalize endpoints
	*                     for STROKE_NORMALIZE cases
	* @param adjustFill boolean to control whethere normalization
	*                   constants are also applied to fill operations
	*                   (normally true for non-AA, false for AA)
	*/
	@:overload public function new(shapepipe : sun.java2d.pipe.ShapeDrawPipe, pgrampipe : sun.java2d.pipe.ParallelogramPipe, minPenSize : Float, normPosition : Float, adjustfill : Bool) : Void;
	
	@:overload override public function drawLine(sg2d : sun.java2d.SunGraphics2D, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload override public function drawRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function fillRect(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function draw(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload public function fill(sg2d : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload public function drawGeneralLine(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float) : Bool;
	
	@:overload public function fillRectangle(sg2d : sun.java2d.SunGraphics2D, rx : Float, ry : Float, rw : Float, rh : Float) : Void;
	
	@:overload public function drawRectangle(sg2d : sun.java2d.SunGraphics2D, rx : Float, ry : Float, rw : Float, rh : Float, lw : Float) : Void;
	
	/**
	* This utility function handles the case where a drawRectangle
	* operation discovered that the interior hole in the rectangle
	* or parallelogram has been completely filled in by the stroke
	* width.  It calculates the outer parallelogram of the stroke
	* and issues a single fillParallelogram request to fill it.
	*/
	@:overload public function fillOuterParallelogram(sg2d : sun.java2d.SunGraphics2D, ux1 : Float, uy1 : Float, ux2 : Float, uy2 : Float, px : Float, py : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, len1 : Float, len2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	
}
