package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicSliderUI extends javax.swing.plaf.SliderUI
{
	@:public @:static @:final public static var POSITIVE_SCROLL(default, null) : Int;
	
	@:public @:static @:final public static var NEGATIVE_SCROLL(default, null) : Int;
	
	@:public @:static @:final public static var MIN_SCROLL(default, null) : Int;
	
	@:public @:static @:final public static var MAX_SCROLL(default, null) : Int;
	
	@:protected private var scrollTimer : javax.swing.Timer;
	
	@:protected private var slider : javax.swing.JSlider;
	
	@:protected private var focusInsets : java.awt.Insets;
	
	@:protected private var insetCache : java.awt.Insets;
	
	@:protected private var leftToRightCache : Bool;
	
	@:protected private var focusRect : java.awt.Rectangle;
	
	@:protected private var contentRect : java.awt.Rectangle;
	
	@:protected private var labelRect : java.awt.Rectangle;
	
	@:protected private var tickRect : java.awt.Rectangle;
	
	@:protected private var trackRect : java.awt.Rectangle;
	
	@:protected private var thumbRect : java.awt.Rectangle;
	
	@:protected private var trackBuffer : Int;
	
	@:protected private var trackListener : javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_TrackListener;
	
	@:protected private var changeListener : javax.swing.event.ChangeListener;
	
	@:protected private var componentListener : java.awt.event.ComponentListener;
	
	@:protected private var focusListener : java.awt.event.FocusListener;
	
	@:protected private var scrollListener : javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_ScrollListener;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:overload @:protected private function getShadowColor() : java.awt.Color;
	
	@:overload @:protected private function getHighlightColor() : java.awt.Color;
	
	@:overload @:protected private function getFocusColor() : java.awt.Color;
	
	/**
	* Returns true if the user is dragging the slider.
	*
	* @return true if the user is dragging the slider
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function isDragging() : Bool;
	
	@:overload @:public @:static public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public public function new(b : javax.swing.JSlider) : Void;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installDefaults(slider : javax.swing.JSlider) : Void;
	
	@:overload @:protected private function uninstallDefaults(slider : javax.swing.JSlider) : Void;
	
	@:overload @:protected private function createTrackListener(slider : javax.swing.JSlider) : javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_TrackListener;
	
	@:overload @:protected private function createChangeListener(slider : javax.swing.JSlider) : javax.swing.event.ChangeListener;
	
	@:overload @:protected private function createComponentListener(slider : javax.swing.JSlider) : java.awt.event.ComponentListener;
	
	@:overload @:protected private function createFocusListener(slider : javax.swing.JSlider) : java.awt.event.FocusListener;
	
	@:overload @:protected private function createScrollListener(slider : javax.swing.JSlider) : javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_ScrollListener;
	
	@:overload @:protected private function createPropertyChangeListener(slider : javax.swing.JSlider) : java.beans.PropertyChangeListener;
	
	@:overload @:protected private function installListeners(slider : javax.swing.JSlider) : Void;
	
	@:overload @:protected private function uninstallListeners(slider : javax.swing.JSlider) : Void;
	
	@:overload @:protected private function installKeyboardActions(slider : javax.swing.JSlider) : Void;
	
	@:overload @:protected private function uninstallKeyboardActions(slider : javax.swing.JSlider) : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	/**
	* Returns true if all the labels from the label table have the same
	* baseline.
	*
	* @return true if all the labels from the label table have the
	*         same baseline
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function labelsHaveSameBaselines() : Bool;
	
	@:overload @:public public function getPreferredHorizontalSize() : java.awt.Dimension;
	
	@:overload @:public public function getPreferredVerticalSize() : java.awt.Dimension;
	
	@:overload @:public public function getMinimumHorizontalSize() : java.awt.Dimension;
	
	@:overload @:public public function getMinimumVerticalSize() : java.awt.Dimension;
	
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:protected private function calculateGeometry() : Void;
	
	@:overload @:protected private function calculateFocusRect() : Void;
	
	@:overload @:protected private function calculateThumbSize() : Void;
	
	@:overload @:protected private function calculateContentRect() : Void;
	
	@:overload @:protected private function calculateThumbLocation() : Void;
	
	@:overload @:protected private function calculateTrackBuffer() : Void;
	
	@:overload @:protected private function calculateTrackRect() : Void;
	
	/**
	* Gets the height of the tick area for horizontal sliders and the width of the
	* tick area for vertical sliders.  BasicSliderUI uses the returned value to
	* determine the tick area rectangle.  If you want to give your ticks some room,
	* make this larger than you need and paint your ticks away from the sides in paintTicks().
	*/
	@:overload @:protected private function getTickLength() : Int;
	
	@:overload @:protected private function calculateTickRect() : Void;
	
	@:overload @:protected private function calculateLabelRect() : Void;
	
	@:overload @:protected private function getThumbSize() : java.awt.Dimension;
	
	@:overload @:protected private function getWidthOfWidestLabel() : Int;
	
	@:overload @:protected private function getHeightOfTallestLabel() : Int;
	
	@:overload @:protected private function getWidthOfHighValueLabel() : Int;
	
	@:overload @:protected private function getWidthOfLowValueLabel() : Int;
	
	@:overload @:protected private function getHeightOfHighValueLabel() : Int;
	
	@:overload @:protected private function getHeightOfLowValueLabel() : Int;
	
	@:overload @:protected private function drawInverted() : Bool;
	
	/**
	* Returns the biggest value that has an entry in the label table.
	*
	* @return biggest value that has an entry in the label table, or
	*         null.
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function getHighestValue() : Null<Int>;
	
	/**
	* Returns the smallest value that has an entry in the label table.
	*
	* @return smallest value that has an entry in the label table, or
	*         null.
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function getLowestValue() : Null<Int>;
	
	/**
	* Returns the label that corresponds to the highest slider value in the label table.
	* @see JSlider#setLabelTable
	*/
	@:overload @:protected private function getLowestValueLabel() : java.awt.Component;
	
	/**
	* Returns the label that corresponds to the lowest slider value in the label table.
	* @see JSlider#setLabelTable
	*/
	@:overload @:protected private function getHighestValueLabel() : java.awt.Component;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function recalculateIfInsetsChanged() : Void;
	
	@:overload @:protected private function recalculateIfOrientationChanged() : Void;
	
	@:overload @:public public function paintFocus(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function paintTrack(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function paintTicks(g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function paintMinorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload @:protected private function paintMajorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload @:protected private function paintMinorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload @:protected private function paintMajorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload @:public public function paintLabels(g : java.awt.Graphics) : Void;
	
	/**
	* Called for every label in the label table.  Used to draw the labels for horizontal sliders.
	* The graphics have been translated to labelRect.y already.
	* @see JSlider#setLabelTable
	*/
	@:overload @:protected private function paintHorizontalLabel(g : java.awt.Graphics, value : Int, label : java.awt.Component) : Void;
	
	/**
	* Called for every label in the label table.  Used to draw the labels for vertical sliders.
	* The graphics have been translated to labelRect.x already.
	* @see JSlider#setLabelTable
	*/
	@:overload @:protected private function paintVerticalLabel(g : java.awt.Graphics, value : Int, label : java.awt.Component) : Void;
	
	@:overload @:public public function paintThumb(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function setThumbLocation(x : Int, y : Int) : Void;
	
	@:overload @:public public function scrollByBlock(direction : Int) : Void;
	
	@:overload @:public public function scrollByUnit(direction : Int) : Void;
	
	/**
	* This function is called when a mousePressed was detected in the track, not
	* in the thumb.  The default behavior is to scroll by block.  You can
	*  override this method to stop it from scrolling or to add additional behavior.
	*/
	@:overload @:protected private function scrollDueToClickInTrack(dir : Int) : Void;
	
	@:overload @:protected private function xPositionForValue(value : Int) : Int;
	
	@:overload @:protected private function yPositionForValue(value : Int) : Int;
	
	/**
	* Returns the y location for the specified value.  No checking is
	* done on the arguments.  In particular if <code>trackHeight</code> is
	* negative undefined results may occur.
	*
	* @param value the slider value to get the location for
	* @param trackY y-origin of the track
	* @param trackHeight the height of the track
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function yPositionForValue(value : Int, trackY : Int, trackHeight : Int) : Int;
	
	/**
	* Returns the value at the y position. If {@code yPos} is beyond the
	* track at the the bottom or the top, this method sets the value to either
	* the minimum or maximum value of the slider, depending on if the slider
	* is inverted or not.
	*/
	@:overload @:public public function valueForYPosition(yPos : Int) : Int;
	
	/**
	* Returns the value at the x position.  If {@code xPos} is beyond the
	* track at the left or the right, this method sets the value to either the
	* minimum or maximum value of the slider, depending on if the slider is
	* inverted or not.
	*/
	@:overload @:public public function valueForXPosition(xPos : Int) : Int;
	
	
}
@:native('javax$swing$plaf$basic$BasicSliderUI$PropertyChangeHandler') extern class BasicSliderUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicSliderUI$Handler') @:internal extern class BasicSliderUI_Handler implements javax.swing.event.ChangeListener implements java.awt.event.ComponentListener implements java.awt.event.FocusListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Data model listener.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$ChangeHandler') extern class BasicSliderUI_ChangeHandler implements javax.swing.event.ChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* Track mouse movements.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$TrackListener') extern class BasicSliderUI_TrackListener extends javax.swing.event.MouseInputAdapter
{
	@:protected @:transient private var offset : Int;
	
	@:protected @:transient private var currentMouseX : Int;
	
	@:protected @:transient private var currentMouseY : Int;
	
	@:overload @:public override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* If the mouse is pressed above the "thumb" component
	* then reduce the scrollbars value by one page ("page up"),
	* otherwise increase it by one page.  If there is no
	* thumb then page up if the mouse is in the upper half
	* of the track.
	*/
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function shouldScroll(direction : Int) : Bool;
	
	/**
	* Set the models value to the position of the top/left
	* of the thumb relative to the origin of the track.
	*/
	@:overload @:public override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Scroll-event listener.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$ScrollListener') extern class BasicSliderUI_ScrollListener implements java.awt.event.ActionListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(dir : Int, block : Bool) : Void;
	
	@:overload @:public public function setDirection(direction : Int) : Void;
	
	@:overload @:public public function setScrollByBlock(block : Bool) : Void;
	
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Listener for resizing events.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$ComponentHandler') extern class BasicSliderUI_ComponentHandler extends java.awt.event.ComponentAdapter
{
	@:overload @:public override public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	
}
/**
* Focus-change listener.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$FocusHandler') extern class BasicSliderUI_FocusHandler implements java.awt.event.FocusListener
{
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
/**
* As of Java 2 platform v1.3 this undocumented class is no longer used.
* The recommended approach to creating bindings is to use a
* combination of an <code>ActionMap</code>, to contain the action,
* and an <code>InputMap</code> to contain the mapping from KeyStroke
* to action description. The InputMap is is usually described in the
* LookAndFeel tables.
* <p>
* Please refer to the key bindings specification for further details.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$ActionScroller') extern class BasicSliderUI_ActionScroller extends javax.swing.AbstractAction
{
	@:overload @:public public function new(slider : javax.swing.JSlider, dir : Int, block : Bool) : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public override public function isEnabled() : Bool;
	
	
}
/**
* A static version of the above.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$SharedActionScroller') @:internal extern class BasicSliderUI_SharedActionScroller extends javax.swing.AbstractAction
{
	@:overload @:public public function new(dir : Int, block : Bool) : Void;
	
	@:overload @:public override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicSliderUI$Actions') @:internal extern class BasicSliderUI_Actions extends sun.swing.UIAction
{
	@:public @:static @:final public static var POSITIVE_UNIT_INCREMENT(default, null) : String;
	
	@:public @:static @:final public static var POSITIVE_BLOCK_INCREMENT(default, null) : String;
	
	@:public @:static @:final public static var NEGATIVE_UNIT_INCREMENT(default, null) : String;
	
	@:public @:static @:final public static var NEGATIVE_BLOCK_INCREMENT(default, null) : String;
	
	@:public @:static @:final public static var MIN_SCROLL_INCREMENT(default, null) : String;
	
	@:public @:static @:final public static var MAX_SCROLL_INCREMENT(default, null) : String;
	
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
