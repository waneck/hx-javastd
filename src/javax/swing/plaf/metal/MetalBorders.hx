package javax.swing.plaf.metal;
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
extern class MetalBorders
{
	/**
	* Returns a border instance for a JButton
	* @since 1.3
	*/
	@:require(java3) @:overload public static function getButtonBorder() : javax.swing.border.Border;
	
	/**
	* Returns a border instance for a text component
	* @since 1.3
	*/
	@:require(java3) @:overload public static function getTextBorder() : javax.swing.border.Border;
	
	/**
	* Returns a border instance for a JTextField
	* @since 1.3
	*/
	@:require(java3) @:overload public static function getTextFieldBorder() : javax.swing.border.Border;
	
	/**
	* Returns a border instance for a JToggleButton
	* @since 1.3
	*/
	@:require(java3) @:overload public static function getToggleButtonBorder() : javax.swing.border.Border;
	
	/**
	* Returns a border instance for a Desktop Icon
	* @since 1.3
	*/
	@:require(java3) @:overload public static function getDesktopIconBorder() : javax.swing.border.Border;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$Flush3DBorder') extern class MetalBorders_Flush3DBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$ButtonBorder') extern class MetalBorders_ButtonBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	private static var borderInsets : java.awt.Insets;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$InternalFrameBorder') extern class MetalBorders_InternalFrameBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* Border for a Frame.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$metal$MetalBorders$FrameBorder') @:internal extern class MetalBorders_FrameBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* Border for a Frame.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$metal$MetalBorders$DialogBorder') @:internal extern class MetalBorders_DialogBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload private function getActiveBackground() : java.awt.Color;
	
	@:overload private function getActiveHighlight() : java.awt.Color;
	
	@:overload private function getActiveShadow() : java.awt.Color;
	
	@:overload private function getInactiveBackground() : java.awt.Color;
	
	@:overload private function getInactiveHighlight() : java.awt.Color;
	
	@:overload private function getInactiveShadow() : java.awt.Color;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* Border for an Error Dialog.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$metal$MetalBorders$ErrorDialogBorder') @:internal extern class MetalBorders_ErrorDialogBorder extends MetalBorders_DialogBorder implements javax.swing.plaf.UIResource
{
	@:overload override private function getActiveBackground() : java.awt.Color;
	
	
}
/**
* Border for a QuestionDialog.  Also used for a JFileChooser and a
* JColorChooser..
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$metal$MetalBorders$QuestionDialogBorder') @:internal extern class MetalBorders_QuestionDialogBorder extends MetalBorders_DialogBorder implements javax.swing.plaf.UIResource
{
	@:overload override private function getActiveBackground() : java.awt.Color;
	
	
}
/**
* Border for a Warning Dialog.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$metal$MetalBorders$WarningDialogBorder') @:internal extern class MetalBorders_WarningDialogBorder extends MetalBorders_DialogBorder implements javax.swing.plaf.UIResource
{
	@:overload override private function getActiveBackground() : java.awt.Color;
	
	
}
/**
* Border for a Palette.
* @since 1.3
*/
@:require(java3) @:native('javax$swing$plaf$metal$MetalBorders$PaletteBorder') extern class MetalBorders_PaletteBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$OptionDialogBorder') extern class MetalBorders_OptionDialogBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$MenuBarBorder') extern class MetalBorders_MenuBarBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	private static var borderInsets : java.awt.Insets;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$MenuItemBorder') extern class MetalBorders_MenuItemBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	private static var borderInsets : java.awt.Insets;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$PopupMenuBorder') extern class MetalBorders_PopupMenuBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	private static var borderInsets : java.awt.Insets;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$RolloverButtonBorder') extern class MetalBorders_RolloverButtonBorder extends MetalBorders_ButtonBorder
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
/**
* A border which is like a Margin border but it will only honor the margin
* if the margin has been explicitly set by the developer.
*
* Note: This is identical to the package private class
* BasicBorders.RolloverMarginBorder and should probably be consolidated.
*/
@:native('javax$swing$plaf$metal$MetalBorders$RolloverMarginBorder') @:internal extern class MetalBorders_RolloverMarginBorder extends javax.swing.border.EmptyBorder
{
	@:overload public function new() : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$ToolBarBorder') extern class MetalBorders_ToolBarBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource implements javax.swing.SwingConstants
{
	private var bumps : javax.swing.plaf.metal.MetalBumps;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, newInsets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$TextFieldBorder') extern class MetalBorders_TextFieldBorder extends MetalBorders_Flush3DBorder
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalBorders$ScrollPaneBorder') extern class MetalBorders_ScrollPaneBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* @since 1.3
*/
@:require(java3) @:native('javax$swing$plaf$metal$MetalBorders$ToggleButtonBorder') extern class MetalBorders_ToggleButtonBorder extends MetalBorders_ButtonBorder
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
/**
* Border for a Table Header
* @since 1.3
*/
@:require(java3) @:native('javax$swing$plaf$metal$MetalBorders$TableHeaderBorder') extern class MetalBorders_TableHeaderBorder extends javax.swing.border.AbstractBorder
{
	private var editorBorderInsets : java.awt.Insets;
	
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
