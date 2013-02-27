package javax.swing.plaf.basic;
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
extern class BasicArrowButton extends javax.swing.JButton implements javax.swing.SwingConstants
{
	/**
	* The direction of the arrow. One of
	* {@code SwingConstants.NORTH}, {@code SwingConstants.SOUTH},
	* {@code SwingConstants.EAST} or {@code SwingConstants.WEST}.
	*/
	private var direction : Int;
	
	/**
	* Creates a {@code BasicArrowButton} whose arrow
	* is drawn in the specified direction and with the specified
	* colors.
	*
	* @param direction the direction of the arrow; one of
	*        {@code SwingConstants.NORTH}, {@code SwingConstants.SOUTH},
	*        {@code SwingConstants.EAST} or {@code SwingConstants.WEST}
	* @param background the background color of the button
	* @param shadow the color of the shadow
	* @param darkShadow the color of the dark shadow
	* @param highlight the color of the highlight
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(direction : Int, background : java.awt.Color, shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
	/**
	* Creates a {@code BasicArrowButton} whose arrow
	* is drawn in the specified direction.
	*
	* @param direction the direction of the arrow; one of
	*        {@code SwingConstants.NORTH}, {@code SwingConstants.SOUTH},
	*        {@code SwingConstants.EAST} or {@code SwingConstants.WEST}
	*/
	@:overload public function new(direction : Int) : Void;
	
	/**
	* Returns the direction of the arrow.
	*/
	@:overload public function getDirection() : Int;
	
	/**
	* Sets the direction of the arrow.
	*
	* @param direction the direction of the arrow; one of
	*        of {@code SwingConstants.NORTH},
	*        {@code SwingConstants.SOUTH},
	*        {@code SwingConstants.EAST} or {@code SwingConstants.WEST}
	*/
	@:overload public function setDirection(direction : Int) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Returns the preferred size of the {@code BasicArrowButton}.
	*
	* @return the preferred size
	*/
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* Returns the minimum size of the {@code BasicArrowButton}.
	*
	* @return the minimum size
	*/
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* Returns the maximum size of the {@code BasicArrowButton}.
	*
	* @return the maximum size
	*/
	@:overload override public function getMaximumSize() : java.awt.Dimension;
	
	/**
	* Returns whether the arrow button should get the focus.
	* {@code BasicArrowButton}s are used as a child component of
	* composite components such as {@code JScrollBar} and
	* {@code JComboBox}. Since the composite component typically gets the
	* focus, this method is overriden to return {@code false}.
	*
	* @return {@code false}
	*/
	@:overload override public function isFocusTraversable() : Bool;
	
	/**
	* Paints a triangle.
	*
	* @param g the {@code Graphics} to draw to
	* @param x the x coordinate
	* @param y the y coordinate
	* @param size the size of the triangle to draw
	* @param direction the direction in which to draw the arrow;
	*        one of {@code SwingConstants.NORTH},
	*        {@code SwingConstants.SOUTH}, {@code SwingConstants.EAST} or
	*        {@code SwingConstants.WEST}
	* @param isEnabled whether or not the arrow is drawn enabled
	*/
	@:overload public function paintTriangle(g : java.awt.Graphics, x : Int, y : Int, size : Int, direction : Int, isEnabled : Bool) : Void;
	
	
}
