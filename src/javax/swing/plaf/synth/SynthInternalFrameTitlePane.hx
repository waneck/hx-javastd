package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SynthInternalFrameTitlePane extends javax.swing.plaf.basic.BasicInternalFrameTitlePane implements javax.swing.plaf.synth.SynthUI implements java.beans.PropertyChangeListener
{
	/**
	* The class that manages a synth title bar
	*
	* @author David Kloba
	* @author Joshua Outwater
	* @author Steve Wilson
	*/
	@:protected private var systemPopupMenu : javax.swing.JPopupMenu;
	
	@:protected private var menuButton : javax.swing.JButton;
	
	@:overload @:public public function new(f : javax.swing.JInternalFrame) : Void;
	
	@:overload @:public override public function getUIClassID() : String;
	
	@:overload @:public public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	@:overload @:public public function getContext(c : javax.swing.JComponent, state : Int) : javax.swing.plaf.synth.SynthContext;
	
	@:overload @:protected override private function addSubComponents() : Void;
	
	@:overload @:protected override private function installListeners() : Void;
	
	@:overload @:protected override private function uninstallListeners() : Void;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	@:overload @:protected override private function uninstallDefaults() : Void;
	
	@:overload @:protected override private function assembleSystemMenu() : Void;
	
	@:overload @:protected private function addSystemMenuItems(menu : javax.swing.JPopupMenu) : Void;
	
	@:overload @:protected override private function showSystemMenu() : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	@:overload @:public public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected override private function createLayout() : java.awt.LayoutManager;
	
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$synth$SynthInternalFrameTitlePane$JPopupMenuUIResource') @:internal extern class SynthInternalFrameTitlePane_JPopupMenuUIResource extends javax.swing.JPopupMenu implements javax.swing.plaf.UIResource
{
	
}
@:native('javax$swing$plaf$synth$SynthInternalFrameTitlePane$SynthTitlePaneLayout') @:internal extern class SynthInternalFrameTitlePane_SynthTitlePaneLayout implements java.awt.LayoutManager
{
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
