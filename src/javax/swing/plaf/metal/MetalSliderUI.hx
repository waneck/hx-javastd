package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
* A Java L&F implementation of SliderUI.
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
extern class MetalSliderUI extends javax.swing.plaf.basic.BasicSliderUI
{
	private var TICK_BUFFER(default, null) : Int;
	
	private var filledSlider : Bool;
	
	private static var thumbColor : java.awt.Color;
	
	@:native('highlightColor') private static var _highlightColor : java.awt.Color;
	
	private static var darkShadowColor : java.awt.Color;
	
	private static var trackWidth : Int;
	
	private static var tickLength : Int;
	
	/**
	* A default horizontal thumb <code>Icon</code>. This field might not be
	* used. To change the <code>Icon</code> used by this delgate directly set it
	* using the <code>Slider.horizontalThumbIcon</code> UIManager property.
	*/
	private static var horizThumbIcon : javax.swing.Icon;
	
	/**
	* A default vertical thumb <code>Icon</code>. This field might not be
	* used. To change the <code>Icon</code> used by this delgate directly set it
	* using the <code>Slider.verticalThumbIcon</code> UIManager property.
	*/
	private static var vertThumbIcon : javax.swing.Icon;
	
	private var SLIDER_FILL(default, null) : String;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new() : Void;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override private function createPropertyChangeListener(slider : javax.swing.JSlider) : java.beans.PropertyChangeListener;
	
	@:overload override public function paintThumb(g : java.awt.Graphics) : Void;
	
	@:overload override public function paintTrack(g : java.awt.Graphics) : Void;
	
	@:overload override public function paintFocus(g : java.awt.Graphics) : Void;
	
	@:overload override private function getThumbSize() : java.awt.Dimension;
	
	/**
	* Gets the height of the tick area for horizontal sliders and the width of the
	* tick area for vertical sliders.  BasicSliderUI uses the returned value to
	* determine the tick area rectangle.
	*/
	@:overload override public function getTickLength() : Int;
	
	/**
	* Returns the shorter dimension of the track.
	*/
	@:overload private function getTrackWidth() : Int;
	
	/**
	* Returns the longer dimension of the slide bar.  (The slide bar is only the
	* part that runs directly under the thumb)
	*/
	@:overload private function getTrackLength() : Int;
	
	/**
	* Returns the amount that the thumb goes past the slide bar.
	*/
	@:overload private function getThumbOverhang() : Int;
	
	@:overload override private function scrollDueToClickInTrack(dir : Int) : Void;
	
	@:overload override private function paintMinorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload override private function paintMajorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload override private function paintMinorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload override private function paintMajorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalSliderUI$MetalPropertyListener') extern class MetalSliderUI_MetalPropertyListener extends javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_PropertyChangeHandler
{
	@:overload override public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}