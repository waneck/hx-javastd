package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MetalTabbedPaneUI extends javax.swing.plaf.basic.BasicTabbedPaneUI
{
	/**
	* The Metal subclass of BasicTabbedPaneUI.
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
	private var minTabWidth : Int;
	
	private var tabAreaBackground : java.awt.Color;
	
	private var selectColor : java.awt.Color;
	
	private var selectHighlight : java.awt.Color;
	
	@:overload public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override private function createLayoutManager() : java.awt.LayoutManager;
	
	@:overload override private function installDefaults() : Void;
	
	@:overload override private function paintTabBorder(g : java.awt.Graphics, tabPlacement : Int, tabIndex : Int, x : Int, y : Int, w : Int, h : Int, isSelected : Bool) : Void;
	
	@:overload private function paintTopTabBorder(tabIndex : Int, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, btm : Int, rght : Int, isSelected : Bool) : Void;
	
	@:overload private function shouldFillGap(currentRun : Int, tabIndex : Int, x : Int, y : Int) : Bool;
	
	@:overload private function getColorForGap(currentRun : Int, x : Int, y : Int) : java.awt.Color;
	
	@:overload private function paintLeftTabBorder(tabIndex : Int, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, btm : Int, rght : Int, isSelected : Bool) : Void;
	
	@:overload private function paintBottomTabBorder(tabIndex : Int, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, btm : Int, rght : Int, isSelected : Bool) : Void;
	
	@:overload private function paintRightTabBorder(tabIndex : Int, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, btm : Int, rght : Int, isSelected : Bool) : Void;
	
	@:overload public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload override private function paintTabBackground(g : java.awt.Graphics, tabPlacement : Int, tabIndex : Int, x : Int, y : Int, w : Int, h : Int, isSelected : Bool) : Void;
	
	/**
	* Overridden to do nothing for the Java L&F.
	*/
	@:overload override private function getTabLabelShiftX(tabPlacement : Int, tabIndex : Int, isSelected : Bool) : Int;
	
	/**
	* Overridden to do nothing for the Java L&F.
	*/
	@:overload override private function getTabLabelShiftY(tabPlacement : Int, tabIndex : Int, isSelected : Bool) : Int;
	
	/**
	* {@inheritDoc}
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override private function getBaselineOffset() : Int;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload private function paintHighlightBelowTab() : Void;
	
	@:overload override private function paintFocusIndicator(g : java.awt.Graphics, tabPlacement : Int, rects : java.NativeArray<java.awt.Rectangle>, tabIndex : Int, iconRect : java.awt.Rectangle, textRect : java.awt.Rectangle, isSelected : Bool) : Void;
	
	@:overload override private function paintContentBorderTopEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override private function paintContentBorderBottomEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override private function paintContentBorderLeftEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override private function paintContentBorderRightEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override private function calculateMaxTabHeight(tabPlacement : Int) : Int;
	
	@:overload override private function getTabRunOverlay(tabPlacement : Int) : Int;
	
	@:overload private function shouldRotateTabRuns(tabPlacement : Int, selectedRun : Int) : Bool;
	
	@:overload override private function shouldPadTabRun(tabPlacement : Int, run : Int) : Bool;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code MetalTabbedPaneUI}.
*/
@:native('javax$swing$plaf$metal$MetalTabbedPaneUI$TabbedPaneLayout') extern class MetalTabbedPaneUI_TabbedPaneLayout extends javax.swing.plaf.basic.BasicTabbedPaneUI.BasicTabbedPaneUI_TabbedPaneLayout
{
	@:overload public function new() : Void;
	
	@:overload override private function normalizeTabRuns(tabPlacement : Int, tabCount : Int, start : Int, max : Int) : Void;
	
	@:overload override private function rotateTabRuns(tabPlacement : Int, selectedRun : Int) : Void;
	
	@:overload override private function padSelectedTab(tabPlacement : Int, selectedIndex : Int) : Void;
	
	
}
