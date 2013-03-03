package java.awt.print;
/*
* Copyright (c) 1997, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class PageFormat implements java.lang.Cloneable
{
	/**
	*  The origin is at the bottom left of the paper with
	*  x running bottom to top and y running left to right.
	*  Note that this is not the Macintosh landscape but
	*  is the Window's and PostScript landscape.
	*/
	@:public @:static @:final public static var LANDSCAPE(default, null) : Int;
	
	/**
	*  The origin is at the top left of the paper with
	*  x running to the right and y running down the
	*  paper.
	*/
	@:public @:static @:final public static var PORTRAIT(default, null) : Int;
	
	/**
	*  The origin is at the top right of the paper with x
	*  running top to bottom and y running right to left.
	*  Note that this is the Macintosh landscape.
	*/
	@:public @:static @:final public static var REVERSE_LANDSCAPE(default, null) : Int;
	
	/**
	* Creates a default, portrait-oriented
	* <code>PageFormat</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Makes a copy of this <code>PageFormat</code> with the same
	* contents as this <code>PageFormat</code>.
	* @return a copy of this <code>PageFormat</code>.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns the width, in 1/72nds of an inch, of the page.
	* This method takes into account the orientation of the
	* page when determining the width.
	* @return the width of the page.
	*/
	@:overload @:public public function getWidth() : Float;
	
	/**
	* Returns the height, in 1/72nds of an inch, of the page.
	* This method takes into account the orientation of the
	* page when determining the height.
	* @return the height of the page.
	*/
	@:overload @:public public function getHeight() : Float;
	
	/**
	* Returns the x coordinate of the upper left point of the
	* imageable area of the <code>Paper</code> object
	* associated with this <code>PageFormat</code>.
	* This method takes into account the
	* orientation of the page.
	* @return the x coordinate of the upper left point of the
	* imageable area of the <code>Paper</code> object
	* associated with this <code>PageFormat</code>.
	*/
	@:overload @:public public function getImageableX() : Float;
	
	/**
	* Returns the y coordinate of the upper left point of the
	* imageable area of the <code>Paper</code> object
	* associated with this <code>PageFormat</code>.
	* This method takes into account the
	* orientation of the page.
	* @return the y coordinate of the upper left point of the
	* imageable area of the <code>Paper</code> object
	* associated with this <code>PageFormat</code>.
	*/
	@:overload @:public public function getImageableY() : Float;
	
	/**
	* Returns the width, in 1/72nds of an inch, of the imageable
	* area of the page. This method takes into account the orientation
	* of the page.
	* @return the width of the page.
	*/
	@:overload @:public public function getImageableWidth() : Float;
	
	/**
	* Return the height, in 1/72nds of an inch, of the imageable
	* area of the page. This method takes into account the orientation
	* of the page.
	* @return the height of the page.
	*/
	@:overload @:public public function getImageableHeight() : Float;
	
	/**
	* Returns a copy of the {@link Paper} object associated
	* with this <code>PageFormat</code>.  Changes made to the
	* <code>Paper</code> object returned from this method do not
	* affect the <code>Paper</code> object of this
	* <code>PageFormat</code>.  To update the <code>Paper</code>
	* object of this <code>PageFormat</code>, create a new
	* <code>Paper</code> object and set it into this
	* <code>PageFormat</code> by using the {@link #setPaper(Paper)}
	* method.
	* @return a copy of the <code>Paper</code> object associated
	*          with this <code>PageFormat</code>.
	* @see #setPaper
	*/
	@:overload @:public public function getPaper() : java.awt.print.Paper;
	
	/**
	* Sets the <code>Paper</code> object for this
	* <code>PageFormat</code>.
	* @param paper the <code>Paper</code> object to which to set
	* the <code>Paper</code> object for this <code>PageFormat</code>.
	* @exception <code>NullPointerException</code>
	*              a null paper instance was passed as a parameter.
	* @see #getPaper
	*/
	@:overload @:public public function setPaper(paper : java.awt.print.Paper) : Void;
	
	/**
	* Sets the page orientation. <code>orientation</code> must be
	* one of the constants: PORTRAIT, LANDSCAPE,
	* or REVERSE_LANDSCAPE.
	* @param orientation the new orientation for the page
	* @throws IllegalArgumentException if
	*          an unknown orientation was requested
	* @see #getOrientation
	*/
	@:overload @:public public function setOrientation(orientation : Int) : Void;
	
	/**
	* Returns the orientation of this <code>PageFormat</code>.
	* @return this <code>PageFormat</code> object's orientation.
	* @see #setOrientation
	*/
	@:overload @:public public function getOrientation() : Int;
	
	/**
	* Returns a transformation matrix that translates user
	* space rendering to the requested orientation
	* of the page.  The values are placed into the
	* array as
	* {&nbsp;m00,&nbsp;m10,&nbsp;m01,&nbsp;m11,&nbsp;m02,&nbsp;m12} in
	* the form required by the {@link AffineTransform}
	* constructor.
	* @return the matrix used to translate user space rendering
	* to the orientation of the page.
	* @see java.awt.geom.AffineTransform
	*/
	@:overload @:public public function getMatrix() : java.NativeArray<Float>;
	
	
}
