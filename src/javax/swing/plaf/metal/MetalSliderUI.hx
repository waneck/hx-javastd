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
	@:protected @:final private var TICK_BUFFER(default, null) : Int;
	
	@:protected private var filledSlider : Bool;
	
	@:protected @:static private static var thumbColor : java.awt.Color;
	
	@:protected @:static private static var highlightColor : java.awt.Color;
	
	@:protected @:static private static var darkShadowColor : java.awt.Color;
	
	@:protected @:static private static var trackWidth : Int;
	
	@:protected @:static private static var tickLength : Int;
	
	/**
	* A default horizontal thumb <code>Icon</code>. This field might not be
	* used. To change the <code>Icon</code> used by this delgate directly set it
	* using the <code>Slider.horizontalThumbIcon</code> UIManager property.
	*/
	@:protected @:static private static var horizThumbIcon : javax.swing.Icon;
	
	/**
	* A default vertical thumb <code>Icon</code>. This field might not be
	* used. To change the <code>Icon</code> used by this delgate directly set it
	* using the <code>Slider.verticalThumbIcon</code> UIManager property.
	*/
	@:protected @:static private static var vertThumbIcon : javax.swing.Icon;
	
	@:protected @:final private var SLIDER_FILL(default, null) : String;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected override private function createPropertyChangeListener(slider : javax.swing.JSlider) : java.beans.PropertyChangeListener;
	
	@:overload @:public override public function paintThumb(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function paintTrack(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function paintFocus(g : java.awt.Graphics) : Void;
	
	@:overload @:protected override private function getThumbSize() : java.awt.Dimension;
	
	/**
	* Gets the height of the tick area for horizontal sliders and the width of the
	* tick area for vertical sliders.  BasicSliderUI uses the returned value to
	* determine the tick area rectangle.
	*/
	@:overload @:public override public function getTickLength() : Int;
	
	/**
	* Returns the shorter dimension of the track.
	*/
	@:overload @:protected private function getTrackWidth() : Int;
	
	/**
	* Returns the longer dimension of the slide bar.  (The slide bar is only the
	* part that runs directly under the thumb)
	*/
	@:overload @:protected private function getTrackLength() : Int;
	
	/**
	* Returns the amount that the thumb goes past the slide bar.
	*/
	@:overload @:protected private function getThumbOverhang() : Int;
	
	@:overload @:protected override private function scrollDueToClickInTrack(dir : Int) : Void;
	
	@:overload @:protected override private function paintMinorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload @:protected override private function paintMajorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload @:protected override private function paintMinorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload @:protected override private function paintMajorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalSliderUI$MetalPropertyListener') extern class MetalSliderUI_MetalPropertyListener extends javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_PropertyChangeHandler
{
	@:overload @:public override public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
