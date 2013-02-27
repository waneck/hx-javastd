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
extern class Ellipse2D extends java.awt.geom.RectangularShape
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	*
	* @see java.awt.geom.Ellipse2D.Float
	* @see java.awt.geom.Ellipse2D.Double
	* @since 1.2
	*/
	@:require(java2) @:overload private function new() : Void;
	
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
	* Returns an iteration object that defines the boundary of this
	* <code>Ellipse2D</code>.
	* The iterator for this class is multi-threaded safe, which means
	* that this <code>Ellipse2D</code> class guarantees that
	* modifications to the geometry of this <code>Ellipse2D</code>
	* object do not affect any iterations of that geometry that
	* are already in process.
	* @param at an optional <code>AffineTransform</code> to be applied to
	* the coordinates as they are returned in the iteration, or
	* <code>null</code> if untransformed coordinates are desired
	* @return    the <code>PathIterator</code> object that returns the
	*          geometry of the outline of this <code>Ellipse2D</code>,
	*          one segment at a time.
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	/**
	* Returns the hashcode for this <code>Ellipse2D</code>.
	* @return the hashcode for this <code>Ellipse2D</code>.
	* @since 1.6
	*/
	@:require(java6) @:overload public function hashCode() : Int;
	
	/**
	* Determines whether or not the specified <code>Object</code> is
	* equal to this <code>Ellipse2D</code>.  The specified
	* <code>Object</code> is equal to this <code>Ellipse2D</code>
	* if it is an instance of <code>Ellipse2D</code> and if its
	* location and size are the same as this <code>Ellipse2D</code>.
	* @param obj  an <code>Object</code> to be compared with this
	*             <code>Ellipse2D</code>.
	* @return  <code>true</code> if <code>obj</code> is an instance
	*          of <code>Ellipse2D</code> and has the same values;
	*          <code>false</code> otherwise.
	* @since 1.6
	*/
	@:require(java6) @:overload public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* The <code>Float</code> class defines an ellipse specified
* in <code>float</code> precision.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Ellipse2D$Float') extern class Ellipse2D_Float extends Ellipse2D implements java.io.Serializable
{
	/**
	* The X coordinate of the upper-left corner of the
	* framing rectangle of this {@code Ellipse2D}.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x : Single;
	
	/**
	* The Y coordinate of the upper-left corner of the
	* framing rectangle of this {@code Ellipse2D}.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y : Single;
	
	/**
	* The overall width of this <code>Ellipse2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var width : Single;
	
	/**
	* The overall height of this <code>Ellipse2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var height : Single;
	
	/**
	* Constructs a new <code>Ellipse2D</code>, initialized to
	* location (0,&nbsp;0) and size (0,&nbsp;0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes an <code>Ellipse2D</code> from the
	* specified coordinates.
	*
	* @param x the X coordinate of the upper-left corner
	*          of the framing rectangle
	* @param y the Y coordinate of the upper-left corner
	*          of the framing rectangle
	* @param w the width of the framing rectangle
	* @param h the height of the framing rectangle
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
	* Sets the location and size of the framing rectangle of this
	* <code>Shape</code> to the specified rectangular values.
	*
	* @param x the X coordinate of the upper-left corner of the
	*              specified rectangular shape
	* @param y the Y coordinate of the upper-left corner of the
	*              specified rectangular shape
	* @param w the width of the specified rectangular shape
	* @param h the height of the specified rectangular shape
	* @since 1.2
	*/
	@:require(java2) @:overload public function setFrame(x : Single, y : Single, w : Single, h : Single) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setFrame(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
/**
* The <code>Double</code> class defines an ellipse specified
* in <code>double</code> precision.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Ellipse2D$Double') extern class Ellipse2D_Double extends Ellipse2D implements java.io.Serializable
{
	/**
	* The X coordinate of the upper-left corner of the
	* framing rectangle of this {@code Ellipse2D}.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var x : Float;
	
	/**
	* The Y coordinate of the upper-left corner of the
	* framing rectangle of this {@code Ellipse2D}.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var y : Float;
	
	/**
	* The overall width of this <code>Ellipse2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var width : Float;
	
	/**
	* The overall height of the <code>Ellipse2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) public var height : Float;
	
	/**
	* Constructs a new <code>Ellipse2D</code>, initialized to
	* location (0,&nbsp;0) and size (0,&nbsp;0).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs and initializes an <code>Ellipse2D</code> from the
	* specified coordinates.
	*
	* @param x the X coordinate of the upper-left corner
	*        of the framing rectangle
	* @param y the Y coordinate of the upper-left corner
	*        of the framing rectangle
	* @param w the width of the framing rectangle
	* @param h the height of the framing rectangle
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
	@:require(java2) @:overload override public function setFrame(x : Float, y : Float, w : Float, h : Float) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	
}
