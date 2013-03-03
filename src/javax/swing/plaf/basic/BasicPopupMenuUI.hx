package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicPopupMenuUI extends javax.swing.plaf.PopupMenuUI
{
	@:protected private var popupMenu : javax.swing.JPopupMenu;
	
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public public function installDefaults() : Void;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function installKeyboardActions() : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	@:overload @:public override public function isPopupTrigger(e : java.awt.event.MouseEvent) : Bool;
	
	
}
/**
* This Listener fires the Action that provides the correct auditory
* feedback.
*
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$basic$BasicPopupMenuUI$BasicPopupMenuListener') @:internal extern class BasicPopupMenuUI_BasicPopupMenuListener implements javax.swing.event.PopupMenuListener
{
	@:overload @:public public function popupMenuCanceled(e : javax.swing.event.PopupMenuEvent) : Void;
	
	@:overload @:public public function popupMenuWillBecomeInvisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	@:overload @:public public function popupMenuWillBecomeVisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	
}
/**
* Handles mnemonic for children JMenuItems.
* @since 1.5
*/
@:require(java5) @:native('javax$swing$plaf$basic$BasicPopupMenuUI$BasicMenuKeyListener') @:internal extern class BasicPopupMenuUI_BasicMenuKeyListener implements javax.swing.event.MenuKeyListener
{
	@:overload @:public public function menuKeyTyped(e : javax.swing.event.MenuKeyEvent) : Void;
	
	@:overload @:public public function menuKeyPressed(e : javax.swing.event.MenuKeyEvent) : Void;
	
	@:overload @:public public function menuKeyReleased(e : javax.swing.event.MenuKeyEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicPopupMenuUI$Actions') @:internal extern class BasicPopupMenuUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicPopupMenuUI$MouseGrabber') @:internal extern class BasicPopupMenuUI_MouseGrabber implements javax.swing.event.ChangeListener implements java.awt.event.AWTEventListener implements java.awt.event.ComponentListener implements java.awt.event.WindowListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function eventDispatched(ev : java.awt.AWTEvent) : Void;
	
	@:overload @:public public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowClosed(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowIconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowDeactivated(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowOpened(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowDeiconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowActivated(e : java.awt.event.WindowEvent) : Void;
	
	
}
/**
* This helper is added to MenuSelectionManager as a ChangeListener to
* listen to menu selection changes. When a menu is activated, it passes
* focus to its parent JRootPane, and installs an ActionMap/InputMap pair
* on that JRootPane. Those maps are necessary in order for menu
* navigation to work. When menu is being deactivated, it restores focus
* to the component that has had it before menu activation, and uninstalls
* the maps.
* This helper is also installed as a KeyListener on root pane when menu
* is active. It forwards key events to MenuSelectionManager for mnemonic
* keys handling.
*/
@:native('javax$swing$plaf$basic$BasicPopupMenuUI$MenuKeyboardHelper') @:internal extern class BasicPopupMenuUI_MenuKeyboardHelper implements javax.swing.event.ChangeListener implements java.awt.event.KeyListener
{
	@:overload @:public public function stateChanged(ev : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function keyPressed(ev : java.awt.event.KeyEvent) : Void;
	
	@:overload @:public public function keyReleased(ev : java.awt.event.KeyEvent) : Void;
	
	@:overload @:public public function keyTyped(ev : java.awt.event.KeyEvent) : Void;
	
	
}
