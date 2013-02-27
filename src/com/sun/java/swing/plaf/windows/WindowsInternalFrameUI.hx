package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsInternalFrameUI extends javax.swing.plaf.basic.BasicInternalFrameUI
{
	@:overload override public function installDefaults() : Void;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallDefaults() : Void;
	
	@:native('createUI') @:overload public static function _createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new(w : javax.swing.JInternalFrame) : Void;
	
	@:overload override private function createDesktopManager() : javax.swing.DesktopManager;
	
	@:overload override private function createNorthPane(w : javax.swing.JInternalFrame) : javax.swing.JComponent;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsInternalFrameUI$XPBorder') @:internal extern class WindowsInternalFrameUI_XPBorder extends javax.swing.border.AbstractBorder
{
	/**
	* @param x the x position of the painted border
	* @param y the y position of the painted border
	* @param width the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	@:overload override public function isBorderOpaque() : Bool;
	
	
}
