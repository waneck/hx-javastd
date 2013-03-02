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
	private var desktopIconActionListener : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconActionListener;
	
	private var desktopIconMouseListener : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconMouseListener;
	
	private var defaultIcon : javax.swing.Icon;
	
	private var iconButton : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconButton;
	
	private var iconLabel : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconLabel;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new() : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function installComponents() : Void;
	
	@:overload private function uninstallComponents() : Void;
	
	@:overload private function installListeners() : Void;
	
	@:overload private function showSystemMenu() : Void;
	
	@:overload private function hideSystemMenu() : Void;
	
	@:overload private function createIconLabel(frame : javax.swing.JInternalFrame) : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconLabel;
	
	@:overload private function createIconButton(i : javax.swing.Icon) : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_IconButton;
	
	@:overload private function createDesktopIconActionListener() : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconActionListener;
	
	@:overload private function createDesktopIconMouseListener() : com.sun.java.swing.plaf.motif.MotifDesktopIconUI.MotifDesktopIconUI_DesktopIconMouseListener;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	@:overload public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the default desktop icon.
	*/
	@:overload public function getDefaultIcon() : javax.swing.Icon;
	
	/**
	* Sets the icon used as the default desktop icon.
	*/
	@:overload public function setDefaultIcon(newIcon : javax.swing.Icon) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$IconLabel') extern class MotifDesktopIconUI_IconLabel extends javax.swing.JPanel
{
	@:overload public function isFocusTraversable() : Bool;
	
	@:overload public function getMinimumSize() : java.awt.Dimension;
	
	@:overload public function getPreferredSize() : java.awt.Dimension;
	
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$IconButton') extern class MotifDesktopIconUI_IconButton extends javax.swing.JButton
{
	@:overload public function isFocusTraversable() : Bool;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$DesktopIconActionListener') extern class MotifDesktopIconUI_DesktopIconActionListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopIconUI$DesktopIconMouseListener') extern class MotifDesktopIconUI_DesktopIconMouseListener extends java.awt.event.MouseAdapter
{
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
