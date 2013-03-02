package sun.awt.geom;
/*
* Copyright (c) 1998, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Order0 extends sun.awt.geom.Curve
{
	@:overload public function new(x : Float, y : Float) : Void;
	
	@:overload public function getOrder() : Int;
	
	@:overload public function getXTop() : Float;
	
	@:overload public function getYTop() : Float;
	
	@:overload public function getXBot() : Float;
	
	@:overload public function getYBot() : Float;
	
	@:overload public function getXMin() : Float;
	
	@:overload public function getXMax() : Float;
	
	@:overload public function getX0() : Float;
	
	@:overload public function getY0() : Float;
	
	@:overload public function getX1() : Float;
	
	@:overload public function getY1() : Float;
	
	@:overload public function XforY(y : Float) : Float;
	
	@:overload public function TforY(y : Float) : Float;
	
	@:overload public function XforT(t : Float) : Float;
	
	@:overload public function YforT(t : Float) : Float;
	
	@:overload public function dXforT(t : Float, deriv : Int) : Float;
	
	@:overload public function dYforT(t : Float, deriv : Int) : Float;
	
	@:overload public function nextVertical(t0 : Float, t1 : Float) : Float;
	
	@:overload public function crossingsFor(x : Float, y : Float) : Int;
	
	@:overload public function accumulateCrossings(c : sun.awt.geom.Crossings) : Bool;
	
	@:overload public function enlarge(r : java.awt.geom.Rectangle2D) : Void;
	
	@:overload public function getSubCurve(ystart : Float, yend : Float, dir : Int) : sun.awt.geom.Curve;
	
	@:overload public function getReversedCurve() : sun.awt.geom.Curve;
	
	@:overload public function getSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
