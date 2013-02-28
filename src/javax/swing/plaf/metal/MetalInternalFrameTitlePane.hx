package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MetalInternalFrameTitlePane extends javax.swing.plaf.basic.BasicInternalFrameTitlePane
{
	/**
	* Class that manages a JLF title bar
	* @author Steve Wilson
	* @author Brian Beck
	* @since 1.3
	*/
	@:require(java3) private var isPalette : Bool;
	
	private var paletteCloseIcon : javax.swing.Icon;
	
	private var paletteTitleHeight : Int;
	
	@:overload public function new(f : javax.swing.JInternalFrame) : Void;
	
	@:overload override public function addNotify() : Void;
	
	@:overload override private function installDefaults() : Void;
	
	@:overload override private function uninstallDefaults() : Void;
	
	@:overload override private function createButtons() : Void;
	
	/**
	* Override the parent's method to do nothing. Metal frames do not
	* have system menus.
	*/
	@:overload override private function assembleSystemMenu() : Void;
	
	/**
	* Override the parent's method to do nothing. Metal frames do not
	* have system menus.
	*/
	@:overload override private function addSystemMenuItems(systemMenu : javax.swing.JMenu) : Void;
	
	/**
	* Override the parent's method to do nothing. Metal frames do not
	* have system menus.
	*/
	@:overload override private function showSystemMenu() : Void;
	
	/**
	* Override the parent's method avoid creating a menu bar. Metal frames
	* do not have system menus.
	*/
	@:overload override private function addSubComponents() : Void;
	
	@:overload override private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload override private function createLayout() : java.awt.LayoutManager;
	
	@:overload public function paintPalette(g : java.awt.Graphics) : Void;
	
	@:overload override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload public function setPalette(b : Bool) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalInternalFrameTitlePane$MetalPropertyChangeHandler') @:internal extern class MetalInternalFrameTitlePane_MetalPropertyChangeHandler extends javax.swing.plaf.basic.BasicInternalFrameTitlePane.BasicInternalFrameTitlePane_PropertyChangeHandler
{
	@:overload override public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalInternalFrameTitlePane$MetalTitlePaneLayout') @:internal extern class MetalInternalFrameTitlePane_MetalTitlePaneLayout extends javax.swing.plaf.basic.BasicInternalFrameTitlePane.BasicInternalFrameTitlePane_TitlePaneLayout
{
	@:overload override public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload override public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload override public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload override public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload override public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
