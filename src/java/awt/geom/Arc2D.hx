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
extern class Arc2D extends java.awt.geom.RectangularShape
{
	/**
	* The closure type for an open arc with no path segments
	* connecting the two ends of the arc segment.
	* @since 1.2
	*/
	@:require(java2) public static var OPEN(default, null) : Int;
	
	/**
	* The closure type for an arc closed by drawing a straight
	* line segment from the start of the arc segment to the end of the
	* arc segment.
	* @since 1.2
	*/
	@:require(java2) public static var CHORD(default, null) : Int;
	
	/**
	* The closure type for an arc closed by drawing straight line
	* segments from the start of the arc segment to the center
	* of the full ellipse and from that point to the end of the arc segment.
	* @since 1.2
	*/
	@:require(java2) public static var PIE(default, null) : Int;
	
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	* <p>
	* This constructor creates an object with a default closure
	* type of {@link #OPEN}.  It is provided only to enable
	* serialization of subclasses.
	*
	* @see java.awt.geom.Arc2D.Float
	* @see java.awt.geom.Arc2D.Double
	*/
	@:overload private function new() : Void;
	
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	*
	* @param type The closure type of this arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @see java.awt.geom.Arc2D.Float
	* @see java.awt.geom.Arc2D.Double
	* @since 1.2
	*/
	@:require(java2) @:overload private function new(type : Int) : Void;
	
	/**
	* Returns the starting angle of the arc.
	*
	* @return A double value that represents the starting angle
	* of the arc in degrees.
	* @see #setAngleStart
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getAngleStart() : Float;
	
	/**
	* Returns the angular extent of the arc.
	*
	* @return A double value that represents the angular extent
	* of the arc in degrees.
	* @see #setAngleExtent
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function getAngleExtent() : Float;
	
	/**
	* Returns the arc closure type of the arc: {@link #OPEN},
	* {@link #CHORD}, or {@link #PIE}.
	* @return One of the integer constant closure types defined
	* in this class.
	* @see #setArcType
	* @since 1.2
	*/
	@:require(java2) @:overload public function getArcType() : Int;
	
	/**
	* Returns the starting point of the arc.  This point is the
	* intersection of the ray from the center defined by the
	* starting angle and the elliptical boundary of the arc.
	*
	* @return A <CODE>Point2D</CODE> object representing the
	* x,y coordinates of the starting point of the arc.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getStartPoint() : java.awt.geom.Point2D;
	
	/**
	* Returns the ending point of the arc.  This point is the
	* intersection of the ray from the center defined by the
	* starting angle plus the angular extent of the arc and the
	* elliptical boundary of the arc.
	*
	* @return A <CODE>Point2D</CODE> object representing the
	* x,y coordinates  of the ending point of the arc.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getEndPoint() : java.awt.geom.Point2D;
	
	/**
	* Sets the location, size, angular extents, and closure type of
	* this arc to the specified double values.
	*
	* @param x The X coordinate of the upper-left corner of the arc.
	* @param y The Y coordinate of the upper-left corner of the arc.
	* @param w The overall width of the full ellipse of which
	*          this arc is a partial section.
	* @param h The overall height of the full ellipse of which
	*          this arc is a partial section.
	* @param angSt The starting angle of the arc in degrees.
	* @param angExt The angular extent of the arc in degrees.
	* @param closure The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function setArc(x : Float, y : Float, w : Float, h : Float, angSt : Float, angExt : Float, closure : Int) : Void;
	
	/**
	* Sets the location, size, angular extents, and closure type of
	* this arc to the specified values.
	*
	* @param loc The <CODE>Point2D</CODE> representing the coordinates of
	* the upper-left corner of the arc.
	* @param size The <CODE>Dimension2D</CODE> representing the width
	* and height of the full ellipse of which this arc is
	* a partial section.
	* @param angSt The starting angle of the arc in degrees.
	* @param angExt The angular extent of the arc in degrees.
	* @param closure The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setArc(loc : java.awt.geom.Point2D, size : java.awt.geom.Dimension2D, angSt : Float, angExt : Float, closure : Int) : Void;
	
	/**
	* Sets the location, size, angular extents, and closure type of
	* this arc to the specified values.
	*
	* @param rect The framing rectangle that defines the
	* outer boundary of the full ellipse of which this arc is a
	* partial section.
	* @param angSt The starting angle of the arc in degrees.
	* @param angExt The angular extent of the arc in degrees.
	* @param closure The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setArc(rect : java.awt.geom.Rectangle2D, angSt : Float, angExt : Float, closure : Int) : Void;
	
	/**
	* Sets this arc to be the same as the specified arc.
	*
	* @param a The <CODE>Arc2D</CODE> to use to set the arc's values.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setArc(a : java.awt.geom.Arc2D) : Void;
	
	/**
	* Sets the position, bounds, angular extents, and closure type of
	* this arc to the specified values. The arc is defined by a center
	* point and a radius rather than a framing rectangle for the full ellipse.
	*
	* @param x The X coordinate of the center of the arc.
	* @param y The Y coordinate of the center of the arc.
	* @param radius The radius of the arc.
	* @param angSt The starting angle of the arc in degrees.
	* @param angExt The angular extent of the arc in degrees.
	* @param closure The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setArcByCenter(x : Float, y : Float, radius : Float, angSt : Float, angExt : Float, closure : Int) : Void;
	
	/**
	* Sets the position, bounds, and angular extents of this arc to the
	* specified value. The starting angle of the arc is tangent to the
	* line specified by points (p1, p2), the ending angle is tangent to
	* the line specified by points (p2, p3), and the arc has the
	* specified radius.
	*
	* @param p1 The first point that defines the arc. The starting
	* angle of the arc is tangent to the line specified by points (p1, p2).
	* @param p2 The second point that defines the arc. The starting
	* angle of the arc is tangent to the line specified by points (p1, p2).
	* The ending angle of the arc is tangent to the line specified by
	* points (p2, p3).
	* @param p3 The third point that defines the arc. The ending angle
	* of the arc is tangent to the line specified by points (p2, p3).
	* @param radius The radius of the arc.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setArcByTangent(p1 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D, p3 : java.awt.geom.Point2D, radius : Float) : Void;
	
	/**
	* Sets the starting angle of this arc to the specified double
	* value.
	*
	* @param angSt The starting angle of the arc in degrees.
	* @see #getAngleStart
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function setAngleStart(angSt : Float) : Void;
	
	/**
	* Sets the angular extent of this arc to the specified double
	* value.
	*
	* @param angExt The angular extent of the arc in degrees.
	* @see #getAngleExtent
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract public function setAngleExtent(angExt : Float) : Void;
	
	/**
	* Sets the starting angle of this arc to the angle that the
	* specified point defines relative to the center of this arc.
	* The angular extent of the arc will remain the same.
	*
	* @param p The <CODE>Point2D</CODE> that defines the starting angle.
	* @see #getAngleStart
	* @since 1.2
	*/
	@:require(java2) @:overload public function setAngleStart(p : java.awt.geom.Point2D) : Void;
	
	/**
	* Sets the starting angle and angular extent of this arc using two
	* sets of coordinates. The first set of coordinates is used to
	* determine the angle of the starting point relative to the arc's
	* center. The second set of coordinates is used to determine the
	* angle of the end point relative to the arc's center.
	* The arc will always be non-empty and extend counterclockwise
	* from the first point around to the second point.
	*
	* @param x1 The X coordinate of the arc's starting point.
	* @param y1 The Y coordinate of the arc's starting point.
	* @param x2 The X coordinate of the arc's ending point.
	* @param y2 The Y coordinate of the arc's ending point.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setAngles(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void;
	
	/**
	* Sets the starting angle and angular extent of this arc using
	* two points. The first point is used to determine the angle of
	* the starting point relative to the arc's center.
	* The second point is used to determine the angle of the end point
	* relative to the arc's center.
	* The arc will always be non-empty and extend counterclockwise
	* from the first point around to the second point.
	*
	* @param p1 The <CODE>Point2D</CODE> that defines the arc's
	* starting point.
	* @param p2 The <CODE>Point2D</CODE> that defines the arc's
	* ending point.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setAngles(p1 : java.awt.geom.Point2D, p2 : java.awt.geom.Point2D) : Void;
	
	/**
	* Sets the closure type of this arc to the specified value:
	* <CODE>OPEN</CODE>, <CODE>CHORD</CODE>, or <CODE>PIE</CODE>.
	*
	* @param type The integer constant that represents the closure
	* type of this arc: {@link #OPEN}, {@link #CHORD}, or
	* {@link #PIE}.
	*
	* @throws IllegalArgumentException if <code>type</code> is not
	* 0, 1, or 2.+
	* @see #getArcType
	* @since 1.2
	*/
	@:require(java2) @:overload public function setArcType(type : Int) : Void;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setFrame(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* Returns the high-precision framing rectangle of the arc.  The framing
	* rectangle contains only the part of this <code>Arc2D</code> that is
	* in between the starting and ending angles and contains the pie
	* wedge, if this <code>Arc2D</code> has a <code>PIE</code> closure type.
	* <p>
	* This method differs from the
	* {@link RectangularShape#getBounds() getBounds} in that the
	* <code>getBounds</code> method only returns the bounds of the
	* enclosing ellipse of this <code>Arc2D</code> without considering
	* the starting and ending angles of this <code>Arc2D</code>.
	*
	* @return the <CODE>Rectangle2D</CODE> that represents the arc's
	* framing rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* Constructs a <code>Rectangle2D</code> of the appropriate precision
	* to hold the parameters calculated to be the framing rectangle
	* of this arc.
	*
	* @param x The X coordinate of the upper-left corner of the
	* framing rectangle.
	* @param y The Y coordinate of the upper-left corner of the
	* framing rectangle.
	* @param w The width of the framing rectangle.
	* @param h The height of the framing rectangle.
	* @return a <code>Rectangle2D</code> that is the framing rectangle
	*     of this arc.
	* @since 1.2
	*/
	@:require(java2) @:overload @:abstract private function makeBounds(x : Float, y : Float, w : Float, h : Float) : java.awt.geom.Rectangle2D;
	
	/**
	* Determines whether or not the specified angle is within the
	* angular extents of the arc.
	*
	* @param angle The angle to test.
	*
	* @return <CODE>true</CODE> if the arc contains the angle,
	* <CODE>false</CODE> if the arc doesn't contain the angle.
	* @since 1.2
	*/
	@:require(java2) @:overload public function containsAngle(angle : Float) : Bool;
	
	/**
	* Determines whether or not the specified point is inside the boundary
	* of the arc.
	*
	* @param x The X coordinate of the point to test.
	* @param y The Y coordinate of the point to test.
	*
	* @return <CODE>true</CODE> if the point lies within the bound of
	* the arc, <CODE>false</CODE> if the point lies outside of the
	* arc's bounds.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function contains(x : Float, y : Float) : Bool;
	
	/**
	* Determines whether or not the interior of the arc intersects
	* the interior of the specified rectangle.
	*
	* @param x The X coordinate of the rectangle's upper-left corner.
	* @param y The Y coordinate of the rectangle's upper-left corner.
	* @param w The width of the rectangle.
	* @param h The height of the rectangle.
	*
	* @return <CODE>true</CODE> if the arc intersects the rectangle,
	* <CODE>false</CODE> if the arc doesn't intersect the rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Determines whether or not the interior of the arc entirely contains
	* the specified rectangle.
	*
	* @param x The X coordinate of the rectangle's upper-left corner.
	* @param y The Y coordinate of the rectangle's upper-left corner.
	* @param w The width of the rectangle.
	* @param h The height of the rectangle.
	*
	* @return <CODE>true</CODE> if the arc contains the rectangle,
	* <CODE>false</CODE> if the arc doesn't contain the rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Determines whether or not the interior of the arc entirely contains
	* the specified rectangle.
	*
	* @param r The <CODE>Rectangle2D</CODE> to test.
	*
	* @return <CODE>true</CODE> if the arc contains the rectangle,
	* <CODE>false</CODE> if the arc doesn't contain the rectangle.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function contains(r : java.awt.geom.Rectangle2D) : Bool;
	
	/**
	* Returns an iteration object that defines the boundary of the
	* arc.
	* This iterator is multithread safe.
	* <code>Arc2D</code> guarantees that
	* modifications to the geometry of the arc
	* do not affect any iterations of that geometry that
	* are already in process.
	*
	* @param at an optional <CODE>AffineTransform</CODE> to be applied
	* to the coordinates as they are returned in the iteration, or null
	* if the untransformed coordinates are desired.
	*
	* @return A <CODE>PathIterator</CODE> that defines the arc's boundary.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Returns the hashcode for this <code>Arc2D</code>.
	* @return the hashcode for this <code>Arc2D</code>.
	* @since 1.6
	*/
	@:require(java6) @:overload public function hashCode() : Int;
	
	/**
	* Determines whether or not the specified <code>Object</code> is
	* equal to this <code>Arc2D</code>.  The specified
	* <code>Object</code> is equal to this <code>Arc2D</code>
	* if it is an instance of <code>Arc2D</code> and if its
	* location, size, arc extents and type are the same as this
	* <code>Arc2D</code>.
	* @param obj  an <code>Object</code> to be compared with this
	*             <code>Arc2D</code>.
	* @return  <code>true</code> if <code>obj</code> is an instance
	*          of <code>Arc2D</code> and has the same values;
	*          <code>false</code> otherwise.
	* @since 1.6
	*/
	@:require(java6) @:overload public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* This class defines an arc specified in {@code float} precision.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Arc2D$Float') extern class Arc2D_Float extends java.awt.geom.Arc2D implements java.io.Serializable
{
	/**
	* The X coordinate of the upper-left corner of the framing
	* rectangle of the arc.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x : Single;
	
	/**
	* The Y coordinate of the upper-left corner of the framing
	* rectangle of the arc.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y : Single;
	
	/**
	* The overall width of the full ellipse of which this arc is
	* a partial section (not considering the
	* angular extents).
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var width : Single;
	
	/**
	* The overall height of the full ellipse of which this arc is
	* a partial section (not considering the
	* angular extents).
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var height : Single;
	
	/**
	* The starting angle of the arc in degrees.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var start : Single;
	
	/**
	* The angular extent of the arc in degrees.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var extent : Single;
	
	/**
	* Constructs a new OPEN arc, initialized to location (0, 0),
	* size (0, 0), angular extents (start = 0, extent = 0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs a new arc, initialized to location (0, 0),
	* size (0, 0), angular extents (start = 0, extent = 0), and
	* the specified closure type.
	*
	* @param type The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(type : Int) : Void;
	
	/**
	* Constructs a new arc, initialized to the specified location,
	* size, angular extents, and closure type.
	*
	* @param x The X coordinate of the upper-left corner of
	*          the arc's framing rectangle.
	* @param y The Y coordinate of the upper-left corner of
	*          the arc's framing rectangle.
	* @param w The overall width of the full ellipse of which
	*          this arc is a partial section.
	* @param h The overall height of the full ellipse of which this
	*          arc is a partial section.
	* @param start The starting angle of the arc in degrees.
	* @param extent The angular extent of the arc in degrees.
	* @param type The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x : Single, y : Single, w : Single, h : Single, start : Single, extent : Single, type : Int) : Void;
	
	/**
	* Constructs a new arc, initialized to the specified location,
	* size, angular extents, and closure type.
	*
	* @param ellipseBounds The framing rectangle that defines the
	* outer boundary of the full ellipse of which this arc is a
	* partial section.
	* @param start The starting angle of the arc in degrees.
	* @param extent The angular extent of the arc in degrees.
	* @param type The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(ellipseBounds : java.awt.geom.Rectangle2D, start : Single, extent : Single, type : Int) : Void;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX() : Float;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY() : Float;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getWidth() : Float;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getAngleStart() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getAngleExtent() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function isEmpty() : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setArc(x : Float, y : Float, w : Float, h : Float, angSt : Float, angExt : Float, closure : Int) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setAngleStart(angSt : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setAngleExtent(angExt : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override private function makeBounds(x : Float, y : Float, w : Float, h : Float) : java.awt.geom.Rectangle2D;
	
	
}
/**
* This class defines an arc specified in {@code double} precision.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Arc2D$Double') extern class Arc2D_Double extends java.awt.geom.Arc2D implements java.io.Serializable
{
	/**
	* The X coordinate of the upper-left corner of the framing
	* rectangle of the arc.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x : Float;
	
	/**
	* The Y coordinate of the upper-left corner of the framing
	* rectangle of the arc.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y : Float;
	
	/**
	* The overall width of the full ellipse of which this arc is
	* a partial section (not considering the angular extents).
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var width : Float;
	
	/**
	* The overall height of the full ellipse of which this arc is
	* a partial section (not considering the angular extents).
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var height : Float;
	
	/**
	* The starting angle of the arc in degrees.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var start : Float;
	
	/**
	* The angular extent of the arc in degrees.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var extent : Float;
	
	/**
	* Constructs a new OPEN arc, initialized to location (0, 0),
	* size (0, 0), angular extents (start = 0, extent = 0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs a new arc, initialized to location (0, 0),
	* size (0, 0), angular extents (start = 0, extent = 0), and
	* the specified closure type.
	*
	* @param type The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(type : Int) : Void;
	
	/**
	* Constructs a new arc, initialized to the specified location,
	* size, angular extents, and closure type.
	*
	* @param x The X coordinate of the upper-left corner
	*          of the arc's framing rectangle.
	* @param y The Y coordinate of the upper-left corner
	*          of the arc's framing rectangle.
	* @param w The overall width of the full ellipse of which this
	*          arc is a partial section.
	* @param h The overall height of the full ellipse of which this
	*          arc is a partial section.
	* @param start The starting angle of the arc in degrees.
	* @param extent The angular extent of the arc in degrees.
	* @param type The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(x : Float, y : Float, w : Float, h : Float, start : Float, extent : Float, type : Int) : Void;
	
	/**
	* Constructs a new arc, initialized to the specified location,
	* size, angular extents, and closure type.
	*
	* @param ellipseBounds The framing rectangle that defines the
	* outer boundary of the full ellipse of which this arc is a
	* partial section.
	* @param start The starting angle of the arc in degrees.
	* @param extent The angular extent of the arc in degrees.
	* @param type The closure type for the arc:
	* {@link #OPEN}, {@link #CHORD}, or {@link #PIE}.
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(ellipseBounds : java.awt.geom.Rectangle2D, start : Float, extent : Float, type : Int) : Void;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getX() : Float;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getY() : Float;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getWidth() : Float;
	
	/**
	* {@inheritDoc}
	* Note that the arc
	* <a href="Arc2D.html#inscribes">partially inscribes</a>
	* the framing rectangle of this {@code RectangularShape}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getAngleStart() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getAngleExtent() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function isEmpty() : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setArc(x : Float, y : Float, w : Float, h : Float, angSt : Float, angExt : Float, closure : Int) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setAngleStart(angSt : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setAngleExtent(angExt : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override private function makeBounds(x : Float, y : Float, w : Float, h : Float) : java.awt.geom.Rectangle2D;
	
	
}
