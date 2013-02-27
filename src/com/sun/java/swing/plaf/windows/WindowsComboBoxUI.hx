package com.sun.java.swing.plaf.windows;
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
extern class WindowsComboBoxUI extends javax.swing.plaf.basic.BasicComboBoxUI
{
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function installListeners() : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function uninstallListeners() : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function configureEditor() : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function unconfigureEditor() : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* If necessary paints the currently selected item.
	*
	* @param g Graphics to paint to
	* @param bounds Region to paint current value to
	* @param hasFocus whether or not the JComboBox has focus
	* @throws NullPointerException if any of the arguments are null.
	* @since 1.5
	*/
	@:require(java5) @:overload override public function paintCurrentValue(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function paintCurrentValueBackground(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Creates a layout manager for managing the components which make up the
	* combo box.
	*
	* @return an instance of a layout manager
	*/
	@:overload override private function createLayoutManager() : java.awt.LayoutManager;
	
	@:overload override private function installKeyboardActions() : Void;
	
	@:overload override private function createPopup() : javax.swing.plaf.basic.ComboPopup;
	
	/**
	* Creates the default editor that will be used in editable combo boxes.
	* A default editor will be used only if an editor has not been
	* explicitly set with <code>setEditor</code>.
	*
	* @return a <code>ComboBoxEditor</code> used for the combo box
	* @see javax.swing.JComboBox#setEditor
	*/
	@:overload override private function createEditor() : javax.swing.ComboBoxEditor;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function createRenderer() : javax.swing.ListCellRenderer<Dynamic>;
	
	/**
	* Creates an button which will be used as the control to show or hide
	* the popup portion of the combo box.
	*
	* @return a button which represents the popup control
	*/
	@:overload override private function createArrowButton() : javax.swing.JButton;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsComboBoxUI$XPComboBoxButton') @:internal extern class WindowsComboBoxUI_XPComboBoxButton extends com.sun.java.swing.plaf.windows.XPStyle.XPStyle_GlyphButton
{
	@:overload public function new() : Void;
	
	@:overload override private function getState() : State;
	
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	
}
/**
* Subclassed to add Windows specific Key Bindings.
* This class is now obsolete and doesn't do anything.
* Only included for backwards API compatibility.
* Do not call or override.
*
* @deprecated As of Java 2 platform v1.4.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsComboBoxUI$WindowsComboPopup') extern class WindowsComboBoxUI_WindowsComboPopup extends javax.swing.plaf.basic.BasicComboPopup
{
	@:overload public function new(cBox : javax.swing.JComboBox<Dynamic>) : Void;
	
	@:overload override private function createKeyListener() : java.awt.event.KeyListener;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsComboBoxUI$WindowsComboPopup$InvocationKeyHandler') extern class WindowsComboBoxUI_WindowsComboPopup_InvocationKeyHandler extends javax.swing.plaf.basic.BasicComboPopup.BasicComboPopup_InvocationKeyHandler
{
	@:overload private function new() : Void;
	
	
}
/**
* Subclassed to highlight selected item in an editable combo box.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsComboBoxUI$WindowsComboBoxEditor') extern class WindowsComboBoxUI_WindowsComboBoxEditor extends javax.swing.plaf.basic.BasicComboBoxEditor.BasicComboBoxEditor_UIResource
{
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function createEditorComponent() : javax.swing.JTextField;
	
	@:overload override public function setItem(item : Dynamic) : Void;
	
	
}
/**
* Subclassed to set opacity {@code false} on the renderer
* and to show border for focused cells.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsComboBoxUI$WindowsComboBoxRenderer') @:internal extern class WindowsComboBoxUI_WindowsComboBoxRenderer extends javax.swing.plaf.basic.BasicComboBoxRenderer.BasicComboBoxRenderer_UIResource
{
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
