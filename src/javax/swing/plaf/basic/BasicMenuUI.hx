package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicMenuUI extends javax.swing.plaf.basic.BasicMenuItemUI
{
	/**
	* A default L&F implementation of MenuUI.  This implementation
	* is a "combined" view/controller.
	*
	* @author Georges Saab
	* @author David Karlton
	* @author Arnaud Weber
	*/
	@:protected private var changeListener : javax.swing.event.ChangeListener;
	
	@:protected private var menuListener : javax.swing.event.MenuListener;
	
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	@:overload @:protected override private function getPropertyPrefix() : String;
	
	@:overload @:protected override private function installListeners() : Void;
	
	@:overload @:protected override private function installKeyboardActions() : Void;
	
	@:overload @:protected override private function uninstallKeyboardActions() : Void;
	
	@:overload @:protected override private function createMouseInputListener(c : javax.swing.JComponent) : javax.swing.event.MouseInputListener;
	
	@:overload @:protected private function createMenuListener(c : javax.swing.JComponent) : javax.swing.event.MenuListener;
	
	@:overload @:protected private function createChangeListener(c : javax.swing.JComponent) : javax.swing.event.ChangeListener;
	
	@:overload @:protected override private function createPropertyChangeListener(c : javax.swing.JComponent) : java.beans.PropertyChangeListener;
	
	@:overload @:protected override private function uninstallDefaults() : Void;
	
	@:overload @:protected override private function uninstallListeners() : Void;
	
	@:overload @:protected override private function createMenuDragMouseListener(c : javax.swing.JComponent) : javax.swing.event.MenuDragMouseListener;
	
	@:overload @:protected override private function createMenuKeyListener(c : javax.swing.JComponent) : javax.swing.event.MenuKeyListener;
	
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:protected private function setupPostTimer(menu : javax.swing.JMenu) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicMenuUI$Actions') @:internal extern class BasicMenuUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public override public function isEnabled(c : Dynamic) : Bool;
	
	
}
/**
* Instantiated and used by a menu item to handle the current menu selection
* from mouse events. A MouseInputHandler processes and forwards all mouse events
* to a shared instance of the MenuSelectionManager.
* <p>
* This class is protected so that it can be subclassed by other look and
* feels to implement their own mouse handling behavior. All overridden
* methods should call the parent methods so that the menu selection
* is correct.
*
* @see javax.swing.MenuSelectionManager
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$basic$BasicMenuUI$MouseInputHandler') extern class BasicMenuUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse has been clicked on the menu. This
	* method clears or sets the selection path of the
	* MenuSelectionManager.
	*
	* @param e the mouse event
	*/
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse has been released on the menu. Delegates the
	* mouse event to the MenuSelectionManager.
	*
	* @param e the mouse event
	*/
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the cursor enters the menu. This method sets the selected
	* path for the MenuSelectionManager and handles the case
	* in which a menu item is used to pop up an additional menu, as in a
	* hierarchical menu system.
	*
	* @param e the mouse event; not used
	*/
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button is pressed on the menu and then dragged.
	* Delegates the mouse event to the MenuSelectionManager.
	*
	* @param e the mouse event
	* @see java.awt.event.MouseMotionListener#mouseDragged
	*/
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* As of Java 2 platform 1.4, this previously undocumented class
* is now obsolete. KeyBindings are now managed by the popup menu.
*/
@:native('javax$swing$plaf$basic$BasicMenuUI$ChangeHandler') extern class BasicMenuUI_ChangeHandler implements javax.swing.event.ChangeListener
{
	@:public public var menu : javax.swing.JMenu;
	
	@:public public var ui : javax.swing.plaf.basic.BasicMenuUI;
	
	@:public public var isSelected : Bool;
	
	@:public public var wasFocused : java.awt.Component;
	
	@:overload @:public public function new(m : javax.swing.JMenu, ui : javax.swing.plaf.basic.BasicMenuUI) : Void;
	
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicMenuUI$Handler') @:internal extern class BasicMenuUI_Handler extends javax.swing.plaf.basic.BasicMenuItemUI.BasicMenuItemUI_Handler implements javax.swing.event.MenuKeyListener
{
	@:overload @:public override public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse has been clicked on the menu. This
	* method clears or sets the selection path of the
	* MenuSelectionManager.
	*
	* @param e the mouse event
	*/
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse has been released on the menu. Delegates the
	* mouse event to the MenuSelectionManager.
	*
	* @param e the mouse event
	*/
	@:overload @:public override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the cursor enters the menu. This method sets the selected
	* path for the MenuSelectionManager and handles the case
	* in which a menu item is used to pop up an additional menu, as in a
	* hierarchical menu system.
	*
	* @param e the mouse event; not used
	*/
	@:overload @:public override public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button is pressed on the menu and then dragged.
	* Delegates the mouse event to the MenuSelectionManager.
	*
	* @param e the mouse event
	* @see java.awt.event.MouseMotionListener#mouseDragged
	*/
	@:overload @:public override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function menuDragMouseEntered(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	@:overload @:public override public function menuDragMouseDragged(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	@:overload @:public override public function menuDragMouseExited(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	@:overload @:public override public function menuDragMouseReleased(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	/**
	* Open the Menu
	*/
	@:overload @:public public function menuKeyTyped(e : javax.swing.event.MenuKeyEvent) : Void;
	
	@:overload @:public public function menuKeyPressed(e : javax.swing.event.MenuKeyEvent) : Void;
	
	@:overload @:public public function menuKeyReleased(e : javax.swing.event.MenuKeyEvent) : Void;
	
	
}
