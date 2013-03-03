package javax.swing.plaf.basic;
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
extern class BasicBorders
{
	/**
	* Factory object that can vend Borders appropriate for the basic L & F.
	* @author Georges Saab
	* @author Amy Fowler
	*/
	@:overload @:public @:static public static function getButtonBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getRadioButtonBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getToggleButtonBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getMenuBarBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getSplitPaneBorder() : javax.swing.border.Border;
	
	/**
	* Returns a border instance for a JSplitPane divider
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function getSplitPaneDividerBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getTextFieldBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getProgressBarBorder() : javax.swing.border.Border;
	
	@:overload @:public @:static public static function getInternalFrameBorder() : javax.swing.border.Border;
	
	
}
/**
* Special thin border for rollover toolbar buttons.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$basic$BasicBorders$RolloverButtonBorder') extern class BasicBorders_RolloverButtonBorder extends javax.swing.plaf.basic.BasicBorders.BasicBorders_ButtonBorder
{
	@:overload @:public public function new(shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
/**
* A border which is like a Margin border but it will only honor the margin
* if the margin has been explicitly set by the developer.
*
* Note: This is identical to the package private class
* MetalBorders.RolloverMarginBorder and should probably be consolidated.
*/
@:native('javax$swing$plaf$basic$BasicBorders$RolloverMarginBorder') @:internal extern class BasicBorders_RolloverMarginBorder extends javax.swing.border.EmptyBorder
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$basic$BasicBorders$ButtonBorder') extern class BasicBorders_ButtonBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:protected private var shadow : java.awt.Color;
	
	@:protected private var darkShadow : java.awt.Color;
	
	@:protected private var highlight : java.awt.Color;
	
	@:protected private var lightHighlight : java.awt.Color;
	
	@:overload @:public public function new(shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$basic$BasicBorders$ToggleButtonBorder') extern class BasicBorders_ToggleButtonBorder extends javax.swing.plaf.basic.BasicBorders.BasicBorders_ButtonBorder
{
	@:overload @:public public function new(shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$basic$BasicBorders$RadioButtonBorder') extern class BasicBorders_RadioButtonBorder extends javax.swing.plaf.basic.BasicBorders.BasicBorders_ButtonBorder
{
	@:overload @:public public function new(shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$basic$BasicBorders$MenuBarBorder') extern class BasicBorders_MenuBarBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new(shadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$basic$BasicBorders$MarginBorder') extern class BasicBorders_MarginBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$basic$BasicBorders$FieldBorder') extern class BasicBorders_FieldBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:protected private var shadow : java.awt.Color;
	
	@:protected private var darkShadow : java.awt.Color;
	
	@:protected private var highlight : java.awt.Color;
	
	@:protected private var lightHighlight : java.awt.Color;
	
	@:overload @:public public function new(shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* Draws the border around the divider in a splitpane
* (when BasicSplitPaneUI is used). To get the appropriate effect, this
* needs to be used with a SplitPaneBorder.
*/
@:native('javax$swing$plaf$basic$BasicBorders$SplitPaneDividerBorder') @:internal extern class BasicBorders_SplitPaneDividerBorder implements javax.swing.border.Border implements javax.swing.plaf.UIResource
{
	@:overload @:public public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload @:public public function isBorderOpaque() : Bool;
	
	
}
/**
* Draws the border around the splitpane. To work correctly you shoudl
* also install a border on the divider (property SplitPaneDivider.border).
*/
@:native('javax$swing$plaf$basic$BasicBorders$SplitPaneBorder') extern class BasicBorders_SplitPaneBorder implements javax.swing.border.Border implements javax.swing.plaf.UIResource
{
	@:protected private var highlight : java.awt.Color;
	
	@:protected private var shadow : java.awt.Color;
	
	@:overload @:public public function new(highlight : java.awt.Color, shadow : java.awt.Color) : Void;
	
	@:overload @:public public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload @:public public function isBorderOpaque() : Bool;
	
	
}
