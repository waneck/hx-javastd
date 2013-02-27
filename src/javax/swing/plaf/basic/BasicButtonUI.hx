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
extern class BasicButtonUI extends javax.swing.plaf.ButtonUI
{
	/**
	* BasicButton implementation
	*
	* @author Jeff Dinkins
	*/
	private var defaultTextIconGap : Int;
	
	private var defaultTextShiftOffset : Int;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload private function getPropertyPrefix() : String;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload private function installListeners(b : javax.swing.AbstractButton) : Void;
	
	@:overload private function installKeyboardActions(b : javax.swing.AbstractButton) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function uninstallKeyboardActions(b : javax.swing.AbstractButton) : Void;
	
	@:overload private function uninstallListeners(b : javax.swing.AbstractButton) : Void;
	
	@:overload private function uninstallDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload private function createButtonListener(b : javax.swing.AbstractButton) : javax.swing.plaf.basic.BasicButtonListener;
	
	@:overload public function getDefaultTextIconGap(b : javax.swing.AbstractButton) : Int;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload private function paintIcon(g : java.awt.Graphics, c : javax.swing.JComponent, iconRect : java.awt.Rectangle) : Void;
	
	/**
	* As of Java 2 platform v 1.4 this method should not be used or overriden.
	* Use the paintText method which takes the AbstractButton argument.
	*/
	@:overload private function paintText(g : java.awt.Graphics, c : javax.swing.JComponent, textRect : java.awt.Rectangle, text : String) : Void;
	
	/**
	* Method which renders the text of the current button.
	* <p>
	* @param g Graphics context
	* @param b Current button to render
	* @param textRect Bounding rectangle to render the text.
	* @param text String to render
	* @since 1.4
	*/
	@:require(java4) @:overload private function paintText(g : java.awt.Graphics, b : javax.swing.AbstractButton, textRect : java.awt.Rectangle, text : String) : Void;
	
	@:overload private function paintFocus(g : java.awt.Graphics, b : javax.swing.AbstractButton, viewRect : java.awt.Rectangle, textRect : java.awt.Rectangle, iconRect : java.awt.Rectangle) : Void;
	
	@:overload private function paintButtonPressed(g : java.awt.Graphics, b : javax.swing.AbstractButton) : Void;
	
	@:overload private function clearTextShiftOffset() : Void;
	
	@:overload private function setTextShiftOffset() : Void;
	
	@:overload private function getTextShiftOffset() : Int;
	
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	
}