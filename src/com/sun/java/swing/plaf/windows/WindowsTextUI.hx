package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
* Windows text rendering.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*/
extern class WindowsTextUI extends javax.swing.plaf.basic.BasicTextUI
{
	/**
	* Creates the object to use for a caret.  By default an
	* instance of WindowsCaret is created.  This method
	* can be redefined to provide something else that implements
	* the InputPosition interface or a subclass of DefaultCaret.
	*
	* @return the caret object
	*/
	@:overload override private function createCaret() : javax.swing.text.Caret;
	
	
}
/* public */
@:native('com$sun$java$swing$plaf$windows$WindowsTextUI$WindowsCaret') @:internal extern class WindowsTextUI_WindowsCaret extends javax.swing.text.DefaultCaret implements javax.swing.plaf.UIResource
{
	/**
	* Gets the painter for the Highlighter.
	*
	* @return the painter
	*/
	@:overload override private function getSelectionPainter() : javax.swing.text.Highlighter.Highlighter_HighlightPainter;
	
	
}
/* public */
@:native('com$sun$java$swing$plaf$windows$WindowsTextUI$WindowsHighlightPainter') @:internal extern class WindowsTextUI_WindowsHighlightPainter extends javax.swing.text.DefaultHighlighter.DefaultHighlighter_DefaultHighlightPainter
{
	/**
	* Paints a highlight.
	*
	* @param g the graphics context
	* @param offs0 the starting model offset >= 0
	* @param offs1 the ending model offset >= offs1
	* @param bounds the bounding box for the highlight
	* @param c the editor
	*/
	@:overload override public function paint(g : java.awt.Graphics, offs0 : Int, offs1 : Int, bounds : java.awt.Shape, c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Paints a portion of a highlight.
	*
	* @param g the graphics context
	* @param offs0 the starting model offset >= 0
	* @param offs1 the ending model offset >= offs1
	* @param bounds the bounding box of the view, which is not
	*        necessarily the region to paint.
	* @param c the editor
	* @param view View painting for
	* @return region drawing occured in
	*/
	@:overload override public function paintLayer(g : java.awt.Graphics, offs0 : Int, offs1 : Int, bounds : java.awt.Shape, c : javax.swing.text.JTextComponent, view : javax.swing.text.View) : java.awt.Shape;
	
	
}
