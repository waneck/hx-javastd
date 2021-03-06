package com.sun.java.swing.plaf.windows;
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
extern class WindowsMenuUI extends javax.swing.plaf.basic.BasicMenuUI
{
	/**
	* Windows rendition of the component.
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases.  The current serialization support is appropriate
	* for short term storage or RMI between applications running the same
	* version of Swing.  A future release of Swing will provide support for
	* long term persistence.
	*/
	@:protected private var menuBarHeight : Null<Int>;
	
	@:protected private var hotTrackingOn : Bool;
	
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	/**
	* Draws the background of the menu.
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected override private function paintBackground(g : java.awt.Graphics, menuItem : javax.swing.JMenuItem, bgColor : java.awt.Color) : Void;
	
	/**
	* Method which renders the text of the current menu item.
	* <p>
	* @param g Graphics context
	* @param menuItem Current menu item to render
	* @param textRect Bounding rectangle to render the text.
	* @param text String to render
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected override private function paintText(g : java.awt.Graphics, menuItem : javax.swing.JMenuItem, textRect : java.awt.Rectangle, text : String) : Void;
	
	@:overload @:protected override private function createMouseInputListener(c : javax.swing.JComponent) : javax.swing.event.MouseInputListener;
	
	@:overload @:protected override private function getPreferredMenuItemSize(c : javax.swing.JComponent, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, defaultTextIconGap : Int) : java.awt.Dimension;
	
	
}
/**
* This class implements a mouse handler that sets the rollover flag to
* true when the mouse enters the menu and false when it exits.
* @since 1.4
*/
@:require(java4) @:native('com$sun$java$swing$plaf$windows$WindowsMenuUI$WindowsMouseInputHandler') extern class WindowsMenuUI_WindowsMouseInputHandler extends javax.swing.plaf.basic.BasicMenuUI.BasicMenuUI_MouseInputHandler
{
	@:overload @:public override public function mouseEntered(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseExited(evt : java.awt.event.MouseEvent) : Void;
	
	
}
