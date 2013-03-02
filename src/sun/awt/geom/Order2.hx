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
@:internal extern class Order2 extends sun.awt.geom.Curve
{
	@:overload public static function insert(curves : java.util.Vector<Dynamic>, tmp : java.NativeArray<Float>, x0 : Float, y0 : Float, cx0 : Float, cy0 : Float, x1 : Float, y1 : Float, direction : Int) : Void;
	
	@:overload public static function addInstance(curves : java.util.Vector<Dynamic>, x0 : Float, y0 : Float, cx0 : Float, cy0 : Float, x1 : Float, y1 : Float, direction : Int) : Void;
	
	/*
	* Return the count of the number of horizontal sections of the
	* specified quadratic Bezier curve.  Put the parameters for the
	* horizontal sections into the specified <code>ret</code> array.
	* <p>
	* If we examine the parametric equation in t, we have:
	*     Py(t) = C0*(1-t)^2 + 2*CP*t*(1-t) + C1*t^2
	*           = C0 - 2*C0*t + C0*t^2 + 2*CP*t - 2*CP*t^2 + C1*t^2
	*           = C0 + (2*CP - 2*C0)*t + (C0 - 2*CP + C1)*t^2
	*     Py(t) = (C0 - 2*CP + C1)*t^2 + (2*CP - 2*C0)*t + (C0)
	* If we take the derivative, we get:
	*     Py(t) = At^2 + Bt + C
	*     dPy(t) = 2At + B = 0
	*     2*(C0 - 2*CP + C1)t + 2*(CP - C0) = 0
	*     2*(C0 - 2*CP + C1)t = 2*(C0 - CP)
	*     t = 2*(C0 - CP) / 2*(C0 - 2*CP + C1)
	*     t = (C0 - CP) / (C0 - CP + C1 - CP)
	* Note that this method will return 0 if the equation is a line,
	* which is either always horizontal or never horizontal.
	* Completely horizontal curves need to be eliminated by other
	* means outside of this method.
	*/
	@:overload public static function getHorizontalParams(c0 : Float, cp : Float, c1 : Float, ret : java.NativeArray<Float>) : Int;
	
	/*
	* Split the quadratic Bezier stored at coords[pos...pos+5] representing
	* the paramtric range [0..1] into two subcurves representing the
	* parametric subranges [0..t] and [t..1].  Store the results back
	* into the array at coords[pos...pos+5] and coords[pos+4...pos+9].
	*/
	@:overload public static function split(coords : java.NativeArray<Float>, pos : Int, t : Float) : Void;
	
	@:overload public function new(x0 : Float, y0 : Float, cx0 : Float, cy0 : Float, x1 : Float, y1 : Float, direction : Int) : Void;
	
	@:overload public function getOrder() : Int;
	
	@:overload public function getXTop() : Float;
	
	@:overload public function getYTop() : Float;
	
	@:overload public function getXBot() : Float;
	
	@:overload public function getYBot() : Float;
	
	@:overload public function getXMin() : Float;
	
	@:overload public function getXMax() : Float;
	
	@:overload public function getX0() : Float;
	
	@:overload public function getY0() : Float;
	
	@:overload public function getCX0() : Float;
	
	@:overload public function getCY0() : Float;
	
	@:overload public function getX1() : Float;
	
	@:overload public function getY1() : Float;
	
	@:overload public function XforY(y : Float) : Float;
	
	@:overload public function TforY(y : Float) : Float;
	
	@:native('TforY') @:overload public static function _TforY(y : Float, ycoeff0 : Float, ycoeff1 : Float, ycoeff2 : Float) : Float;
	
	@:overload public function XforT(t : Float) : Float;
	
	@:overload public function YforT(t : Float) : Float;
	
	@:overload public function dXforT(t : Float, deriv : Int) : Float;
	
	@:overload public function dYforT(t : Float, deriv : Int) : Float;
	
	@:overload public function nextVertical(t0 : Float, t1 : Float) : Float;
	
	@:overload public function enlarge(r : java.awt.geom.Rectangle2D) : Void;
	
	@:overload public function getSubCurve(ystart : Float, yend : Float, dir : Int) : sun.awt.geom.Curve;
	
	@:overload public function getReversedCurve() : sun.awt.geom.Curve;
	
	@:overload public function getSegment(coords : java.NativeArray<Float>) : Int;
	
	@:overload public function controlPointString() : String;
	
	
}
