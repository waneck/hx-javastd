package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifTabbedPaneUI extends javax.swing.plaf.basic.BasicTabbedPaneUI
{
	/**
	* A Motif L&F implementation of TabbedPaneUI.
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases.  The current serialization support is appropriate
	* for short term storage or RMI between applications running the same
	* version of Swing.  A future release of Swing will provide support for
	* long term persistence.
	*
	* @author Amy Fowler
	* @author Philip Milne
	*/
	private var unselectedTabBackground : java.awt.Color;
	
	private var unselectedTabForeground : java.awt.Color;
	
	private var unselectedTabShadow : java.awt.Color;
	
	private var unselectedTabHighlight : java.awt.Color;
	
	@:native('createUI') @:overload public static function _createUI(tabbedPane : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override private function installDefaults() : Void;
	
	@:overload override private function uninstallDefaults() : Void;
	
	@:overload override private function paintContentBorderTopEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override private function paintContentBorderBottomEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override private function paintContentBorderRightEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override private function paintTabBackground(g : java.awt.Graphics, tabPlacement : Int, tabIndex : Int, x : Int, y : Int, w : Int, h : Int, isSelected : Bool) : Void;
	
	@:overload override private function paintTabBorder(g : java.awt.Graphics, tabPlacement : Int, tabIndex : Int, x : Int, y : Int, w : Int, h : Int, isSelected : Bool) : Void;
	
	@:overload override private function paintFocusIndicator(g : java.awt.Graphics, tabPlacement : Int, rects : java.NativeArray<java.awt.Rectangle>, tabIndex : Int, iconRect : java.awt.Rectangle, textRect : java.awt.Rectangle, isSelected : Bool) : Void;
	
	@:overload override private function getTabRunIndent(tabPlacement : Int, run : Int) : Int;
	
	@:overload override private function getTabRunOverlay(tabPlacement : Int) : Int;
	
	
}
