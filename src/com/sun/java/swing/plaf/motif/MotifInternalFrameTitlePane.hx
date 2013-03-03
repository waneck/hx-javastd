package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifInternalFrameTitlePane extends javax.swing.plaf.basic.BasicInternalFrameTitlePane implements java.awt.LayoutManager implements java.awt.event.ActionListener implements java.beans.PropertyChangeListener
{
	@:public @:final @:static public static var BUTTON_SIZE(default, null) : Int;
	
	@:overload @:public public function new(frame : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	@:overload @:protected override private function uninstallListeners() : Void;
	
	@:overload @:protected override private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload @:protected override private function createLayout() : java.awt.LayoutManager;
	
	@:overload @:protected override private function assembleSystemMenu() : Void;
	
	@:overload @:protected override private function createButtons() : Void;
	
	@:overload @:protected override private function addSubComponents() : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	@:overload @:protected override private function showSystemMenu() : Void;
	
	@:overload @:protected private function hideSystemMenu() : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifInternalFrameTitlePane$FrameButton') @:internal extern class MotifInternalFrameTitlePane_FrameButton extends javax.swing.JButton
{
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:public override public function requestFocus() : Void;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifInternalFrameTitlePane$MinimizeButton') @:internal extern class MotifInternalFrameTitlePane_MinimizeButton extends com.sun.java.swing.plaf.motif.MotifInternalFrameTitlePane.MotifInternalFrameTitlePane_FrameButton
{
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifInternalFrameTitlePane$MaximizeButton') @:internal extern class MotifInternalFrameTitlePane_MaximizeButton extends com.sun.java.swing.plaf.motif.MotifInternalFrameTitlePane.MotifInternalFrameTitlePane_FrameButton
{
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifInternalFrameTitlePane$SystemButton') @:internal extern class MotifInternalFrameTitlePane_SystemButton extends com.sun.java.swing.plaf.motif.MotifInternalFrameTitlePane.MotifInternalFrameTitlePane_FrameButton
{
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:public override public function requestFocus() : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifInternalFrameTitlePane$Title') @:internal extern class MotifInternalFrameTitlePane_Title extends com.sun.java.swing.plaf.motif.MotifInternalFrameTitlePane.MotifInternalFrameTitlePane_FrameButton
{
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
