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
extern class Point2D implements java.lang.Cloneable
{
	/**
	* This is an abstract class that cannot be instantiated directly.
	* Type-specific implementation subclasses are available for
	* instantiation and provide a number of formats for storing
	* the information necessary to satisfy the various accessor
	* methods below.
	*
	* @see java.awt.geom.Point2D.Float
	* @see java.awt.geom.Point2D.Double
	* @see java.awt.Point
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function new() : Void;
	
	/**
	* Returns the X coordinate of this <code>Point2D</code> in
	* <code>double</code> precision.
	* @return the X coordinate of this <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getX() : Float;
	
	/**
	* Returns the Y coordinate of this <code>Point2D</code> in
	* <code>double</code> precision.
	* @return the Y coordinate of this <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function getY() : Float;
	
	/**
	* Sets the location of this <code>Point2D</code> to the
	* specified <code>double</code> coordinates.
	*
	* @param x the new X coordinate of this {@code Point2D}
	* @param y the new Y coordinate of this {@code Point2D}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function setLocation(x : Float, y : Float) : Void;
	
	/**
	* Sets the location of this <code>Point2D</code> to the same
	* coordinates as the specified <code>Point2D</code> object.
	* @param p the specified <code>Point2D</code> to which to set
	* this <code>Point2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setLocation(p : java.awt.geom.Point2D) : Void;
	
	/**
	* Returns the square of the distance between two points.
	*
	* @param x1 the X coordinate of the first specified point
	* @param y1 the Y coordinate of the first specified point
	* @param x2 the X coordinate of the second specified point
	* @param y2 the Y coordinate of the second specified point
	* @return the square of the distance between the two
	* sets of specified coordinates.
	* @since 1.2
	*/
	@:require(java2) @:native('distanceSq') @:overload @:public @:static public static function _distanceSq(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Float;
	
	/**
	* Returns the distance between two points.
	*
	* @param x1 the X coordinate of the first specified point
	* @param y1 the Y coordinate of the first specified point
	* @param x2 the X coordinate of the second specified point
	* @param y2 the Y coordinate of the second specified point
	* @return the distance between the two sets of specified
	* coordinates.
	* @since 1.2
	*/
	@:require(java2) @:native('distance') @:overload @:public @:static public static function _distance(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Float;
	
	/**
	* Returns the square of the distance from this
	* <code>Point2D</code> to a specified point.
	*
	* @param px the X coordinate of the specified point to be measured
	*           against this <code>Point2D</code>
	* @param py the Y coordinate of the specified point to be measured
	*           against this <code>Point2D</code>
	* @return the square of the distance between this
	* <code>Point2D</code> and the specified point.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function distanceSq(px : Float, py : Float) : Float;
	
	/**
	* Returns the square of the distance from this
	* <code>Point2D</code> to a specified <code>Point2D</code>.
	*
	* @param pt the specified point to be measured
	*           against this <code>Point2D</code>
	* @return the square of the distance between this
	* <code>Point2D</code> to a specified <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function distanceSq(pt : java.awt.geom.Point2D) : Float;
	
	/**
	* Returns the distance from this <code>Point2D</code> to
	* a specified point.
	*
	* @param px the X coordinate of the specified point to be measured
	*           against this <code>Point2D</code>
	* @param py the Y coordinate of the specified point to be measured
	*           against this <code>Point2D</code>
	* @return the distance between this <code>Point2D</code>
	* and a specified point.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function distance(px : Float, py : Float) : Float;
	
	/**
	* Returns the distance from this <code>Point2D</code> to a
	* specified <code>Point2D</code>.
	*
	* @param pt the specified point to be measured
	*           against this <code>Point2D</code>
	* @return the distance between this <code>Point2D</code> and
	* the specified <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function distance(pt : java.awt.geom.Point2D) : Float;
	
	/**
	* Creates a new object of the same class and with the
	* same contents as this object.
	* @return     a clone of this instance.
	* @exception  OutOfMemoryError            if there is not enough memory.
	* @see        java.lang.Cloneable
	* @since      1.2
	*/
	@:require(java2) @:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns the hashcode for this <code>Point2D</code>.
	* @return      a hash code for this <code>Point2D</code>.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Determines whether or not two points are equal. Two instances of
	* <code>Point2D</code> are equal if the values of their
	* <code>x</code> and <code>y</code> member fields, representing
	* their position in the coordinate space, are the same.
	* @param obj an object to be compared with this <code>Point2D</code>
	* @return <code>true</code> if the object to be compared is
	*         an instance of <code>Point2D</code> and has
	*         the same values; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* The <code>Float</code> class defines a point specified in float
* precision.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Point2D$Float') extern class Point2D_Float extends java.awt.geom.Point2D implements java.io.Serializable
{
	/**
	* The X coordinate of this <code>Point2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x : Single;
	
	/**
	* The Y coordinate of this <code>Point2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y : Single;
	
	/**
	* Constructs and initializes a <code>Point2D</code> with
	* coordinates (0,&nbsp;0).
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs and initializes a <code>Point2D</code> with
	* the specified coordinates.
	*
	* @param x the X coordinate of the newly
	*          constructed <code>Point2D</code>
	* @param y the Y coordinate of the newly
	*          constructed <code>Point2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(x : Single, y : Single) : Void;
	
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
	@:require(java2) @:overload @:public override public function setLocation(x : Float, y : Float) : Void;
	
	/**
	* Sets the location of this <code>Point2D</code> to the
	* specified <code>float</code> coordinates.
	*
	* @param x the new X coordinate of this {@code Point2D}
	* @param y the new Y coordinate of this {@code Point2D}
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setLocation(x : Single, y : Single) : Void;
	
	/**
	* Returns a <code>String</code> that represents the value
	* of this <code>Point2D</code>.
	* @return a string representation of this <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function toString() : String;
	
	
}
/**
* The <code>Double</code> class defines a point specified in
* <code>double</code> precision.
* @since 1.2
*/
@:require(java2) @:native('java$awt$geom$Point2D$Double') extern class Point2D_Double extends java.awt.geom.Point2D implements java.io.Serializable
{
	/**
	* The X coordinate of this <code>Point2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var x : Float;
	
	/**
	* The Y coordinate of this <code>Point2D</code>.
	* @since 1.2
	* @serial
	*/
	@:require(java2) @:public public var y : Float;
	
	/**
	* Constructs and initializes a <code>Point2D</code> with
	* coordinates (0,&nbsp;0).
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs and initializes a <code>Point2D</code> with the
	* specified coordinates.
	*
	* @param x the X coordinate of the newly
	*          constructed <code>Point2D</code>
	* @param y the Y coordinate of the newly
	*          constructed <code>Point2D</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(x : Float, y : Float) : Void;
	
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
	@:require(java2) @:overload @:public override public function setLocation(x : Float, y : Float) : Void;
	
	/**
	* Returns a <code>String</code> that represents the value
	* of this <code>Point2D</code>.
	* @return a string representation of this <code>Point2D</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function toString() : String;
	
	
}
