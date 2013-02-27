package java.awt.geom;
/*
* Copyright (c) 1997, Oracle and/or its affiliates. All rights reserved.
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
* A utility class to iterate over the path segments of an rounded rectangle
* through the PathIterator interface.
*
* @author      Jim Graham
*/
@:internal extern class RoundRectIterator implements java.awt.geom.PathIterator
{
	/**
	* Return the winding rule for determining the insideness of the
	* path.
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	*/
	@:overload public function getWindingRule() : Int;
	
	/**
	* Tests if there are more points to read.
	* @return true if there are more points to read
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
	* SEG_MOVETO, SEG_LINETO, SEG_QUADTO, SEG_CUBICTO, or SEG_CLOSE.
	* A float array of length 6 must be passed in and may be used to
	* store the coordinates of the point(s).
	* Each point is stored as a pair of float x,y coordinates.
	* SEG_MOVETO and SEG_LINETO types will return one point,
	* SEG_QUADTO will return two points,
	* SEG_CUBICTO will return 3 points
	* and SEG_CLOSE will not return any points.
	* @see #SEG_MOVETO
	* @see #SEG_LINETO
	* @see #SEG_QUADTO
	* @see #SEG_CUBICTO
	* @see #SEG_CLOSE
	*/
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	/**
	* Returns the coordinates and type of the current path segment in
	* the iteration.
	* The return value is the path segment type:
	* SEG_MOVETO, SEG_LINETO, SEG_QUADTO, SEG_CUBICTO, or SEG_CLOSE.
	* A double array of length 6 must be passed in and may be used to
	* store the coordinates of the point(s).
	* Each point is stored as a pair of double x,y coordinates.
	* SEG_MOVETO and SEG_LINETO types will return one point,
	* SEG_QUADTO will return two points,
	* SEG_CUBICTO will return 3 points
	* and SEG_CLOSE will not return any points.
	* @see #SEG_MOVETO
	* @see #SEG_LINETO
	* @see #SEG_QUADTO
	* @see #SEG_CUBICTO
	* @see #SEG_CLOSE
	*/
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
