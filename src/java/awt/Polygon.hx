package java.awt;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Polygon implements java.awt.Shape implements java.io.Serializable
{
	/**
	* The total number of points.  The value of <code>npoints</code>
	* represents the number of valid points in this <code>Polygon</code>
	* and might be less than the number of elements in
	* {@link #xpoints xpoints} or {@link #ypoints ypoints}.
	* This value can be NULL.
	*
	* @serial
	* @see #addPoint(int, int)
	* @since 1.0
	*/
	@:require(java0) public var npoints : Int;
	
	/**
	* The array of X coordinates.  The number of elements in
	* this array might be more than the number of X coordinates
	* in this <code>Polygon</code>.  The extra elements allow new points
	* to be added to this <code>Polygon</code> without re-creating this
	* array.  The value of {@link #npoints npoints} is equal to the
	* number of valid points in this <code>Polygon</code>.
	*
	* @serial
	* @see #addPoint(int, int)
	* @since 1.0
	*/
	@:require(java0) public var xpoints : java.NativeArray<Int>;
	
	/**
	* The array of Y coordinates.  The number of elements in
	* this array might be more than the number of Y coordinates
	* in this <code>Polygon</code>.  The extra elements allow new points
	* to be added to this <code>Polygon</code> without re-creating this
	* array.  The value of <code>npoints</code> is equal to the
	* number of valid points in this <code>Polygon</code>.
	*
	* @serial
	* @see #addPoint(int, int)
	* @since 1.0
	*/
	@:require(java0) public var ypoints : java.NativeArray<Int>;
	
	/**
	* The bounds of this {@code Polygon}.
	* This value can be null.
	*
	* @serial
	* @see #getBoundingBox()
	* @see #getBounds()
	* @since 1.0
	*/
	@:require(java0) private var bounds : java.awt.Rectangle;
	
	/**
	* Creates an empty polygon.
	* @since 1.0
	*/
	@:require(java0) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes a <code>Polygon</code> from the specified
	* parameters.
	* @param xpoints an array of X coordinates
	* @param ypoints an array of Y coordinates
	* @param npoints the total number of points in the
	*                          <code>Polygon</code>
	* @exception  NegativeArraySizeException if the value of
	*                       <code>npoints</code> is negative.
	* @exception  IndexOutOfBoundsException if <code>npoints</code> is
	*             greater than the length of <code>xpoints</code>
	*             or the length of <code>ypoints</code>.
	* @exception  NullPointerException if <code>xpoints</code> or
	*             <code>ypoints</code> is <code>null</code>.
	* @since 1.0
	*/
	@:require(java0) @:overload public function new(xpoints : java.NativeArray<Int>, ypoints : java.NativeArray<Int>, npoints : Int) : Void;
	
	/**
	* Resets this <code>Polygon</code> object to an empty polygon.
	* The coordinate arrays and the data in them are left untouched
	* but the number of points is reset to zero to mark the old
	* vertex data as invalid and to start accumulating new vertex
	* data at the beginning.
	* All internally-cached data relating to the old vertices
	* are discarded.
	* Note that since the coordinate arrays from before the reset
	* are reused, creating a new empty <code>Polygon</code> might
	* be more memory efficient than resetting the current one if
	* the number of vertices in the new polygon data is significantly
	* smaller than the number of vertices in the data from before the
	* reset.
	* @see         java.awt.Polygon#invalidate
	* @since 1.4
	*/
	@:require(java4) @:overload public function reset() : Void;
	
	/**
	* Invalidates or flushes any internally-cached data that depends
	* on the vertex coordinates of this <code>Polygon</code>.
	* This method should be called after any direct manipulation
	* of the coordinates in the <code>xpoints</code> or
	* <code>ypoints</code> arrays to avoid inconsistent results
	* from methods such as <code>getBounds</code> or <code>contains</code>
	* that might cache data from earlier computations relating to
	* the vertex coordinates.
	* @see         java.awt.Polygon#getBounds
	* @since 1.4
	*/
	@:require(java4) @:overload public function invalidate() : Void;
	
	/**
	* Translates the vertices of the <code>Polygon</code> by
	* <code>deltaX</code> along the x axis and by
	* <code>deltaY</code> along the y axis.
	* @param deltaX the amount to translate along the X axis
	* @param deltaY the amount to translate along the Y axis
	* @since 1.1
	*/
	@:require(java1) @:overload public function translate(deltaX : Int, deltaY : Int) : Void;
	
	/**
	* Appends the specified coordinates to this <code>Polygon</code>.
	* <p>
	* If an operation that calculates the bounding box of this
	* <code>Polygon</code> has already been performed, such as
	* <code>getBounds</code> or <code>contains</code>, then this
	* method updates the bounding box.
	* @param       x the specified X coordinate
	* @param       y the specified Y coordinate
	* @see         java.awt.Polygon#getBounds
	* @see         java.awt.Polygon#contains
	* @since 1.0
	*/
	@:require(java0) @:overload public function addPoint(x : Int, y : Int) : Void;
	
	/**
	* Gets the bounding box of this <code>Polygon</code>.
	* The bounding box is the smallest {@link Rectangle} whose
	* sides are parallel to the x and y axes of the
	* coordinate space, and can completely contain the <code>Polygon</code>.
	* @return a <code>Rectangle</code> that defines the bounds of this
	* <code>Polygon</code>.
	* @since 1.1
	*/
	@:require(java1) @:overload public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns the bounds of this <code>Polygon</code>.
	* @return the bounds of this <code>Polygon</code>.
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getBounds()</code>.
	* @since 1.0
	*/
	@:require(java0) @:overload public function getBoundingBox() : java.awt.Rectangle;
	
	/**
	* Determines whether the specified {@link Point} is inside this
	* <code>Polygon</code>.
	* @param p the specified <code>Point</code> to be tested
	* @return <code>true</code> if the <code>Polygon</code> contains the
	*                  <code>Point</code>; <code>false</code> otherwise.
	* @see #contains(double, double)
	* @since 1.0
	*/
	@:require(java0) @:overload public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Determines whether the specified coordinates are inside this
	* <code>Polygon</code>.
	* <p>
	* @param x the specified X coordinate to be tested
	* @param y the specified Y coordinate to be tested
	* @return {@code true} if this {@code Polygon} contains
	*         the specified coordinates {@code (x,y)};
	*         {@code false} otherwise.
	* @see #contains(double, double)
	* @since 1.1
	*/
	@:require(java1) @:overload public function contains(x : Int, y : Int) : Bool;
	
	/**
	* Determines whether the specified coordinates are contained in this
	* <code>Polygon</code>.
	* @param x the specified X coordinate to be tested
	* @param y the specified Y coordinate to be tested
	* @return {@code true} if this {@code Polygon} contains
	*         the specified coordinates {@code (x,y)};
	*         {@code false} otherwise.
	* @see #contains(double, double)
	* @deprecated As of JDK version 1.1,
	* replaced by <code>contains(int, int)</code>.
	* @since 1.0
	*/
	@:require(java0) @:overload public function inside(x : Int, y : Int) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function getBounds2D() : java.awt.geom.Rectangle2D;
	
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
	* Returns an iterator object that iterates along the boundary of this
	* <code>Polygon</code> and provides access to the geometry
	* of the outline of this <code>Polygon</code>.  An optional
	* {@link AffineTransform} can be specified so that the coordinates
	* returned in the iteration are transformed accordingly.
	* @param at an optional <code>AffineTransform</code> to be applied to the
	*          coordinates as they are returned in the iteration, or
	*          <code>null</code> if untransformed coordinates are desired
	* @return a {@link PathIterator} object that provides access to the
	*          geometry of this <code>Polygon</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Returns an iterator object that iterates along the boundary of
	* the <code>Shape</code> and provides access to the geometry of the
	* outline of the <code>Shape</code>.  Only SEG_MOVETO, SEG_LINETO, and
	* SEG_CLOSE point types are returned by the iterator.
	* Since polygons are already flat, the <code>flatness</code> parameter
	* is ignored.  An optional <code>AffineTransform</code> can be specified
	* in which case the coordinates returned in the iteration are transformed
	* accordingly.
	* @param at an optional <code>AffineTransform</code> to be applied to the
	*          coordinates as they are returned in the iteration, or
	*          <code>null</code> if untransformed coordinates are desired
	* @param flatness the maximum amount that the control points
	*          for a given curve can vary from colinear before a subdivided
	*          curve is replaced by a straight line connecting the
	*          endpoints.  Since polygons are already flat the
	*          <code>flatness</code> parameter is ignored.
	* @return a <code>PathIterator</code> object that provides access to the
	*          <code>Shape</code> object's geometry.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	
}
@:native('java$awt$Polygon$PolygonPathIterator') @:internal extern class Polygon_PolygonPathIterator implements java.awt.geom.PathIterator
{
	@:overload public function new(pg : java.awt.Polygon, at : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Returns the winding rule for determining the interior of the
	* path.
	* @return an integer representing the current winding rule.
	* @see PathIterator#WIND_NON_ZERO
	*/
	@:overload public function getWindingRule() : Int;
	
	/**
	* Tests if there are more points to read.
	* @return <code>true</code> if there are more points to read;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isDone() : Bool;
	
	/**
	* Moves the iterator forwards, along the primary direction of
	* traversal, to the next segment of the path when there are
	* more points in that direction.
	*/
	@:overload public function next() : Void;
	
	/**
	* Returns the coordinates and type of the current path segment in
	* the iteration.
	* The return value is the path segment type:
	* SEG_MOVETO, SEG_LINETO, or SEG_CLOSE.
	* A <code>float</code> array of length 2 must be passed in and
	* can be used to store the coordinates of the point(s).
	* Each point is stored as a pair of <code>float</code> x,&nbsp;y
	* coordinates.  SEG_MOVETO and SEG_LINETO types return one
	* point, and SEG_CLOSE does not return any points.
	* @param coords a <code>float</code> array that specifies the
	* coordinates of the point(s)
	* @return an integer representing the type and coordinates of the
	*              current path segment.
	* @see PathIterator#SEG_MOVETO
	* @see PathIterator#SEG_LINETO
	* @see PathIterator#SEG_CLOSE
	*/
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	/**
	* Returns the coordinates and type of the current path segment in
	* the iteration.
	* The return value is the path segment type:
	* SEG_MOVETO, SEG_LINETO, or SEG_CLOSE.
	* A <code>double</code> array of length 2 must be passed in and
	* can be used to store the coordinates of the point(s).
	* Each point is stored as a pair of <code>double</code> x,&nbsp;y
	* coordinates.
	* SEG_MOVETO and SEG_LINETO types return one point,
	* and SEG_CLOSE does not return any points.
	* @param coords a <code>double</code> array that specifies the
	* coordinates of the point(s)
	* @return an integer representing the type and coordinates of the
	*              current path segment.
	* @see PathIterator#SEG_MOVETO
	* @see PathIterator#SEG_LINETO
	* @see PathIterator#SEG_CLOSE
	*/
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
