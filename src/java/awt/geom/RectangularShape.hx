package java.awt.geom;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RectangularShape implements java.awt.Shape implements java.lang.Cloneable
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	*
	* @see Arc2D
	* @see Ellipse2D
	* @see Rectangle2D
	* @see RoundRectangle2D
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function new() : Void;
	
	/**
	* Returns the X coordinate of the upper-left corner of
	* the framing rectangle in <code>double</code> precision.
	* @return the X coordinate of the upper-left corner of
	* the framing rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getX() : Float;
	
	/**
	* Returns the Y coordinate of the upper-left corner of
	* the framing rectangle in <code>double</code> precision.
	* @return the Y coordinate of the upper-left corner of
	* the framing rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getY() : Float;
	
	/**
	* Returns the width of the framing rectangle in
	* <code>double</code> precision.
	* @return the width of the framing rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getWidth() : Float;
	
	/**
	* Returns the height of the framing rectangle
	* in <code>double</code> precision.
	* @return the height of the framing rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getHeight() : Float;
	
	/**
	* Returns the smallest X coordinate of the framing
	* rectangle of the <code>Shape</code> in <code>double</code>
	* precision.
	* @return the smallest X coordinate of the framing
	*          rectangle of the <code>Shape</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getMinX() : Float;
	
	/**
	* Returns the smallest Y coordinate of the framing
	* rectangle of the <code>Shape</code> in <code>double</code>
	* precision.
	* @return the smallest Y coordinate of the framing
	*          rectangle of the <code>Shape</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getMinY() : Float;
	
	/**
	* Returns the largest X coordinate of the framing
	* rectangle of the <code>Shape</code> in <code>double</code>
	* precision.
	* @return the largest X coordinate of the framing
	*          rectangle of the <code>Shape</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getMaxX() : Float;
	
	/**
	* Returns the largest Y coordinate of the framing
	* rectangle of the <code>Shape</code> in <code>double</code>
	* precision.
	* @return the largest Y coordinate of the framing
	*          rectangle of the <code>Shape</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getMaxY() : Float;
	
	/**
	* Returns the X coordinate of the center of the framing
	* rectangle of the <code>Shape</code> in <code>double</code>
	* precision.
	* @return the X coordinate of the center of the framing rectangle
	*          of the <code>Shape</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getCenterX() : Float;
	
	/**
	* Returns the Y coordinate of the center of the framing
	* rectangle of the <code>Shape</code> in <code>double</code>
	* precision.
	* @return the Y coordinate of the center of the framing rectangle
	*          of the <code>Shape</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getCenterY() : Float;
	
	/**
	* Returns the framing {@link Rectangle2D}
	* that defines the overall shape of this object.
	* @return a <code>Rectangle2D</code>, specified in
	* <code>double</code> coordinates.
	* @see #setFrame(double, double, double, double)
	* @see #setFrame(Point2D, Dimension2D)
	* @see #setFrame(Rectangle2D)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getFrame() : java.awt.geom.Rectangle2D;
	
	/**
	* Determines whether the <code>RectangularShape</code> is empty.
	* When the <code>RectangularShape</code> is empty, it encloses no
	* area.
	* @return <code>true</code> if the <code>RectangularShape</code> is empty;
	*          <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function isEmpty() : Bool;
	
	/**
	* Sets the location and size of the framing rectangle of this
	* <code>Shape</code> to the specified rectangular values.
	*
	* @param x the X coordinate of the upper-left corner of the
	*          specified rectangular shape
	* @param y the Y coordinate of the upper-left corner of the
	*          specified rectangular shape
	* @param w the width of the specified rectangular shape
	* @param h the height of the specified rectangular shape
	* @see #getFrame
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function setFrame(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* Sets the location and size of the framing rectangle of this
	* <code>Shape</code> to the specified {@link Point2D} and
	* {@link Dimension2D}, respectively.  The framing rectangle is used
	* by the subclasses of <code>RectangularShape</code> to define
	* their geometry.
	* @param loc the specified <code>Point2D</code>
	* @param size the specified <code>Dimension2D</code>
	* @see #getFrame
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setFrame(loc : java.awt.geom.Point2D, size : java.awt.geom.Dimension2D) : Void;
	
	/**
	* Sets the framing rectangle of this <code>Shape</code> to
	* be the specified <code>Rectangle2D</code>.  The framing rectangle is
	* used by the subclasses of <code>RectangularShape</code> to define
	* their geometry.
	* @param r the specified <code>Rectangle2D</code>
	* @see #getFrame
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setFrame(r : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* Sets the diagonal of the framing rectangle of this <code>Shape</code>
	* based on the two specified coordinates.  The framing rectangle is
	* used by the subclasses of <code>RectangularShape</code> to define
	* their geometry.
	*
	* @param x1 the X coordinate of the start point of the specified diagonal
	* @param y1 the Y coordinate of the start point of the specified diagonal
	* @param x2 the X coordinate of the end point of the specified diagonal
	* @param y2 the Y coordinate of the end point of the specified diagonal
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setFrameFromDiagonal(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the diagonal of the framing rectangle of this <code>Shape</code>
	* based on two specified <code>Point2D</code> objects.  The framing
	* rectangle is used by the subclasses of <code>RectangularShape</code>
	* to define their geometry.
	*
	* @param p1 the start <code>Point2D</code> of the specified diagonal
	* @param p2 the end <code>Point2D</code> of the specified diagonal
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setFrameFromDiagonal(p1 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D) : Void;
	
	/**
	* Sets the framing rectangle of this <code>Shape</code>
	* based on the specified center point coordinates and corner point
	* coordinates.  The framing rectangle is used by the subclasses of
	* <code>RectangularShape</code> to define their geometry.
	*
	* @param centerX the X coordinate of the specified center point
	* @param centerY the Y coordinate of the specified center point
	* @param cornerX the X coordinate of the specified corner point
	* @param cornerY the Y coordinate of the specified corner point
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setFrameFromCenter(centerX : Float, centerY : Float, cornerX : Float, cornerY : Float) : Void;
	
	/**
	* Sets the framing rectangle of this <code>Shape</code> based on a
	* specified center <code>Point2D</code> and corner
	* <code>Point2D</code>.  The framing rectangle is used by the subclasses
	* of <code>RectangularShape</code> to define their geometry.
	* @param center the specified center <code>Point2D</code>
	* @param corner the specified corner <code>Point2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setFrameFromCenter(center : java.awt.geom.Point2D, corner : java.awt.geom.Point2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(p : java.awt.geom.Point2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function intersects(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns an iterator object that iterates along the
	* <code>Shape</code> object's boundary and provides access to a
	* flattened view of the outline of the <code>Shape</code>
	* object's geometry.
	* <p>
	* Only SEG_MOVETO, SEG_LINETO, and SEG_CLOSE point types will
	* be returned by the iterator.
	* <p>
	* The amount of subdivision of the curved segments is controlled
	* by the <code>flatness</code> parameter, which specifies the
	* maximum distance that any point on the unflattened transformed
	* curve can deviate from the returned flattened path segments.
	* An optional {@link AffineTransform} can
	* be specified so that the coordinates returned in the iteration are
	* transformed accordingly.
	* @param at an optional <code>AffineTransform</code> to be applied to the
	*          coordinates as they are returned in the iteration,
	*          or <code>null</code> if untransformed coordinates are desired.
	* @param flatness the maximum distance that the line segments used to
	*          approximate the curved segments are allowed to deviate
	*          from any point on the original curve
	* @return a <code>PathIterator</code> object that provides access to
	*          the <code>Shape</code> object's flattened geometry.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	/**
	* Creates a new object of the same class and with the same
	* contents as this object.
	* @return     a clone of this instance.
	* @exception  OutOfMemoryError            if there is not enough memory.
	* @see        java.lang.Cloneable
	* @since      1.2
	*/
	@:require(java2) @:overload @:public public function clone() : Dynamic;
	
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
	@:require(java2) @:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Tests if the interior of the <code>Shape</code> intersects the
	* interior of a specified rectangular area.
	* The rectangular area is considered to intersect the <code>Shape</code>
	* if any point is contained in both the interior of the
	* <code>Shape</code> and the specified rectangular area.
	* <p>
	* The {@code Shape.intersects()} method allows a {@code Shape}
	* implementation to conservatively return {@code true} when:
	* <ul>
	* <li>
	* there is a high probability that the rectangular area and the
	* <code>Shape</code> intersect, but
	* <li>
	* the calculations to accurately determine this intersection
	* are prohibitively expensive.
	* </ul>
	* This means that for some {@code Shapes} this method might
	* return {@code true} even though the rectangular area does not
	* intersect the {@code Shape}.
	* The {@link java.awt.geom.Area Area} class performs
	* more accurate computations of geometric intersection than most
	* {@code Shape} objects and therefore can be used if a more precise
	* answer is required.
	*
	* @param x the X coordinate of the upper-left corner
	*          of the specified rectangular area
	* @param y the Y coordinate of the upper-left corner
	*          of the specified rectangular area
	* @param w the width of the specified rectangular area
	* @param h the height of the specified rectangular area
	* @return <code>true</code> if the interior of the <code>Shape</code> and
	*          the interior of the rectangular area intersect, or are
	*          both highly likely to intersect and intersection calculations
	*          would be too expensive to perform; <code>false</code> otherwise.
	* @see java.awt.geom.Area
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Tests if the specified coordinates are inside the boundary of the
	* <code>Shape</code>, as described by the
	* <a href="{@docRoot}/java/awt/Shape.html#def_insideness">
	* definition of insideness</a>.
	* @param x the specified X coordinate to be tested
	* @param y the specified Y coordinate to be tested
	* @return <code>true</code> if the specified coordinates are inside
	*         the <code>Shape</code> boundary; <code>false</code>
	*         otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(x : Float, y : Float) : Bool;
	
	/**
	* Tests if the interior of the <code>Shape</code> entirely contains
	* the specified rectangular area.  All coordinates that lie inside
	* the rectangular area must lie within the <code>Shape</code> for the
	* entire rectanglar area to be considered contained within the
	* <code>Shape</code>.
	* <p>
	* The {@code Shape.contains()} method allows a {@code Shape}
	* implementation to conservatively return {@code false} when:
	* <ul>
	* <li>
	* the <code>intersect</code> method returns <code>true</code> and
	* <li>
	* the calculations to determine whether or not the
	* <code>Shape</code> entirely contains the rectangular area are
	* prohibitively expensive.
	* </ul>
	* This means that for some {@code Shapes} this method might
	* return {@code false} even though the {@code Shape} contains
	* the rectangular area.
	* The {@link java.awt.geom.Area Area} class performs
	* more accurate geometric computations than most
	* {@code Shape} objects and therefore can be used if a more precise
	* answer is required.
	*
	* @param x the X coordinate of the upper-left corner
	*          of the specified rectangular area
	* @param y the Y coordinate of the upper-left corner
	*          of the specified rectangular area
	* @param w the width of the specified rectangular area
	* @param h the height of the specified rectangular area
	* @return <code>true</code> if the interior of the <code>Shape</code>
	*          entirely contains the specified rectangular area;
	*          <code>false</code> otherwise or, if the <code>Shape</code>
	*          contains the rectangular area and the
	*          <code>intersects</code> method returns <code>true</code>
	*          and the containment calculations would be too expensive to
	*          perform.
	* @see java.awt.geom.Area
	* @see #intersects
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
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
	@:require(java2) @:overload @:public public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
