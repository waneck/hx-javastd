package java.awt;
/*
* Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Point extends java.awt.geom.Point2D implements java.io.Serializable
{
	/**
	* The X coordinate of this <code>Point</code>.
	* If no X coordinate is set it will default to 0.
	*
	* @serial
	* @see #getLocation()
	* @see #move(int, int)
	* @since 1.0
	*/
	@:require(java0) @:public public var x : Int;
	
	/**
	* The Y coordinate of this <code>Point</code>.
	* If no Y coordinate is set it will default to 0.
	*
	* @serial
	* @see #getLocation()
	* @see #move(int, int)
	* @since 1.0
	*/
	@:require(java0) @:public public var y : Int;
	
	/**
	* Constructs and initializes a point at the origin
	* (0,&nbsp;0) of the coordinate space.
	* @since       1.1
	*/
	@:require(java1) @:overload @:public public function new() : Void;
	
	/**
	* Constructs and initializes a point with the same location as
	* the specified <code>Point</code> object.
	* @param       p a point
	* @since       1.1
	*/
	@:require(java1) @:overload @:public public function new(p : java.awt.Point) : Void;
	
	/**
	* Constructs and initializes a point at the specified
	* {@code (x,y)} location in the coordinate space.
	* @param x the X coordinate of the newly constructed <code>Point</code>
	* @param y the Y coordinate of the newly constructed <code>Point</code>
	* @since 1.0
	*/
	@:require(java0) @:overload @:public public function new(x : Int, y : Int) : Void;
	
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
	* Returns the location of this point.
	* This method is included for completeness, to parallel the
	* <code>getLocation</code> method of <code>Component</code>.
	* @return      a copy of this point, at the same location
	* @see         java.awt.Component#getLocation
	* @see         java.awt.Point#setLocation(java.awt.Point)
	* @see         java.awt.Point#setLocation(int, int)
	* @since       1.1
	*/
	@:require(java1) @:overload @:public public function getLocation() : java.awt.Point;
	
	/**
	* Sets the location of the point to the specified location.
	* This method is included for completeness, to parallel the
	* <code>setLocation</code> method of <code>Component</code>.
	* @param       p  a point, the new location for this point
	* @see         java.awt.Component#setLocation(java.awt.Point)
	* @see         java.awt.Point#getLocation
	* @since       1.1
	*/
	@:require(java1) @:overload @:public public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Changes the point to have the specified location.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>setLocation</code> method of <code>Component</code>.
	* Its behavior is identical with <code>move(int,&nbsp;int)</code>.
	* @param       x the X coordinate of the new location
	* @param       y the Y coordinate of the new location
	* @see         java.awt.Component#setLocation(int, int)
	* @see         java.awt.Point#getLocation
	* @see         java.awt.Point#move(int, int)
	* @since       1.1
	*/
	@:require(java1) @:overload @:public public function setLocation(x : Int, y : Int) : Void;
	
	/**
	* Sets the location of this point to the specified double coordinates.
	* The double values will be rounded to integer values.
	* Any number smaller than <code>Integer.MIN_VALUE</code>
	* will be reset to <code>MIN_VALUE</code>, and any number
	* larger than <code>Integer.MAX_VALUE</code> will be
	* reset to <code>MAX_VALUE</code>.
	*
	* @param x the X coordinate of the new location
	* @param y the Y coordinate of the new location
	* @see #getLocation
	*/
	@:overload @:public override public function setLocation(x : Float, y : Float) : Void;
	
	/**
	* Moves this point to the specified location in the
	* {@code (x,y)} coordinate plane. This method
	* is identical with <code>setLocation(int,&nbsp;int)</code>.
	* @param       x the X coordinate of the new location
	* @param       y the Y coordinate of the new location
	* @see         java.awt.Component#setLocation(int, int)
	*/
	@:overload @:public public function move(x : Int, y : Int) : Void;
	
	/**
	* Translates this point, at location {@code (x,y)},
	* by {@code dx} along the {@code x} axis and {@code dy}
	* along the {@code y} axis so that it now represents the point
	* {@code (x+dx,y+dy)}.
	*
	* @param       dx   the distance to move this point
	*                            along the X axis
	* @param       dy    the distance to move this point
	*                            along the Y axis
	*/
	@:overload @:public public function translate(dx : Int, dy : Int) : Void;
	
	/**
	* Determines whether or not two points are equal. Two instances of
	* <code>Point2D</code> are equal if the values of their
	* <code>x</code> and <code>y</code> member fields, representing
	* their position in the coordinate space, are the same.
	* @param obj an object to be compared with this <code>Point2D</code>
	* @return <code>true</code> if the object to be compared is
	*         an instance of <code>Point2D</code> and has
	*         the same values; <code>false</code> otherwise.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a string representation of this point and its location
	* in the {@code (x,y)} coordinate space. This method is
	* intended to be used only for debugging purposes, and the content
	* and format of the returned string may vary between implementations.
	* The returned string may be empty but may not be <code>null</code>.
	*
	* @return  a string representation of this point
	*/
	@:overload @:public public function toString() : String;
	
	
}
