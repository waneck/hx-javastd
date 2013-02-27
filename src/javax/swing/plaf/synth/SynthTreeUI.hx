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
extern class SynthTreeUI extends javax.swing.plaf.basic.BasicTreeUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param x component to create UI object for
	* @return the UI object
	*/
	@:overload public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function getExpandedIcon() : javax.swing.Icon;
	
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
	@:overload public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function createDefaultCellEditor() : javax.swing.tree.TreeCellEditor;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function createDefaultCellRenderer() : javax.swing.tree.TreeCellRenderer;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function uninstallListeners() : Void;
	
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
	
	/**
	* @inheritDoc
	*/
	@:overload override private function paintHorizontalPartOfLeg(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, bounds : java.awt.Rectangle, path : javax.swing.tree.TreePath, row : Int, isExpanded : Bool, hasBeenExpanded : Bool, isLeaf : Bool) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function paintHorizontalLine(g : java.awt.Graphics, c : javax.swing.JComponent, y : Int, left : Int, right : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function paintVerticalPartOfLeg(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, path : javax.swing.tree.TreePath) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function paintVerticalLine(g : java.awt.Graphics, c : javax.swing.JComponent, x : Int, top : Int, bottom : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function paintExpandControl(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, bounds : java.awt.Rectangle, path : javax.swing.tree.TreePath, row : Int, isExpanded : Bool, hasBeenExpanded : Bool, isLeaf : Bool) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function drawCentered(c : java.awt.Component, graphics : java.awt.Graphics, icon : javax.swing.Icon, x : Int, y : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function propertyChange(event : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function paintDropLine(g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function getRowX(row : Int, depth : Int) : Int;
	
	
}
@:native('javax$swing$plaf$synth$SynthTreeUI$SynthTreeCellRenderer') @:internal extern class SynthTreeUI_SynthTreeCellRenderer extends javax.swing.tree.DefaultTreeCellRenderer implements javax.swing.plaf.UIResource
{
	@:overload override public function getName() : String;
	
	@:overload override public function getTreeCellRendererComponent(tree : javax.swing.JTree, value : Dynamic, sel : Bool, expanded : Bool, leaf : Bool, row : Int, hasFocus : Bool) : java.awt.Component;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:native('javax$swing$plaf$synth$SynthTreeUI$SynthTreeCellEditor') @:internal extern class SynthTreeUI_SynthTreeCellEditor extends javax.swing.tree.DefaultTreeCellEditor
{
	@:overload public function new(tree : javax.swing.JTree, renderer : javax.swing.tree.DefaultTreeCellRenderer) : Void;
	
	@:overload override private function createTreeCellEditor() : javax.swing.tree.TreeCellEditor;
	
	
}
@:native('javax$swing$plaf$synth$SynthTreeUI$ExpandedIconWrapper') @:internal extern class SynthTreeUI_ExpandedIconWrapper extends sun.swing.plaf.synth.SynthIcon
{
	@:overload override public function paintIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getIconWidth(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	@:overload override public function getIconHeight(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	
}
