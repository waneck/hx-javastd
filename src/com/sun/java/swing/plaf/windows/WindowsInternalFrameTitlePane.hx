package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsInternalFrameTitlePane extends javax.swing.plaf.basic.BasicInternalFrameTitlePane
{
	@:overload @:public public function new(f : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected override private function addSubComponents() : Void;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	@:overload @:protected override private function uninstallListeners() : Void;
	
	@:overload @:protected override private function createButtons() : Void;
	
	@:overload @:protected override private function setButtonIcons() : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:protected override private function paintTitleBackground(g : java.awt.Graphics) : Void;
	
	@:overload @:protected override private function assembleSystemMenu() : Void;
	
	@:overload @:protected private function addSystemMenuItems(menu : javax.swing.JPopupMenu) : Void;
	
	@:overload @:protected override private function showSystemMenu() : Void;
	
	@:overload @:protected override private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload @:protected override private function createLayout() : java.awt.LayoutManager;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsInternalFrameTitlePane$WindowsTitlePaneLayout') extern class WindowsInternalFrameTitlePane_WindowsTitlePaneLayout extends javax.swing.plaf.basic.BasicInternalFrameTitlePane.BasicInternalFrameTitlePane_TitlePaneLayout
{
	@:overload @:public override public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsInternalFrameTitlePane$WindowsPropertyChangeHandler') extern class WindowsInternalFrameTitlePane_WindowsPropertyChangeHandler extends javax.swing.plaf.basic.BasicInternalFrameTitlePane.BasicInternalFrameTitlePane_PropertyChangeHandler
{
	@:overload @:public override public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* A versatile Icon implementation which can take an array of Icon
* instances (typically <code>ImageIcon</code>s) and choose one that gives the best
* quality for a given Graphics2D scale factor when painting.
* <p>
* The class is public so it can be instantiated by UIDefaults.ProxyLazyValue.
* <p>
* Note: We assume here that icons are square.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsInternalFrameTitlePane$ScalableIconUIResource') extern class WindowsInternalFrameTitlePane_ScalableIconUIResource implements javax.swing.Icon implements javax.swing.plaf.UIResource
{
	/**
	* @params objects an array of Icon or UIDefaults.LazyValue
	* <p>
	* The constructor is public so it can be called by UIDefaults.ProxyLazyValue.
	*/
	@:overload @:public public function new(objects : java.NativeArray<Dynamic>) : Void;
	
	/**
	* @return the <code>Icon</code> closest to the requested size
	*/
	@:overload @:protected private function getBestIcon(size : Int) : javax.swing.Icon;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
