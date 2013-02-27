package sun.awt.geom;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Order1 extends sun.awt.geom.Curve
{
	@:overload public function new(x0 : Float, y0 : Float, x1 : Float, y1 : Float, direction : Int) : Void;
	
	@:overload override public function getOrder() : Int;
	
	@:overload override public function getXTop() : Float;
	
	@:overload override public function getYTop() : Float;
	
	@:overload override public function getXBot() : Float;
	
	@:overload override public function getYBot() : Float;
	
	@:overload override public function getXMin() : Float;
	
	@:overload override public function getXMax() : Float;
	
	@:overload override public function getX0() : Float;
	
	@:overload override public function getY0() : Float;
	
	@:overload override public function getX1() : Float;
	
	@:overload override public function getY1() : Float;
	
	@:overload override public function XforY(y : Float) : Float;
	
	@:overload override public function TforY(y : Float) : Float;
	
	@:overload override public function XforT(t : Float) : Float;
	
	@:overload override public function YforT(t : Float) : Float;
	
	@:overload override public function dXforT(t : Float, deriv : Int) : Float;
	
	@:overload override public function dYforT(t : Float, deriv : Int) : Float;
	
	@:overload override public function nextVertical(t0 : Float, t1 : Float) : Float;
	
	@:overload override public function accumulateCrossings(c : sun.awt.geom.Crossings) : Bool;
	
	@:overload override public function enlarge(r : java.awt.geom.Rectangle2D) : Void;
	
	@:overload override public function getSubCurve(ystart : Float, yend : Float, dir : Int) : sun.awt.geom.Curve;
	
	@:overload override public function getReversedCurve() : sun.awt.geom.Curve;
	
	@:overload override public function compareTo(other : sun.awt.geom.Curve, yrange : java.NativeArray<Float>) : Int;
	
	@:overload override public function getSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
