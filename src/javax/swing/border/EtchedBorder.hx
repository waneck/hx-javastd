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
extern class EtchedBorder extends javax.swing.border.AbstractBorder
{
	/** Raised etched type. */
	public static var RAISED(default, null) : Int;
	
	/** Lowered etched type. */
	public static var LOWERED(default, null) : Int;
	
	private var etchType : Int;
	
	private var highlight : java.awt.Color;
	
	private var shadow : java.awt.Color;
	
	/**
	* Creates a lowered etched border whose colors will be derived
	* from the background color of the component passed into
	* the paintBorder method.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an etched border with the specified etch-type
	* whose colors will be derived
	* from the background color of the component passed into
	* the paintBorder method.
	* @param etchType the type of etch to be drawn by the border
	*/
	@:overload public function new(etchType : Int) : Void;
	
	/**
	* Creates a lowered etched border with the specified highlight and
	* shadow colors.
	* @param highlight the color to use for the etched highlight
	* @param shadow the color to use for the etched shadow
	*/
	@:overload public function new(highlight : java.awt.Color, shadow : java.awt.Color) : Void;
	
	/**
	* Creates an etched border with the specified etch-type,
	* highlight and shadow colors.
	* @param etchType the type of etch to be drawn by the border
	* @param highlight the color to use for the etched highlight
	* @param shadow the color to use for the etched shadow
	*/
	@:overload public function new(etchType : Int, highlight : java.awt.Color, shadow : java.awt.Color) : Void;
	
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
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns whether or not the border is opaque.
	*/
	@:overload override public function isBorderOpaque() : Bool;
	
	/**
	* Returns which etch-type is set on the etched border.
	*/
	@:overload public function getEtchType() : Int;
	
	/**
	* Returns the highlight color of the etched border
	* when rendered on the specified component.  If no highlight
	* color was specified at instantiation, the highlight color
	* is derived from the specified component's background color.
	* @param c the component for which the highlight may be derived
	* @since 1.3
	*/
	@:require(java3) @:overload public function getHighlightColor(c : java.awt.Component) : java.awt.Color;
	
	/**
	* Returns the highlight color of the etched border.
	* Will return null if no highlight color was specified
	* at instantiation.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getHighlightColor() : java.awt.Color;
	
	/**
	* Returns the shadow color of the etched border
	* when rendered on the specified component.  If no shadow
	* color was specified at instantiation, the shadow color
	* is derived from the specified component's background color.
	* @param c the component for which the shadow may be derived
	* @since 1.3
	*/
	@:require(java3) @:overload public function getShadowColor(c : java.awt.Component) : java.awt.Color;
	
	/**
	* Returns the shadow color of the etched border.
	* Will return null if no shadow color was specified
	* at instantiation.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getShadowColor() : java.awt.Color;
	
	
}
