package com.sun.java.swing.plaf.motif;
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
extern class MotifBorders
{
	@:overload public static function drawBezel(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, isPressed : Bool, hasFocus : Bool, shadow : java.awt.Color, highlight : java.awt.Color, darkShadow : java.awt.Color, focus : java.awt.Color) : Void;
	
	
}
/**
* Factory object that can vend Icons appropriate for the basic L & F.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*
* @author Amy Fowler
*/
@:native('com$sun$java$swing$plaf$motif$MotifBorders$BevelBorder') extern class MotifBorders_BevelBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(isRaised : Bool, darkShadow : java.awt.Color, lightShadow : java.awt.Color) : Void;
	
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	@:overload public function isOpaque(c : java.awt.Component) : Bool;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifBorders$FocusBorder') extern class MotifBorders_FocusBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(control : java.awt.Color, focus : java.awt.Color) : Void;
	
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifBorders$ButtonBorder') extern class MotifBorders_ButtonBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	private var focus : java.awt.Color;
	
	private var shadow : java.awt.Color;
	
	private var highlight : java.awt.Color;
	
	private var darkShadow : java.awt.Color;
	
	@:overload public function new(shadow : java.awt.Color, highlight : java.awt.Color, darkShadow : java.awt.Color, focus : java.awt.Color) : Void;
	
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifBorders$ToggleButtonBorder') extern class MotifBorders_ToggleButtonBorder extends com.sun.java.swing.plaf.motif.MotifBorders.MotifBorders_ButtonBorder
{
	@:overload public function new(shadow : java.awt.Color, highlight : java.awt.Color, darkShadow : java.awt.Color, focus : java.awt.Color) : Void;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifBorders$MenuBarBorder') extern class MotifBorders_MenuBarBorder extends com.sun.java.swing.plaf.motif.MotifBorders.MotifBorders_ButtonBorder
{
	@:overload public function new(shadow : java.awt.Color, highlight : java.awt.Color, darkShadow : java.awt.Color, focus : java.awt.Color) : Void;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifBorders$FrameBorder') extern class MotifBorders_FrameBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	public static var BORDER_SIZE(default, null) : Int;
	
	/** Constructs an FrameBorder for the JComponent <b>comp</b>.
	*/
	@:overload public function new(comp : javax.swing.JComponent) : Void;
	
	/** Sets the FrameBorder's JComponent.
	*/
	@:overload public function setComponent(comp : javax.swing.JComponent) : Void;
	
	/** Returns the FrameBorder's JComponent.
	* @see #setComponent
	*/
	@:overload public function component() : javax.swing.JComponent;
	
	@:overload private function getFrameHighlight() : java.awt.Color;
	
	@:overload private function getFrameColor() : java.awt.Color;
	
	@:overload private function getFrameShadow() : java.awt.Color;
	
	@:overload public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	/** Draws the FrameBorder's top border.
	*/
	@:overload private function drawTopBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	/** Draws the FrameBorder's left border.
	*/
	@:overload private function drawLeftBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	/** Draws the FrameBorder's right border.
	*/
	@:overload private function drawRightBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	/** Draws the FrameBorder's bottom border.
	*/
	@:overload private function drawBottomBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	@:overload private function isActiveFrame() : Bool;
	
	/** Draws the FrameBorder in the given Rect.  Calls
	* <b>drawTitleBar</b>, <b>drawLeftBorder</b>, <b>drawRightBorder</b> and
	* <b>drawBottomBorder</b>.
	*/
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifBorders$InternalFrameBorder') extern class MotifBorders_InternalFrameBorder extends com.sun.java.swing.plaf.motif.MotifBorders.MotifBorders_FrameBorder
{
	public static var CORNER_SIZE(default, null) : Int;
	
	/** Constructs an InternalFrameBorder for the InternalFrame
	* <b>aFrame</b>.
	*/
	@:overload public function new(aFrame : javax.swing.JInternalFrame) : Void;
	
	/** Sets the InternalFrameBorder's InternalFrame.
	*/
	@:overload public function setFrame(aFrame : javax.swing.JInternalFrame) : Void;
	
	/** Returns the InternalFrameBorder's InternalFrame.
	* @see #setFrame
	*/
	@:overload public function frame() : javax.swing.JInternalFrame;
	
	/** Returns the width of the InternalFrameBorder's resize controls,
	* appearing along the InternalFrameBorder's bottom border.  Clicking
	* and dragging within these controls lets the user change both the
	* InternalFrame's width and height, while dragging between the controls
	* constrains resizing to just the vertical dimension.  Override this
	* method if you implement your own bottom border painting and use a
	* resize control with a different size.
	*/
	@:overload public function resizePartWidth() : Int;
	
	/** Draws the InternalFrameBorder's top border.
	*/
	@:overload override private function drawTopBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	/** Draws the InternalFrameBorder's left border.
	*/
	@:overload override private function drawLeftBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	/** Draws the InternalFrameBorder's right border.
	*/
	@:overload override private function drawRightBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	/** Draws the InternalFrameBorder's bottom border.
	*/
	@:overload override private function drawBottomBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	@:overload override private function isActiveFrame() : Bool;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifBorders$MotifPopupMenuBorder') extern class MotifBorders_MotifPopupMenuBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	private var font : java.awt.Font;
	
	private var background : java.awt.Color;
	
	private var foreground : java.awt.Color;
	
	private var shadowColor : java.awt.Color;
	
	private var highlightColor : java.awt.Color;
	
	private static var TEXT_SPACING(default, null) : Int;
	
	private static var GROOVE_HEIGHT(default, null) : Int;
	
	/**
	* Creates a MotifPopupMenuBorder instance
	*
	*/
	@:overload public function new(titleFont : java.awt.Font, bgColor : java.awt.Color, fgColor : java.awt.Color, shadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
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
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
