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
/**
* Provides the Synth L&F UI delegate for
* {@link javax.swing.JViewport}.
*
* @since 1.7
*/
@:require(java7) extern class SynthViewportUI extends javax.swing.plaf.ViewportUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param c component to create UI object for
	* @return the UI object
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Installs defaults for a viewport.
	*
	* @param c a {@code JViewport} object
	*/
	@:overload @:protected private function installDefaults(c : javax.swing.JComponent) : Void;
	
	/**
	* Installs listeners into the viewport.
	*
	* @param c a {@code JViewport} object
	*/
	@:overload @:protected private function installListeners(c : javax.swing.JComponent) : Void;
	
	/**
	* Uninstalls listeners from the viewport.
	*
	* @param c a {@code JViewport} object
	*/
	@:overload @:protected private function uninstallListeners(c : javax.swing.JComponent) : Void;
	
	/**
	* Uninstalls defaults from a viewport.
	*
	* @param c a {@code JViewport} object
	*/
	@:overload @:protected private function uninstallDefaults(c : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
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
	@:overload @:public override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the border. The method is never called,
	* because the {@code JViewport} class does not support a border.
	* This implementation does nothing.
	*
	* @param context a component context
	* @param g the {@code Graphics} to paint on
	* @param x the X coordinate
	* @param y the Y coordinate
	* @param w width of the border
	* @param h height of the border
	*/
	@:overload @:public public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the specified component according to the Look and Feel.
	* <p>This method is not used by Synth Look and Feel.
	* Painting is handled by the {@link #paint(SynthContext,Graphics)} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component. This implementation does nothing.
	*
	* @param context context for the component being painted
	* @param g the {@code Graphics} object used for painting
	* @see #update(Graphics,JComponent)
	*/
	@:overload @:protected private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
