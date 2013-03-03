package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsBorders
{
	/**
	* Returns a  border instance for a Windows Progress Bar
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function getProgressBarBorder() : javax.swing.border.Border;
	
	/**
	* Returns a border instance for a Windows ToolBar
	*
	* @return a border used for the toolbar
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function getToolBarBorder() : javax.swing.border.Border;
	
	/**
	* Returns an new instance of a border used to indicate which cell item
	* has focus.
	*
	* @return a border to indicate which cell item has focus
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function getFocusCellHighlightBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getTableHeaderBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getInternalFrameBorder() : javax.swing.border.Border;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsBorders$ProgressBarBorder') extern class WindowsBorders_ProgressBarBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:protected private var shadow : java.awt.Color;
	
	@:protected private var highlight : java.awt.Color;
	
	@:overload @:public public function new(shadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* A border for the ToolBar. If the ToolBar is floatable then the handle grip is drawn
* <p>
* @since 1.4
*/
@:require(java4) @:native('com$sun$java$swing$plaf$windows$WindowsBorders$ToolBarBorder') extern class WindowsBorders_ToolBarBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource implements javax.swing.SwingConstants
{
	@:protected private var shadow : java.awt.Color;
	
	@:protected private var highlight : java.awt.Color;
	
	@:overload @:public public function new(shadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* This class is an implementation of a dashed border.
* @since 1.4
*/
@:require(java4) @:native('com$sun$java$swing$plaf$windows$WindowsBorders$DashedBorder') extern class WindowsBorders_DashedBorder extends javax.swing.border.LineBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new(color : java.awt.Color) : Void;
	
	@:overload @:public public function new(color : java.awt.Color, thickness : Int) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
/**
* A dashed border that paints itself in the complementary color
* of the component's background color.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsBorders$ComplementDashedBorder') @:internal extern class WindowsBorders_ComplementDashedBorder extends javax.swing.border.LineBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
/**
* This class is an implementation of the InternalFrameLine border.
* @since 1.4
*/
@:require(java4) @:native('com$sun$java$swing$plaf$windows$WindowsBorders$InternalFrameLineBorder') extern class WindowsBorders_InternalFrameLineBorder extends javax.swing.border.LineBorder implements javax.swing.plaf.UIResource
{
	@:protected private var activeColor : java.awt.Color;
	
	@:protected private var inactiveColor : java.awt.Color;
	
	@:overload @:public public function new(activeBorderColor : java.awt.Color, inactiveBorderColor : java.awt.Color, thickness : Int) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
