package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
* MetalButtonUI implementation
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
* @author Tom Santos
*/
extern class MetalButtonUI extends javax.swing.plaf.basic.BasicButtonUI
{
	private var focusColor : java.awt.Color;
	
	private var selectColor : java.awt.Color;
	
	private var disabledTextColor : java.awt.Color;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload override public function uninstallDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload override private function createButtonListener(b : javax.swing.AbstractButton) : javax.swing.plaf.basic.BasicButtonListener;
	
	@:overload private function getSelectColor() : java.awt.Color;
	
	@:overload private function getDisabledTextColor() : java.awt.Color;
	
	@:overload private function getFocusColor() : java.awt.Color;
	
	/**
	* If necessary paints the background of the component, then
	* invokes <code>paint</code>.
	*
	* @param g Graphics to paint to
	* @param c JComponent painting on
	* @throws NullPointerException if <code>g</code> or <code>c</code> is
	*         null
	* @see javax.swing.plaf.ComponentUI#update
	* @see javax.swing.plaf.ComponentUI#paint
	* @since 1.5
	*/
	@:require(java5) @:overload override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload override private function paintButtonPressed(g : java.awt.Graphics, b : javax.swing.AbstractButton) : Void;
	
	@:overload override private function paintFocus(g : java.awt.Graphics, b : javax.swing.AbstractButton, viewRect : java.awt.Rectangle, textRect : java.awt.Rectangle, iconRect : java.awt.Rectangle) : Void;
	
	@:overload override private function paintText(g : java.awt.Graphics, c : javax.swing.JComponent, textRect : java.awt.Rectangle, text : String) : Void;
	
	
}
