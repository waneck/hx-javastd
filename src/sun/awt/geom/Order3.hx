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
@:internal extern class Order3 extends sun.awt.geom.Curve
{
	@:overload public static function insert(curves : java.util.Vector<Dynamic>, tmp : java.NativeArray<Float>, x0 : Float, y0 : Float, cx0 : Float, cy0 : Float, cx1 : Float, cy1 : Float, x1 : Float, y1 : Float, direction : Int) : Void;
	
	@:overload public static function addInstance(curves : java.util.Vector<Dynamic>, x0 : Float, y0 : Float, cx0 : Float, cy0 : Float, cx1 : Float, cy1 : Float, x1 : Float, y1 : Float, direction : Int) : Void;
	
	/*
	* Return the count of the number of horizontal sections of the
	* specified cubic Bezier curve.  Put the parameters for the
	* horizontal sections into the specified <code>ret</code> array.
	* <p>
	* If we examine the parametric equation in t, we have:
	*   Py(t) = C0(1-t)^3 + 3CP0 t(1-t)^2 + 3CP1 t^2(1-t) + C1 t^3
	*         = C0 - 3C0t + 3C0t^2 - C0t^3 +
	*           3CP0t - 6CP0t^2 + 3CP0t^3 +
	*           3CP1t^2 - 3CP1t^3 +
	*           C1t^3
	*   Py(t) = (C1 - 3CP1 + 3CP0 - C0) t^3 +
	*           (3C0 - 6CP0 + 3CP1) t^2 +
	*           (3CP0 - 3C0) t +
	*           (C0)
	* If we take the derivative, we get:
	*   Py(t) = Dt^3 + At^2 + Bt + C
	*   dPy(t) = 3Dt^2 + 2At + B = 0
	*        0 = 3*(C1 - 3*CP1 + 3*CP0 - C0)t^2
	*          + 2*(3*CP1 - 6*CP0 + 3*C0)t
	*          + (3*CP0 - 3*C0)
	*        0 = 3*(C1 - 3*CP1 + 3*CP0 - C0)t^2
	*          + 3*2*(CP1 - 2*CP0 + C0)t
	*          + 3*(CP0 - C0)
	*        0 = (C1 - CP1 - CP1 - CP1 + CP0 + CP0 + CP0 - C0)t^2
	*          + 2*(CP1 - CP0 - CP0 + C0)t
	*          + (CP0 - C0)
	*        0 = (C1 - CP1 + CP0 - CP1 + CP0 - CP1 + CP0 - C0)t^2
	*          + 2*(CP1 - CP0 - CP0 + C0)t
	*          + (CP0 - C0)
	*        0 = ((C1 - CP1) - (CP1 - CP0) - (CP1 - CP0) + (CP0 - C0))t^2
	*          + 2*((CP1 - CP0) - (CP0 - C0))t
	*          + (CP0 - C0)
	* Note that this method will return 0 if the equation is a line,
	* which is either always horizontal or never horizontal.
	* Completely horizontal curves need to be eliminated by other
	* means outside of this method.
	*/
	@:overload public static function getHorizontalParams(c0 : Float, cp0 : Float, cp1 : Float, c1 : Float, ret : java.NativeArray<Float>) : Int;
	
	/*
	* Split the cubic Bezier stored at coords[pos...pos+7] representing
	* the parametric range [0..1] into two subcurves representing the
	* parametric subranges [0..t] and [t..1].  Store the results back
	* into the array at coords[pos...pos+7] and coords[pos+6...pos+13].
	*/
	@:overload public static function split(coords : java.NativeArray<Float>, pos : Int, t : Float) : Void;
	
	@:overload public function new(x0 : Float, y0 : Float, cx0 : Float, cy0 : Float, cx1 : Float, cy1 : Float, x1 : Float, y1 : Float, direction : Int) : Void;
	
	@:overload override public function getOrder() : Int;
	
	@:overload override public function getXTop() : Float;
	
	@:overload override public function getYTop() : Float;
	
	@:overload override public function getXBot() : Float;
	
	@:overload override public function getYBot() : Float;
	
	@:overload override public function getXMin() : Float;
	
	@:overload override public function getXMax() : Float;
	
	@:overload override public function getX0() : Float;
	
	@:overload override public function getY0() : Float;
	
	@:overload public function getCX0() : Float;
	
	@:overload public function getCY0() : Float;
	
	@:overload public function getCX1() : Float;
	
	@:overload public function getCY1() : Float;
	
	@:overload override public function getX1() : Float;
	
	@:overload override public function getY1() : Float;
	
	/*
	* Solve the cubic whose coefficients are in the a,b,c,d fields and
	* return the first root in the range [0, 1].
	* The cubic solved is represented by the equation:
	*     x^3 + (ycoeff2)x^2 + (ycoeff1)x + (ycoeff0) = y
	* @return the first valid root (in the range [0, 1])
	*/
	@:overload override public function TforY(y : Float) : Float;
	
	@:overload public function refine(a : Float, b : Float, c : Float, target : Float, t : Float) : Float;
	
	@:overload override public function XforY(y : Float) : Float;
	
	@:overload override public function XforT(t : Float) : Float;
	
	@:overload override public function YforT(t : Float) : Float;
	
	@:overload override public function dXforT(t : Float, deriv : Int) : Float;
	
	@:overload override public function dYforT(t : Float, deriv : Int) : Float;
	
	@:overload override public function nextVertical(t0 : Float, t1 : Float) : Float;
	
	@:overload override public function enlarge(r : java.awt.geom.Rectangle2D) : Void;
	
	@:overload override public function getSubCurve(ystart : Float, yend : Float, dir : Int) : sun.awt.geom.Curve;
	
	@:overload override public function getReversedCurve() : sun.awt.geom.Curve;
	
	@:overload override public function getSegment(coords : java.NativeArray<Float>) : Int;
	
	@:overload override public function controlPointString() : String;
	
	
}
