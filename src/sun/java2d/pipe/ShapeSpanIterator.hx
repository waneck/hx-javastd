package sun.java2d.pipe;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ShapeSpanIterator implements sun.java2d.pipe.SpanIterator implements sun.awt.geom.PathConsumer2D
{
	@:overload @:native public static function initIDs() : Void;
	
	@:overload public function new(adjust : Bool) : Void;
	
	/*
	* Appends the geometry and winding rule from the indicated
	* path iterator.
	*/
	@:overload public function appendPath(pi : java.awt.geom.PathIterator) : Void;
	
	/*
	* Appends the geometry from the indicated set of polygon points.
	*/
	@:overload @:native public function appendPoly(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int, xoff : Int, yoff : Int) : Void;
	
	/*
	* Sets the rectangle of interest for storing and returning
	* span segments.
	*/
	@:overload public function setOutputAreaXYWH(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/*
	* Sets the rectangle of interest for storing and returning
	* span segments.
	*/
	@:overload @:native public function setOutputAreaXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : Void;
	
	/*
	* Sets the rectangle of interest for storing and returning
	* span segments to the specified Rectangle.
	*/
	@:overload public function setOutputArea(r : java.awt.Rectangle) : Void;
	
	/*
	* Sets the rectangle of interest for storing and returning
	* span segments to the bounds of the specified Region.
	*/
	@:overload public function setOutputArea(r : sun.java2d.pipe.Region) : Void;
	
	/*
	* Sets the winding rule in the native data structures.
	*/
	@:overload @:native public function setRule(rule : Int) : Void;
	
	/*
	* Adds a single PathIterator segment to the internal list of
	* path element structures.
	*/
	@:overload @:native public function addSegment(type : Int, coords : java.NativeArray<Single>) : Void;
	
	/*
	* Gets the bbox of the available path segments, clipped to the
	* OutputArea.
	*/
	@:overload @:native public function getPathBox(pathbox : java.NativeArray<Int>) : Void;
	
	/*
	* Intersects the path box with the given bbox.
	* Returned spans are clipped to this region, or discarded
	* altogether if they lie outside it.
	*/
	@:overload @:native public function intersectClipBox(lox : Int, loy : Int, hix : Int, hiy : Int) : Void;
	
	/*
	* Fetches the next span that needs to be operated on.
	* If the return value is false then there are no more spans.
	*/
	@:overload @:native public function nextSpan(spanbox : java.NativeArray<Int>) : Bool;
	
	/**
	* This method tells the iterator that it may skip all spans
	* whose Y range is completely above the indicated Y coordinate.
	*/
	@:overload @:native public function skipDownTo(y : Int) : Void;
	
	/**
	* This method returns a native pointer to a function block that
	* can be used by a native method to perform the same iteration
	* cycle that the above methods provide while avoiding upcalls to
	* the Java object.
	* The definition of the structure whose pointer is returned by
	* this method is defined in:
	* <pre>
	*     src/share/native/sun/java2d/pipe/SpanIterator.h
	* </pre>
	*/
	@:overload @:native public function getNativeIterator() : haxe.Int64;
	
	/*
	* Cleans out all internal data structures.
	*/
	@:overload @:native public function dispose() : Void;
	
	@:overload @:native public function moveTo(x : Single, y : Single) : Void;
	
	@:overload @:native public function lineTo(x : Single, y : Single) : Void;
	
	@:overload @:native public function quadTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	@:overload @:native public function curveTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single, x3 : Single, y3 : Single) : Void;
	
	@:overload @:native public function closePath() : Void;
	
	@:overload @:native public function pathDone() : Void;
	
	@:overload @:native public function getNativeConsumer() : haxe.Int64;
	
	
}
