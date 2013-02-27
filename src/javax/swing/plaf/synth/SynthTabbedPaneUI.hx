package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SynthTabbedPaneUI extends javax.swing.plaf.basic.BasicTabbedPaneUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param c component to create UI object for
	* @return the UI object
	*/
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function installDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function installListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function uninstallListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function createScrollButton(direction : Int) : javax.swing.JButton;
	
	/**
	* @inheritDoc
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* @inheritDoc
	*
	* Overridden to keep track of whether the selected tab is also pressed.
	*/
	@:overload override private function createMouseListener() : java.awt.event.MouseListener;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function getTabLabelShiftX(tabPlacement : Int, tabIndex : Int, isSelected : Bool) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function getTabLabelShiftY(tabPlacement : Int, tabIndex : Int, isSelected : Bool) : Int;
	
	/**
	* Notifies this UI delegate to repaint the specified component.
	* This method paints the component background, then calls
	* the {@link #paint(SynthContext,Graphics)} method.
	*
	* <p>In general, this method does not need to be overridden by subclasses.
	* All Look and Feel rendering code should reside in the {@code paint} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function getBaseline(tab : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the specified component according to the Look and Feel.
	* <p>This method is not used by Synth Look and Feel.
	* Painting is handled by the {@link #paint(SynthContext,Graphics)} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component.
	*
	* @param context context for the component being painted
	* @param g the {@code Graphics} object used for painting
	* @see #update(Graphics,JComponent)
	*/
	@:overload private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	@:overload override private function paintTabArea(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function setRolloverTab(index : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function calculateMaxTabHeight(tabPlacement : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function calculateTabWidth(tabPlacement : Int, tabIndex : Int, metrics : java.awt.FontMetrics) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function calculateMaxTabWidth(tabPlacement : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function getTabInsets(tabPlacement : Int, tabIndex : Int) : java.awt.Insets;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function getFontMetrics() : java.awt.FontMetrics;
	
	/**
	* @inheritDoc
	*
	* Overridden to create a TabbedPaneLayout subclass which takes into
	* account tabOverlap.
	*/
	@:overload override private function createLayoutManager() : java.awt.LayoutManager;
	
	
}
@:native('javax$swing$plaf$synth$SynthTabbedPaneUI$SynthScrollableTabButton') @:internal extern class SynthTabbedPaneUI_SynthScrollableTabButton extends javax.swing.plaf.synth.SynthArrowButton implements javax.swing.plaf.UIResource
{
	@:overload public function new(direction : Int) : Void;
	
	
}
