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
* {@link javax.swing.JScrollBar}.
*
* @author Scott Violet
* @since 1.7
*/
@:require(java7) extern class SynthScrollBarUI extends javax.swing.plaf.basic.BasicScrollBarUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function installDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function configureScrollBarColors() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function installListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function uninstallListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public override public function getSupportsAbsolutePositioning() : Bool;
	
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
	* Paints the specified component.
	*
	* @param context context for the component being painted
	* @param g the {@code Graphics} object used for painting
	* @see #update(Graphics,JComponent)
	*/
	@:overload @:protected private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the scrollbar track.
	*
	* @param context context for the component being painted
	* @param g {@code Graphics} object used for painting
	* @param trackBounds bounding box for the track
	*/
	@:overload @:protected private function paintTrack(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, trackBounds : java.awt.Rectangle) : Void;
	
	/**
	* Paints the scrollbar thumb.
	*
	* @param context context for the component being painted
	* @param g {@code Graphics} object used for painting
	* @param thumbBounds bounding box for the thumb
	*/
	@:overload @:protected private function paintThumb(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, thumbBounds : java.awt.Rectangle) : Void;
	
	/**
	* A vertical scrollbar's preferred width is the maximum of
	* preferred widths of the (non <code>null</code>)
	* increment/decrement buttons,
	* and the minimum width of the thumb. The preferred height is the
	* sum of the preferred heights of the same parts.  The basis for
	* the preferred size of a horizontal scrollbar is similar.
	* <p>
	* The <code>preferredSize</code> is only computed once, subsequent
	* calls to this method just return a cached size.
	*
	* @param c the <code>JScrollBar</code> that's delegating this method to us
	* @return the preferred size of a Basic JScrollBar
	* @see #getMaximumSize
	* @see #getMinimumSize
	*/
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function getMinimumThumbSize() : java.awt.Dimension;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createDecreaseButton(orientation : Int) : javax.swing.JButton;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createIncreaseButton(orientation : Int) : javax.swing.JButton;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function setThumbRollover(active : Bool) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
