package com.sun.java.swing.plaf.motif;
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
extern class MotifDesktopIconUI extends javax.swing.plaf.basic.BasicDesktopIconUI
{
	/**
	* Motif rendition of the component.
	*
	* @author Thomas Ball
	* @author Rich Schiavi
	*/
	@:protected private var desktopIconActionListener : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconActionListener;
	
	@:protected private var desktopIconMouseListener : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconMouseListener;
	
	@:protected private var defaultIcon : javax.swing.Icon;
	
	@:protected private var iconButton : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconButton;
	
	@:protected private var iconLabel : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconLabel;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	@:overload @:protected override private function installComponents() : Void;
	
	@:overload @:protected override private function uninstallComponents() : Void;
	
	@:overload @:protected override private function installListeners() : Void;
	
	@:overload @:protected private function showSystemMenu() : Void;
	
	@:overload @:protected private function hideSystemMenu() : Void;
	
	@:overload @:protected private function createIconLabel(frame : javax.swing.JInternalFrame) : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconLabel;
	
	@:overload @:protected private function createIconButton(i : javax.swing.Icon) : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconButton;
	
	@:overload @:protected private function createDesktopIconActionListener() : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconActionListener;
	
	@:overload @:protected private function createDesktopIconMouseListener() : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconMouseListener;
	
	@:overload @:protected override private function uninstallDefaults() : Void;
	
	@:overload @:protected override private function uninstallListeners() : Void;
	
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the default desktop icon.
	*/
	@:overload @:public public function getDefaultIcon() : javax.swing.Icon;
	
	/**
	* Sets the icon used as the default desktop icon.
	*/
	@:overload @:public public function setDefaultIcon(newIcon : javax.swing.Icon) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$IconLabel') extern class MotifDesktopIconUI_IconLabel extends javax.swing.JPanel
{
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$IconButton') extern class MotifDesktopIconUI_IconButton extends javax.swing.JButton
{
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$DesktopIconActionListener') extern class MotifDesktopIconUI_DesktopIconActionListener implements java.awt.event.ActionListener
{
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$DesktopIconMouseListener') extern class MotifDesktopIconUI_DesktopIconMouseListener extends java.awt.event.MouseAdapter
{
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
