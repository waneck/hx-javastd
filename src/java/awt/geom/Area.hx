package java.awt.geom;
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
extern class Area implements java.awt.Shape implements java.lang.Cloneable
{
	/**
	* Default constructor which creates an empty area.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* The <code>Area</code> class creates an area geometry from the
	* specified {@link Shape} object.  The geometry is explicitly
	* closed, if the <code>Shape</code> is not already closed.  The
	* fill rule (even-odd or winding) specified by the geometry of the
	* <code>Shape</code> is used to determine the resulting enclosed area.
	* @param s  the <code>Shape</code> from which the area is constructed
	* @throws NullPointerException if <code>s</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(s : java.awt.Shape) : Void;
	
	/**
	* Adds the shape of the specified <code>Area</code> to the
	* shape of this <code>Area</code>.
	* The resulting shape of this <code>Area</code> will include
	* the union of both shapes, or all areas that were contained
	* in either this or the specified <code>Area</code>.
	* <pre>
	*     // Example:
	*     Area a1 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 0,8]);
	*     Area a2 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 8,8]);
	*     a1.add(a2);
	*
	*        a1(before)     +         a2         =     a1(after)
	*
	*     ################     ################     ################
	*     ##############         ##############     ################
	*     ############             ############     ################
	*     ##########                 ##########     ################
	*     ########                     ########     ################
	*     ######                         ######     ######    ######
	*     ####                             ####     ####        ####
	*     ##                                 ##     ##            ##
	* </pre>
	* @param   rhs  the <code>Area</code> to be added to the
	*          current shape
	* @throws NullPointerException if <code>rhs</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function add(rhs : java.awt.geom.Area) : Void;
	
	/**
	* Subtracts the shape of the specified <code>Area</code> from the
	* shape of this <code>Area</code>.
	* The resulting shape of this <code>Area</code> will include
	* areas that were contained only in this <code>Area</code>
	* and not in the specified <code>Area</code>.
	* <pre>
	*     // Example:
	*     Area a1 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 0,8]);
	*     Area a2 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 8,8]);
	*     a1.subtract(a2);
	*
	*        a1(before)     -         a2         =     a1(after)
	*
	*     ################     ################
	*     ##############         ##############     ##
	*     ############             ############     ####
	*     ##########                 ##########     ######
	*     ########                     ########     ########
	*     ######                         ######     ######
	*     ####                             ####     ####
	*     ##                                 ##     ##
	* </pre>
	* @param   rhs  the <code>Area</code> to be subtracted from the
	*          current shape
	* @throws NullPointerException if <code>rhs</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function subtract(rhs : java.awt.geom.Area) : Void;
	
	/**
	* Sets the shape of this <code>Area</code> to the intersection of
	* its current shape and the shape of the specified <code>Area</code>.
	* The resulting shape of this <code>Area</code> will include
	* only areas that were contained in both this <code>Area</code>
	* and also in the specified <code>Area</code>.
	* <pre>
	*     // Example:
	*     Area a1 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 0,8]);
	*     Area a2 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 8,8]);
	*     a1.intersect(a2);
	*
	*      a1(before)   intersect     a2         =     a1(after)
	*
	*     ################     ################     ################
	*     ##############         ##############       ############
	*     ############             ############         ########
	*     ##########                 ##########           ####
	*     ########                     ########
	*     ######                         ######
	*     ####                             ####
	*     ##                                 ##
	* </pre>
	* @param   rhs  the <code>Area</code> to be intersected with this
	*          <code>Area</code>
	* @throws NullPointerException if <code>rhs</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function intersect(rhs : java.awt.geom.Area) : Void;
	
	/**
	* Sets the shape of this <code>Area</code> to be the combined area
	* of its current shape and the shape of the specified <code>Area</code>,
	* minus their intersection.
	* The resulting shape of this <code>Area</code> will include
	* only areas that were contained in either this <code>Area</code>
	* or in the specified <code>Area</code>, but not in both.
	* <pre>
	*     // Example:
	*     Area a1 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 0,8]);
	*     Area a2 = new Area([triangle 0,0 =&gt; 8,0 =&gt; 8,8]);
	*     a1.exclusiveOr(a2);
	*
	*        a1(before)    xor        a2         =     a1(after)
	*
	*     ################     ################
	*     ##############         ##############     ##            ##
	*     ############             ############     ####        ####
	*     ##########                 ##########     ######    ######
	*     ########                     ########     ################
	*     ######                         ######     ######    ######
	*     ####                             ####     ####        ####
	*     ##                                 ##     ##            ##
	* </pre>
	* @param   rhs  the <code>Area</code> to be exclusive ORed with this
	*          <code>Area</code>.
	* @throws NullPointerException if <code>rhs</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function exclusiveOr(rhs : java.awt.geom.Area) : Void;
	
	/**
	* Removes all of the geometry from this <code>Area</code> and
	* restores it to an empty area.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function reset() : Void;
	
	/**
	* Tests whether this <code>Area</code> object encloses any area.
	* @return    <code>true</code> if this <code>Area</code> object
	* represents an empty area; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function isEmpty() : Bool;
	
	/**
	* Tests whether this <code>Area</code> consists entirely of
	* straight edged polygonal geometry.
	* @return    <code>true</code> if the geometry of this
	* <code>Area</code> consists entirely of line segments;
	* <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function isPolygonal() : Bool;
	
	/**
	* Tests whether this <code>Area</code> is rectangular in shape.
	* @return    <code>true</code> if the geometry of this
	* <code>Area</code> is rectangular in shape; <code>false</code>
	* otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function isRectangular() : Bool;
	
	/**
	* Tests whether this <code>Area</code> is comprised of a single
	* closed subpath.  This method returns <code>true</code> if the
	* path contains 0 or 1 subpaths, or <code>false</code> if the path
	* contains more than 1 subpath.  The subpaths are counted by the
	* number of {@link PathIterator#SEG_MOVETO SEG_MOVETO}  segments
	* that appear in the path.
	* @return    <code>true</code> if the <code>Area</code> is comprised
	* of a single basic geometry; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function isSingular() : Bool;
	
	/**
	* Returns a high precision bounding {@link Rectangle2D} that
	* completely encloses this <code>Area</code>.
	* <p>
	* The Area class will attempt to return the tightest bounding
	* box possible for the Shape.  The bounding box will not be
	* padded to include the control points of curves in the outline
	* of the Shape, but should tightly fit the actual geometry of
	* the outline itself.
	* @return    the bounding <code>Rectangle2D</code> for the
	* <code>Area</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* Returns a bounding {@link Rectangle} that completely encloses
	* this <code>Area</code>.
	* <p>
	* The Area class will attempt to return the tightest bounding
	* box possible for the Shape.  The bounding box will not be
	* padded to include the control points of curves in the outline
	* of the Shape, but should tightly fit the actual geometry of
	* the outline itself.  Since the returned object represents
	* the bounding box with integers, the bounding box can only be
	* as tight as the nearest integer coordinates that encompass
	* the geometry of the Shape.
	* @return    the bounding <code>Rectangle</code> for the
	* <code>Area</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns an exact copy of this <code>Area</code> object.
	* @return    Created clone object
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function clone() : Dynamic;
	
	/**
	* Tests whether the geometries of the two <code>Area</code> objects
	* are equal.
	* This method will return false if the argument is null.
	* @param   other  the <code>Area</code> to be compared to this
	*          <code>Area</code>
	* @return  <code>true</code> if the two geometries are equal;
	*          <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function equals(other : java.awt.geom.Area) : Bool;
	
	/**
	* Transforms the geometry of this <code>Area</code> using the specified
	* {@link AffineTransform}.  The geometry is transformed in place, which
	* permanently changes the enclosed area defined by this object.
	* @param t  the transformation used to transform the area
	* @throws NullPointerException if <code>t</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function transform(t : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Creates a new <code>Area</code> object that contains the same
	* geometry as this <code>Area</code> transformed by the specified
	* <code>AffineTransform</code>.  This <code>Area</code> object
	* is unchanged.
	* @param t  the specified <code>AffineTransform</code> used to transform
	*           the new <code>Area</code>
	* @throws NullPointerException if <code>t</code> is null
	* @return   a new <code>Area</code> object representing the transformed
	*           geometry.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function createTransformedArea(t : java.awt.geom.AffineTransform) : java.awt.geom.Area;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(x : Float, y : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(p : java.awt.geom.Point2D) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function contains(r : java.awt.geom.Rectangle2D) : Bool;
	
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
	* Creates a {@link PathIterator} for the outline of this
	* <code>Area</code> object.  This <code>Area</code> object is unchanged.
	* @param at an optional <code>AffineTransform</code> to be applied to
	* the coordinates as they are returned in the iteration, or
	* <code>null</code> if untransformed coordinates are desired
	* @return    the <code>PathIterator</code> object that returns the
	*          geometry of the outline of this <code>Area</code>, one
	*          segment at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Creates a <code>PathIterator</code> for the flattened outline of
	* this <code>Area</code> object.  Only uncurved path segments
	* represented by the SEG_MOVETO, SEG_LINETO, and SEG_CLOSE point
	* types are returned by the iterator.  This <code>Area</code>
	* object is unchanged.
	* @param at an optional <code>AffineTransform</code> to be
	* applied to the coordinates as they are returned in the
	* iteration, or <code>null</code> if untransformed coordinates
	* are desired
	* @param flatness the maximum amount that the control points
	* for a given curve can vary from colinear before a subdivided
	* curve is replaced by a straight line connecting the end points
	* @return    the <code>PathIterator</code> object that returns the
	* geometry of the outline of this <code>Area</code>, one segment
	* at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	
}
@:internal extern class AreaIterator implements java.awt.geom.PathIterator
{
	@:overload @:public public function new(curves : java.util.Vector<Dynamic>, at : java.awt.geom.AffineTransform) : Void;
	
	@:overload @:public public function getWindingRule() : Int;
	
	@:overload @:public public function isDone() : Bool;
	
	@:overload @:public public function next() : Void;
	
	@:overload @:public public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	@:overload @:public public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
