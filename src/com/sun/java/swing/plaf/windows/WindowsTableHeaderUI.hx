package com.sun.java.swing.plaf.windows;
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
extern class WindowsTableHeaderUI extends javax.swing.plaf.basic.BasicTableHeaderUI
{
	@:native('createUI') @:overload public static function _createUI(h : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload override private function rolloverColumnUpdated(oldColumn : Int, newColumn : Int) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsTableHeaderUI$XPDefaultRenderer') @:internal extern class WindowsTableHeaderUI_XPDefaultRenderer extends sun.swing.table.DefaultTableCellHeaderRenderer
{
	@:overload override public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	
}
/**
* A border with an Icon at the middle of the top side.
* Outer insets can be provided for this border.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsTableHeaderUI$IconBorder') @:internal extern class WindowsTableHeaderUI_IconBorder implements javax.swing.border.Border implements javax.swing.plaf.UIResource
{
	/**
	* Creates this border;
	* @param icon - icon to paint for this border
	* @param top, left, bottom, right - outer insets for this border
	*/
	@:overload public function new(icon : javax.swing.Icon, top : Int, left : Int, bottom : Int, right : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload public function isBorderOpaque() : Bool;
	
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
