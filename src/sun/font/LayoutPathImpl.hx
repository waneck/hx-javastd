package sun.font;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright IBM Corp. 2005, All Rights Reserved.
*/
////
//// This is the 'simple' mapping implementation.  It does things the most
//// straightforward way even if that is a bit slow.  It won't
//// handle complex paths efficiently, and doesn't handle closed paths.
////
extern class LayoutPathImpl extends java.awt.font.LayoutPath
{
	@:overload @:public public function pointToPath(x : Float, y : Float) : java.awt.geom.Point2D;
	
	@:overload @:public public function pathToPoint(a : Float, o : Float, preceding : Bool) : java.awt.geom.Point2D;
	
	@:overload @:public public function pointToPath(x : Float, y : Float, pt : java.awt.geom.Point2D) : Void;
	
	@:overload @:public public function pathToPoint(a : Float, o : Float, preceding : Bool, pt : java.awt.geom.Point2D) : Void;
	
	@:overload @:public @:abstract public function start() : Float;
	
	@:overload @:public @:abstract public function end() : Float;
	
	@:overload @:public @:abstract public function length() : Float;
	
	@:overload @:public @:abstract public function mapShape(s : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Return a path representing the path from the origin through the points in order.
	*/
	@:overload @:public @:static public static function getPath(etype : sun.font.LayoutPathImpl.LayoutPathImpl_EndType, coords : java.NativeArray<Float>) : sun.font.LayoutPathImpl;
	
	
}
/**
* Indicate how positions past the start and limit of the
* path are treated.  PINNED adjusts these positions so
* as to be within start and limit.  EXTENDED ignores the
* start and limit and effectively extends the first and
* last segments of the path 'infinitely'.  CLOSED wraps
* positions around the ends of the path.
*/
@:native('sun$font$LayoutPathImpl$EndType') extern enum LayoutPathImpl_EndType
{
	PINNED;
	EXTENDED;
	CLOSED;
	
}

/**
* Use to build a SegmentPath.  This takes the data and preanalyzes it for
* information that the SegmentPath needs, then constructs a SegmentPath
* from that.  Mainly, this lets SegmentPath cache the lengths along
* the path to each line segment, and so avoid calculating them over and over.
*/
@:native('sun$font$LayoutPathImpl$SegmentPathBuilder') extern class LayoutPathImpl_SegmentPathBuilder
{
	/**
	* Construct a SegmentPathBuilder.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Reset the builder for a new path.  Datalen is a hint of how many
	* points will be in the path, and the working buffer will be sized
	* to accomodate at least this number of points.  If datalen is zero,
	* the working buffer is freed (it will be allocated on first use).
	*/
	@:overload @:public public function reset(datalen : Int) : Void;
	
	/**
	* Automatically build from a list of points represented by pairs of
	* doubles.  Initial advance is zero.
	*/
	@:overload @:public public function build(etype : sun.font.LayoutPathImpl.LayoutPathImpl_EndType, pts : java.NativeArray<Float>) : sun.font.LayoutPathImpl.LayoutPathImpl_SegmentPath;
	
	/**
	* Move to a new point.  If there is no data, this will become the
	* first point.  If there is data, and the previous call was a lineTo, this
	* point is checked against the previous point, and if different, this
	* starts a new segment at the same advance as the end of the last
	* segment.  If there is data, and the previous call was a moveTo, this
	* replaces the point used for that previous call.
	*
	* Calling this is optional, lineTo will suffice and the initial point
	* will be set to 0, 0.
	*/
	@:overload @:public public function moveTo(x : Float, y : Float) : Void;
	
	/**
	* Connect to a new point.  If there is no data, the previous point
	* is presumed to be 0, 0.  This point is checked against
	* the previous point, and if different, this point is added to
	* the path and the advance extended.  If this point is the same as the
	* previous point, the path remains unchanged.
	*/
	@:overload @:public public function lineTo(x : Float, y : Float) : Void;
	
	@:overload @:public public function complete() : sun.font.LayoutPathImpl.LayoutPathImpl_SegmentPath;
	
	/**
	* Complete building a SegmentPath.  Once this is called, the builder is restored
	* to its initial state and information about the previous path is released.  The
	* end type indicates whether to treat the path as closed, extended, or pinned.
	*/
	@:overload @:public public function complete(etype : sun.font.LayoutPathImpl.LayoutPathImpl_EndType) : sun.font.LayoutPathImpl.LayoutPathImpl_SegmentPath;
	
	
}
/**
* Represents a path built from segments.  Each segment is
* represented by a triple: x, y, and cumulative advance.
* These represent the end point of the segment.  The start
* point of the first segment is represented by the triple
* at position 0.
*
* The path might have breaks in it, e.g. it is not connected.
* These will be represented by pairs of triplets that share the
* same advance.
*
* The path might be extended, pinned, or closed.  If extended,
* the initial and final segments are considered to extend
* 'indefinitely' past the bounds of the advance.  If pinned,
* they end at the bounds of the advance.  If closed,
* advances before the start or after the end 'wrap around' the
* path.
*
* The start of the path is the initial triple.  This provides
* the nominal advance at the given x, y position (typically
* zero).  The end of the path is the final triple.  This provides
* the advance at the end, the total length of the path is
* thus the ending advance minus the starting advance.
*
* Note: We might want to cache more auxiliary data than the
* advance, but this seems adequate for now.
*/
@:native('sun$font$LayoutPathImpl$SegmentPath') extern class LayoutPathImpl_SegmentPath extends sun.font.LayoutPathImpl
{
	@:overload @:public @:static public static function get(etype : sun.font.LayoutPathImpl.LayoutPathImpl_EndType, pts : java.NativeArray<Float>) : sun.font.LayoutPathImpl.LayoutPathImpl_SegmentPath;
	
	@:overload @:public override public function pathToPoint(location : java.awt.geom.Point2D, preceding : Bool, point : java.awt.geom.Point2D) : Void;
	
	@:overload @:public override public function pointToPath(pt : java.awt.geom.Point2D, result : java.awt.geom.Point2D) : Bool;
	
	@:overload @:public override public function mapShape(s : java.awt.Shape) : java.awt.Shape;
	
	@:overload @:public override public function start() : Float;
	
	@:overload @:public override public function end() : Float;
	
	@:overload @:public override public function length() : Float;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* This represents a line segment from the iterator.  Each target segment will
* interpret it, and since this process needs slope along the line
* segment, this lets us compute it once and pass it around easily.
*/
@:native('sun$font$LayoutPathImpl$SegmentPath$LineInfo') @:internal extern class LayoutPathImpl_SegmentPath_LineInfo
{
	
}
/**
* Each segment will construct its own general path, mapping the provided lines
* into its own simple space.
*/
@:native('sun$font$LayoutPathImpl$SegmentPath$Segment') @:internal extern class LayoutPathImpl_SegmentPath_Segment
{
	
}
@:native('sun$font$LayoutPathImpl$SegmentPath$Mapper') @:internal extern class LayoutPathImpl_SegmentPath_Mapper
{
	@:overload @:public public function mapShape(s : java.awt.Shape) : java.awt.Shape;
	
	
}
@:native('sun$font$LayoutPathImpl$EmptyPath') extern class LayoutPathImpl_EmptyPath extends sun.font.LayoutPathImpl
{
	@:overload @:public public function new(tx : java.awt.geom.AffineTransform) : Void;
	
	@:overload @:public override public function pathToPoint(location : java.awt.geom.Point2D, preceding : Bool, point : java.awt.geom.Point2D) : Void;
	
	@:overload @:public override public function pointToPath(pt : java.awt.geom.Point2D, result : java.awt.geom.Point2D) : Bool;
	
	@:overload @:public override public function start() : Float;
	
	@:overload @:public override public function end() : Float;
	
	@:overload @:public override public function length() : Float;
	
	@:overload @:public override public function mapShape(s : java.awt.Shape) : java.awt.Shape;
	
	
}
