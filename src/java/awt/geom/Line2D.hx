package java.awt.geom;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Line2D implements java.awt.Shape implements java.lang.Cloneable
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessory
	* methods below.
	*
	* @see java.awt.geom.Line2D.Float
	* @see java.awt.geom.Line2D.Double
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function new() : Void;
	
	/**
	* Returns the X coordinate of the start point in double precision.
	* @return the X coordinate of the start point of this
	*         {@code Line2D} object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getX1() : Float;
	
	/**
	* Returns the Y coordinate of the start point in double precision.
	* @return the Y coordinate of the start point of this
	*         {@code Line2D} object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getY1() : Float;
	
	/**
	* Returns the start <code>Point2D</code> of this <code>Line2D</code>.
	* @return the start <code>Point2D</code> of this <code>Line2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getP1() : java.awt.geom.Point2D;
	
	/**
	* Returns the X coordinate of the end point in double precision.
	* @return the X coordinate of the end point of this
	*         {@code Line2D} object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getX2() : Float;
	
	/**
	* Returns the Y coordinate of the end point in double precision.
	* @return the Y coordinate of the end point of this
	*         {@code Line2D} object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getY2() : Float;
	
	/**
	* Returns the end <code>Point2D</code> of this <code>Line2D</code>.
	* @return the end <code>Point2D</code> of this <code>Line2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getP2() : java.awt.geom.Point2D;
	
	/**
	* Sets the location of the end points of this <code>Line2D</code> to
	* the specified double coordinates.
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function setLine(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the location of the end points of this <code>Line2D</code> to
	* the specified <code>Point2D</code> coordinates.
	* @param p1 the start <code>Point2D</code> of the line segment
	* @param p2 the end <code>Point2D</code> of the line segment
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setLine(p1 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D) : Void;
	
	/**
	* Sets the location of the end points of this <code>Line2D</code> to
	* the same as those end points of the specified <code>Line2D</code>.
	* @param l the specified <code>Line2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setLine(l : java.awt.geom.Line2D) : Void;
	
	/**
	* Returns an indicator of where the specified point
	* {@code (px,py)} lies with respect to the line segment from
	* {@code (x1,y1)} to {@code (x2,y2)}.
	* The return value can be either 1, -1, or 0 and indicates
	* in which direction the specified line must pivot around its
	* first end point, {@code (x1,y1)}, in order to point at the
	* specified point {@code (px,py)}.
	* <p>A return value of 1 indicates that the line segment must
	* turn in the direction that takes the positive X axis towards
	* the negative Y axis.  In the default coordinate system used by
	* Java 2D, this direction is counterclockwise.
	* <p>A return value of -1 indicates that the line segment must
	* turn in the direction that takes the positive X axis towards
	* the positive Y axis.  In the default coordinate system, this
	* direction is clockwise.
	* <p>A return value of 0 indicates that the point lies
	* exactly on the line segment.  Note that an indicator value
	* of 0 is rare and not useful for determining colinearity
	* because of floating point rounding issues.
	* <p>If the point is colinear with the line segment, but
	* not between the end points, then the value will be -1 if the point
	* lies "beyond {@code (x1,y1)}" or 1 if the point lies
	* "beyond {@code (x2,y2)}".
	*
	* @param x1 the X coordinate of the start point of the
	*           specified line segment
	* @param y1 the Y coordinate of the start point of the
	*           specified line segment
	* @param x2 the X coordinate of the end point of the
	*           specified line segment
	* @param y2 the Y coordinate of the end point of the
	*           specified line segment
	* @param px the X coordinate of the specified point to be
	*           compared with the specified line segment
	* @param py the Y coordinate of the specified point to be
	*           compared with the specified line segment
	* @return an integer that indicates the position of the third specified
	*                  coordinates with respect to the line segment formed
	*                  by the first two specified coordinates.
	* @since 1.2
	*/
	@:require(java2) @:native('relativeCCW') @:overload @:public @:static public static function _relativeCCW(x1 : Float, y1 : Float, x2 : Float, y2 : Float, px : Float, py : Float) : Int;
	
	/**
	* Returns an indicator of where the specified point
	* {@code (px,py)} lies with respect to this line segment.
	* See the method comments of
	* {@link #relativeCCW(double, double, double, double, double, double)}
	* to interpret the return value.
	* @param px the X coordinate of the specified point
	*           to be compared with this <code>Line2D</code>
	* @param py the Y coordinate of the specified point
	*           to be compared with this <code>Line2D</code>
	* @return an integer that indicates the position of the specified
	*         coordinates with respect to this <code>Line2D</code>
	* @see #relativeCCW(double, double, double, double, double, double)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function relativeCCW(px : Float, py : Float) : Int;
	
	/**
	* Returns an indicator of where the specified <code>Point2D</code>
	* lies with respect to this line segment.
	* See the method comments of
	* {@link #relativeCCW(double, double, double, double, double, double)}
	* to interpret the return value.
	* @param p the specified <code>Point2D</code> to be compared
	*          with this <code>Line2D</code>
	* @return an integer that indicates the position of the specified
	*         <code>Point2D</code> with respect to this <code>Line2D</code>
	* @see #relativeCCW(double, double, double, double, double, double)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function relativeCCW(p : java.awt.geom.Point2D) : Int;
	
	/**
	* Tests if the line segment from {@code (x1,y1)} to
	* {@code (x2,y2)} intersects the line segment from {@code (x3,y3)}
	* to {@code (x4,y4)}.
	*
	* @param x1 the X coordinate of the start point of the first
	*           specified line segment
	* @param y1 the Y coordinate of the start point of the first
	*           specified line segment
	* @param x2 the X coordinate of the end point of the first
	*           specified line segment
	* @param y2 the Y coordinate of the end point of the first
	*           specified line segment
	* @param x3 the X coordinate of the start point of the second
	*           specified line segment
	* @param y3 the Y coordinate of the start point of the second
	*           specified line segment
	* @param x4 the X coordinate of the end point of the second
	*           specified line segment
	* @param y4 the Y coordinate of the end point of the second
	*           specified line segment
	* @return <code>true</code> if the first specified line segment
	*                  and the second specified line segment intersect
	*                  each other; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function linesIntersect(x1 : Float, y1 : Float, x2 : Float, y2 : Float, x3 : Float, y3 : Float, x4 : Float, y4 : Float) : Bool;
	
	/**
	* Tests if the line segment from {@code (x1,y1)} to
	* {@code (x2,y2)} intersects this line segment.
	*
	* @param x1 the X coordinate of the start point of the
	*           specified line segment
	* @param y1 the Y coordinate of the start point of the
	*           specified line segment
	* @param x2 the X coordinate of the end point of the
	*           specified line segment
	* @param y2 the Y coordinate of the end point of the
	*           specified line segment
	* @return <true> if this line segment and the specified line segment
	*                  intersect each other; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function intersectsLine(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Bool;
	
	/**
	* Tests if the specified line segment intersects this line segment.
	* @param l the specified <code>Line2D</code>
	* @return <code>true</code> if this line segment and the specified line
	*                  segment intersect each other;
	*                  <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function intersectsLine(l : java.awt.geom.Line2D) : Bool;
	
	/**
	* Returns the square of the distance from a point to a line segment.
	* The distance measured is the distance between the specified
	* point and the closest point between the specified end points.
	* If the specified point intersects the line segment in between the
	* end points, this method returns 0.0.
	*
	* @param x1 the X coordinate of the start point of the
	*           specified line segment
	* @param y1 the Y coordinate of the start point of the
	*           specified line segment
	* @param x2 the X coordinate of the end point of the
	*           specified line segment
	* @param y2 the Y coordinate of the end point of the
	*           specified line segment
	* @param px the X coordinate of the specified point being
	*           measured against the specified line segment
	* @param py the Y coordinate of the specified point being
	*           measured against the specified line segment
	* @return a double value that is the square of the distance from the
	*                  specified point to the specified line segment.
	* @see #ptLineDistSq(double, double, double, double, double, double)
	* @since 1.2
	*/
	@:require(java2) @:native('ptSegDistSq') @:overload @:public @:static public static function _ptSegDistSq(x1 : Float, y1 : Float, x2 : Float, y2 : Float, px : Float, py : Float) : Float;
	
	/**
	* Returns the distance from a point to a line segment.
	* The distance measured is the distance between the specified
	* point and the closest point between the specified end points.
	* If the specified point intersects the line segment in between the
	* end points, this method returns 0.0.
	*
	* @param x1 the X coordinate of the start point of the
	*           specified line segment
	* @param y1 the Y coordinate of the start point of the
	*           specified line segment
	* @param x2 the X coordinate of the end point of the
	*           specified line segment
	* @param y2 the Y coordinate of the end point of the
	*           specified line segment
	* @param px the X coordinate of the specified point being
	*           measured against the specified line segment
	* @param py the Y coordinate of the specified point being
	*           measured against the specified line segment
	* @return a double value that is the distance from the specified point
	*                          to the specified line segment.
	* @see #ptLineDist(double, double, double, double, double, double)
	* @since 1.2
	*/
	@:require(java2) @:native('ptSegDist') @:overload @:public @:static public static function _ptSegDist(x1 : Float, y1 : Float, x2 : Float, y2 : Float, px : Float, py : Float) : Float;
	
	/**
	* Returns the square of the distance from a point to this line segment.
	* The distance measured is the distance between the specified
	* point and the closest point between the current line's end points.
	* If the specified point intersects the line segment in between the
	* end points, this method returns 0.0.
	*
	* @param px the X coordinate of the specified point being
	*           measured against this line segment
	* @param py the Y coordinate of the specified point being
	*           measured against this line segment
	* @return a double value that is the square of the distance from the
	*                  specified point to the current line segment.
	* @see #ptLineDistSq(double, double)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptSegDistSq(px : Float, py : Float) : Float;
	
	/**
	* Returns the square of the distance from a <code>Point2D</code> to
	* this line segment.
	* The distance measured is the distance between the specified
	* point and the closest point between the current line's end points.
	* If the specified point intersects the line segment in between the
	* end points, this method returns 0.0.
	* @param pt the specified <code>Point2D</code> being measured against
	*           this line segment.
	* @return a double value that is the square of the distance from the
	*                  specified <code>Point2D</code> to the current
	*                  line segment.
	* @see #ptLineDistSq(Point2D)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptSegDistSq(pt : java.awt.geom.Point2D) : Float;
	
	/**
	* Returns the distance from a point to this line segment.
	* The distance measured is the distance between the specified
	* point and the closest point between the current line's end points.
	* If the specified point intersects the line segment in between the
	* end points, this method returns 0.0.
	*
	* @param px the X coordinate of the specified point being
	*           measured against this line segment
	* @param py the Y coordinate of the specified point being
	*           measured against this line segment
	* @return a double value that is the distance from the specified
	*                  point to the current line segment.
	* @see #ptLineDist(double, double)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptSegDist(px : Float, py : Float) : Float;
	
	/**
	* Returns the distance from a <code>Point2D</code> to this line
	* segment.
	* The distance measured is the distance between the specified
	* point and the closest point between the current line's end points.
	* If the specified point intersects the line segment in between the
	* end points, this method returns 0.0.
	* @param pt the specified <code>Point2D</code> being measured
	*          against this line segment
	* @return a double value that is the distance from the specified
	*                          <code>Point2D</code> to the current line
	*                          segment.
	* @see #ptLineDist(Point2D)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptSegDist(pt : java.awt.geom.Point2D) : Float;
	
	/**
	* Returns the square of the distance from a point to a line.
	* The distance measured is the distance between the specified
	* point and the closest point on the infinitely-extended line
	* defined by the specified coordinates.  If the specified point
	* intersects the line, this method returns 0.0.
	*
	* @param x1 the X coordinate of the start point of the specified line
	* @param y1 the Y coordinate of the start point of the specified line
	* @param x2 the X coordinate of the end point of the specified line
	* @param y2 the Y coordinate of the end point of the specified line
	* @param px the X coordinate of the specified point being
	*           measured against the specified line
	* @param py the Y coordinate of the specified point being
	*           measured against the specified line
	* @return a double value that is the square of the distance from the
	*                  specified point to the specified line.
	* @see #ptSegDistSq(double, double, double, double, double, double)
	* @since 1.2
	*/
	@:require(java2) @:native('ptLineDistSq') @:overload @:public @:static public static function _ptLineDistSq(x1 : Float, y1 : Float, x2 : Float, y2 : Float, px : Float, py : Float) : Float;
	
	/**
	* Returns the distance from a point to a line.
	* The distance measured is the distance between the specified
	* point and the closest point on the infinitely-extended line
	* defined by the specified coordinates.  If the specified point
	* intersects the line, this method returns 0.0.
	*
	* @param x1 the X coordinate of the start point of the specified line
	* @param y1 the Y coordinate of the start point of the specified line
	* @param x2 the X coordinate of the end point of the specified line
	* @param y2 the Y coordinate of the end point of the specified line
	* @param px the X coordinate of the specified point being
	*           measured against the specified line
	* @param py the Y coordinate of the specified point being
	*           measured against the specified line
	* @return a double value that is the distance from the specified
	*                   point to the specified line.
	* @see #ptSegDist(double, double, double, double, double, double)
	* @since 1.2
	*/
	@:require(java2) @:native('ptLineDist') @:overload @:public @:static public static function _ptLineDist(x1 : Float, y1 : Float, x2 : Float, y2 : Float, px : Float, py : Float) : Float;
	
	/**
	* Returns the square of the distance from a point to this line.
	* The distance measured is the distance between the specified
	* point and the closest point on the infinitely-extended line
	* defined by this <code>Line2D</code>.  If the specified point
	* intersects the line, this method returns 0.0.
	*
	* @param px the X coordinate of the specified point being
	*           measured against this line
	* @param py the Y coordinate of the specified point being
	*           measured against this line
	* @return a double value that is the square of the distance from a
	*                  specified point to the current line.
	* @see #ptSegDistSq(double, double)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptLineDistSq(px : Float, py : Float) : Float;
	
	/**
	* Returns the square of the distance from a specified
	* <code>Point2D</code> to this line.
	* The distance measured is the distance between the specified
	* point and the closest point on the infinitely-extended line
	* defined by this <code>Line2D</code>.  If the specified point
	* intersects the line, this method returns 0.0.
	* @param pt the specified <code>Point2D</code> being measured
	*           against this line
	* @return a double value that is the square of the distance from a
	*                  specified <code>Point2D</code> to the current
	*                  line.
	* @see #ptSegDistSq(Point2D)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptLineDistSq(pt : java.awt.geom.Point2D) : Float;
	
	/**
	* Returns the distance from a point to this line.
	* The distance measured is the distance between the specified
	* point and the closest point on the infinitely-extended line
	* defined by this <code>Line2D</code>.  If the specified point
	* intersects the line, this method returns 0.0.
	*
	* @param px the X coordinate of the specified point being
	*           measured against this line
	* @param py the Y coordinate of the specified point being
	*           measured against this line
	* @return a double value that is the distance from a specified point
	*                  to the current line.
	* @see #ptSegDist(double, double)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptLineDist(px : Float, py : Float) : Float;
	
	/**
	* Returns the distance from a <code>Point2D</code> to this line.
	* The distance measured is the distance between the specified
	* point and the closest point on the infinitely-extended line
	* defined by this <code>Line2D</code>.  If the specified point
	* intersects the line, this method returns 0.0.
	* @param pt the specified <code>Point2D</code> being measured
	* @return a double value that is the distance from a specified
	*                  <code>Point2D</code> to the current line.
	* @see #ptSegDist(Point2D)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function ptLineDist(pt : java.awt.geom.Point2D) : Float;
	
	/**
	* Tests if a specified coordinate is inside the boundary of this
	* <code>Line2D</code>.  This method is required to implement the
	* {@link Shape} interface, but in the case of <code>Line2D</code>
	* objects it always returns <code>false</code> since a line contains
	* no area.
	* @param x the X coordinate of the specified point to be tested
	* @param y the Y coordinate of the specified point to be tested
	* @return <code>false</code> because a <code>Line2D</code> contains
	* no area.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(x : Float, y : Float) : Bool;
	
	/**
	* Tests if a given <code>Point2D</code> is inside the boundary of
	* this <code>Line2D</code>.
	* This method is required to implement the {@link Shape} interface,
	* but in the case of <code>Line2D</code> objects it always returns
	* <code>false</code> since a line contains no area.
	* @param p the specified <code>Point2D</code> to be tested
	* @return <code>false</code> because a <code>Line2D</code> contains
	* no area.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(p : java.awt.geom.Point2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function intersects(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* Tests if the interior of this <code>Line2D</code> entirely contains
	* the specified set of rectangular coordinates.
	* This method is required to implement the <code>Shape</code> interface,
	* but in the case of <code>Line2D</code> objects it always returns
	* false since a line contains no area.
	* @param x the X coordinate of the upper-left corner of the
	*          specified rectangular area
	* @param y the Y coordinate of the upper-left corner of the
	*          specified rectangular area
	* @param w the width of the specified rectangular area
	* @param h the height of the specified rectangular area
	* @return <code>false</code> because a <code>Line2D</code> contains
	* no area.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Tests if the interior of this <code>Line2D</code> entirely contains
	* the specified <code>Rectangle2D</code>.
	* This method is required to implement the <code>Shape</code> interface,
	* but in the case of <code>Line2D</code> objects it always returns
	* <code>false</code> since a line contains no area.
	* @param r the specified <code>Rectangle2D</code> to be tested
	* @return <code>false</code> because a <code>Line2D</code> contains
	* no area.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns an iteration object that defines the boundary of this
	* <code>Line2D</code>.
	* The iterator for this class is not multi-threaded safe,
	* which means that this <code>Line2D</code> class does not
	* guarantee that modifications to the geometry of this
	* <code>Line2D</code> object do not affect any iterations of that
	* geometry that are already in process.
	* @param at the specified {@link AffineTransform}
	* @return a {@link PathIterator} that defines the boundary of this
	*          <code>Line2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Returns an iteration object that defines the boundary of this
	* flattened <code>Line2D</code>.
	* The iterator for this class is not multi-threaded safe,
	* which means that this <code>Line2D</code> class does not
	* guarantee that modifications to the geometry of this
	* <code>Line2D</code> object do not affect any iterations of that
	* geometry that are already in process.
	* @param at the specified <code>AffineTransform</code>
	* @param flatness the maximum amount that the control points for a
	*          given curve can vary from colinear before a subdivided
	*          curve is replaced by a straight line connecting the
	*          end points.  Since a <code>Line2D</code> object is
	*          always flat, this parameter is ignored.
	* @return a <code>PathIterator</code> that defines the boundary of the
	*                  flattened <code>Line2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	/**
	* Creates a new object of the same class as this object.
	*
	* @return     a clone of this instance.
	* @exception  OutOfMemoryError            if there is not enough memory.
	* @see        java.lang.Cloneable
	* @since      1.2
	*/
	@:require(java2) @:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns a high precision and more accurate bounding box of
	* the <code>Shape</code> than the <code>getBounds</code> method.
	* Note that there is no guarantee that the returned
	* {@link Rectangle2D} is the smallest bounding box that encloses
	* the <code>Shape</code>, only that the <code>Shape</code> lies
	* entirely within the indicated <code>Rectangle2D</code>.  The
	* bounding box returned by this method is usually tighter than that
	* returned by the <code>getBounds</code> method and never fails due
	* to overflow problems since the return value can be an instance of
	* the <code>Rectangle2D</code> that uses double precision values to
	* store the dimensions.
	*
	* <p>
	* Note that the <a href="{@docRoot}/java/awt/Shape.html#def_insideness">
	* definition of insideness</a> can lead to situations where points
	* on the defining outline of the {@code shape} may not be considered
	* contained in the returned {@code bounds} object, but only in cases
	* where those points are also not considered contained in the original
	* {@code shape}.
	* </p>
	* <p>
	* If a {@code point} is inside the {@code shape} according to the
	* {@link #contains(Point2D p) contains(point)} method, then it must
	* be inside the returned {@code Rectangle2D} bounds object according
	* to the {@link #contains(Point2D p) contains(point)} method of the
	* {@code bounds}. Specifically:
	* </p>
	* <p>
	*  {@code shape.contains(p)} requires {@code bounds.contains(p)}
	* </p>
	* <p>
	* If a {@code point} is not inside the {@code shape}, then it might
	* still be contained in the {@code bounds} object:
	* </p>
	* <p>
	*  {@code bounds.contains(p)} does not imply {@code shape.contains(p)}
	* </p>
	* @return an instance of <code>Rectangle2D</code> that is a
	*                 high-precision bounding box of the <code>Shape</code>.
	* @see #getBounds
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:public @:public @:public public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
/**
* A line segment specified with float coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Line2D$Float') extern class Line2D_Float extends java.awt.geom.Line2D implements java.io.Serializable
{
	/**
	* The X coordinate of the start point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x1 : Single;
	
	/**
	* The Y coordinate of the start point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y1 : Single;
	
	/**
	* The X coordinate of the end point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x2 : Single;
	
	/**
	* The Y coordinate of the end point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y2 : Single;
	
	/**
	* Constructs and initializes a Line with coordinates (0, 0) -> (0, 0).
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs and initializes a Line from the specified coordinates.
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	/**
	* Constructs and initializes a <code>Line2D</code> from the
	* specified <code>Point2D</code> objects.
	* @param p1 the start <code>Point2D</code> of this line segment
	* @param p2 the end <code>Point2D</code> of this line segment
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(p1 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getX1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getY1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getP1() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getX2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getY2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getP2() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function setLine(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the location of the end points of this <code>Line2D</code>
	* to the specified float coordinates.
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setLine(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
/**
* A line segment specified with double coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Line2D$Double') extern class Line2D_Double extends java.awt.geom.Line2D implements java.io.Serializable
{
	/**
	* The X coordinate of the start point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x1 : Float;
	
	/**
	* The Y coordinate of the start point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y1 : Float;
	
	/**
	* The X coordinate of the end point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x2 : Float;
	
	/**
	* The Y coordinate of the end point of the line segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y2 : Float;
	
	/**
	* Constructs and initializes a Line with coordinates (0, 0) -> (0, 0).
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs and initializes a <code>Line2D</code> from the
	* specified coordinates.
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Constructs and initializes a <code>Line2D</code> from the
	* specified <code>Point2D</code> objects.
	* @param p1 the start <code>Point2D</code> of this line segment
	* @param p2 the end <code>Point2D</code> of this line segment
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(p1 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getX1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getY1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getP1() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getX2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getY2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getP2() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function setLine(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
