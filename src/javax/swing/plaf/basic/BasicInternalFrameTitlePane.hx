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
	private var menuBar : javax.swing.JMenuBar;
	
	private var iconButton : javax.swing.JButton;
	
	private var maxButton : javax.swing.JButton;
	
	private var closeButton : javax.swing.JButton;
	
	private var windowMenu : javax.swing.JMenu;
	
	private var frame : javax.swing.JInternalFrame;
	
	private var selectedTitleColor : java.awt.Color;
	
	private var selectedTextColor : java.awt.Color;
	
	private var notSelectedTitleColor : java.awt.Color;
	
	private var notSelectedTextColor : java.awt.Color;
	
	private var maxIcon : javax.swing.Icon;
	
	private var minIcon : javax.swing.Icon;
	
	private var iconIcon : javax.swing.Icon;
	
	private var closeIcon : javax.swing.Icon;
	
	private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	private var closeAction : javax.swing.Action;
	
	private var maximizeAction : javax.swing.Action;
	
	private var iconifyAction : javax.swing.Action;
	
	private var restoreAction : javax.swing.Action;
	
	private var moveAction : javax.swing.Action;
	
	private var sizeAction : javax.swing.Action;
	
	private static var CLOSE_CMD(default, null) : String;
	
	private static var ICONIFY_CMD(default, null) : String;
	
	private static var RESTORE_CMD(default, null) : String;
	
	private static var MAXIMIZE_CMD(default, null) : String;
	
	private static var MOVE_CMD(default, null) : String;
	
	private static var SIZE_CMD(default, null) : String;
	
	@:overload public function new(f : javax.swing.JInternalFrame) : Void;
	
	@:overload private function installTitlePane() : Void;
	
	@:overload private function addSubComponents() : Void;
	
	@:overload private function createActions() : Void;
	
	@:overload private function installListeners() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function createButtons() : Void;
	
	@:overload private function setButtonIcons() : Void;
	
	@:overload private function assembleSystemMenu() : Void;
	
	@:overload private function addSystemMenuItems(systemMenu : javax.swing.JMenu) : Void;
	
	@:overload private function createSystemMenu() : javax.swing.JMenu;
	
	@:overload private function createSystemMenuBar() : javax.swing.JMenuBar;
	
	@:overload private function showSystemMenu() : Void;
	
	@:overload public function paintComponent(g : java.awt.Graphics) : Void;
	
	/**
	* Invoked from paintComponent.
	* Paints the background of the titlepane.  All text and icons will
	* then be rendered on top of this background.
	* @param g the graphics to use to render the background
	* @since 1.4
	*/
	@:require(java4) @:overload private function paintTitleBackground(g : java.awt.Graphics) : Void;
	
	@:overload private function getTitle(text : String, fm : java.awt.FontMetrics, availTextWidth : Int) : String;
	
	/**
	* Post a WINDOW_CLOSING-like event to the frame, so that it can
	* be treated like a regular Frame.
	*/
	@:overload private function postClosingEvent(frame : javax.swing.JInternalFrame) : Void;
	
	@:overload private function enableActions() : Void;
	
	@:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload private function createLayout() : java.awt.LayoutManager;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$Handler') @:internal extern class BasicInternalFrameTitlePane_Handler implements java.awt.LayoutManager implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$PropertyChangeHandler') extern class BasicInternalFrameTitlePane_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$TitlePaneLayout') extern class BasicInternalFrameTitlePane_TitlePaneLayout implements java.awt.LayoutManager
{
	@:overload public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$CloseAction') extern class BasicInternalFrameTitlePane_CloseAction extends javax.swing.AbstractAction
{
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$MaximizeAction') extern class BasicInternalFrameTitlePane_MaximizeAction extends javax.swing.AbstractAction
{
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$IconifyAction') extern class BasicInternalFrameTitlePane_IconifyAction extends javax.swing.AbstractAction
{
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$RestoreAction') extern class BasicInternalFrameTitlePane_RestoreAction extends javax.swing.AbstractAction
{
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$MoveAction') extern class BasicInternalFrameTitlePane_MoveAction extends javax.swing.AbstractAction
{
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Handles showing and hiding the system menu.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$ShowSystemMenuAction') @:internal extern class BasicInternalFrameTitlePane_ShowSystemMenuAction extends javax.swing.AbstractAction
{
	@:overload public function new(show : Bool) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$SizeAction') extern class BasicInternalFrameTitlePane_SizeAction extends javax.swing.AbstractAction
{
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$SystemMenuBar') extern class BasicInternalFrameTitlePane_SystemMenuBar extends javax.swing.JMenuBar
{
	@:overload public function isFocusTraversable() : Bool;
	
	@:overload public function requestFocus() : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload public function isOpaque() : Bool;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameTitlePane$NoFocusButton') @:internal extern class BasicInternalFrameTitlePane_NoFocusButton extends javax.swing.JButton
{
	@:overload public function new(uiKey : String, opacityKey : String) : Void;
	
	@:overload public function isFocusTraversable() : Bool;
	
	@:overload public function requestFocus() : Void;
	
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
