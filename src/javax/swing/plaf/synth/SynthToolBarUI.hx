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
extern class SynthToolBarUI extends javax.swing.plaf.basic.BasicToolBarUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param c component to create UI object for
	* @return the UI object
	*/
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*/
	@:overload private function installDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function installListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function uninstallListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function installComponents() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function uninstallComponents() : Void;
	
	/**
	* Creates a {@code LayoutManager} to use with the toolbar.
	*
	* @return a {@code LayoutManager} instance
	*/
	@:overload private function createLayout() : java.awt.LayoutManager;
	
	/**
	* @inheritDoc
	*/
	@:overload public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
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
	@:overload public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component according to the Look and Feel.
	* <p>This method is not used by Synth Look and Feel.
	* Painting is handled by the {@link #paint(SynthContext,Graphics)} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* This implementation does nothing, because the {@code rollover}
	* property of the {@code JToolBar} class is not used
	* in the Synth Look and Feel.
	*/
	@:overload private function setBorderToNonRollover(c : java.awt.Component) : Void;
	
	/**
	* This implementation does nothing, because the {@code rollover}
	* property of the {@code JToolBar} class is not used
	* in the Synth Look and Feel.
	*/
	@:overload private function setBorderToRollover(c : java.awt.Component) : Void;
	
	/**
	* This implementation does nothing, because the {@code rollover}
	* property of the {@code JToolBar} class is not used
	* in the Synth Look and Feel.
	*/
	@:overload private function setBorderToNormal(c : java.awt.Component) : Void;
	
	/**
	* Paints the toolbar.
	*
	* @param context context for the component being painted
	* @param g the {@code Graphics} object used for painting
	* @see #update(Graphics,JComponent)
	*/
	@:overload private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	/**
	* Paints the toolbar content.
	*
	* @param context context for the component being painted
	* @param g {@code Graphics} object used for painting
	* @param bounds bounding box for the toolbar
	*/
	@:overload private function paintContent(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, bounds : java.awt.Rectangle) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function paintDragWindow(g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$synth$SynthToolBarUI$SynthToolBarLayoutManager') @:internal extern class SynthToolBarUI_SynthToolBarLayoutManager implements java.awt.LayoutManager
{
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	
}
