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
extern class RoundRectangle2D extends java.awt.geom.RectangularShape
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	*
	* @see java.awt.geom.RoundRectangle2D.Float
	* @see java.awt.geom.RoundRectangle2D.Double
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function new() : Void;
	
	/**
	* Gets the width of the arc that rounds off the corners.
	* @return the width of the arc that rounds off the corners
	* of this <code>RoundRectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getArcWidth() : Float;
	
	/**
	* Gets the height of the arc that rounds off the corners.
	* @return the height of the arc that rounds off the corners
	* of this <code>RoundRectangle2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getArcHeight() : Float;
	
	/**
	* Sets the location, size, and corner radii of this
	* <code>RoundRectangle2D</code> to the specified
	* <code>double</code> values.
	*
	* @param x the X coordinate to which to set the
	*          location of this <code>RoundRectangle2D</code>
	* @param y the Y coordinate to which to set the
	*          location of this <code>RoundRectangle2D</code>
	* @param w the width to which to set this
	*          <code>RoundRectangle2D</code>
	* @param h the height to which to set this
	*          <code>RoundRectangle2D</code>
	* @param arcWidth the width to which to set the arc of this
	*                 <code>RoundRectangle2D</code>
	* @param arcHeight the height to which to set the arc of this
	*                  <code>RoundRectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function setRoundRect(x : Float, y : Float, w : Float, h : Float, arcWidth : Float, arcHeight : Float) : Void;
	
	/**
	* Sets this <code>RoundRectangle2D</code> to be the same as the
	* specified <code>RoundRectangle2D</code>.
	* @param rr the specified <code>RoundRectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setRoundRect(rr : java.awt.geom.RoundRectangle2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function setFrame(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function contains(x : Float, y : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	/**
	* Returns an iteration object that defines the boundary of this
	* <code>RoundRectangle2D</code>.
	* The iterator for this class is multi-threaded safe, which means
	* that this <code>RoundRectangle2D</code> class guarantees that
	* modifications to the geometry of this <code>RoundRectangle2D</code>
	* object do not affect any iterations of that geometry that
	* are already in process.
	* @param at an optional <code>AffineTransform</code> to be applied to
	* the coordinates as they are returned in the iteration, or
	* <code>null</code> if untransformed coordinates are desired
	* @return    the <code>PathIterator</code> object that returns the
	*          geometry of the outline of this
	*          <code>RoundRectangle2D</code>, one segment at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Returns the hashcode for this <code>RoundRectangle2D</code>.
	* @return the hashcode for this <code>RoundRectangle2D</code>.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function hashCode() : Int;
	
	/**
	* Determines whether or not the specified <code>Object</code> is
	* equal to this <code>RoundRectangle2D</code>.  The specified
	* <code>Object</code> is equal to this <code>RoundRectangle2D</code>
	* if it is an instance of <code>RoundRectangle2D</code> and if its
	* location, size, and corner arc dimensions are the same as this
	* <code>RoundRectangle2D</code>.
	* @param obj  an <code>Object</code> to be compared with this
	*             <code>RoundRectangle2D</code>.
	* @return  <code>true</code> if <code>obj</code> is an instance
	*          of <code>RoundRectangle2D</code> and has the same values;
	*          <code>false</code> otherwise.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* The <code>Float</code> class defines a rectangle with rounded
* corners all specified in <code>float</code> coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$RoundRectangle2D$Float') extern class RoundRectangle2D_Float extends java.awt.geom.RoundRectangle2D implements java.io.Serializable
{
	/**
	* The X coordinate of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x : Single;
	
	/**
	* The Y coordinate of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y : Single;
	
	/**
	* The width of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var width : Single;
	
	/**
	* The height of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var height : Single;
	
	/**
	* The width of the arc that rounds off the corners.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var arcwidth : Single;
	
	/**
	* The height of the arc that rounds off the corners.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var archeight : Single;
	
	/**
	* Constructs a new <code>RoundRectangle2D</code>, initialized to
	* location (0.0,&nbsp;0.0), size (0.0,&nbsp;0.0), and corner arcs
	* of radius 0.0.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs and initializes a <code>RoundRectangle2D</code>
	* from the specified <code>float</code> coordinates.
	*
	* @param x the X coordinate of the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param y the Y coordinate of the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param w the width to which to set the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param h the height to which to set the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param arcw the width of the arc to use to round off the
	*             corners of the newly constructed
	*             <code>RoundRectangle2D</code>
	* @param arch the height of the arc to use to round off the
	*             corners of the newly constructed
	*             <code>RoundRectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(x : Single, y : Single, w : Single, h : Single, arcw : Single, arch : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getX() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getY() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getWidth() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getArcWidth() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getArcHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Sets the location, size, and corner radii of this
	* <code>RoundRectangle2D</code> to the specified
	* <code>float</code> values.
	*
	* @param x the X coordinate to which to set the
	*          location of this <code>RoundRectangle2D</code>
	* @param y the Y coordinate to which to set the
	*          location of this <code>RoundRectangle2D</code>
	* @param w the width to which to set this
	*          <code>RoundRectangle2D</code>
	* @param h the height to which to set this
	*          <code>RoundRectangle2D</code>
	* @param arcw the width to which to set the arc of this
	*             <code>RoundRectangle2D</code>
	* @param arch the height to which to set the arc of this
	*             <code>RoundRectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setRoundRect(x : Single, y : Single, w : Single, h : Single, arcw : Single, arch : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function setRoundRect(x : Float, y : Float, w : Float, h : Float, arcw : Float, arch : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function setRoundRect(rr : java.awt.geom.RoundRectangle2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
/**
* The <code>Double</code> class defines a rectangle with rounded
* corners all specified in <code>double</code> coordinates.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$RoundRectangle2D$Double') extern class RoundRectangle2D_Double extends java.awt.geom.RoundRectangle2D implements java.io.Serializable
{
	/**
	* The X coordinate of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x : Float;
	
	/**
	* The Y coordinate of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y : Float;
	
	/**
	* The width of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var width : Float;
	
	/**
	* The height of this <code>RoundRectangle2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var height : Float;
	
	/**
	* The width of the arc that rounds off the corners.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var arcwidth : Float;
	
	/**
	* The height of the arc that rounds off the corners.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var archeight : Float;
	
	/**
	* Constructs a new <code>RoundRectangle2D</code>, initialized to
	* location (0.0,&nbsp;0.0), size (0.0,&nbsp;0.0), and corner arcs
	* of radius 0.0.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs and initializes a <code>RoundRectangle2D</code>
	* from the specified <code>double</code> coordinates.
	*
	* @param x the X coordinate of the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param y the Y coordinate of the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param w the width to which to set the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param h the height to which to set the newly
	*          constructed <code>RoundRectangle2D</code>
	* @param arcw the width of the arc to use to round off the
	*             corners of the newly constructed
	*             <code>RoundRectangle2D</code>
	* @param arch the height of the arc to use to round off the
	*             corners of the newly constructed
	*             <code>RoundRectangle2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(x : Float, y : Float, w : Float, h : Float, arcw : Float, arch : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getX() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getY() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getWidth() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getArcWidth() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getArcHeight() : Float;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function isEmpty() : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function setRoundRect(x : Float, y : Float, w : Float, h : Float, arcw : Float, arch : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function setRoundRect(rr : java.awt.geom.RoundRectangle2D) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
