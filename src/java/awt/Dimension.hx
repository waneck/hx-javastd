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
extern class Dimension extends java.awt.geom.Dimension2D implements java.io.Serializable
{
	/**
	* The width dimension; negative values can be used.
	*
	* @serial
	* @see #getSize
	* @see #setSize
	* @since 1.0
	*/
	@:require(java0) public var width : Int;
	
	/**
	* The height dimension; negative values can be used.
	*
	* @serial
	* @see #getSize
	* @see #setSize
	* @since 1.0
	*/
	@:require(java0) public var height : Int;
	
	/**
	* Creates an instance of <code>Dimension</code> with a width
	* of zero and a height of zero.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an instance of <code>Dimension</code> whose width
	* and height are the same as for the specified dimension.
	*
	* @param    d   the specified dimension for the
	*               <code>width</code> and
	*               <code>height</code> values
	*/
	@:overload public function new(d : java.awt.Dimension) : Void;
	
	/**
	* Constructs a <code>Dimension</code> and initializes
	* it to the specified width and specified height.
	*
	* @param width the specified width
	* @param height the specified height
	*/
	@:overload public function new(width : Int, height : Int) : Void;
	
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
	* Sets the size of this <code>Dimension</code> object to
	* the specified width and height in double precision.
	* Note that if <code>width</code> or <code>height</code>
	* are larger than <code>Integer.MAX_VALUE</code>, they will
	* be reset to <code>Integer.MAX_VALUE</code>.
	*
	* @param width  the new width for the <code>Dimension</code> object
	* @param height the new height for the <code>Dimension</code> object
	* @since 1.2
	*/
	@:require(java2) @:overload override public function setSize(width : Float, height : Float) : Void;
	
	/**
	* Gets the size of this <code>Dimension</code> object.
	* This method is included for completeness, to parallel the
	* <code>getSize</code> method defined by <code>Component</code>.
	*
	* @return   the size of this dimension, a new instance of
	*           <code>Dimension</code> with the same width and height
	* @see      java.awt.Dimension#setSize
	* @see      java.awt.Component#getSize
	* @since    1.1
	*/
	@:require(java1) @:overload public function getSize() : java.awt.Dimension;
	
	/**
	* Sets the size of this <code>Dimension</code> object to the specified size.
	* This method is included for completeness, to parallel the
	* <code>setSize</code> method defined by <code>Component</code>.
	* @param    d  the new size for this <code>Dimension</code> object
	* @see      java.awt.Dimension#getSize
	* @see      java.awt.Component#setSize
	* @since    1.1
	*/
	@:require(java1) @:overload public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Sets the size of this <code>Dimension</code> object
	* to the specified width and height.
	* This method is included for completeness, to parallel the
	* <code>setSize</code> method defined by <code>Component</code>.
	*
	* @param    width   the new width for this <code>Dimension</code> object
	* @param    height  the new height for this <code>Dimension</code> object
	* @see      java.awt.Dimension#getSize
	* @see      java.awt.Component#setSize
	* @since    1.1
	*/
	@:require(java1) @:overload public function setSize(width : Int, height : Int) : Void;
	
	/**
	* Checks whether two dimension objects have equal values.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this <code>Dimension</code>.
	*
	* @return    a hash code for this <code>Dimension</code>
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of the values of this
	* <code>Dimension</code> object's <code>height</code> and
	* <code>width</code> fields. This method is intended to be used only
	* for debugging purposes, and the content and format of the returned
	* string may vary between implementations. The returned string may be
	* empty but may not be <code>null</code>.
	*
	* @return  a string representation of this <code>Dimension</code>
	*          object
	*/
	@:overload public function toString() : String;
	
	
}
