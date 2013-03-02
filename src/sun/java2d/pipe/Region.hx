package sun.java2d.pipe;
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
extern class Region
{
	public static var EMPTY_REGION(default, null) : sun.java2d.pipe.Region;
	
	public static var WHOLE_REGION(default, null) : sun.java2d.pipe.Region;
	
	/**
	* Adds the dimension <code>dim</code> to the coordinate
	* <code>start</code> with appropriate clipping.  If
	* <code>dim</code> is non-positive then the method returns
	* the start coordinate.  If the sum overflows an integer
	* data type then the method returns <code>Integer.MAX_VALUE</code>.
	*/
	@:overload public static function dimAdd(start : Int, dim : Int) : Int;
	
	/**
	* Adds the delta {@code dv} to the value {@code v} with
	* appropriate clipping to the bounds of Integer resolution.
	* If the answer would be greater than {@code Integer.MAX_VALUE}
	* then {@code Integer.MAX_VALUE} is returned.
	* If the answer would be less than {@code Integer.MIN_VALUE}
	* then {@code Integer.MIN_VALUE} is returned.
	* Otherwise the sum is returned.
	*/
	@:overload public static function clipAdd(v : Int, dv : Int) : Int;
	
	@:overload private function new(lox : Int, loy : Int, hix : Int, hiy : Int) : Void;
	
	/**
	* Returns a Region object covering the pixels which would be
	* touched by a fill or clip operation on a Graphics implementation
	* on the specified Shape object under the optionally specified
	* AffineTransform object.
	*
	* @param s a non-null Shape object specifying the geometry enclosing
	*          the pixels of interest
	* @param at an optional <code>AffineTransform</code> to be applied to the
	*          coordinates as they are returned in the iteration, or
	*          <code>null</code> if untransformed coordinates are desired
	*/
	@:overload public static function getInstance(s : java.awt.Shape, at : java.awt.geom.AffineTransform) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object covering the pixels which would be
	* touched by a fill or clip operation on a Graphics implementation
	* on the specified Shape object under the optionally specified
	* AffineTransform object further restricted by the specified
	* device bounds.
	* <p>
	* Note that only the bounds of the specified Region are used to
	* restrict the resulting Region.
	* If devBounds is non-rectangular and clipping to the specific
	* bands of devBounds is needed, then an intersection of the
	* resulting Region with devBounds must be performed in a
	* subsequent step.
	*
	* @param devBounds a non-null Region specifying some bounds to
	*          clip the geometry to
	* @param s a non-null Shape object specifying the geometry enclosing
	*          the pixels of interest
	* @param at an optional <code>AffineTransform</code> to be applied to the
	*          coordinates as they are returned in the iteration, or
	*          <code>null</code> if untransformed coordinates are desired
	*/
	@:overload public static function getInstance(devBounds : sun.java2d.pipe.Region, s : java.awt.Shape, at : java.awt.geom.AffineTransform) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object covering the pixels which would be
	* touched by a fill or clip operation on a Graphics implementation
	* on the specified Shape object under the optionally specified
	* AffineTransform object further restricted by the specified
	* device bounds.
	* If the normalize parameter is true then coordinate normalization
	* is performed as per the 2D Graphics non-antialiasing implementation
	* of the VALUE_STROKE_NORMALIZE hint.
	* <p>
	* Note that only the bounds of the specified Region are used to
	* restrict the resulting Region.
	* If devBounds is non-rectangular and clipping to the specific
	* bands of devBounds is needed, then an intersection of the
	* resulting Region with devBounds must be performed in a
	* subsequent step.
	*
	* @param devBounds a non-null Region specifying some bounds to
	*          clip the geometry to
	* @param normalize a boolean indicating whether or not to apply
	*          normalization
	* @param s a non-null Shape object specifying the geometry enclosing
	*          the pixels of interest
	* @param at an optional <code>AffineTransform</code> to be applied to the
	*          coordinates as they are returned in the iteration, or
	*          <code>null</code> if untransformed coordinates are desired
	*/
	@:overload public static function getInstance(devBounds : sun.java2d.pipe.Region, normalize : Bool, s : java.awt.Shape, at : java.awt.geom.AffineTransform) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object with a rectangle of interest specified
	* by the indicated Rectangle object.
	* <p>
	* This method can also be used to create a simple rectangular
	* region.
	*/
	@:overload public static function getInstance(r : java.awt.Rectangle) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object with a rectangle of interest specified
	* by the indicated rectangular area in x, y, width, height format.
	* <p>
	* This method can also be used to create a simple rectangular
	* region.
	*/
	@:overload public static function getInstanceXYWH(x : Int, y : Int, w : Int, h : Int) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object with a rectangle of interest specified
	* by the indicated span array.
	* <p>
	* This method can also be used to create a simple rectangular
	* region.
	*/
	@:overload public static function getInstance(box : java.NativeArray<Int>) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object with a rectangle of interest specified
	* by the indicated rectangular area in lox, loy, hix, hiy format.
	* <p>
	* This method can also be used to create a simple rectangular
	* region.
	*/
	@:overload public static function getInstanceXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : sun.java2d.pipe.Region;
	
	/**
	* Sets the rectangle of interest for storing and returning
	* region bands.
	* <p>
	* This method can also be used to initialize a simple rectangular
	* region.
	*/
	@:overload public function setOutputArea(r : java.awt.Rectangle) : Void;
	
	/**
	* Sets the rectangle of interest for storing and returning
	* region bands.  The rectangle is specified in x, y, width, height
	* format and appropriate clipping is performed as per the method
	* <code>dimAdd</code>.
	* <p>
	* This method can also be used to initialize a simple rectangular
	* region.
	*/
	@:overload public function setOutputAreaXYWH(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Sets the rectangle of interest for storing and returning
	* region bands.  The rectangle is specified as a span array.
	* <p>
	* This method can also be used to initialize a simple rectangular
	* region.
	*/
	@:overload public function setOutputArea(box : java.NativeArray<Int>) : Void;
	
	/**
	* Sets the rectangle of interest for storing and returning
	* region bands.  The rectangle is specified in lox, loy,
	* hix, hiy format.
	* <p>
	* This method can also be used to initialize a simple rectangular
	* region.
	*/
	@:overload public function setOutputAreaXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : Void;
	
	/**
	* Appends the list of spans returned from the indicated
	* SpanIterator.  Each span must be at a higher starting
	* Y coordinate than the previous data or it must have a
	* Y range equal to the highest Y band in the region and a
	* higher X coordinate than any of the spans in that band.
	*/
	@:overload public function appendSpans(si : sun.java2d.pipe.SpanIterator) : Void;
	
	/**
	* Returns a Region object that represents the same list of
	* rectangles as the current Region object, translated by
	* the specified dx, dy translation factors.
	*/
	@:overload public function getTranslatedRegion(dx : Int, dy : Int) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the intersection of
	* this object with the specified Rectangle.  The return value
	* may be this same object if no clipping occurs.
	*/
	@:overload public function getIntersection(r : java.awt.Rectangle) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the intersection of
	* this object with the specified rectangular area.  The return
	* value may be this same object if no clipping occurs.
	*/
	@:overload public function getIntersectionXYWH(x : Int, y : Int, w : Int, h : Int) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the intersection of
	* this object with the specified rectangular area.  The return
	* value may be this same object if no clipping occurs.
	*/
	@:overload public function getIntersectionXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the intersection of this
	* object with the specified Region object.
	* <p>
	* If {@code A} and {@code B} are both Region Objects and
	* <code>C = A.getIntersection(B);</code> then a point will
	* be contained in {@code C} iff it is contained in both
	* {@code A} and {@code B}.
	* <p>
	* The return value may be this same object or the argument
	* Region object if no clipping occurs.
	*/
	@:overload public function getIntersection(r : sun.java2d.pipe.Region) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the union of this
	* object with the specified Region object.
	* <p>
	* If {@code A} and {@code B} are both Region Objects and
	* <code>C = A.getUnion(B);</code> then a point will
	* be contained in {@code C} iff it is contained in either
	* {@code A} or {@code B}.
	* <p>
	* The return value may be this same object or the argument
	* Region object if no augmentation occurs.
	*/
	@:overload public function getUnion(r : sun.java2d.pipe.Region) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the difference of the
	* specified Region object subtracted from this object.
	* <p>
	* If {@code A} and {@code B} are both Region Objects and
	* <code>C = A.getDifference(B);</code> then a point will
	* be contained in {@code C} iff it is contained in
	* {@code A} but not contained in {@code B}.
	* <p>
	* The return value may be this same object or the argument
	* Region object if no clipping occurs.
	*/
	@:overload public function getDifference(r : sun.java2d.pipe.Region) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the exclusive or of this
	* object with the specified Region object.
	* <p>
	* If {@code A} and {@code B} are both Region Objects and
	* <code>C = A.getExclusiveOr(B);</code> then a point will
	* be contained in {@code C} iff it is contained in either
	* {@code A} or {@code B}, but not if it is contained in both.
	* <p>
	* The return value may be this same object or the argument
	* Region object if either is empty.
	*/
	@:overload public function getExclusiveOr(r : sun.java2d.pipe.Region) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the bounds of the
	* intersection of this object with the bounds of the specified
	* Region object.
	* <p>
	* The return value may be this same object if no clipping occurs
	* and this Region is rectangular.
	*/
	@:overload public function getBoundsIntersection(r : java.awt.Rectangle) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the bounds of the
	* intersection of this object with the bounds of the specified
	* rectangular area in x, y, width, height format.
	* <p>
	* The return value may be this same object if no clipping occurs
	* and this Region is rectangular.
	*/
	@:overload public function getBoundsIntersectionXYWH(x : Int, y : Int, w : Int, h : Int) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the bounds of the
	* intersection of this object with the bounds of the specified
	* rectangular area in lox, loy, hix, hiy format.
	* <p>
	* The return value may be this same object if no clipping occurs
	* and this Region is rectangular.
	*/
	@:overload public function getBoundsIntersectionXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : sun.java2d.pipe.Region;
	
	/**
	* Returns a Region object that represents the intersection of
	* this object with the bounds of the specified Region object.
	* <p>
	* The return value may be this same object or the argument
	* Region object if no clipping occurs and the Regions are
	* rectangular.
	*/
	@:overload public function getBoundsIntersection(r : sun.java2d.pipe.Region) : sun.java2d.pipe.Region;
	
	/**
	* Returns the lowest X coordinate in the Region.
	*/
	@:overload @:final public function getLoX() : Int;
	
	/**
	* Returns the lowest Y coordinate in the Region.
	*/
	@:overload @:final public function getLoY() : Int;
	
	/**
	* Returns the highest X coordinate in the Region.
	*/
	@:overload @:final public function getHiX() : Int;
	
	/**
	* Returns the highest Y coordinate in the Region.
	*/
	@:overload @:final public function getHiY() : Int;
	
	/**
	* Returns the width of this Region clipped to the range (0 - MAX_INT).
	*/
	@:overload @:final public function getWidth() : Int;
	
	/**
	* Returns the height of this Region clipped to the range (0 - MAX_INT).
	*/
	@:overload @:final public function getHeight() : Int;
	
	/**
	* Returns true iff this Region encloses no area.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns true iff this Region represents a single simple
	* rectangular area.
	*/
	@:overload public function isRectangular() : Bool;
	
	/**
	* Returns true iff this Region contains the specified coordinate.
	*/
	@:overload public function contains(x : Int, y : Int) : Bool;
	
	/**
	* Returns true iff this Region lies inside the indicated
	* rectangular area specified in x, y, width, height format
	* with appropriate clipping performed as per the dimAdd method.
	*/
	@:overload public function isInsideXYWH(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Returns true iff this Region lies inside the indicated
	* rectangular area specified in lox, loy, hix, hiy format.
	*/
	@:overload public function isInsideXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : Bool;
	
	/**
	* Quickly checks if this Region lies inside the specified
	* Region object.
	* <p>
	* This method will return false if the specified Region
	* object is not a simple rectangle.
	*/
	@:overload public function isInsideQuickCheck(r : sun.java2d.pipe.Region) : Bool;
	
	/**
	* Quickly checks if this Region intersects the specified
	* rectangular area specified in lox, loy, hix, hiy format.
	* <p>
	* This method tests only against the bounds of this region
	* and does not bother to test if the rectangular region
	* actually intersects any bands.
	*/
	@:overload public function intersectsQuickCheckXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : Bool;
	
	/**
	* Quickly checks if this Region intersects the specified
	* Region object.
	* <p>
	* This method tests only against the bounds of this region
	* and does not bother to test if the rectangular region
	* actually intersects any bands.
	*/
	@:overload public function intersectsQuickCheck(r : sun.java2d.pipe.Region) : Bool;
	
	/**
	* Quickly checks if this Region surrounds the specified
	* Region object.
	* <p>
	* This method will return false if this Region object is
	* not a simple rectangle.
	*/
	@:overload public function encompasses(r : sun.java2d.pipe.Region) : Bool;
	
	/**
	* Quickly checks if this Region surrounds the specified
	* rectangular area specified in x, y, width, height format.
	* <p>
	* This method will return false if this Region object is
	* not a simple rectangle.
	*/
	@:overload public function encompassesXYWH(x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Quickly checks if this Region surrounds the specified
	* rectangular area specified in lox, loy, hix, hiy format.
	* <p>
	* This method will return false if this Region object is
	* not a simple rectangle.
	*/
	@:overload public function encompassesXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : Bool;
	
	/**
	* Gets the bbox of the available spans, clipped to the OutputArea.
	*/
	@:overload public function getBounds(pathbox : java.NativeArray<Int>) : Void;
	
	/**
	* Clips the indicated bbox array to the bounds of this Region.
	*/
	@:overload public function clipBoxToBounds(bbox : java.NativeArray<Int>) : Void;
	
	/**
	* Gets an iterator object to iterate over the spans in this region.
	*/
	@:overload public function getIterator() : sun.java2d.pipe.RegionIterator;
	
	/**
	* Gets a span iterator object that iterates over the spans in this region
	*/
	@:overload public function getSpanIterator() : sun.java2d.pipe.SpanIterator;
	
	/**
	* Gets a span iterator object that iterates over the spans in this region
	* but clipped to the bounds given in the argument (xlo, ylo, xhi, yhi).
	*/
	@:overload public function getSpanIterator(bbox : java.NativeArray<Int>) : sun.java2d.pipe.SpanIterator;
	
	/**
	* Returns a SpanIterator that is the argument iterator filtered by
	* this region.
	*/
	@:overload public function filter(si : sun.java2d.pipe.SpanIterator) : sun.java2d.pipe.SpanIterator;
	
	@:overload public function toString() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
/**
* Immutable Region.
*/
@:native('sun$java2d$pipe$Region$ImmutableRegion') @:internal extern class Region_ImmutableRegion extends sun.java2d.pipe.Region
{
	@:overload private function new(lox : Int, loy : Int, hix : Int, hiy : Int) : Void;
	
	@:overload override public function appendSpans(si : sun.java2d.pipe.SpanIterator) : Void;
	
	@:overload override public function setOutputArea(r : java.awt.Rectangle) : Void;
	
	@:overload override public function setOutputAreaXYWH(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function setOutputArea(box : java.NativeArray<Int>) : Void;
	
	@:overload override public function setOutputAreaXYXY(lox : Int, loy : Int, hix : Int, hiy : Int) : Void;
	
	
}
