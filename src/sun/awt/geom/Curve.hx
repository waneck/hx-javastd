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
extern class Curve
{
	@:public @:static @:final public static var INCREASING(default, null) : Int;
	
	@:public @:static @:final public static var DECREASING(default, null) : Int;
	
	@:protected private var direction : Int;
	
	@:overload @:public @:static public static function insertMove(curves : java.util.Vector<Dynamic>, x : Float, y : Float) : Void;
	
	@:overload @:public @:static public static function insertLine(curves : java.util.Vector<Dynamic>, x0 : Float, y0 : Float, x1 : Float, y1 : Float) : Void;
	
	@:overload @:public @:static public static function insertQuad(curves : java.util.Vector<Dynamic>, x0 : Float, y0 : Float, coords : java.NativeArray<Float>) : Void;
	
	@:overload @:public @:static public static function insertCubic(curves : java.util.Vector<Dynamic>, x0 : Float, y0 : Float, coords : java.NativeArray<Float>) : Void;
	
	/**
	* Calculates the number of times the given path
	* crosses the ray extending to the right from (px,py).
	* If the point lies on a part of the path,
	* then no crossings are counted for that intersection.
	* +1 is added for each crossing where the Y coordinate is increasing
	* -1 is added for each crossing where the Y coordinate is decreasing
	* The return value is the sum of all crossings for every segment in
	* the path.
	* The path must start with a SEG_MOVETO, otherwise an exception is
	* thrown.
	* The caller must check p[xy] for NaN values.
	* The caller may also reject infinite p[xy] values as well.
	*/
	@:overload @:public @:static public static function pointCrossingsForPath(pi : java.awt.geom.PathIterator, px : Float, py : Float) : Int;
	
	/**
	* Calculates the number of times the line from (x0,y0) to (x1,y1)
	* crosses the ray extending to the right from (px,py).
	* If the point lies on the line, then no crossings are recorded.
	* +1 is returned for a crossing where the Y coordinate is increasing
	* -1 is returned for a crossing where the Y coordinate is decreasing
	*/
	@:overload @:public @:static public static function pointCrossingsForLine(px : Float, py : Float, x0 : Float, y0 : Float, x1 : Float, y1 : Float) : Int;
	
	/**
	* Calculates the number of times the quad from (x0,y0) to (x1,y1)
	* crosses the ray extending to the right from (px,py).
	* If the point lies on a part of the curve,
	* then no crossings are counted for that intersection.
	* the level parameter should be 0 at the top-level call and will count
	* up for each recursion level to prevent infinite recursion
	* +1 is added for each crossing where the Y coordinate is increasing
	* -1 is added for each crossing where the Y coordinate is decreasing
	*/
	@:overload @:public @:static public static function pointCrossingsForQuad(px : Float, py : Float, x0 : Float, y0 : Float, xc : Float, yc : Float, x1 : Float, y1 : Float, level : Int) : Int;
	
	/**
	* Calculates the number of times the cubic from (x0,y0) to (x1,y1)
	* crosses the ray extending to the right from (px,py).
	* If the point lies on a part of the curve,
	* then no crossings are counted for that intersection.
	* the level parameter should be 0 at the top-level call and will count
	* up for each recursion level to prevent infinite recursion
	* +1 is added for each crossing where the Y coordinate is increasing
	* -1 is added for each crossing where the Y coordinate is decreasing
	*/
	@:overload @:public @:static public static function pointCrossingsForCubic(px : Float, py : Float, x0 : Float, y0 : Float, xc0 : Float, yc0 : Float, xc1 : Float, yc1 : Float, x1 : Float, y1 : Float, level : Int) : Int;
	
	/**
	* The rectangle intersection test counts the number of times
	* that the path crosses through the shadow that the rectangle
	* projects to the right towards (x => +INFINITY).
	*
	* During processing of the path it actually counts every time
	* the path crosses either or both of the top and bottom edges
	* of that shadow.  If the path enters from the top, the count
	* is incremented.  If it then exits back through the top, the
	* same way it came in, the count is decremented and there is
	* no impact on the winding count.  If, instead, the path exits
	* out the bottom, then the count is incremented again and a
	* full pass through the shadow is indicated by the winding count
	* having been incremented by 2.
	*
	* Thus, the winding count that it accumulates is actually double
	* the real winding count.  Since the path is continuous, the
	* final answer should be a multiple of 2, otherwise there is a
	* logic error somewhere.
	*
	* If the path ever has a direct hit on the rectangle, then a
	* special value is returned.  This special value terminates
	* all ongoing accumulation on up through the call chain and
	* ends up getting returned to the calling function which can
	* then produce an answer directly.  For intersection tests,
	* the answer is always "true" if the path intersects the
	* rectangle.  For containment tests, the answer is always
	* "false" if the path intersects the rectangle.  Thus, no
	* further processing is ever needed if an intersection occurs.
	*/
	@:public @:static @:final public static var RECT_INTERSECTS(default, null) : Int;
	
	/**
	* Accumulate the number of times the path crosses the shadow
	* extending to the right of the rectangle.  See the comment
	* for the RECT_INTERSECTS constant for more complete details.
	* The return value is the sum of all crossings for both the
	* top and bottom of the shadow for every segment in the path,
	* or the special value RECT_INTERSECTS if the path ever enters
	* the interior of the rectangle.
	* The path must start with a SEG_MOVETO, otherwise an exception is
	* thrown.
	* The caller must check r[xy]{min,max} for NaN values.
	*/
	@:overload @:public @:static public static function rectCrossingsForPath(pi : java.awt.geom.PathIterator, rxmin : Float, rymin : Float, rxmax : Float, rymax : Float) : Int;
	
	/**
	* Accumulate the number of times the line crosses the shadow
	* extending to the right of the rectangle.  See the comment
	* for the RECT_INTERSECTS constant for more complete details.
	*/
	@:overload @:public @:static public static function rectCrossingsForLine(crossings : Int, rxmin : Float, rymin : Float, rxmax : Float, rymax : Float, x0 : Float, y0 : Float, x1 : Float, y1 : Float) : Int;
	
	/**
	* Accumulate the number of times the quad crosses the shadow
	* extending to the right of the rectangle.  See the comment
	* for the RECT_INTERSECTS constant for more complete details.
	*/
	@:overload @:public @:static public static function rectCrossingsForQuad(crossings : Int, rxmin : Float, rymin : Float, rxmax : Float, rymax : Float, x0 : Float, y0 : Float, xc : Float, yc : Float, x1 : Float, y1 : Float, level : Int) : Int;
	
	/**
	* Accumulate the number of times the cubic crosses the shadow
	* extending to the right of the rectangle.  See the comment
	* for the RECT_INTERSECTS constant for more complete details.
	*/
	@:overload @:public @:static public static function rectCrossingsForCubic(crossings : Int, rxmin : Float, rymin : Float, rxmax : Float, rymax : Float, x0 : Float, y0 : Float, xc0 : Float, yc0 : Float, xc1 : Float, yc1 : Float, x1 : Float, y1 : Float, level : Int) : Int;
	
	@:overload @:public public function new(direction : Int) : Void;
	
	@:overload @:public @:final public function getDirection() : Int;
	
	@:overload @:public @:final public function getWithDirection(direction : Int) : sun.awt.geom.Curve;
	
	@:overload @:public @:static public static function round(v : Float) : Float;
	
	@:overload @:public @:static public static function orderof(x1 : Float, x2 : Float) : Int;
	
	@:overload @:public @:static public static function signeddiffbits(y1 : Float, y2 : Float) : haxe.Int64;
	
	@:overload @:public @:static public static function diffbits(y1 : Float, y2 : Float) : haxe.Int64;
	
	@:overload @:public @:static public static function prev(v : Float) : Float;
	
	@:overload @:public @:static public static function next(v : Float) : Float;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function controlPointString() : String;
	
	@:overload @:public @:abstract public function getOrder() : Int;
	
	@:overload @:public @:abstract public function getXTop() : Float;
	
	@:overload @:public @:abstract public function getYTop() : Float;
	
	@:overload @:public @:abstract public function getXBot() : Float;
	
	@:overload @:public @:abstract public function getYBot() : Float;
	
	@:overload @:public @:abstract public function getXMin() : Float;
	
	@:overload @:public @:abstract public function getXMax() : Float;
	
	@:overload @:public @:abstract public function getX0() : Float;
	
	@:overload @:public @:abstract public function getY0() : Float;
	
	@:overload @:public @:abstract public function getX1() : Float;
	
	@:overload @:public @:abstract public function getY1() : Float;
	
	@:overload @:public @:abstract public function XforY(y : Float) : Float;
	
	@:overload @:public @:abstract public function TforY(y : Float) : Float;
	
	@:overload @:public @:abstract public function XforT(t : Float) : Float;
	
	@:overload @:public @:abstract public function YforT(t : Float) : Float;
	
	@:overload @:public @:abstract public function dXforT(t : Float, deriv : Int) : Float;
	
	@:overload @:public @:abstract public function dYforT(t : Float, deriv : Int) : Float;
	
	@:overload @:public @:abstract public function nextVertical(t0 : Float, t1 : Float) : Float;
	
	@:overload @:public public function crossingsFor(x : Float, y : Float) : Int;
	
	@:overload @:public public function accumulateCrossings(c : sun.awt.geom.Crossings) : Bool;
	
	@:overload @:public @:abstract public function enlarge(r : java.awt.geom.Rectangle2D) : Void;
	
	@:overload @:public public function getSubCurve(ystart : Float, yend : Float) : sun.awt.geom.Curve;
	
	@:overload @:public @:abstract public function getReversedCurve() : sun.awt.geom.Curve;
	
	@:overload @:public @:abstract public function getSubCurve(ystart : Float, yend : Float, dir : Int) : sun.awt.geom.Curve;
	
	@:overload @:public public function compareTo(that : sun.awt.geom.Curve, yrange : java.NativeArray<Float>) : Int;
	
	@:public @:static @:final public static var TMIN(default, null) : Float;
	
	@:overload @:public public function findIntersect(that : sun.awt.geom.Curve, yrange : java.NativeArray<Float>, ymin : Float, slevel : Int, tlevel : Int, s0 : Float, xs0 : Float, ys0 : Float, s1 : Float, xs1 : Float, ys1 : Float, t0 : Float, xt0 : Float, yt0 : Float, t1 : Float, xt1 : Float, yt1 : Float) : Bool;
	
	@:overload @:public public function refineTforY(t0 : Float, yt0 : Float, y0 : Float) : Float;
	
	@:overload @:public public function fairlyClose(v1 : Float, v2 : Float) : Bool;
	
	@:overload @:public @:abstract public function getSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
