package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsIconFactory implements java.io.Serializable
{
	@:overload public static function getMenuItemCheckIcon() : javax.swing.Icon;
	
	@:overload public static function getMenuItemArrowIcon() : javax.swing.Icon;
	
	@:overload public static function getMenuArrowIcon() : javax.swing.Icon;
	
	@:overload public static function getCheckBoxIcon() : javax.swing.Icon;
	
	@:overload public static function getRadioButtonIcon() : javax.swing.Icon;
	
	@:overload public static function getCheckBoxMenuItemIcon() : javax.swing.Icon;
	
	@:overload public static function getRadioButtonMenuItemIcon() : javax.swing.Icon;
	
	@:overload public static function createFrameCloseIcon() : javax.swing.Icon;
	
	@:overload public static function createFrameIconifyIcon() : javax.swing.Icon;
	
	@:overload public static function createFrameMaximizeIcon() : javax.swing.Icon;
	
	@:overload public static function createFrameMinimizeIcon() : javax.swing.Icon;
	
	@:overload public static function createFrameResizeIcon() : javax.swing.Icon;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$FrameButtonIcon') @:internal extern class WindowsIconFactory_FrameButtonIcon implements javax.swing.Icon implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x0 : Int, y0 : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$ResizeIcon') @:internal extern class WindowsIconFactory_ResizeIcon implements javax.swing.Icon implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$CheckBoxIcon') @:internal extern class WindowsIconFactory_CheckBoxIcon implements javax.swing.Icon implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$RadioButtonIcon') @:internal extern class WindowsIconFactory_RadioButtonIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$CheckBoxMenuItemIcon') @:internal extern class WindowsIconFactory_CheckBoxMenuItemIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$RadioButtonMenuItemIcon') @:internal extern class WindowsIconFactory_RadioButtonMenuItemIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$MenuItemCheckIcon') @:internal extern class WindowsIconFactory_MenuItemCheckIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$MenuItemArrowIcon') @:internal extern class WindowsIconFactory_MenuItemArrowIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$MenuArrowIcon') @:internal extern class WindowsIconFactory_MenuArrowIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$VistaMenuItemCheckIconFactory') @:internal extern class WindowsIconFactory_VistaMenuItemCheckIconFactory implements sun.swing.MenuItemCheckIconFactory
{
	@:overload public function getIcon(component : javax.swing.JMenuItem) : javax.swing.Icon;
	
	@:overload public function isCompatible(icon : Dynamic, prefix : String) : Bool;
	
	@:overload public function getIcon(type : String) : javax.swing.Icon;
	
	
}
/**
* CheckIcon for JMenuItem, JMenu, JCheckBoxMenuItem and
* JRadioButtonMenuItem.
* Note: to be used on Vista only.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsIconFactory$VistaMenuItemCheckIconFactory$VistaMenuItemCheckIcon') @:internal extern class WindowsIconFactory_VistaMenuItemCheckIconFactory_VistaMenuItemCheckIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function getIconHeight() : Int;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	
}
