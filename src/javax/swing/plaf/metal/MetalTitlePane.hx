package javax.swing.plaf.metal;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* Class that manages a JLF awt.Window-descendant class's title bar.
* <p>
* This class assumes it will be created with a particular window
* decoration style, and that if the style changes, a new one will
* be created.
*
* @author Terry Kellerman
* @since 1.4
*/
@:require(java4) @:internal extern class MetalTitlePane extends javax.swing.JComponent
{
	@:overload @:public public function new(root : javax.swing.JRootPane, ui : javax.swing.plaf.metal.MetalRootPaneUI) : Void;
	
	/**
	* Returns the <code>JRootPane</code> this was created for.
	*/
	@:overload @:public override public function getRootPane() : javax.swing.JRootPane;
	
	@:overload @:public override public function addNotify() : Void;
	
	@:overload @:public override public function removeNotify() : Void;
	
	/**
	* Returns the <code>JMenuBar</code> displaying the appropriate
	* system menu items.
	*/
	@:overload @:protected private function createMenuBar() : javax.swing.JMenuBar;
	
	/**
	* Renders the TitlePane.
	*/
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
/**
* Actions used to <code>close</code> the <code>Window</code>.
*/
@:native('javax$swing$plaf$metal$MetalTitlePane$CloseAction') @:internal extern class MetalTitlePane_CloseAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Actions used to <code>iconfiy</code> the <code>Frame</code>.
*/
@:native('javax$swing$plaf$metal$MetalTitlePane$IconifyAction') @:internal extern class MetalTitlePane_IconifyAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Actions used to <code>restore</code> the <code>Frame</code>.
*/
@:native('javax$swing$plaf$metal$MetalTitlePane$RestoreAction') @:internal extern class MetalTitlePane_RestoreAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Actions used to <code>restore</code> the <code>Frame</code>.
*/
@:native('javax$swing$plaf$metal$MetalTitlePane$MaximizeAction') @:internal extern class MetalTitlePane_MaximizeAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Class responsible for drawing the system menu. Looks up the
* image to draw from the Frame associated with the
* <code>JRootPane</code>.
*/
@:native('javax$swing$plaf$metal$MetalTitlePane$SystemMenuBar') @:internal extern class MetalTitlePane_SystemMenuBar extends javax.swing.JMenuBar
{
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	
}
@:native('javax$swing$plaf$metal$MetalTitlePane$TitlePaneLayout') @:internal extern class MetalTitlePane_TitlePaneLayout implements java.awt.LayoutManager
{
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
/**
* PropertyChangeListener installed on the Window. Updates the necessary
* state as the state of the Window changes.
*/
@:native('javax$swing$plaf$metal$MetalTitlePane$PropertyChangeHandler') @:internal extern class MetalTitlePane_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* WindowListener installed on the Window, updates the state as necessary.
*/
@:native('javax$swing$plaf$metal$MetalTitlePane$WindowHandler') @:internal extern class MetalTitlePane_WindowHandler extends java.awt.event.WindowAdapter
{
	@:overload @:public override public function windowActivated(ev : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public override public function windowDeactivated(ev : java.awt.event.WindowEvent) : Void;
	
	
}
