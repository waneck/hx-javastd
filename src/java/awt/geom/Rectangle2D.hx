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
extern class Rectangle2D extends java.awt.geom.RectangularShape
{
	/**
	* The bitmask that indicates that a point lies to the left of
	* this <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) public static var OUT_LEFT(default, null) : Int;
	
	/**
	* The bitmask that indicates that a point lies above
	* this <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) public static var OUT_TOP(default, null) : Int;
	
	/**
	* The bitmask that indicates that a point lies to the right of
	* this <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) public static var OUT_RIGHT(default, null) : Int;
	
	/**
	* The bitmask that indicates that a point lies below
	* this <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) public static var OUT_BOTTOM(default, null) : Int;
	
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	*
	* @see java.awt.geom.Rectangle2D.Float
	* @see java.awt.geom.Rectangle2D.Double
	* @see java.awt.Rectangle
	* @since 1.2
	*/
	@:require(java2) @:overload private function new() : Void;
	
	/**
	* Sets the location and size of this <code>Rectangle2D</code>
	* to the specified <code>double</code> values.
	*
	* @param x the X coordinate of the upper-left corner
	*          of this <code>Rectangle2D</code>
	* @param y the Y coordinate of the upper-left corner
	*          of this <code>Rectangle2D</code>
	* @param w the width of this <code>Rectangle2D</code>
	* @param h the height of this <code>Rectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function setRect(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* Sets this <code>Rectangle2D</code> to be the same as the specified
	* <code>Rectangle2D</code>.
	* @param r the specified <code>Rectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setRect(r : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* Tests if the specified line segment intersects the interior of this
	* <code>Rectangle2D</code>.
	*
	* @param x1 the X coordinate of the start point of the specified
	*           line segment
	* @param y1 the Y coordinate of the start point of the specified
	*           line segment
	* @param x2 the X coordinate of the end point of the specified
	*           line segment
	* @param y2 the Y coordinate of the end point of the specified
	*           line segment
	* @return <code>true</code> if the specified line segment intersects
	* the interior of this <code>Rectangle2D</code>; <code>false</code>
	* otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload public function intersectsLine(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Bool;
	
	/**
	* Tests if the specified line segment intersects the interior of this
	* <code>Rectangle2D</code>.
	* @param l the specified {@link Line2D} to test for intersection
	* with the interior of this <code>Rectangle2D</code>
	* @return <code>true</code> if the specified <code>Line2D</code>
	* intersects the interior of this <code>Rectangle2D</code>;
	* <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload public function intersectsLine(l : java.awt.geom.Line2D) : Bool;
	
	/**
	* Determines where the specified coordinates lie with respect
	* to this <code>Rectangle2D</code>.
	* This method computes a binary OR of the appropriate mask values
	* indicating, for each side of this <code>Rectangle2D</code>,
	* whether or not the specified coordinates are on the same side
	* of the edge as the rest of this <code>Rectangle2D</code>.
	* @param x the specified X coordinate
	* @param y the specified Y coordinate
	* @return the logical OR of all appropriate out codes.
	* @see #OUT_LEFT
	* @see #OUT_TOP
	* @see #OUT_RIGHT
	* @see #OUT_BOTTOM
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function outcode(x : Float, y : Float) : Int;
	
	/**
	* Determines where the specified {@link Point2D} lies with
	* respect to this <code>Rectangle2D</code>.
	* This method computes a binary OR of the appropriate mask values
	* indicating, for each side of this <code>Rectangle2D</code>,
	* whether or not the specified <code>Point2D</code> is on the same
	* side of the edge as the rest of this <code>Rectangle2D</code>.
	* @param p the specified <code>Point2D</code>
	* @return the logical OR of all appropriate out codes.
	* @see #OUT_LEFT
	* @see #OUT_TOP
	* @see #OUT_RIGHT
	* @see #OUT_BOTTOM
	* @since 1.2
	*/
	@:require(java2) @:overload public function outcode(p : java.awt.geom.Point2D) : Int;
	
	/**
	* Sets the location and size of the outer bounds of this
	* <code>Rectangle2D</code> to the specified rectangular values.
	*
	* @param x the X coordinate of the upper-left corner
	*          of this <code>Rectangle2D</code>
	* @param y the Y coordinate of the upper-left corner
	*          of this <code>Rectangle2D</code>
	* @param w the width of this <code>Rectangle2D</code>
	* @param h the height of this <code>Rectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setFrame(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function contains(x : Float, y : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Returns a new <code>Rectangle2D</code> object representing the
	* intersection of this <code>Rectangle2D</code> with the specified
	* <code>Rectangle2D</code>.
	* @param r the <code>Rectangle2D</code> to be intersected with
	* this <code>Rectangle2D</code>
	* @return the largest <code>Rectangle2D</code> contained in both
	*          the specified <code>Rectangle2D</code> and in this
	*          <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function createIntersection(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* Intersects the pair of specified source <code>Rectangle2D</code>
	* objects and puts the result into the specified destination
	* <code>Rectangle2D</code> object.  One of the source rectangles
	* can also be the destination to avoid creating a third Rectangle2D
	* object, but in this case the original points of this source
	* rectangle will be overwritten by this method.
	* @param src1 the first of a pair of <code>Rectangle2D</code>
	* objects to be intersected with each other
	* @param src2 the second of a pair of <code>Rectangle2D</code>
	* objects to be intersected with each other
	* @param dest the <code>Rectangle2D</code> that holds the
	* results of the intersection of <code>src1</code> and
	* <code>src2</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public static function intersect(src1 : java.awt.geom.Rectangle2D, src2 : java.awt.geom.Rectangle2D, dest : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* Returns a new <code>Rectangle2D</code> object representing the
	* union of this <code>Rectangle2D</code> with the specified
	* <code>Rectangle2D</code>.
	* @param r the <code>Rectangle2D</code> to be combined with
	* this <code>Rectangle2D</code>
	* @return the smallest <code>Rectangle2D</code> containing both
	* the specified <code>Rectangle2D</code> and this
	* <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function createUnion(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* Unions the pair of source <code>Rectangle2D</code> objects
	* and puts the result into the specified destination
	* <code>Rectangle2D</code> object.  One of the source rectangles
	* can also be the destination to avoid creating a third Rectangle2D
	* object, but in this case the original points of this source
	* rectangle will be overwritten by this method.
	* @param src1 the first of a pair of <code>Rectangle2D</code>
	* objects to be combined with each other
	* @param src2 the second of a pair of <code>Rectangle2D</code>
	* objects to be combined with each other
	* @param dest the <code>Rectangle2D</code> that holds the
	* results of the union of <code>src1</code> and
	* <code>src2</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public static function union(src1 : java.awt.geom.Rectangle2D, src2 : java.awt.geom.Rectangle2D, dest : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* Adds a point, specified by the double precision arguments
	* <code>newx</code> and <code>newy</code>, to this
	* <code>Rectangle2D</code>.  The resulting <code>Rectangle2D</code>
	* is the smallest <code>Rectangle2D</code> that
	* contains both the original <code>Rectangle2D</code> and the
	* specified point.
	* <p>
	* After adding a point, a call to <code>contains</code> with the
	* added point as an argument does not necessarily return
	* <code>true</code>. The <code>contains</code> method does not
	* return <code>true</code> for points on the right or bottom
	* edges of a rectangle. Therefore, if the added point falls on
	* the left or bottom edge of the enlarged rectangle,
	* <code>contains</code> returns <code>false</code> for that point.
	* @param newx the X coordinate of the new point
	* @param newy the Y coordinate of the new point
	* @since 1.2
	*/
	@:require(java2) @:overload public function add(newx : Float, newy : Float) : Void;
	
	/**
	* Adds the <code>Point2D</code> object <code>pt</code> to this
	* <code>Rectangle2D</code>.
	* The resulting <code>Rectangle2D</code> is the smallest
	* <code>Rectangle2D</code> that contains both the original
	* <code>Rectangle2D</code> and the specified <code>Point2D</code>.
	* <p>
	* After adding a point, a call to <code>contains</code> with the
	* added point as an argument does not necessarily return
	* <code>true</code>. The <code>contains</code>
	* method does not return <code>true</code> for points on the right
	* or bottom edges of a rectangle. Therefore, if the added point falls
	* on the left or bottom edge of the enlarged rectangle,
	* <code>contains</code> returns <code>false</code> for that point.
	* @param     pt the new <code>Point2D</code> to add to this
	* <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function add(pt : java.awt.geom.Point2D) : Void;
	
	/**
	* Adds a <code>Rectangle2D</code> object to this
	* <code>Rectangle2D</code>.  The resulting <code>Rectangle2D</code>
	* is the union of the two <code>Rectangle2D</code> objects.
	* @param r the <code>Rectangle2D</code> to add to this
	* <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function add(r : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* Returns an iteration object that defines the boundary of this
	* <code>Rectangle2D</code>.
	* The iterator for this class is multi-threaded safe, which means
	* that this <code>Rectangle2D</code> class guarantees that
	* modifications to the geometry of this <code>Rectangle2D</code>
	* object do not affect any iterations of that geometry that
	* are already in process.
	* @param at an optional <code>AffineTransform</code> to be applied to
	* the coordinates as they are returned in the iteration, or
	* <code>null</code> if untransformed coordinates are desired
	* @return    the <code>PathIterator</code> object that returns the
	*          geometry of the outline of this
	*          <code>Rectangle2D</code>, one segment at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Returns an iteration object that defines the boundary of the
	* flattened <code>Rectangle2D</code>.  Since rectangles are already
	* flat, the <code>flatness</code> parameter is ignored.
	* The iterator for this class is multi-threaded safe, which means
	* that this <code>Rectangle2D</code> class guarantees that
	* modifications to the geometry of this <code>Rectangle2D</code>
	* object do not affect any iterations of that geometry that
	* are already in process.
	* @param at an optional <code>AffineTransform</code> to be applied to
	* the coordinates as they are returned in the iteration, or
	* <code>null</code> if untransformed coordinates are desired
	* @param flatness the maximum distance that the line segments used to
	* approximate the curved segments are allowed to deviate from any
	* point on the original curve.  Since rectangles are already flat,
	* the <code>flatness</code> parameter is ignored.
	* @return    the <code>PathIterator</code> object that returns the
	*          geometry of the outline of this
	*          <code>Rectangle2D</code>, one segment at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	/**
	* Returns the hashcode for this <code>Rectangle2D</code>.
	* @return the hashcode for this <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function hashCode() : Int;
	
	/**
	* Determines whether or not the specified <code>Object</code> is
	* equal to this <code>Rectangle2D</code>.  The specified
	* <code>Object</code> is equal to this <code>Rectangle2D</code>
	* if it is an instance of <code>Rectangle2D</code> and if its
	* location and size are the same as this <code>Rectangle2D</code>.
	* @param obj an <code>Object</code> to be compared with this
	* <code>Rectangle2D</code>.
	* @return     <code>true</code> if <code>obj</code> is an instance
	*                     of <code>Rectangle2D</code> and has
	*                     the same values; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* The <code>Float</code> class defines a rectangle specified in float
* coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Rectangle2D$Float') extern class Rectangle2D_Float extends java.awt.geom.Rectangle2D implements java.io.Serializable
{
	/**
	* The X coordinate of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x : Single;
	
	/**
	* The Y coordinate of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y : Single;
	
	/**
	* The width of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var width : Single;
	
	/**
	* The height of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var height : Single;
	
	/**
	* Constructs a new <code>Rectangle2D</code>, initialized to
	* location (0.0,&nbsp;0.0) and size (0.0,&nbsp;0.0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes a <code>Rectangle2D</code>
	* from the specified <code>float</code> coordinates.
	*
	* @param x the X coordinate of the upper-left corner
	*          of the newly constructed <code>Rectangle2D</code>
	* @param y the Y coordinate of the upper-left corner
	*          of the newly constructed <code>Rectangle2D</code>
	* @param w the width of the newly constructed
	*          <code>Rectangle2D</code>
	* @param h the height of the newly constructed
	*          <code>Rectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x : Single, y : Single, w : Single, h : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getWidth() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function isEmpty() : Bool;
	
	/**
	* Sets the location and size of this <code>Rectangle2D</code>
	* to the specified <code>float</code> values.
	*
	* @param x the X coordinate of the upper-left corner
	*          of this <code>Rectangle2D</code>
	* @param y the Y coordinate of the upper-left corner
	*          of this <code>Rectangle2D</code>
	* @param w the width of this <code>Rectangle2D</code>
	* @param h the height of this <code>Rectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function setRect(x : Single, y : Single, w : Single, h : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setRect(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setRect(r : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function outcode(x : Float, y : Float) : Int;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function createIntersection(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function createUnion(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the <code>String</code> representation of this
	* <code>Rectangle2D</code>.
	* @return a <code>String</code> representing this
	* <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function toString() : String;
	
	
}
/**
* The <code>Double</code> class defines a rectangle specified in
* double coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Rectangle2D$Double') extern class Rectangle2D_Double extends java.awt.geom.Rectangle2D implements java.io.Serializable
{
	/**
	* The X coordinate of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x : Float;
	
	/**
	* The Y coordinate of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y : Float;
	
	/**
	* The width of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var width : Float;
	
	/**
	* The height of this <code>Rectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var height : Float;
	
	/**
	* Constructs a new <code>Rectangle2D</code>, initialized to
	* location (0,&nbsp;0) and size (0,&nbsp;0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes a <code>Rectangle2D</code>
	* from the specified <code>double</code> coordinates.
	*
	* @param x the X coordinate of the upper-left corner
	*          of the newly constructed <code>Rectangle2D</code>
	* @param y the Y coordinate of the upper-left corner
	*          of the newly constructed <code>Rectangle2D</code>
	* @param w the width of the newly constructed
	*          <code>Rectangle2D</code>
	* @param h the height of the newly constructed
	*          <code>Rectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getWidth() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function isEmpty() : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setRect(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setRect(r : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function outcode(x : Float, y : Float) : Int;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function createIntersection(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function createUnion(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the <code>String</code> representation of this
	* <code>Rectangle2D</code>.
	* @return a <code>String</code> representing this
	* <code>Rectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function toString() : String;
	
	
}
