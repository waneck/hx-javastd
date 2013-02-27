package javax.swing.plaf.metal;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Metal implementation of <code>MenuBarUI</code>. This class is responsible
* for providing the metal look and feel for <code>JMenuBar</code>s.
*
* @see javax.swing.plaf.MenuBarUI
* @since 1.5
*/
@:require(java5) extern class MetalMenuBarUI extends javax.swing.plaf.basic.BasicMenuBarUI
{
	/**
	* Creates the <code>ComponentUI</code> implementation for the passed
	* in component.
	*
	* @param x JComponent to create the ComponentUI implementation for
	* @return ComponentUI implementation for <code>x</code>
	* @throws NullPointerException if <code>x</code> is null
	*/
	@:native('createUI') @:overload public static function _createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Configures the specified component appropriate for the metal look and
	* feel.
	*
	* @param c the component where this UI delegate is being installed
	* @throws NullPointerException if <code>c</code> is null.
	*/
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Reverses configuration which was done on the specified component during
	* <code>installUI</code>.
	*
	* @param c the component where this UI delegate is being installed
	* @throws NullPointerException if <code>c</code> is null.
	*/
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
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
	
	
}
