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
extern class QuadCurve2D implements java.awt.Shape implements java.lang.Cloneable
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	*
	* @see java.awt.geom.QuadCurve2D.Float
	* @see java.awt.geom.QuadCurve2D.Double
	* @since 1.2
	*/
	@:require(java2) @:overload private function new() : Void;
	
	/**
	* Returns the X coordinate of the start point in
	* <code>double</code> in precision.
	* @return the X coordinate of the start point.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getX1() : Float;
	
	/**
	* Returns the Y coordinate of the start point in
	* <code>double</code> precision.
	* @return the Y coordinate of the start point.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getY1() : Float;
	
	/**
	* Returns the start point.
	* @return a <code>Point2D</code> that is the start point of this
	*          <code>QuadCurve2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getP1() : java.awt.geom.Point2D;
	
	/**
	* Returns the X coordinate of the control point in
	* <code>double</code> precision.
	* @return X coordinate the control point
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlX() : Float;
	
	/**
	* Returns the Y coordinate of the control point in
	* <code>double</code> precision.
	* @return the Y coordinate of the control point.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlY() : Float;
	
	/**
	* Returns the control point.
	* @return a <code>Point2D</code> that is the control point of this
	*          <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getCtrlPt() : java.awt.geom.Point2D;
	
	/**
	* Returns the X coordinate of the end point in
	* <code>double</code> precision.
	* @return the x coordiante of the end point.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getX2() : Float;
	
	/**
	* Returns the Y coordinate of the end point in
	* <code>double</code> precision.
	* @return the Y coordinate of the end point.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getY2() : Float;
	
	/**
	* Returns the end point.
	* @return a <code>Point</code> object that is the end point
	*          of this <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getP2() : java.awt.geom.Point2D;
	
	/**
	* Sets the location of the end points and control point of this curve
	* to the specified <code>double</code> coordinates.
	*
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param ctrlx the X coordinate of the control point
	* @param ctrly the Y coordinate of the control point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function setCurve(x1 : Float, y1 : Float, ctrlx : Float, ctrly : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the location of the end points and control points of this
	* <code>QuadCurve2D</code> to the <code>double</code> coordinates at
	* the specified offset in the specified array.
	* @param coords the array containing coordinate values
	* @param offset the index into the array from which to start
	*          getting the coordinate values and assigning them to this
	*          <code>QuadCurve2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(coords : java.NativeArray<Float>, offset : Int) : Void;
	
	/**
	* Sets the location of the end points and control point of this
	* <code>QuadCurve2D</code> to the specified <code>Point2D</code>
	* coordinates.
	* @param p1 the start point
	* @param cp the control point
	* @param p2 the end point
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(p1 : java.awt.geom.Point2D, cp : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D) : Void;
	
	/**
	* Sets the location of the end points and control points of this
	* <code>QuadCurve2D</code> to the coordinates of the
	* <code>Point2D</code> objects at the specified offset in
	* the specified array.
	* @param pts an array containing <code>Point2D</code> that define
	*          coordinate values
	* @param offset the index into <code>pts</code> from which to start
	*          getting the coordinate values and assigning them to this
	*          <code>QuadCurve2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(pts : java.NativeArray<java.awt.geom.Point2D>, offset : Int) : Void;
	
	/**
	* Sets the location of the end points and control point of this
	* <code>QuadCurve2D</code> to the same as those in the specified
	* <code>QuadCurve2D</code>.
	* @param c the specified <code>QuadCurve2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(c : QuadCurve2D) : Void;
	
	/**
	* Returns the square of the flatness, or maximum distance of a
	* control point from the line connecting the end points, of the
	* quadratic curve specified by the indicated control points.
	*
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param ctrlx the X coordinate of the control point
	* @param ctrly the Y coordinate of the control point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @return the square of the flatness of the quadratic curve
	*          defined by the specified coordinates.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatnessSq') @:overload public static function _getFlatnessSq(x1 : Float, y1 : Float, ctrlx : Float, ctrly : Float, x2 : Float, y2 : Float) : Float;
	
	/**
	* Returns the flatness, or maximum distance of a
	* control point from the line connecting the end points, of the
	* quadratic curve specified by the indicated control points.
	*
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param ctrlx the X coordinate of the control point
	* @param ctrly the Y coordinate of the control point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @return the flatness of the quadratic curve defined by the
	*          specified coordinates.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatness') @:overload public static function _getFlatness(x1 : Float, y1 : Float, ctrlx : Float, ctrly : Float, x2 : Float, y2 : Float) : Float;
	
	/**
	* Returns the square of the flatness, or maximum distance of a
	* control point from the line connecting the end points, of the
	* quadratic curve specified by the control points stored in the
	* indicated array at the indicated index.
	* @param coords an array containing coordinate values
	* @param offset the index into <code>coords</code> from which to
	*          to start getting the values from the array
	* @return the flatness of the quadratic curve that is defined by the
	*          values in the specified array at the specified index.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatnessSq') @:overload public static function _getFlatnessSq(coords : java.NativeArray<Float>, offset : Int) : Float;
	
	/**
	* Returns the flatness, or maximum distance of a
	* control point from the line connecting the end points, of the
	* quadratic curve specified by the control points stored in the
	* indicated array at the indicated index.
	* @param coords an array containing coordinate values
	* @param offset the index into <code>coords</code> from which to
	*          start getting the coordinate values
	* @return the flatness of a quadratic curve defined by the
	*          specified array at the specified offset.
	* @since 1.2
	*/
	@:require(java2) @:native('getFlatness') @:overload public static function _getFlatness(coords : java.NativeArray<Float>, offset : Int) : Float;
	
	/**
	* Returns the square of the flatness, or maximum distance of a
	* control point from the line connecting the end points, of this
	* <code>QuadCurve2D</code>.
	* @return the square of the flatness of this
	*          <code>QuadCurve2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getFlatnessSq() : Float;
	
	/**
	* Returns the flatness, or maximum distance of a
	* control point from the line connecting the end points, of this
	* <code>QuadCurve2D</code>.
	* @return the flatness of this <code>QuadCurve2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getFlatness() : Float;
	
	/**
	* Subdivides this <code>QuadCurve2D</code> and stores the resulting
	* two subdivided curves into the <code>left</code> and
	* <code>right</code> curve parameters.
	* Either or both of the <code>left</code> and <code>right</code>
	* objects can be the same as this <code>QuadCurve2D</code> or
	* <code>null</code>.
	* @param left the <code>QuadCurve2D</code> object for storing the
	* left or first half of the subdivided curve
	* @param right the <code>QuadCurve2D</code> object for storing the
	* right or second half of the subdivided curve
	* @since 1.2
	*/
	@:require(java2) @:overload public function subdivide(left : QuadCurve2D, right : QuadCurve2D) : Void;
	
	/**
	* Subdivides the quadratic curve specified by the <code>src</code>
	* parameter and stores the resulting two subdivided curves into the
	* <code>left</code> and <code>right</code> curve parameters.
	* Either or both of the <code>left</code> and <code>right</code>
	* objects can be the same as the <code>src</code> object or
	* <code>null</code>.
	* @param src the quadratic curve to be subdivided
	* @param left the <code>QuadCurve2D</code> object for storing the
	*          left or first half of the subdivided curve
	* @param right the <code>QuadCurve2D</code> object for storing the
	*          right or second half of the subdivided curve
	* @since 1.2
	*/
	@:require(java2) @:native('subdivide') @:overload public static function _subdivide(src : QuadCurve2D, left : QuadCurve2D, right : QuadCurve2D) : Void;
	
	/**
	* Subdivides the quadratic curve specified by the coordinates
	* stored in the <code>src</code> array at indices
	* <code>srcoff</code> through <code>srcoff</code>&nbsp;+&nbsp;5
	* and stores the resulting two subdivided curves into the two
	* result arrays at the corresponding indices.
	* Either or both of the <code>left</code> and <code>right</code>
	* arrays can be <code>null</code> or a reference to the same array
	* and offset as the <code>src</code> array.
	* Note that the last point in the first subdivided curve is the
	* same as the first point in the second subdivided curve.  Thus,
	* it is possible to pass the same array for <code>left</code> and
	* <code>right</code> and to use offsets such that
	* <code>rightoff</code> equals <code>leftoff</code> + 4 in order
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
	* Solves the quadratic whose coefficients are in the <code>eqn</code>
	* array and places the non-complex roots back into the same array,
	* returning the number of roots.  The quadratic solved is represented
	* by the equation:
	* <pre>
	*     eqn = {C, B, A};
	*     ax^2 + bx + c = 0
	* </pre>
	* A return value of <code>-1</code> is used to distinguish a constant
	* equation, which might be always 0 or never 0, from an equation that
	* has no zeroes.
	* @param eqn the array that contains the quadratic coefficients
	* @return the number of roots, or <code>-1</code> if the equation is
	*          a constant
	* @since 1.2
	*/
	@:require(java2) @:overload public static function solveQuadratic(eqn : java.NativeArray<Float>) : Int;
	
	/**
	* Solves the quadratic whose coefficients are in the <code>eqn</code>
	* array and places the non-complex roots into the <code>res</code>
	* array, returning the number of roots.
	* The quadratic solved is represented by the equation:
	* <pre>
	*     eqn = {C, B, A};
	*     ax^2 + bx + c = 0
	* </pre>
	* A return value of <code>-1</code> is used to distinguish a constant
	* equation, which might be always 0 or never 0, from an equation that
	* has no zeroes.
	* @param eqn the specified array of coefficients to use to solve
	*        the quadratic equation
	* @param res the array that contains the non-complex roots
	*        resulting from the solution of the quadratic equation
	* @return the number of roots, or <code>-1</code> if the equation is
	*  a constant.
	* @since 1.3
	*/
	@:require(java3) @:overload public static function solveQuadratic(eqn : java.NativeArray<Float>, res : java.NativeArray<Float>) : Int;
	
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
	* shape of this <code>QuadCurve2D</code>.
	* The iterator for this class is not multi-threaded safe,
	* which means that this <code>QuadCurve2D</code> class does not
	* guarantee that modifications to the geometry of this
	* <code>QuadCurve2D</code> object do not affect any iterations of
	* that geometry that are already in process.
	* @param at an optional {@link AffineTransform} to apply to the
	*          shape boundary
	* @return a {@link PathIterator} object that defines the boundary
	*          of the shape.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Returns an iteration object that defines the boundary of the
	* flattened shape of this <code>QuadCurve2D</code>.
	* The iterator for this class is not multi-threaded safe,
	* which means that this <code>QuadCurve2D</code> class does not
	* guarantee that modifications to the geometry of this
	* <code>QuadCurve2D</code> object do not affect any iterations of
	* that geometry that are already in process.
	* @param at an optional <code>AffineTransform</code> to apply
	*          to the boundary of the shape
	* @param flatness the maximum distance that the control points for a
	*          subdivided curve can be with respect to a line connecting
	*          the end points of this curve before this curve is
	*          replaced by a straight line connecting the end points.
	* @return a <code>PathIterator</code> object that defines the
	*          flattened boundary of the shape.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	/**
	* Creates a new object of the same class and with the same contents
	* as this object.
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
* A quadratic parametric curve segment specified with
* {@code float} coordinates.
*
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$QuadCurve2D$Float') extern class QuadCurve2D_Float extends QuadCurve2D implements java.io.Serializable
{
	/**
	* The X coordinate of the start point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x1 : Single;
	
	/**
	* The Y coordinate of the start point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y1 : Single;
	
	/**
	* The X coordinate of the control point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrlx : Single;
	
	/**
	* The Y coordinate of the control point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrly : Single;
	
	/**
	* The X coordinate of the end point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x2 : Single;
	
	/**
	* The Y coordinate of the end point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y2 : Single;
	
	/**
	* Constructs and initializes a <code>QuadCurve2D</code> with
	* coordinates (0, 0, 0, 0, 0, 0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes a <code>QuadCurve2D</code> from the
	* specified {@code float} coordinates.
	*
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param ctrlx the X coordinate of the control point
	* @param ctrly the Y coordinate of the control point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x1 : Single, y1 : Single, ctrlx : Single, ctrly : Single, x2 : Single, y2 : Single) : Void;
	
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
	@:require(java2) @:overload override public function getCtrlX() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlY() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlPt() : java.awt.geom.Point2D;
	
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
	@:require(java2) @:overload override public function setCurve(x1 : Float, y1 : Float, ctrlx : Float, ctrly : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the location of the end points and control point of this curve
	* to the specified {@code float} coordinates.
	*
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param ctrlx the X coordinate of the control point
	* @param ctrly the Y coordinate of the control point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload public function setCurve(x1 : Single, y1 : Single, ctrlx : Single, ctrly : Single, x2 : Single, y2 : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
/**
* A quadratic parametric curve segment specified with
* {@code double} coordinates.
*
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$QuadCurve2D$Double') extern class QuadCurve2D_Double extends QuadCurve2D implements java.io.Serializable
{
	/**
	* The X coordinate of the start point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x1 : Float;
	
	/**
	* The Y coordinate of the start point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y1 : Float;
	
	/**
	* The X coordinate of the control point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrlx : Float;
	
	/**
	* The Y coordinate of the control point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var ctrly : Float;
	
	/**
	* The X coordinate of the end point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x2 : Float;
	
	/**
	* The Y coordinate of the end point of the quadratic curve
	* segment.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y2 : Float;
	
	/**
	* Constructs and initializes a <code>QuadCurve2D</code> with
	* coordinates (0, 0, 0, 0, 0, 0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes a <code>QuadCurve2D</code> from the
	* specified {@code double} coordinates.
	*
	* @param x1 the X coordinate of the start point
	* @param y1 the Y coordinate of the start point
	* @param ctrlx the X coordinate of the control point
	* @param ctrly the Y coordinate of the control point
	* @param x2 the X coordinate of the end point
	* @param y2 the Y coordinate of the end point
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x1 : Float, y1 : Float, ctrlx : Float, ctrly : Float, x2 : Float, y2 : Float) : Void;
	
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
	@:require(java2) @:overload override public function getCtrlX() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlY() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getCtrlPt() : java.awt.geom.Point2D;
	
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
	@:require(java2) @:overload override public function setCurve(x1 : Float, y1 : Float, ctrlx : Float, ctrly : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
