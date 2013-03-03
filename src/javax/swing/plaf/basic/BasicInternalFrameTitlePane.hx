package javax.swing.plaf.basic;
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
extern class BasicInternalFrameTitlePane extends javax.swing.JComponent
{
	/**
	* The class that manages a basic title bar
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases. The current serialization support is
	* appropriate for short term storage or RMI between applications running
	* the same version of Swing.  As of 1.4, support for long term storage
	* of all JavaBeans<sup><font size="-2">TM</font></sup>
	* has been added to the <code>java.beans</code> package.
	* Please see {@link java.beans.XMLEncoder}.
	*
	* @author David Kloba
	* @author Steve Wilson
	*/
	@:protected private var menuBar : javax.swing.JMenuBar;
	
	@:protected private var iconButton : javax.swing.JButton;
	
	@:protected private var maxButton : javax.swing.JButton;
	
	@:protected private var closeButton : javax.swing.JButton;
	
	@:protected private var windowMenu : javax.swing.JMenu;
	
	@:protected private var frame : javax.swing.JInternalFrame;
	
	@:protected private var selectedTitleColor : java.awt.Color;
	
	@:protected private var selectedTextColor : java.awt.Color;
	
	@:protected private var notSelectedTitleColor : java.awt.Color;
	
	@:protected private var notSelectedTextColor : java.awt.Color;
	
	@:protected private var maxIcon : javax.swing.Icon;
	
	@:protected private var minIcon : javax.swing.Icon;
	
	@:protected private var iconIcon : javax.swing.Icon;
	
	@:protected private var closeIcon : javax.swing.Icon;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:protected private var closeAction : javax.swing.Action;
	
	@:protected private var maximizeAction : javax.swing.Action;
	
	@:protected private var iconifyAction : javax.swing.Action;
	
	@:protected private var restoreAction : javax.swing.Action;
	
	@:protected private var moveAction : javax.swing.Action;
	
	@:protected private var sizeAction : javax.swing.Action;
	
	@:protected @:static @:final private static var CLOSE_CMD(default, null) : String;
	
	@:protected @:static @:final private static var ICONIFY_CMD(default, null) : String;
	
	@:protected @:static @:final private static var RESTORE_CMD(default, null) : String;
	
	@:protected @:static @:final private static var MAXIMIZE_CMD(default, null) : String;
	
	@:protected @:static @:final private static var MOVE_CMD(default, null) : String;
	
	@:protected @:static @:final private static var SIZE_CMD(default, null) : String;
	
	@:overload @:public public function new(f : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function installTitlePane() : Void;
	
	@:overload @:protected private function addSubComponents() : Void;
	
	@:overload @:protected private function createActions() : Void;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function createButtons() : Void;
	
	@:overload @:protected private function setButtonIcons() : Void;
	
	@:overload @:protected private function assembleSystemMenu() : Void;
	
	@:overload @:protected private function addSystemMenuItems(systemMenu : javax.swing.JMenu) : Void;
	
	@:overload @:protected private function createSystemMenu() : javax.swing.JMenu;
	
	@:overload @:protected private function createSystemMenuBar() : javax.swing.JMenuBar;
	
	@:overload @:protected private function showSystemMenu() : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	/**
	* Invoked from paintComponent.
	* Paints the background of the titlepane.  All text and icons will
	* then be rendered on top of this background.
	* @param g the graphics to use to render the background
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function paintTitleBackground(g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function getTitle(text : String, fm : java.awt.FontMetrics, availTextWidth : Int) : String;
	
	/**
	* Post a WINDOW_CLOSING-like event to the frame, so that it can
	* be treated like a regular Frame.
	*/
	@:overload @:protected private function postClosingEvent(frame : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function enableActions() : Void;
	
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload @:protected private function createLayout() : java.awt.LayoutManager;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$Handler') @:internal extern class BasicInternalFrameTitlePane_Handler implements java.awt.LayoutManager implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$PropertyChangeHandler') extern class BasicInternalFrameTitlePane_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$TitlePaneLayout') extern class BasicInternalFrameTitlePane_TitlePaneLayout implements java.awt.LayoutManager
{
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$CloseAction') extern class BasicInternalFrameTitlePane_CloseAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$MaximizeAction') extern class BasicInternalFrameTitlePane_MaximizeAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$IconifyAction') extern class BasicInternalFrameTitlePane_IconifyAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$RestoreAction') extern class BasicInternalFrameTitlePane_RestoreAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$MoveAction') extern class BasicInternalFrameTitlePane_MoveAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Handles showing and hiding the system menu.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$ShowSystemMenuAction') @:internal extern class BasicInternalFrameTitlePane_ShowSystemMenuAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new(show : Bool) : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$SizeAction') extern class BasicInternalFrameTitlePane_SizeAction extends javax.swing.AbstractAction
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$SystemMenuBar') extern class BasicInternalFrameTitlePane_SystemMenuBar extends javax.swing.JMenuBar
{
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:public override public function requestFocus() : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function isOpaque() : Bool;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$NoFocusButton') @:internal extern class BasicInternalFrameTitlePane_NoFocusButton extends javax.swing.JButton
{
	@:overload @:public public function new(uiKey : String, opacityKey : String) : Void;
	
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:public override public function requestFocus() : Void;
	
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
