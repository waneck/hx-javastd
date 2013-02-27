package com.sun.java.swing.plaf.windows;
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
extern class WindowsTextFieldUI extends javax.swing.plaf.basic.BasicTextFieldUI
{
	/**
	* Creates a UI for a JTextField.
	*
	* @param c the text field
	* @return the UI
	*/
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Paints a background for the view.  This will only be
	* called if isOpaque() on the associated component is
	* true.  The default is to paint the background color
	* of the component.
	*
	* @param g the graphics context
	*/
	@:overload override private function paintBackground(g : java.awt.Graphics) : Void;
	
	/**
	* Creates the caret for a field.
	*
	* @return the caret
	*/
	@:overload override private function createCaret() : javax.swing.text.Caret;
	
	
}
/**
* WindowsFieldCaret has different scrolling behavior than
* DefaultCaret.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsTextFieldUI$WindowsFieldCaret') @:internal extern class WindowsTextFieldUI_WindowsFieldCaret extends javax.swing.text.DefaultCaret implements javax.swing.plaf.UIResource
{
	@:overload public function new() : Void;
	
	/**
	* Adjusts the visibility of the caret according to
	* the windows feel which seems to be to move the
	* caret out into the field by about a quarter of
	* a field length if not visible.
	*/
	@:overload override private function adjustVisibility(r : java.awt.Rectangle) : Void;
	
	/**
	* Gets the painter for the Highlighter.
	*
	* @return the painter
	*/
	@:overload override private function getSelectionPainter() : javax.swing.text.Highlighter.Highlighter_HighlightPainter;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsTextFieldUI$WindowsFieldCaret$SafeScroller') @:internal extern class WindowsTextFieldUI_WindowsFieldCaret_SafeScroller implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
