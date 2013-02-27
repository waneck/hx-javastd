package javax.swing.plaf.basic;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicRootPaneUI extends javax.swing.plaf.RootPaneUI implements java.beans.PropertyChangeListener
{
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults(c : javax.swing.JRootPane) : Void;
	
	@:overload private function installComponents(root : javax.swing.JRootPane) : Void;
	
	@:overload private function installListeners(root : javax.swing.JRootPane) : Void;
	
	@:overload private function installKeyboardActions(root : javax.swing.JRootPane) : Void;
	
	@:overload private function uninstallDefaults(root : javax.swing.JRootPane) : Void;
	
	@:overload private function uninstallComponents(root : javax.swing.JRootPane) : Void;
	
	@:overload private function uninstallListeners(root : javax.swing.JRootPane) : Void;
	
	@:overload private function uninstallKeyboardActions(root : javax.swing.JRootPane) : Void;
	
	/**
	* Invoked when a property changes on the root pane. If the event
	* indicates the <code>defaultButton</code> has changed, this will
	* reinstall the keyboard actions.
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicRootPaneUI$Actions') @:internal extern class BasicRootPaneUI_Actions extends sun.swing.UIAction
{
	public static var PRESS(default, null) : String;
	
	public static var RELEASE(default, null) : String;
	
	public static var POST_POPUP(default, null) : String;
	
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled(sender : Dynamic) : Bool;
	
	
}
@:native('javax$swing$plaf$basic$BasicRootPaneUI$RootPaneInputMap') @:internal extern class BasicRootPaneUI_RootPaneInputMap extends javax.swing.plaf.ComponentInputMapUIResource
{
	@:overload public function new(c : javax.swing.JComponent) : Void;
	
	
}
