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
extern class SynthSliderUI extends javax.swing.plaf.basic.BasicSliderUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param c component to create UI object for
	* @return the UI object
	*/
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload private function new(c : javax.swing.JSlider) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function installDefaults(slider : javax.swing.JSlider) : Void;
	
	/**
	* Uninstalls default setting. This method is called when a
	* {@code LookAndFeel} is uninstalled.
	*/
	@:overload override private function uninstallDefaults(slider : javax.swing.JSlider) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function installListeners(slider : javax.swing.JSlider) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function uninstallListeners(slider : javax.swing.JSlider) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function createTrackListener(s : javax.swing.JSlider) : javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_TrackListener;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function calculateGeometry() : Void;
	
	/**
	* Lays out the slider.
	*/
	@:overload private function layout() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function calculateThumbLocation() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function setThumbLocation(x : Int, y : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function xPositionForValue(value : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function yPositionForValue(value : Int, trackY : Int, trackHeight : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function valueForYPosition(yPos : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function valueForXPosition(xPos : Int) : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function getThumbSize() : java.awt.Dimension;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function recalculateIfInsetsChanged() : Void;
	
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
	@:overload override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
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
	@:overload public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the slider thumb.
	*
	* @param context context for the component being painted
	* @param g {@code Graphics} object used for painting
	* @param thumbBounds bounding box for the thumb
	*/
	@:overload private function paintThumb(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, thumbBounds : java.awt.Rectangle) : Void;
	
	/**
	* Paints the slider track.
	*
	* @param context context for the component being painted
	* @param g {@code Graphics} object used for painting
	* @param trackBounds bounding box for the track
	*/
	@:overload private function paintTrack(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, trackBounds : java.awt.Rectangle) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Track mouse movements.
*/
@:native('javax$swing$plaf$synth$SynthSliderUI$SynthTrackListener') @:internal extern class SynthSliderUI_SynthTrackListener extends javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_TrackListener
{
	@:overload override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
