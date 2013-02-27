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
extern class WindowsToggleButtonUI extends javax.swing.plaf.basic.BasicToggleButtonUI
{
	/**
	* A Windows toggle button.
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases.  The current serialization support is appropriate
	* for short term storage or RMI between applications running the same
	* version of Swing.  A future release of Swing will provide support for
	* long term persistence.
	*
	* @author Jeff Dinkins
	*/
	private var dashedRectGapX : Int;
	
	private var dashedRectGapY : Int;
	
	private var dashedRectGapWidth : Int;
	
	private var dashedRectGapHeight : Int;
	
	private var focusColor : java.awt.Color;
	
	@:overload public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override private function installDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload override private function uninstallDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload private function getFocusColor() : java.awt.Color;
	
	@:overload override private function paintButtonPressed(g : java.awt.Graphics, b : javax.swing.AbstractButton) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Overridden method to render the text without the mnemonic
	*/
	@:overload override private function paintText(g : java.awt.Graphics, b : javax.swing.AbstractButton, textRect : java.awt.Rectangle, text : String) : Void;
	
	@:overload override private function paintFocus(g : java.awt.Graphics, b : javax.swing.AbstractButton, viewRect : java.awt.Rectangle, textRect : java.awt.Rectangle, iconRect : java.awt.Rectangle) : Void;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	
}
