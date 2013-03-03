package javax.swing.border;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BevelBorder extends javax.swing.border.AbstractBorder
{
	/** Raised bevel type. */
	@:public @:static @:final public static var RAISED(default, null) : Int;
	
	/** Lowered bevel type. */
	@:public @:static @:final public static var LOWERED(default, null) : Int;
	
	@:protected private var bevelType : Int;
	
	@:protected private var highlightOuter : java.awt.Color;
	
	@:protected private var highlightInner : java.awt.Color;
	
	@:protected private var shadowInner : java.awt.Color;
	
	@:protected private var shadowOuter : java.awt.Color;
	
	/**
	* Creates a bevel border with the specified type and whose
	* colors will be derived from the background color of the
	* component passed into the paintBorder method.
	* @param bevelType the type of bevel for the border
	*/
	@:overload @:public public function new(bevelType : Int) : Void;
	
	/**
	* Creates a bevel border with the specified type, highlight and
	* shadow colors.
	* @param bevelType the type of bevel for the border
	* @param highlight the color to use for the bevel highlight
	* @param shadow the color to use for the bevel shadow
	*/
	@:overload @:public public function new(bevelType : Int, highlight : java.awt.Color, shadow : java.awt.Color) : Void;
	
	/**
	* Creates a bevel border with the specified type, highlight and
	* shadow colors.
	*
	* @param bevelType the type of bevel for the border
	* @param highlightOuterColor the color to use for the bevel outer highlight
	* @param highlightInnerColor the color to use for the bevel inner highlight
	* @param shadowOuterColor the color to use for the bevel outer shadow
	* @param shadowInnerColor the color to use for the bevel inner shadow
	*/
	@:overload @:public public function new(bevelType : Int, highlightOuterColor : java.awt.Color, highlightInnerColor : java.awt.Color, shadowOuterColor : java.awt.Color, shadowInnerColor : java.awt.Color) : Void;
	
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
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the outer highlight color of the bevel border
	* when rendered on the specified component.  If no highlight
	* color was specified at instantiation, the highlight color
	* is derived from the specified component's background color.
	* @param c the component for which the highlight may be derived
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getHighlightOuterColor(c : java.awt.Component) : java.awt.Color;
	
	/**
	* Returns the inner highlight color of the bevel border
	* when rendered on the specified component.  If no highlight
	* color was specified at instantiation, the highlight color
	* is derived from the specified component's background color.
	* @param c the component for which the highlight may be derived
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getHighlightInnerColor(c : java.awt.Component) : java.awt.Color;
	
	/**
	* Returns the inner shadow color of the bevel border
	* when rendered on the specified component.  If no shadow
	* color was specified at instantiation, the shadow color
	* is derived from the specified component's background color.
	* @param c the component for which the shadow may be derived
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getShadowInnerColor(c : java.awt.Component) : java.awt.Color;
	
	/**
	* Returns the outer shadow color of the bevel border
	* when rendered on the specified component.  If no shadow
	* color was specified at instantiation, the shadow color
	* is derived from the specified component's background color.
	* @param c the component for which the shadow may be derived
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getShadowOuterColor(c : java.awt.Component) : java.awt.Color;
	
	/**
	* Returns the outer highlight color of the bevel border.
	* Will return null if no highlight color was specified
	* at instantiation.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getHighlightOuterColor() : java.awt.Color;
	
	/**
	* Returns the inner highlight color of the bevel border.
	* Will return null if no highlight color was specified
	* at instantiation.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getHighlightInnerColor() : java.awt.Color;
	
	/**
	* Returns the inner shadow color of the bevel border.
	* Will return null if no shadow color was specified
	* at instantiation.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getShadowInnerColor() : java.awt.Color;
	
	/**
	* Returns the outer shadow color of the bevel border.
	* Will return null if no shadow color was specified
	* at instantiation.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getShadowOuterColor() : java.awt.Color;
	
	/**
	* Returns the type of the bevel border.
	*/
	@:overload @:public public function getBevelType() : Int;
	
	/**
	* Returns whether or not the border is opaque.
	*/
	@:overload @:public override public function isBorderOpaque() : Bool;
	
	@:overload @:protected private function paintRaisedBevel(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:protected private function paintLoweredBevel(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
