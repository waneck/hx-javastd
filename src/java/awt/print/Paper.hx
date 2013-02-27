package java.awt.print;
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
extern class Paper implements java.lang.Cloneable
{
	/**
	* Creates a letter sized piece of paper
	* with one inch margins.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a copy of this <code>Paper</code> with the same contents
	* as this <code>Paper</code>.
	* @return a copy of this <code>Paper</code>.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns the height of the page in 1/72nds of an inch.
	* @return the height of the page described by this
	*          <code>Paper</code>.
	*/
	@:overload public function getHeight() : Float;
	
	/**
	* Sets the width and height of this <code>Paper</code>
	* object, which represents the properties of the page onto
	* which printing occurs.
	* The dimensions are supplied in 1/72nds of
	* an inch.
	* @param width the value to which to set this <code>Paper</code>
	* object's width
	* @param height the value to which to set this <code>Paper</code>
	* object's height
	*/
	@:overload public function setSize(width : Float, height : Float) : Void;
	
	/**
	* Returns the width of the page in 1/72nds
	* of an inch.
	* @return the width of the page described by this
	* <code>Paper</code>.
	*/
	@:overload public function getWidth() : Float;
	
	/**
	* Sets the imageable area of this <code>Paper</code>.  The
	* imageable area is the area on the page in which printing
	* occurs.
	* @param x the X coordinate to which to set the
	* upper-left corner of the imageable area of this <code>Paper</code>
	* @param y the Y coordinate to which to set the
	* upper-left corner of the imageable area of this <code>Paper</code>
	* @param width the value to which to set the width of the
	* imageable area of this <code>Paper</code>
	* @param height the value to which to set the height of the
	* imageable area of this <code>Paper</code>
	*/
	@:overload public function setImageableArea(x : Float, y : Float, width : Float, height : Float) : Void;
	
	/**
	* Returns the x coordinate of the upper-left corner of this
	* <code>Paper</code> object's imageable area.
	* @return the x coordinate of the imageable area.
	*/
	@:overload public function getImageableX() : Float;
	
	/**
	* Returns the y coordinate of the upper-left corner of this
	* <code>Paper</code> object's imageable area.
	* @return the y coordinate of the imageable area.
	*/
	@:overload public function getImageableY() : Float;
	
	/**
	* Returns the width of this <code>Paper</code> object's imageable
	* area.
	* @return the width of the imageable area.
	*/
	@:overload public function getImageableWidth() : Float;
	
	/**
	* Returns the height of this <code>Paper</code> object's imageable
	* area.
	* @return the height of the imageable area.
	*/
	@:overload public function getImageableHeight() : Float;
	
	
}
