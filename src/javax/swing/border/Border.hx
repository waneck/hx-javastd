package javax.swing.border;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern interface Border
{
	/**
	* Paints the border for the specified component with the specified
	* position and size.
	* @param c the component for which this border is being painted
	* @param g the paint graphics
	* @param x the x position of the painted border
	* @param y the y position of the painted border
	* @param width the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Returns the insets of the border.
	* @param c the component for which this border insets value applies
	*/
	@:overload public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	/**
	* Returns whether or not the border is opaque.  If the border
	* is opaque, it is responsible for filling in it's own
	* background when painting.
	*/
	@:overload public function isBorderOpaque() : Bool;
	
	
}
