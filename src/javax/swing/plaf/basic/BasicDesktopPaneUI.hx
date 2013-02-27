package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicDesktopPaneUI extends javax.swing.plaf.DesktopPaneUI
{
	private var desktop : javax.swing.JDesktopPane;
	
	private var desktopManager : javax.swing.DesktopManager;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of 1.3.
	*/
	private var minimizeKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of 1.3.
	*/
	private var maximizeKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of 1.3.
	*/
	private var closeKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of 1.3.
	*/
	private var navigateKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of 1.3.
	*/
	private var navigateKey2 : javax.swing.KeyStroke;
	
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new() : Void;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	/**
	* Installs the <code>PropertyChangeListener</code> returned from
	* <code>createPropertyChangeListener</code> on the
	* <code>JDesktopPane</code>.
	*
	* @since 1.5
	* @see #createPropertyChangeListener
	*/
	@:require(java5) @:overload private function installListeners() : Void;
	
	/**
	* Uninstalls the <code>PropertyChangeListener</code> returned from
	* <code>createPropertyChangeListener</code> from the
	* <code>JDesktopPane</code>.
	*
	* @since 1.5
	* @see #createPropertyChangeListener
	*/
	@:require(java5) @:overload private function uninstallListeners() : Void;
	
	@:overload private function installDesktopManager() : Void;
	
	@:overload private function uninstallDesktopManager() : Void;
	
	@:overload private function installKeyboardActions() : Void;
	
	@:overload private function registerKeyboardActions() : Void;
	
	@:overload private function unregisterKeyboardActions() : Void;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the <code>PropertyChangeListener</code> to install on
	* the <code>JDesktopPane</code>.
	*
	* @since 1.5
	* @return The PropertyChangeListener that will be added to track
	* changes in the desktop pane.
	*/
	@:require(java5) @:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	
}
@:native('javax$swing$plaf$basic$BasicDesktopPaneUI$Handler') @:internal extern class BasicDesktopPaneUI_Handler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* The default DesktopManager installed by the UI.
*/
@:native('javax$swing$plaf$basic$BasicDesktopPaneUI$BasicDesktopManager') @:internal extern class BasicDesktopPaneUI_BasicDesktopManager extends javax.swing.DefaultDesktopManager implements javax.swing.plaf.UIResource
{
	
}
@:native('javax$swing$plaf$basic$BasicDesktopPaneUI$Actions') @:internal extern class BasicDesktopPaneUI_Actions extends sun.swing.UIAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled(sender : Dynamic) : Bool;
	
	
}
/**
* Handles restoring a minimized or maximized internal frame.
* @since 1.3
*/
@:require(java3) @:native('javax$swing$plaf$basic$BasicDesktopPaneUI$OpenAction') extern class BasicDesktopPaneUI_OpenAction extends javax.swing.AbstractAction
{
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* Handles closing an internal frame.
*/
@:native('javax$swing$plaf$basic$BasicDesktopPaneUI$CloseAction') extern class BasicDesktopPaneUI_CloseAction extends javax.swing.AbstractAction
{
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* Handles minimizing an internal frame.
*/
@:native('javax$swing$plaf$basic$BasicDesktopPaneUI$MinimizeAction') extern class BasicDesktopPaneUI_MinimizeAction extends javax.swing.AbstractAction
{
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* Handles maximizing an internal frame.
*/
@:native('javax$swing$plaf$basic$BasicDesktopPaneUI$MaximizeAction') extern class BasicDesktopPaneUI_MaximizeAction extends javax.swing.AbstractAction
{
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* Handles navigating to the next internal frame.
*/
@:native('javax$swing$plaf$basic$BasicDesktopPaneUI$NavigateAction') extern class BasicDesktopPaneUI_NavigateAction extends javax.swing.AbstractAction
{
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
