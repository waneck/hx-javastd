package javax.swing.border;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class LineBorder extends javax.swing.border.AbstractBorder
{
	@:protected private var thickness : Int;
	
	@:protected private var lineColor : java.awt.Color;
	
	@:protected private var roundedCorners : Bool;
	
	/** Convenience method for getting the Color.black LineBorder of thickness 1.
	*/
	@:overload @:public @:static public static function createBlackLineBorder() : javax.swing.border.Border;
	
	/** Convenience method for getting the Color.gray LineBorder of thickness 1.
	*/
	@:overload @:public @:static public static function createGrayLineBorder() : javax.swing.border.Border;
	
	/**
	* Creates a line border with the specified color and a
	* thickness = 1.
	* @param color the color for the border
	*/
	@:overload @:public public function new(color : java.awt.Color) : Void;
	
	/**
	* Creates a line border with the specified color and thickness.
	* @param color the color of the border
	* @param thickness the thickness of the border
	*/
	@:overload @:public public function new(color : java.awt.Color, thickness : Int) : Void;
	
	/**
	* Creates a line border with the specified color, thickness,
	* and corner shape.
	* @param color the color of the border
	* @param thickness the thickness of the border
	* @param roundedCorners whether or not border corners should be round
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(color : java.awt.Color, thickness : Int, roundedCorners : Bool) : Void;
	
	/**
	* Paints the border for the specified component with the
	* specified position and size.
	* @param c the component for which this border is being painted
	* @param g the paint graphics
	* @param x the x position of the painted border
	* @param y the y position of the painted border
	* @param width the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the color of the border.
	*/
	@:overload @:public public function getLineColor() : java.awt.Color;
	
	/**
	* Returns the thickness of the border.
	*/
	@:overload @:public public function getThickness() : Int;
	
	/**
	* Returns whether this border will be drawn with rounded corners.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getRoundedCorners() : Bool;
	
	/**
	* Returns whether or not the border is opaque.
	*/
	@:overload @:public override public function isBorderOpaque() : Bool;
	
	
}
