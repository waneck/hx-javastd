package java.awt.geom;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Path2D implements java.awt.Shape implements java.lang.Cloneable
{
	/**
	* An even-odd winding rule for determining the interior of
	* a path.
	*
	* @see PathIterator#WIND_EVEN_ODD
	* @since 1.6
	*/
	@:require(java6) public static var WIND_EVEN_ODD(default, null) : Int;
	
	/**
	* A non-zero winding rule for determining the interior of a
	* path.
	*
	* @see PathIterator#WIND_NON_ZERO
	* @since 1.6
	*/
	@:require(java6) public static var WIND_NON_ZERO(default, null) : Int;
	
	/**
	* Adds a point to the path by moving to the specified
	* coordinates specified in double precision.
	*
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @since 1.6
	*/
	@:require(java6) @:overload @:abstract public function moveTo(x : Float, y : Float) : Void;
	
	/**
	* Adds a point to the path by drawing a straight line from the
	* current coordinates to the new specified coordinates
	* specified in double precision.
	*
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @since 1.6
	*/
	@:require(java6) @:overload @:abstract public function lineTo(x : Float, y : Float) : Void;
	
	/**
	* Adds a curved segment, defined by two new points, to the path by
	* drawing a Quadratic curve that intersects both the current
	* coordinates and the specified coordinates {@code (x2,y2)},
	* using the specified point {@code (x1,y1)} as a quadratic
	* parametric control point.
	* All coordinates are specified in double precision.
	*
	* @param x1 the X coordinate of the quadratic control point
	* @param y1 the Y coordinate of the quadratic control point
	* @param x2 the X coordinate of the final end point
	* @param y2 the Y coordinate of the final end point
	* @since 1.6
	*/
	@:require(java6) @:overload @:abstract public function quadTo(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Adds a curved segment, defined by three new points, to the path by
	* drawing a B&eacute;zier curve that intersects both the current
	* coordinates and the specified coordinates {@code (x3,y3)},
	* using the specified points {@code (x1,y1)} and {@code (x2,y2)} as
	* B&eacute;zier control points.
	* All coordinates are specified in double precision.
	*
	* @param x1 the X coordinate of the first B&eacute;zier control point
	* @param y1 the Y coordinate of the first B&eacute;zier control point
	* @param x2 the X coordinate of the second B&eacute;zier control point
	* @param y2 the Y coordinate of the second B&eacute;zier control point
	* @param x3 the X coordinate of the final end point
	* @param y3 the Y coordinate of the final end point
	* @since 1.6
	*/
	@:require(java6) @:overload @:abstract public function curveTo(x1 : Float, y1 : Float, x2 : Float, y2 : Float, x3 : Float, y3 : Float) : Void;
	
	/**
	* Closes the current subpath by drawing a straight line back to
	* the coordinates of the last {@code moveTo}.  If the path is already
	* closed then this method has no effect.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function closePath() : Void;
	
	/**
	* Appends the geometry of the specified {@code Shape} object to the
	* path, possibly connecting the new geometry to the existing path
	* segments with a line segment.
	* If the {@code connect} parameter is {@code true} and the
	* path is not empty then any initial {@code moveTo} in the
	* geometry of the appended {@code Shape}
	* is turned into a {@code lineTo} segment.
	* If the destination coordinates of such a connecting {@code lineTo}
	* segment match the ending coordinates of a currently open
	* subpath then the segment is omitted as superfluous.
	* The winding rule of the specified {@code Shape} is ignored
	* and the appended geometry is governed by the winding
	* rule specified for this path.
	*
	* @param s the {@code Shape} whose geometry is appended
	*          to this path
	* @param connect a boolean to control whether or not to turn an initial
	*                {@code moveTo} segment into a {@code lineTo} segment
	*                to connect the new geometry to the existing path
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function append(s : java.awt.Shape, connect : Bool) : Void;
	
	/**
	* Appends the geometry of the specified
	* {@link PathIterator} object
	* to the path, possibly connecting the new geometry to the existing
	* path segments with a line segment.
	* If the {@code connect} parameter is {@code true} and the
	* path is not empty then any initial {@code moveTo} in the
	* geometry of the appended {@code Shape} is turned into a
	* {@code lineTo} segment.
	* If the destination coordinates of such a connecting {@code lineTo}
	* segment match the ending coordinates of a currently open
	* subpath then the segment is omitted as superfluous.
	* The winding rule of the specified {@code Shape} is ignored
	* and the appended geometry is governed by the winding
	* rule specified for this path.
	*
	* @param pi the {@code PathIterator} whose geometry is appended to
	*           this path
	* @param connect a boolean to control whether or not to turn an initial
	*                {@code moveTo} segment into a {@code lineTo} segment
	*                to connect the new geometry to the existing path
	* @since 1.6
	*/
	@:require(java6) @:overload @:abstract public function append(pi : java.awt.geom.PathIterator, connect : Bool) : Void;
	
	/**
	* Returns the fill style winding rule.
	*
	* @return an integer representing the current winding rule.
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	* @see #setWindingRule
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function getWindingRule() : Int;
	
	/**
	* Sets the winding rule for this path to the specified value.
	*
	* @param rule an integer representing the specified
	*             winding rule
	* @exception IllegalArgumentException if
	*          {@code rule} is not either
	*          {@link #WIND_EVEN_ODD} or
	*          {@link #WIND_NON_ZERO}
	* @see #getWindingRule
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function setWindingRule(rule : Int) : Void;
	
	/**
	* Returns the coordinates most recently added to the end of the path
	* as a {@link Point2D} object.
	*
	* @return a {@code Point2D} object containing the ending coordinates of
	*         the path or {@code null} if there are no points in the path.
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function getCurrentPoint() : java.awt.geom.Point2D;
	
	/**
	* Resets the path to empty.  The append position is set back to the
	* beginning of the path and all coordinates and point types are
	* forgotten.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function reset() : Void;
	
	/**
	* Transforms the geometry of this path using the specified
	* {@link AffineTransform}.
	* The geometry is transformed in place, which permanently changes the
	* boundary defined by this object.
	*
	* @param at the {@code AffineTransform} used to transform the area
	* @since 1.6
	*/
	@:require(java6) @:overload @:abstract public function transform(at : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Returns a new {@code Shape} representing a transformed version
	* of this {@code Path2D}.
	* Note that the exact type and coordinate precision of the return
	* value is not specified for this method.
	* The method will return a Shape that contains no less precision
	* for the transformed geometry than this {@code Path2D} currently
	* maintains, but it may contain no more precision either.
	* If the tradeoff of precision vs. storage size in the result is
	* important then the convenience constructors in the
	* {@link Path2D.Float#Path2D.Float(Shape, AffineTransform) Path2D.Float}
	* and
	* {@link Path2D.Double#Path2D.Double(Shape, AffineTransform) Path2D.Double}
	* subclasses should be used to make the choice explicit.
	*
	* @param at the {@code AffineTransform} used to transform a
	*           new {@code Shape}.
	* @return a new {@code Shape}, transformed with the specified
	*         {@code AffineTransform}.
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function createTransformedShape(at : java.awt.geom.AffineTransform) : java.awt.Shape;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getBounds() : java.awt.Rectangle;
	
	/**
	* Tests if the specified coordinates are inside the closed
	* boundary of the specified {@link PathIterator}.
	* <p>
	* This method provides a basic facility for implementors of
	* the {@link Shape} interface to implement support for the
	* {@link Shape#contains(double, double)} method.
	*
	* @param pi the specified {@code PathIterator}
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @return {@code true} if the specified coordinates are inside the
	*         specified {@code PathIterator}; {@code false} otherwise
	* @since 1.6
	*/
	@:require(java6) @:native('contains') @:overload public static function _contains(pi : java.awt.geom.PathIterator, x : Float, y : Float) : Bool;
	
	/**
	* Tests if the specified {@link Point2D} is inside the closed
	* boundary of the specified {@link PathIterator}.
	* <p>
	* This method provides a basic facility for implementors of
	* the {@link Shape} interface to implement support for the
	* {@link Shape#contains(Point2D)} method.
	*
	* @param pi the specified {@code PathIterator}
	* @param p the specified {@code Point2D}
	* @return {@code true} if the specified coordinates are inside the
	*         specified {@code PathIterator}; {@code false} otherwise
	* @since 1.6
	*/
	@:require(java6) @:native('contains') @:overload public static function _contains(pi : java.awt.geom.PathIterator, p : java.awt.geom.Point2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function contains(x : Float, y : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function contains(p : java.awt.geom.Point2D) : Bool;
	
	/**
	* Tests if the specified rectangular area is entirely inside the
	* closed boundary of the specified {@link PathIterator}.
	* <p>
	* This method provides a basic facility for implementors of
	* the {@link Shape} interface to implement support for the
	* {@link Shape#contains(double, double, double, double)} method.
	* <p>
	* This method object may conservatively return false in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such segments could lie entirely within the interior of the
	* path if they are part of a path with a {@link #WIND_NON_ZERO}
	* winding rule or if the segments are retraced in the reverse
	* direction such that the two sets of segments cancel each
	* other out without any exterior area falling between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @param pi the specified {@code PathIterator}
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @param w the width of the specified rectangular area
	* @param h the height of the specified rectangular area
	* @return {@code true} if the specified {@code PathIterator} contains
	*         the specified rectangluar area; {@code false} otherwise.
	* @since 1.6
	*/
	@:require(java6) @:native('contains') @:overload public static function _contains(pi : java.awt.geom.PathIterator, x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Tests if the specified {@link Rectangle2D} is entirely inside the
	* closed boundary of the specified {@link PathIterator}.
	* <p>
	* This method provides a basic facility for implementors of
	* the {@link Shape} interface to implement support for the
	* {@link Shape#contains(Rectangle2D)} method.
	* <p>
	* This method object may conservatively return false in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such segments could lie entirely within the interior of the
	* path if they are part of a path with a {@link #WIND_NON_ZERO}
	* winding rule or if the segments are retraced in the reverse
	* direction such that the two sets of segments cancel each
	* other out without any exterior area falling between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @param pi the specified {@code PathIterator}
	* @param r a specified {@code Rectangle2D}
	* @return {@code true} if the specified {@code PathIterator} contains
	*         the specified {@code Rectangle2D}; {@code false} otherwise.
	* @since 1.6
	*/
	@:require(java6) @:native('contains') @:overload public static function _contains(pi : java.awt.geom.PathIterator, r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* <p>
	* This method object may conservatively return false in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such segments could lie entirely within the interior of the
	* path if they are part of a path with a {@link #WIND_NON_ZERO}
	* winding rule or if the segments are retraced in the reverse
	* direction such that the two sets of segments cancel each
	* other out without any exterior area falling between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* <p>
	* This method object may conservatively return false in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such segments could lie entirely within the interior of the
	* path if they are part of a path with a {@link #WIND_NON_ZERO}
	* winding rule or if the segments are retraced in the reverse
	* direction such that the two sets of segments cancel each
	* other out without any exterior area falling between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function contains(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* Tests if the interior of the specified {@link PathIterator}
	* intersects the interior of a specified set of rectangular
	* coordinates.
	* <p>
	* This method provides a basic facility for implementors of
	* the {@link Shape} interface to implement support for the
	* {@link Shape#intersects(double, double, double, double)} method.
	* <p>
	* This method object may conservatively return true in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such a case may occur if some set of segments of the
	* path are retraced in the reverse direction such that the
	* two sets of segments cancel each other out without any
	* interior area between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @param pi the specified {@code PathIterator}
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @param w the width of the specified rectangular coordinates
	* @param h the height of the specified rectangular coordinates
	* @return {@code true} if the specified {@code PathIterator} and
	*         the interior of the specified set of rectangular
	*         coordinates intersect each other; {@code false} otherwise.
	* @since 1.6
	*/
	@:require(java6) @:native('intersects') @:overload public static function _intersects(pi : java.awt.geom.PathIterator, x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Tests if the interior of the specified {@link PathIterator}
	* intersects the interior of a specified {@link Rectangle2D}.
	* <p>
	* This method provides a basic facility for implementors of
	* the {@link Shape} interface to implement support for the
	* {@link Shape#intersects(Rectangle2D)} method.
	* <p>
	* This method object may conservatively return true in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such a case may occur if some set of segments of the
	* path are retraced in the reverse direction such that the
	* two sets of segments cancel each other out without any
	* interior area between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @param pi the specified {@code PathIterator}
	* @param r the specified {@code Rectangle2D}
	* @return {@code true} if the specified {@code PathIterator} and
	*         the interior of the specified {@code Rectangle2D}
	*         intersect each other; {@code false} otherwise.
	* @since 1.6
	*/
	@:require(java6) @:native('intersects') @:overload public static function _intersects(pi : java.awt.geom.PathIterator, r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* <p>
	* This method object may conservatively return true in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such a case may occur if some set of segments of the
	* path are retraced in the reverse direction such that the
	* two sets of segments cancel each other out without any
	* interior area between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* <p>
	* This method object may conservatively return true in
	* cases where the specified rectangular area intersects a
	* segment of the path, but that segment does not represent a
	* boundary between the interior and exterior of the path.
	* Such a case may occur if some set of segments of the
	* path are retraced in the reverse direction such that the
	* two sets of segments cancel each other out without any
	* interior area between them.
	* To determine whether segments represent true boundaries of
	* the interior of the path would require extensive calculations
	* involving all of the segments of the path and the winding
	* rule and are thus beyond the scope of this implementation.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function intersects(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* <p>
	* The iterator for this class is not multi-threaded safe,
	* which means that this {@code Path2D} class does not
	* guarantee that modifications to the geometry of this
	* {@code Path2D} object do not affect any iterations of
	* that geometry that are already in process.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	/**
	* Creates a new object of the same class as this object.
	*
	* @return     a clone of this instance.
	* @exception  OutOfMemoryError            if there is not enough memory.
	* @see        java.lang.Cloneable
	* @since      1.6
	*/
	@:require(java6) @:overload @:abstract public function clone() : Dynamic;
	
	/**
	* Returns an iterator object that iterates along the
	* <code>Shape</code> boundary and provides access to the geometry of the
	* <code>Shape</code> outline.  If an optional {@link AffineTransform}
	* is specified, the coordinates returned in the iteration are
	* transformed accordingly.
	* <p>
	* Each call to this method returns a fresh <code>PathIterator</code>
	* object that traverses the geometry of the <code>Shape</code> object
	* independently from any other <code>PathIterator</code> objects in use
	* at the same time.
	* <p>
	* It is recommended, but not guaranteed, that objects
	* implementing the <code>Shape</code> interface isolate iterations
	* that are in process from any changes that might occur to the original
	* object's geometry during such iterations.
	*
	* @param at an optional <code>AffineTransform</code> to be applied to the
	*          coordinates as they are returned in the iteration, or
	*          <code>null</code> if untransformed coordinates are desired
	* @return a new <code>PathIterator</code> object, which independently
	*          traverses the geometry of the <code>Shape</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:public public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
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
* The {@code Float} class defines a geometric path with
* coordinates stored in single precision floating point.
*
* @since 1.6
*/
@:require(java6) @:native('java$awt$geom$Path2D$Float') extern class Path2D_Float extends Path2D implements java.io.Serializable
{
	/**
	* Constructs a new empty single precision {@code Path2D} object
	* with a default winding rule of {@link #WIND_NON_ZERO}.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new() : Void;
	
	/**
	* Constructs a new empty single precision {@code Path2D} object
	* with the specified winding rule to control operations that
	* require the interior of the path to be defined.
	*
	* @param rule the winding rule
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(rule : Int) : Void;
	
	/**
	* Constructs a new empty single precision {@code Path2D} object
	* with the specified winding rule and the specified initial
	* capacity to store path segments.
	* This number is an initial guess as to how many path segments
	* will be added to the path, but the storage is expanded as
	* needed to store whatever path segments are added.
	*
	* @param rule the winding rule
	* @param initialCapacity the estimate for the number of path segments
	*                        in the path
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(rule : Int, initialCapacity : Int) : Void;
	
	/**
	* Constructs a new single precision {@code Path2D} object
	* from an arbitrary {@link Shape} object.
	* All of the initial geometry and the winding rule for this path are
	* taken from the specified {@code Shape} object.
	*
	* @param s the specified {@code Shape} object
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(s : java.awt.Shape) : Void;
	
	/**
	* Constructs a new single precision {@code Path2D} object
	* from an arbitrary {@link Shape} object, transformed by an
	* {@link AffineTransform} object.
	* All of the initial geometry and the winding rule for this path are
	* taken from the specified {@code Shape} object and transformed
	* by the specified {@code AffineTransform} object.
	*
	* @param s the specified {@code Shape} object
	* @param at the specified {@code AffineTransform} object
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(s : java.awt.Shape, at : java.awt.geom.AffineTransform) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function moveTo(x : Float, y : Float) : Void;
	
	/**
	* Adds a point to the path by moving to the specified
	* coordinates specified in float precision.
	* <p>
	* This method provides a single precision variant of
	* the double precision {@code moveTo()} method on the
	* base {@code Path2D} class.
	*
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @see Path2D#moveTo
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function moveTo(x : Single, y : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function lineTo(x : Float, y : Float) : Void;
	
	/**
	* Adds a point to the path by drawing a straight line from the
	* current coordinates to the new specified coordinates
	* specified in float precision.
	* <p>
	* This method provides a single precision variant of
	* the double precision {@code lineTo()} method on the
	* base {@code Path2D} class.
	*
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @see Path2D#lineTo
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function lineTo(x : Single, y : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function quadTo(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Adds a curved segment, defined by two new points, to the path by
	* drawing a Quadratic curve that intersects both the current
	* coordinates and the specified coordinates {@code (x2,y2)},
	* using the specified point {@code (x1,y1)} as a quadratic
	* parametric control point.
	* All coordinates are specified in float precision.
	* <p>
	* This method provides a single precision variant of
	* the double precision {@code quadTo()} method on the
	* base {@code Path2D} class.
	*
	* @param x1 the X coordinate of the quadratic control point
	* @param y1 the Y coordinate of the quadratic control point
	* @param x2 the X coordinate of the final end point
	* @param y2 the Y coordinate of the final end point
	* @see Path2D#quadTo
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function quadTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function curveTo(x1 : Float, y1 : Float, x2 : Float, y2 : Float, x3 : Float, y3 : Float) : Void;
	
	/**
	* Adds a curved segment, defined by three new points, to the path by
	* drawing a B&eacute;zier curve that intersects both the current
	* coordinates and the specified coordinates {@code (x3,y3)},
	* using the specified points {@code (x1,y1)} and {@code (x2,y2)} as
	* B&eacute;zier control points.
	* All coordinates are specified in float precision.
	* <p>
	* This method provides a single precision variant of
	* the double precision {@code curveTo()} method on the
	* base {@code Path2D} class.
	*
	* @param x1 the X coordinate of the first B&eacute;zier control point
	* @param y1 the Y coordinate of the first B&eacute;zier control point
	* @param x2 the X coordinate of the second B&eacute;zier control point
	* @param y2 the Y coordinate of the second B&eacute;zier control point
	* @param x3 the X coordinate of the final end point
	* @param y3 the Y coordinate of the final end point
	* @see Path2D#curveTo
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized public function curveTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single, x3 : Single, y3 : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final override public function append(pi : java.awt.geom.PathIterator, connect : Bool) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final override public function transform(at : java.awt.geom.AffineTransform) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* <p>
	* The iterator for this class is not multi-threaded safe,
	* which means that the {@code Path2D} class does not
	* guarantee that modifications to the geometry of this
	* {@code Path2D} object do not affect any iterations of
	* that geometry that are already in process.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final override public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Creates a new object of the same class as this object.
	*
	* @return     a clone of this instance.
	* @exception  OutOfMemoryError    if there is not enough memory.
	* @see        java.lang.Cloneable
	* @since      1.6
	*/
	@:require(java6) @:overload @:final override public function clone() : Dynamic;
	
	
}
@:native('java$awt$geom$Path2D$Float$CopyIterator') @:internal extern class Path2D_Float_CopyIterator extends Path2D_Iterator
{
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
@:native('java$awt$geom$Path2D$Float$TxIterator') @:internal extern class Path2D_Float_TxIterator extends Path2D_Iterator
{
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
/**
* The {@code Double} class defines a geometric path with
* coordinates stored in double precision floating point.
*
* @since 1.6
*/
@:require(java6) @:native('java$awt$geom$Path2D$Double') extern class Path2D_Double extends Path2D implements java.io.Serializable
{
	/**
	* Constructs a new empty double precision {@code Path2D} object
	* with a default winding rule of {@link #WIND_NON_ZERO}.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new() : Void;
	
	/**
	* Constructs a new empty double precision {@code Path2D} object
	* with the specified winding rule to control operations that
	* require the interior of the path to be defined.
	*
	* @param rule the winding rule
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(rule : Int) : Void;
	
	/**
	* Constructs a new empty double precision {@code Path2D} object
	* with the specified winding rule and the specified initial
	* capacity to store path segments.
	* This number is an initial guess as to how many path segments
	* are in the path, but the storage is expanded as needed to store
	* whatever path segments are added to this path.
	*
	* @param rule the winding rule
	* @param initialCapacity the estimate for the number of path segments
	*                        in the path
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(rule : Int, initialCapacity : Int) : Void;
	
	/**
	* Constructs a new double precision {@code Path2D} object
	* from an arbitrary {@link Shape} object.
	* All of the initial geometry and the winding rule for this path are
	* taken from the specified {@code Shape} object.
	*
	* @param s the specified {@code Shape} object
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(s : java.awt.Shape) : Void;
	
	/**
	* Constructs a new double precision {@code Path2D} object
	* from an arbitrary {@link Shape} object, transformed by an
	* {@link AffineTransform} object.
	* All of the initial geometry and the winding rule for this path are
	* taken from the specified {@code Shape} object and transformed
	* by the specified {@code AffineTransform} object.
	*
	* @param s the specified {@code Shape} object
	* @param at the specified {@code AffineTransform} object
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(s : java.awt.Shape, at : java.awt.geom.AffineTransform) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function moveTo(x : Float, y : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function lineTo(x : Float, y : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function quadTo(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function curveTo(x1 : Float, y1 : Float, x2 : Float, y2 : Float, x3 : Float, y3 : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final override public function append(pi : java.awt.geom.PathIterator, connect : Bool) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final override public function transform(at : java.awt.geom.AffineTransform) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:final @:synchronized override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* <p>
	* The iterator for this class is not multi-threaded safe,
	* which means that the {@code Path2D} class does not
	* guarantee that modifications to the geometry of this
	* {@code Path2D} object do not affect any iterations of
	* that geometry that are already in process.
	*
	* @param at an {@code AffineTransform}
	* @return a new {@code PathIterator} that iterates along the boundary
	*         of this {@code Shape} and provides access to the geometry
	*         of this {@code Shape}'s outline
	* @since 1.6
	*/
	@:require(java6) @:overload @:final override public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Creates a new object of the same class as this object.
	*
	* @return     a clone of this instance.
	* @exception  OutOfMemoryError    if there is not enough memory.
	* @see        java.lang.Cloneable
	* @since      1.6
	*/
	@:require(java6) @:overload @:final override public function clone() : Dynamic;
	
	
}
@:native('java$awt$geom$Path2D$Double$CopyIterator') @:internal extern class Path2D_Double_CopyIterator extends Path2D_Iterator
{
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
@:native('java$awt$geom$Path2D$Double$TxIterator') @:internal extern class Path2D_Double_TxIterator extends Path2D_Iterator
{
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
@:native('java$awt$geom$Path2D$Iterator') @:internal extern class Path2D_Iterator implements java.awt.geom.PathIterator
{
	@:overload public function getWindingRule() : Int;
	
	@:overload public function isDone() : Bool;
	
	@:overload public function next() : Void;
	
	/**
	* Returns the coordinates and type of the current path segment in
	* the iteration.
	* The return value is the path-segment type:
	* SEG_MOVETO, SEG_LINETO, SEG_QUADTO, SEG_CUBICTO, or SEG_CLOSE.
	* A double array of length 6 must be passed in and can be used to
	* store the coordinates of the point(s).
	* Each point is stored as a pair of double x,y coordinates.
	* SEG_MOVETO and SEG_LINETO types returns one point,
	* SEG_QUADTO returns two points,
	* SEG_CUBICTO returns 3 points
	* and SEG_CLOSE does not return any points.
	* @param coords an array that holds the data returned from
	* this method
	* @return the path-segment type of the current path segment.
	* @see #SEG_MOVETO
	* @see #SEG_LINETO
	* @see #SEG_QUADTO
	* @see #SEG_CUBICTO
	* @see #SEG_CLOSE
	*/
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	/**
	* Returns the coordinates and type of the current path segment in
	* the iteration.
	* The return value is the path-segment type:
	* SEG_MOVETO, SEG_LINETO, SEG_QUADTO, SEG_CUBICTO, or SEG_CLOSE.
	* A float array of length 6 must be passed in and can be used to
	* store the coordinates of the point(s).
	* Each point is stored as a pair of float x,y coordinates.
	* SEG_MOVETO and SEG_LINETO types returns one point,
	* SEG_QUADTO returns two points,
	* SEG_CUBICTO returns 3 points
	* and SEG_CLOSE does not return any points.
	* @param coords an array that holds the data returned from
	* this method
	* @return the path-segment type of the current path segment.
	* @see #SEG_MOVETO
	* @see #SEG_LINETO
	* @see #SEG_QUADTO
	* @see #SEG_CUBICTO
	* @see #SEG_CLOSE
	*/
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	
}
