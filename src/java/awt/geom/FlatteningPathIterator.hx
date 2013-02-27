package java.awt.geom;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
/**
* The <code>FlatteningPathIterator</code> class returns a flattened view of
* another {@link PathIterator} object.  Other {@link java.awt.Shape Shape}
* classes can use this class to provide flattening behavior for their paths
* without having to perform the interpolation calculations themselves.
*
* @author Jim Graham
*/
extern class FlatteningPathIterator implements java.awt.geom.PathIterator
{
	/**
	* Constructs a new <code>FlatteningPathIterator</code> object that
	* flattens a path as it iterates over it.  The iterator does not
	* subdivide any curve read from the source iterator to more than
	* 10 levels of subdivision which yields a maximum of 1024 line
	* segments per curve.
	* @param src the original unflattened path being iterated over
	* @param flatness the maximum allowable distance between the
	* control points and the flattened curve
	*/
	@:overload public function new(src : java.awt.geom.PathIterator, flatness : Float) : Void;
	
	/**
	* Constructs a new <code>FlatteningPathIterator</code> object
	* that flattens a path as it iterates over it.
	* The <code>limit</code> parameter allows you to control the
	* maximum number of recursive subdivisions that the iterator
	* can make before it assumes that the curve is flat enough
	* without measuring against the <code>flatness</code> parameter.
	* The flattened iteration therefore never generates more than
	* a maximum of <code>(2^limit)</code> line segments per curve.
	* @param src the original unflattened path being iterated over
	* @param flatness the maximum allowable distance between the
	* control points and the flattened curve
	* @param limit the maximum number of recursive subdivisions
	* allowed for any curved segment
	* @exception <code>IllegalArgumentException</code> if
	*          <code>flatness</code> or <code>limit</code>
	*          is less than zero
	*/
	@:overload public function new(src : java.awt.geom.PathIterator, flatness : Float, limit : Int) : Void;
	
	/**
	* Returns the flatness of this iterator.
	* @return the flatness of this <code>FlatteningPathIterator</code>.
	*/
	@:overload public function getFlatness() : Float;
	
	/**
	* Returns the recursion limit of this iterator.
	* @return the recursion limit of this
	* <code>FlatteningPathIterator</code>.
	*/
	@:overload public function getRecursionLimit() : Int;
	
	/**
	* Returns the winding rule for determining the interior of the
	* path.
	* @return the winding rule of the original unflattened path being
	* iterated over.
	* @see PathIterator#WIND_EVEN_ODD
	* @see PathIterator#WIND_NON_ZERO
	*/
	@:overload public function getWindingRule() : Int;
	
	/**
	* Tests if the iteration is complete.
	* @return <code>true</code> if all the segments have
	* been read; <code>false</code> otherwise.
	*/
	@:overload public function isDone() : Bool;
	
	/**
	* Moves the iterator to the next segment of the path forwards
	* along the primary direction of traversal as long as there are
	* more points in that direction.
	*/
	@:overload public function next() : Void;
	
	/**
	* Returns the coordinates and type of the current path segment in
	* the iteration.
	* The return value is the path segment type:
	* SEG_MOVETO, SEG_LINETO, or SEG_CLOSE.
	* A float array of length 6 must be passed in and can be used to
	* store the coordinates of the point(s).
	* Each point is stored as a pair of float x,y coordinates.
	* SEG_MOVETO and SEG_LINETO types return one point,
	* and SEG_CLOSE does not return any points.
	* @param coords an array that holds the data returned from
	* this method
	* @return the path segment type of the current path segment.
	* @exception <code>NoSuchElementException</code> if there
	*          are no more elements in the flattening path to be
	*          returned.
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
	* A double array of length 6 must be passed in and can be used to
	* store the coordinates of the point(s).
	* Each point is stored as a pair of double x,y coordinates.
	* SEG_MOVETO and SEG_LINETO types return one point,
	* and SEG_CLOSE does not return any points.
	* @param coords an array that holds the data returned from
	* this method
	* @return the path segment type of the current path segment.
	* @exception <code>NoSuchElementException</code> if there
	*          are no more elements in the flattening path to be
	*          returned.
	* @see PathIterator#SEG_MOVETO
	* @see PathIterator#SEG_LINETO
	* @see PathIterator#SEG_CLOSE
	*/
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
