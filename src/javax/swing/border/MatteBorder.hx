package javax.swing.border;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MatteBorder extends javax.swing.border.EmptyBorder
{
	/**
	* A class which provides a matte-like border of either a solid color
	* or a tiled icon.
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases. The current serialization support is
	* appropriate for short term storage or RMI between applications running
	* the same version of Swing.  As of 1.4, support for long term storage
	* of all JavaBeans<sup><font size="-2">TM</font></sup>
	* has been added to the <code>java.beans</code> package.
	* Please see {@link java.beans.XMLEncoder}.
	*
	* @author Amy Fowler
	*/
	private var color : java.awt.Color;
	
	private var tileIcon : javax.swing.Icon;
	
	/**
	* Creates a matte border with the specified insets and color.
	* @param top the top inset of the border
	* @param left the left inset of the border
	* @param bottom the bottom inset of the border
	* @param right the right inset of the border
	* @param matteColor the color rendered for the border
	*/
	@:overload public function new(top : Int, left : Int, bottom : Int, right : Int, matteColor : java.awt.Color) : Void;
	
	/**
	* Creates a matte border with the specified insets and color.
	* @param borderInsets the insets of the border
	* @param matteColor the color rendered for the border
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(borderInsets : java.awt.Insets, matteColor : java.awt.Color) : Void;
	
	/**
	* Creates a matte border with the specified insets and tile icon.
	* @param top the top inset of the border
	* @param left the left inset of the border
	* @param bottom the bottom inset of the border
	* @param right the right inset of the border
	* @param tileIcon the icon to be used for tiling the border
	*/
	@:overload public function new(top : Int, left : Int, bottom : Int, right : Int, tileIcon : javax.swing.Icon) : Void;
	
	/**
	* Creates a matte border with the specified insets and tile icon.
	* @param borderInsets the insets of the border
	* @param tileIcon the icon to be used for tiling the border
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(borderInsets : java.awt.Insets, tileIcon : javax.swing.Icon) : Void;
	
	/**
	* Creates a matte border with the specified tile icon.  The
	* insets will be calculated dynamically based on the size of
	* the tile icon, where the top and bottom will be equal to the
	* tile icon's height, and the left and right will be equal to
	* the tile icon's width.
	* @param tileIcon the icon to be used for tiling the border
	*/
	@:overload public function new(tileIcon : javax.swing.Icon) : Void;
	
	/**
	* Paints the matte border.
	*/
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the insets of the border.
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getBorderInsets() : java.awt.Insets;
	
	/**
	* Returns the color used for tiling the border or null
	* if a tile icon is being used.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getMatteColor() : java.awt.Color;
	
	/**
	* Returns the icon used for tiling the border or null
	* if a solid color is being used.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getTileIcon() : javax.swing.Icon;
	
	/**
	* Returns whether or not the border is opaque.
	*/
	@:overload override public function isBorderOpaque() : Bool;
	
	
}
