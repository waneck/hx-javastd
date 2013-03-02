package java.awt.geom;
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
extern class CubicCurve2D implements java.awt.Shape implements java.lang.Cloneable
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	*
	* @see java.awt.geom.CubicCurve2D.Float
	* @see java.awt.geom.CubicCurve2D.Double
	* @since 1.2
	*/
	@:require(java2) @:overload private function new() : Void;
	
	/**
	* Returns the X coordinate of the start point in double precision.
	* @return the X coordinate of the start point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getX1() : Float;
	
	/**
	* Returns the Y coordinate of the start point in double precision.
	* @return the Y coordinate of the start point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getY1() : Float;
	
	/**
	* Returns the start point.
	* @return a {@code Point2D} that is the start point of
	*         the {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getP1() : java.awt.geom.Point2D;
	
	/**
	* Returns the X coordinate of the first control point in double precision.
	* @return the X coordinate of the first control point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlX1() : Float;
	
	/**
	* Returns the Y coordinate of the first control point in double precision.
	* @return the Y coordinate of the first control point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlY1() : Float;
	
	/**
	* Returns the first control point.
	* @return a {@code Point2D} that is the first control point of
	*         the {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlP1() : java.awt.geom.Point2D;
	
	/**
	* Returns the X coordinate of the second control point
	* in double precision.
	* @return the X coordinate of the second control point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlX2() : Float;
	
	/**
	* Returns the Y coordinate of the second control point
	* in double precision.
	* @return the Y coordinate of the second control point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlY2() : Float;
	
	/**
	* Returns the second control point.
	* @return a {@code Point2D} that is the second control point of
	*         the {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlP2() : java.awt.geom.Point2D;
	
	/**
	* Returns the X coordinate of the end point in double precision.
	* @return the X coordinate of the end point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getX2() : Float;
	
	/**
	* Returns the Y coordinate of the end point in double precision.
	* @return the Y coordinate of the end point of the
	*         {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getY2() : Float;
	
	/**
	* Returns the end point.
	* @return a {@code Point2D} that is the end point of
	*         the {@code CubicCurve2D}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getP2() : java.awt.geom.Point2D;
	
	/**
	* Sets the location of the end points and control points of this curve
	* to the specified double coordinates.
	*
	* @param x1 the X coordinate used to set the start point
	*           of this {@code CubicCurve2D}
	* @param y1 the Y coordinate used to set the start point
	*           of this {@code CubicCurve2D}
	* @param ctrlx1 the X coordinate used to set the first control point
	*               of this {@code CubicCurve2D}
	* @param ctrly1 the Y coordinate used to set the first control point
	*               of this {@code CubicCurve2D}
	* @param ctrlx2 the X coordinate used to set the second control point
	*               of this {@code CubicCurve2D}
	* @param ctrly2 the Y coordinate used to set the second control point
	*               of this {@code CubicCurve2D}
	* @param x2 the X coordinate used to set the end point
	*           of this {@code CubicCurve2D}
	* @param y2 the Y coordinate used to set the end point
	*           of this {@code CubicCurve2D}
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function setCurve(x1 : Float, y1 : Float, ctrlx1 : Float, ctrly1 : Float, ctrlx2 : Float, ctrly2 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the location of the end points and control points of this curve
	* to the double coordinates at the specified offset in the specified
	* array.
	* @param coords a double array containing coordinates
	* @param offset the index of <code>coords</code> from which to begin
	*          setting the end points and control points of this curve
	*          to the coordinates contained in <code>coords</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(coords : java.NativeArray<Float>, offset : Int) : Void;
	
	/**
	* Sets the location of the end points and control points of this curve
	* to the specified <code>Point2D</code> coordinates.
	* @param p1 the first specified <code>Point2D</code> used to set the
	*          start point of this curve
	* @param cp1 the second specified <code>Point2D</code> used to set the
	*          first control point of this curve
	* @param cp2 the third specified <code>Point2D</code> used to set the
	*          second control point of this curve
	* @param p2 the fourth specified <code>Point2D</code> used to set the
	*          end point of this curve
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(p1 : java.awt.geom.Point2D, cp1 : java.awt.geom.Point2D, cp2 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D) : Void;
	
	/**
	* Sets the location of the end points and control points of this curve
	* to the coordinates of the <code>Point2D</code> objects at the specified
	* offset in the specified array.
	* @param pts an array of <code>Point2D</code> objects
	* @param offset  the index of <code>pts</code> from which to begin setting
	*          the end points and control points of this curve to the
	*          points contained in <code>pts</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(pts : java.NativeArray<java.awt.geom.Point2D>, offset : Int) : Void;
	
	/**
	* Sets the location of the end points and control points of this curve
	* to the same as those in the specified <code>CubicCurve2D</code>.
	* @param c the specified <code>CubicCurve2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(c : java.awt.geom.CubicCurve2D) : Void;
	
	/**
	* Returns the square of the flatness of the cubic curve specified
	* by the indicated control points. The flatness is the maximum distance
	* of a control point from the line connecting the end points.
	*
	* @param x1 the X coordinate that specifies the start point
	*           of a {@code CubicCurve2D}
	* @param y1 the Y coordinate that specifies the start point
	*           of a {@code CubicCurve2D}
	* @param ctrlx1 the X coordinate that specifies the first control point
	*               of a {@code CubicCurve2D}
	* @param ctrly1 the Y coordinate that specifies the first control point
	*               of a {@code CubicCurve2D}
	* @param ctrlx2 the X coordinate that specifies the second control point
	*               of a {@code CubicCurve2D}
	* @param ctrly2 the Y coordinate that specifies the second control point
	*               of a {@code CubicCurve2D}
	* @param x2 the X coordinate that specifies the end point
	*           of a {@code CubicCurve2D}
	* @param y2 the Y coordinate that specifies the end point
	*           of a {@code CubicCurve2D}
	* @return the square of the flatness of the {@code CubicCurve2D}
	*          represented by the specified coordinates.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatnessSq') @:overload public static function _getFlatnessSq(x1 : Float, y1 : Float, ctrlx1 : Float, ctrly1 : Float, ctrlx2 : Float, ctrly2 : Float, x2 : Float, y2 : Float) : Float;
	
	/**
	* Returns the flatness of the cubic curve specified
	* by the indicated control points. The flatness is the maximum distance
	* of a control point from the line connecting the end points.
	*
	* @param x1 the X coordinate that specifies the start point
	*           of a {@code CubicCurve2D}
	* @param y1 the Y coordinate that specifies the start point
	*           of a {@code CubicCurve2D}
	* @param ctrlx1 the X coordinate that specifies the first control point
	*               of a {@code CubicCurve2D}
	* @param ctrly1 the Y coordinate that specifies the first control point
	*               of a {@code CubicCurve2D}
	* @param ctrlx2 the X coordinate that specifies the second control point
	*               of a {@code CubicCurve2D}
	* @param ctrly2 the Y coordinate that specifies the second control point
	*               of a {@code CubicCurve2D}
	* @param x2 the X coordinate that specifies the end point
	*           of a {@code CubicCurve2D}
	* @param y2 the Y coordinate that specifies the end point
	*           of a {@code CubicCurve2D}
	* @return the flatness of the {@code CubicCurve2D}
	*          represented by the specified coordinates.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatness') @:overload public static function _getFlatness(x1 : Float, y1 : Float, ctrlx1 : Float, ctrly1 : Float, ctrlx2 : Float, ctrly2 : Float, x2 : Float, y2 : Float) : Float;
	
	/**
	* Returns the square of the flatness of the cubic curve specified
	* by the control points stored in the indicated array at the
	* indicated index. The flatness is the maximum distance
	* of a control point from the line connecting the end points.
	* @param coords an array containing coordinates
	* @param offset the index of <code>coords</code> from which to begin
	*          getting the end points and control points of the curve
	* @return the square of the flatness of the <code>CubicCurve2D</code>
	*          specified by the coordinates in <code>coords</code> at
	*          the specified offset.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatnessSq') @:overload public static function _getFlatnessSq(coords : java.NativeArray<Float>, offset : Int) : Float;
	
	/**
	* Returns the flatness of the cubic curve specified
	* by the control points stored in the indicated array at the
	* indicated index.  The flatness is the maximum distance
	* of a control point from the line connecting the end points.
	* @param coords an array containing coordinates
	* @param offset the index of <code>coords</code> from which to begin
	*          getting the end points and control points of the curve
	* @return the flatness of the <code>CubicCurve2D</code>
	*          specified by the coordinates in <code>coords</code> at
	*          the specified offset.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatness') @:overload public static function _getFlatness(coords : java.NativeArray<Float>, offset : Int) : Float;
	
	/**
	* Returns the square of the flatness of this curve.  The flatness is the
	* maximum distance of a control point from the line connecting the
	* end points.
	* @return the square of the flatness of this curve.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getFlatnessSq() : Float;
	
	/**
	* Returns the flatness of this curve.  The flatness is the
	* maximum distance of a control point from the line connecting the
	* end points.
	* @return the flatness of this curve.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getFlatness() : Float;
	
	/**
	* Subdivides this cubic curve and stores the resulting two
	* subdivided curves into the left and right curve parameters.
	* Either or both of the left and right objects may be the same
	* as this object or null.
	* @param left the cubic curve object for storing for the left or
	* first half of the subdivided curve
	* @param right the cubic curve object for storing for the right or
	* second half of the subdivided curve
	* @since 1.2
	*/
	@:require(java2) @:overload public function subdivide(left : java.awt.geom.CubicCurve2D, right : java.awt.geom.CubicCurve2D) : Void;
	
	/**
	* Subdivides the cubic curve specified by the <code>src</code> parameter
	* and stores the resulting two subdivided curves into the
	* <code>left</code> and <code>right</code> curve parameters.
	* Either or both of the <code>left</code> and <code>right</code> objects
	* may be the same as the <code>src</code> object or <code>null</code>.
	* @param src the cubic curve to be subdivided
	* @param left the cubic curve object for storing the left or
	* first half of the subdivided curve
	* @param right the cubic curve object for storing the right or
	* second half of the subdivided curve
	* @since 1.2
	*/
	@:require(java2) @:native('subdivide') @:overload public static function _subdivide(src : java.awt.geom.CubicCurve2D, left : java.awt.geom.CubicCurve2D, right : java.awt.geom.CubicCurve2D) : Void;
	
	/**
	* Subdivides the cubic curve specified by the coordinates
	* stored in the <code>src</code> array at indices <code>srcoff</code>
	* through (<code>srcoff</code>&nbsp;+&nbsp;7) and stores the
	* resulting two subdivided curves into the two result arrays at the
	* corresponding indices.
	* Either or both of the <code>left</code> and <code>right</code>
	* arrays may be <code>null</code> or a reference to the same array
	* as the <code>src</code> array.
	* Note that the last point in the first subdivided curve is the
	* same as the first point in the second subdivided curve. Thus,
	* it is possible to pass the same array for <code>left</code>
	* and <code>right</code> and to use offsets, such as <code>rightoff</code>
	* equals (<code>leftoff</code> + 6), in order
	* to avoid allocating extra storage for this common point.
	* @param src the array holding the coordinates for the source curve
	* @param srcoff the offset into the array of the beginning of the
	* the 6 source coordinates
	* @param left the array for storing the coordinates for the first
	* half of the subdivided curve
	* @param leftoff the offset into the array of the beginning of the
	* the 6 left coordinates
	* @param right the array for storing the coordinates for the second
	* half of the subdivided curve
	* @param rightoff the offset into the array of the beginning of the
	* the 6 right coordinates
	* @since 1.2
	*/
	@:require(java2) @:native('subdivide') @:overload public static function _subdivide(src : java.NativeArray<Float>, srcoff : Int, left : java.NativeArray<Float>, leftoff : Int, right : java.NativeArray<Float>, rightoff : Int) : Void;
	
	/**
	* Solves the cubic whose coefficients are in the <code>eqn</code>
	* array and places the non-complex roots back into the same array,
	* returning the number of roots.  The solved cubic is represented
	* by the equation:
	* <pre>
	*     eqn = {c, b, a, d}
	*     dx^3 + ax^2 + bx + c = 0
	* </pre>
	* A return value of -1 is used to distinguish a constant equation
	* that might be always 0 or never 0 from an equation that has no
	* zeroes.
	* @param eqn an array containing coefficients for a cubic
	* @return the number of roots, or -1 if the equation is a constant.
	* @since 1.2
	*/
	@:require(java2) @:overload public static function solveCubic(eqn : java.NativeArray<Float>) : Int;
	
	/**
	* Solve the cubic whose coefficients are in the <code>eqn</code>
	* array and place the non-complex roots into the <code>res</code>
	* array, returning the number of roots.
	* The cubic solved is represented by the equation:
	*     eqn = {c, b, a, d}
	*     dx^3 + ax^2 + bx + c = 0
	* A return value of -1 is used to distinguish a constant equation,
	* which may be always 0 or never 0, from an equation which has no
	* zeroes.
	* @param eqn the specified array of coefficients to use to solve
	*        the cubic equation
	* @param res the array that contains the non-complex roots
	*        resulting from the solution of the cubic equation
	* @return the number of roots, or -1 if the equation is a constant
	* @since 1.3
	*/
	@:require(java3) @:overload public static function solveCubic(eqn : java.NativeArray<Float>, res : java.NativeArray<Float>) : Int;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function contains(x : Float, y : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function contains(p : java.awt.geom.Point2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function intersects(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function contains(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns an iteration object that defines the boundary of the
	* shape.
	* The iterator for this class is not multi-threaded safe,
	* which means that this <code>CubicCurve2D</code> class does not
	* guarantee that modifications to the geometry of this
	* <code>CubicCurve2D</code> object do not affect any iterations of
	* that geometry that are already in process.
	* @param at an optional <code>AffineTransform</code> to be applied to the
	* coordinates as they are returned in the iteration, or <code>null</code>
	* if untransformed coordinates are desired
	* @return    the <code>PathIterator</code> object that returns the
	*          geometry of the outline of this <code>CubicCurve2D</code>, one
	*          segment at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Return an iteration object that defines the boundary of the
	* flattened shape.
	* The iterator for this class is not multi-threaded safe,
	* which means that this <code>CubicCurve2D</code> class does not
	* guarantee that modifications to the geometry of this
	* <code>CubicCurve2D</code> object do not affect any iterations of
	* that geometry that are already in process.
	* @param at an optional <code>AffineTransform</code> to be applied to the
	* coordinates as they are returned in the iteration, or <code>null</code>
	* if untransformed coordinates are desired
	* @param flatness the maximum amount that the control points
	* for a given curve can vary from colinear before a subdivided
	* curve is replaced by a straight line connecting the end points
	* @return    the <code>PathIterator</code> object that returns the
	* geometry of the outline of this <code>CubicCurve2D</code>,
	* one segment at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	/**
	* Creates a new object of the same class as this object.
	*
	* @return     a clone of this instance.
	* @exception  OutOfMemoryError            if there is not enough memory.
	* @see        java.lang.Cloneable
	* @since      1.2
	*/
	@:require(java2) @:overload public function clone() : Dynamic;
	
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
	@:require(java2) @:overload @:public @:public public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
/**
* A cubic parametric curve segment specified with
* {@code float} coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$CubicCurve2D$Float') extern class CubicCurve2D_Float extends java.awt.geom.CubicCurve2D implements java.io.Serializable
{
	/**
	* The X coordinate of the start point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x1 : Single;
	
	/**
	* The Y coordinate of the start point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y1 : Single;
	
	/**
	* The X coordinate of the first control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrlx1 : Single;
	
	/**
	* The Y coordinate of the first control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrly1 : Single;
	
	/**
	* The X coordinate of the second control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrlx2 : Single;
	
	/**
	* The Y coordinate of the second control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrly2 : Single;
	
	/**
	* The X coordinate of the end point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x2 : Single;
	
	/**
	* The Y coordinate of the end point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y2 : Single;
	
	/**
	* Constructs and initializes a CubicCurve with coordinates
	* (0, 0, 0, 0, 0, 0, 0, 0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes a {@code CubicCurve2D} from
	* the specified {@code float} coordinates.
	*
	* @param x1 the X coordinate for the start point
	*           of the resulting {@code CubicCurve2D}
	* @param y1 the Y coordinate for the start point
	*           of the resulting {@code CubicCurve2D}
	* @param ctrlx1 the X coordinate for the first control point
	*               of the resulting {@code CubicCurve2D}
	* @param ctrly1 the Y coordinate for the first control point
	*               of the resulting {@code CubicCurve2D}
	* @param ctrlx2 the X coordinate for the second control point
	*               of the resulting {@code CubicCurve2D}
	* @param ctrly2 the Y coordinate for the second control point
	*               of the resulting {@code CubicCurve2D}
	* @param x2 the X coordinate for the end point
	*           of the resulting {@code CubicCurve2D}
	* @param y2 the Y coordinate for the end point
	*           of the resulting {@code CubicCurve2D}
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x1 : Single, y1 : Single, ctrlx1 : Single, ctrly1 : Single, ctrlx2 : Single, ctrly2 : Single, x2 : Single, y2 : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getP1() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlX1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlY1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlP1() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlX2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlY2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlP2() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getP2() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setCurve(x1 : Float, y1 : Float, ctrlx1 : Float, ctrly1 : Float, ctrlx2 : Float, ctrly2 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the location of the end points and control points
	* of this curve to the specified {@code float} coordinates.
	*
	* @param x1 the X coordinate used to set the start point
	*           of this {@code CubicCurve2D}
	* @param y1 the Y coordinate used to set the start point
	*           of this {@code CubicCurve2D}
	* @param ctrlx1 the X coordinate used to set the first control point
	*               of this {@code CubicCurve2D}
	* @param ctrly1 the Y coordinate used to set the first control point
	*               of this {@code CubicCurve2D}
	* @param ctrlx2 the X coordinate used to set the second control point
	*               of this {@code CubicCurve2D}
	* @param ctrly2 the Y coordinate used to set the second control point
	*               of this {@code CubicCurve2D}
	* @param x2 the X coordinate used to set the end point
	*           of this {@code CubicCurve2D}
	* @param y2 the Y coordinate used to set the end point
	*           of this {@code CubicCurve2D}
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(x1 : Single, y1 : Single, ctrlx1 : Single, ctrly1 : Single, ctrlx2 : Single, ctrly2 : Single, x2 : Single, y2 : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
/**
* A cubic parametric curve segment specified with
* {@code double} coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$CubicCurve2D$Double') extern class CubicCurve2D_Double extends java.awt.geom.CubicCurve2D implements java.io.Serializable
{
	/**
	* The X coordinate of the start point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x1 : Float;
	
	/**
	* The Y coordinate of the start point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y1 : Float;
	
	/**
	* The X coordinate of the first control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrlx1 : Float;
	
	/**
	* The Y coordinate of the first control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrly1 : Float;
	
	/**
	* The X coordinate of the second control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrlx2 : Float;
	
	/**
	* The Y coordinate of the second control point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrly2 : Float;
	
	/**
	* The X coordinate of the end point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x2 : Float;
	
	/**
	* The Y coordinate of the end point
	* of the cubic curve segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y2 : Float;
	
	/**
	* Constructs and initializes a CubicCurve with coordinates
	* (0, 0, 0, 0, 0, 0, 0, 0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes a {@code CubicCurve2D} from
	* the specified {@code double} coordinates.
	*
	* @param x1 the X coordinate for the start point
	*           of the resulting {@code CubicCurve2D}
	* @param y1 the Y coordinate for the start point
	*           of the resulting {@code CubicCurve2D}
	* @param ctrlx1 the X coordinate for the first control point
	*               of the resulting {@code CubicCurve2D}
	* @param ctrly1 the Y coordinate for the first control point
	*               of the resulting {@code CubicCurve2D}
	* @param ctrlx2 the X coordinate for the second control point
	*               of the resulting {@code CubicCurve2D}
	* @param ctrly2 the Y coordinate for the second control point
	*               of the resulting {@code CubicCurve2D}
	* @param x2 the X coordinate for the end point
	*           of the resulting {@code CubicCurve2D}
	* @param y2 the Y coordinate for the end point
	*           of the resulting {@code CubicCurve2D}
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x1 : Float, y1 : Float, ctrlx1 : Float, ctrly1 : Float, ctrlx2 : Float, ctrly2 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getP1() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlX1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlY1() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlP1() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlX2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlY2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlP2() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY2() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getP2() : java.awt.geom.Point2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setCurve(x1 : Float, y1 : Float, ctrlx1 : Float, ctrly1 : Float, ctrlx2 : Float, ctrly2 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
