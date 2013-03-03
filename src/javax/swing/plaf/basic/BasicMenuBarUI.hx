package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* A default L&F implementation of MenuBarUI.  This implementation
* is a "combined" view/controller.
*
* @author Georges Saab
* @author David Karlton
* @author Arnaud Weber
*/
extern class BasicMenuBarUI extends javax.swing.plaf.MenuBarUI
{
	@:protected private var menuBar : javax.swing.JMenuBar;
	
	@:protected private var containerListener : java.awt.event.ContainerListener;
	
	@:protected private var changeListener : javax.swing.event.ChangeListener;
	
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function installKeyboardActions() : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	@:overload @:protected private function createContainerListener() : java.awt.event.ContainerListener;
	
	@:overload @:protected private function createChangeListener() : javax.swing.event.ChangeListener;
	
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	
}
@:native('javax$swing$plaf$basic$BasicMenuBarUI$Handler') @:internal extern class BasicMenuBarUI_Handler implements javax.swing.event.ChangeListener implements java.awt.event.ContainerListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function componentAdded(e : java.awt.event.ContainerEvent) : Void;
	
	@:overload @:public public function componentRemoved(e : java.awt.event.ContainerEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicMenuBarUI$Actions') @:internal extern class BasicMenuBarUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
