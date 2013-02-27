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
	public static var POSITIVE_SCROLL(default, null) : Int;
	
	public static var NEGATIVE_SCROLL(default, null) : Int;
	
	public static var MIN_SCROLL(default, null) : Int;
	
	public static var MAX_SCROLL(default, null) : Int;
	
	private var scrollTimer : javax.swing.Timer;
	
	private var slider : javax.swing.JSlider;
	
	private var focusInsets : java.awt.Insets;
	
	private var insetCache : java.awt.Insets;
	
	private var leftToRightCache : Bool;
	
	private var focusRect : java.awt.Rectangle;
	
	private var contentRect : java.awt.Rectangle;
	
	private var labelRect : java.awt.Rectangle;
	
	private var tickRect : java.awt.Rectangle;
	
	private var trackRect : java.awt.Rectangle;
	
	private var thumbRect : java.awt.Rectangle;
	
	private var trackBuffer : Int;
	
	private var trackListener : BasicSliderUI_TrackListener;
	
	private var changeListener : javax.swing.event.ChangeListener;
	
	private var componentListener : java.awt.event.ComponentListener;
	
	private var focusListener : java.awt.event.FocusListener;
	
	private var scrollListener : BasicSliderUI_ScrollListener;
	
	private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:overload private function getShadowColor() : java.awt.Color;
	
	@:overload private function getHighlightColor() : java.awt.Color;
	
	@:overload private function getFocusColor() : java.awt.Color;
	
	/**
	* Returns true if the user is dragging the slider.
	*
	* @return true if the user is dragging the slider
	* @since 1.5
	*/
	@:require(java5) @:overload private function isDragging() : Bool;
	
	@:overload public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new(b : javax.swing.JSlider) : Void;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults(slider : javax.swing.JSlider) : Void;
	
	@:overload private function uninstallDefaults(slider : javax.swing.JSlider) : Void;
	
	@:overload private function createTrackListener(slider : javax.swing.JSlider) : BasicSliderUI_TrackListener;
	
	@:overload private function createChangeListener(slider : javax.swing.JSlider) : javax.swing.event.ChangeListener;
	
	@:overload private function createComponentListener(slider : javax.swing.JSlider) : java.awt.event.ComponentListener;
	
	@:overload private function createFocusListener(slider : javax.swing.JSlider) : java.awt.event.FocusListener;
	
	@:overload private function createScrollListener(slider : javax.swing.JSlider) : BasicSliderUI_ScrollListener;
	
	@:overload private function createPropertyChangeListener(slider : javax.swing.JSlider) : java.beans.PropertyChangeListener;
	
	@:overload private function installListeners(slider : javax.swing.JSlider) : Void;
	
	@:overload private function uninstallListeners(slider : javax.swing.JSlider) : Void;
	
	@:overload private function installKeyboardActions(slider : javax.swing.JSlider) : Void;
	
	@:overload private function uninstallKeyboardActions(slider : javax.swing.JSlider) : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	/**
	* Returns true if all the labels from the label table have the same
	* baseline.
	*
	* @return true if all the labels from the label table have the
	*         same baseline
	* @since 1.6
	*/
	@:require(java6) @:overload private function labelsHaveSameBaselines() : Bool;
	
	@:overload public function getPreferredHorizontalSize() : java.awt.Dimension;
	
	@:overload public function getPreferredVerticalSize() : java.awt.Dimension;
	
	@:overload public function getMinimumHorizontalSize() : java.awt.Dimension;
	
	@:overload public function getMinimumVerticalSize() : java.awt.Dimension;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload private function calculateGeometry() : Void;
	
	@:overload private function calculateFocusRect() : Void;
	
	@:overload private function calculateThumbSize() : Void;
	
	@:overload private function calculateContentRect() : Void;
	
	@:overload private function calculateThumbLocation() : Void;
	
	@:overload private function calculateTrackBuffer() : Void;
	
	@:overload private function calculateTrackRect() : Void;
	
	/**
	* Gets the height of the tick area for horizontal sliders and the width of the
	* tick area for vertical sliders.  BasicSliderUI uses the returned value to
	* determine the tick area rectangle.  If you want to give your ticks some room,
	* make this larger than you need and paint your ticks away from the sides in paintTicks().
	*/
	@:overload private function getTickLength() : Int;
	
	@:overload private function calculateTickRect() : Void;
	
	@:overload private function calculateLabelRect() : Void;
	
	@:overload private function getThumbSize() : java.awt.Dimension;
	
	@:overload private function getWidthOfWidestLabel() : Int;
	
	@:overload private function getHeightOfTallestLabel() : Int;
	
	@:overload private function getWidthOfHighValueLabel() : Int;
	
	@:overload private function getWidthOfLowValueLabel() : Int;
	
	@:overload private function getHeightOfHighValueLabel() : Int;
	
	@:overload private function getHeightOfLowValueLabel() : Int;
	
	@:overload private function drawInverted() : Bool;
	
	/**
	* Returns the biggest value that has an entry in the label table.
	*
	* @return biggest value that has an entry in the label table, or
	*         null.
	* @since 1.6
	*/
	@:require(java6) @:overload private function getHighestValue() : Null<Int>;
	
	/**
	* Returns the smallest value that has an entry in the label table.
	*
	* @return smallest value that has an entry in the label table, or
	*         null.
	* @since 1.6
	*/
	@:require(java6) @:overload private function getLowestValue() : Null<Int>;
	
	/**
	* Returns the label that corresponds to the highest slider value in the label table.
	* @see JSlider#setLabelTable
	*/
	@:overload private function getLowestValueLabel() : java.awt.Component;
	
	/**
	* Returns the label that corresponds to the lowest slider value in the label table.
	* @see JSlider#setLabelTable
	*/
	@:overload private function getHighestValueLabel() : java.awt.Component;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload private function recalculateIfInsetsChanged() : Void;
	
	@:overload private function recalculateIfOrientationChanged() : Void;
	
	@:overload public function paintFocus(g : java.awt.Graphics) : Void;
	
	@:overload public function paintTrack(g : java.awt.Graphics) : Void;
	
	@:overload public function paintTicks(g : java.awt.Graphics) : Void;
	
	@:overload private function paintMinorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload private function paintMajorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload private function paintMinorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload private function paintMajorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload public function paintLabels(g : java.awt.Graphics) : Void;
	
	/**
	* Called for every label in the label table.  Used to draw the labels for horizontal sliders.
	* The graphics have been translated to labelRect.y already.
	* @see JSlider#setLabelTable
	*/
	@:overload private function paintHorizontalLabel(g : java.awt.Graphics, value : Int, label : java.awt.Component) : Void;
	
	/**
	* Called for every label in the label table.  Used to draw the labels for vertical sliders.
	* The graphics have been translated to labelRect.x already.
	* @see JSlider#setLabelTable
	*/
	@:overload private function paintVerticalLabel(g : java.awt.Graphics, value : Int, label : java.awt.Component) : Void;
	
	@:overload public function paintThumb(g : java.awt.Graphics) : Void;
	
	@:overload public function setThumbLocation(x : Int, y : Int) : Void;
	
	@:overload public function scrollByBlock(direction : Int) : Void;
	
	@:overload public function scrollByUnit(direction : Int) : Void;
	
	/**
	* This function is called when a mousePressed was detected in the track, not
	* in the thumb.  The default behavior is to scroll by block.  You can
	*  override this method to stop it from scrolling or to add additional behavior.
	*/
	@:overload private function scrollDueToClickInTrack(dir : Int) : Void;
	
	@:overload private function xPositionForValue(value : Int) : Int;
	
	@:overload private function yPositionForValue(value : Int) : Int;
	
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
	@:require(java6) @:overload private function yPositionForValue(value : Int, trackY : Int, trackHeight : Int) : Int;
	
	/**
	* Returns the value at the y position. If {@code yPos} is beyond the
	* track at the the bottom or the top, this method sets the value to either
	* the minimum or maximum value of the slider, depending on if the slider
	* is inverted or not.
	*/
	@:overload public function valueForYPosition(yPos : Int) : Int;
	
	/**
	* Returns the value at the x position.  If {@code xPos} is beyond the
	* track at the left or the right, this method sets the value to either the
	* minimum or maximum value of the slider, depending on if the slider is
	* inverted or not.
	*/
	@:overload public function valueForXPosition(xPos : Int) : Int;
	
	
}
@:native('javax$swing$plaf$basic$BasicSliderUI$PropertyChangeHandler') extern class BasicSliderUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicSliderUI$Handler') @:internal extern class BasicSliderUI_Handler implements javax.swing.event.ChangeListener implements java.awt.event.ComponentListener implements java.awt.event.FocusListener implements java.beans.PropertyChangeListener
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Data model listener.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$ChangeHandler') extern class BasicSliderUI_ChangeHandler implements javax.swing.event.ChangeListener
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* Track mouse movements.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$TrackListener') extern class BasicSliderUI_TrackListener extends javax.swing.event.MouseInputAdapter
{
	@:transient private var offset : Int;
	
	@:transient private var currentMouseX : Int;
	
	@:overload override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* If the mouse is pressed above the "thumb" component
	* then reduce the scrollbars value by one page ("page up"),
	* otherwise increase it by one page.  If there is no
	* thumb then page up if the mouse is in the upper half
	* of the track.
	*/
	@:overload override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function shouldScroll(direction : Int) : Bool;
	
	/**
	* Set the models value to the position of the top/left
	* of the thumb relative to the origin of the track.
	*/
	@:overload override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Scroll-event listener.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$ScrollListener') extern class BasicSliderUI_ScrollListener implements java.awt.event.ActionListener
{
	@:overload public function new() : Void;
	
	@:overload public function new(dir : Int, block : Bool) : Void;
	
	@:overload public function setDirection(direction : Int) : Void;
	
	@:overload public function setScrollByBlock(block : Bool) : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Listener for resizing events.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$ComponentHandler') extern class BasicSliderUI_ComponentHandler extends java.awt.event.ComponentAdapter
{
	@:overload override public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	
}
/**
* Focus-change listener.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <Foo>.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$FocusHandler') extern class BasicSliderUI_FocusHandler implements java.awt.event.FocusListener
{
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
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
	@:overload public function new(slider : javax.swing.JSlider, dir : Int, block : Bool) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* A static version of the above.
*/
@:native('javax$swing$plaf$basic$BasicSliderUI$SharedActionScroller') @:internal extern class BasicSliderUI_SharedActionScroller extends javax.swing.AbstractAction
{
	@:overload public function new(dir : Int, block : Bool) : Void;
	
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicSliderUI$Actions') @:internal extern class BasicSliderUI_Actions extends sun.swing.UIAction
{
	public static var POSITIVE_UNIT_INCREMENT(default, null) : String;
	
	public static var POSITIVE_BLOCK_INCREMENT(default, null) : String;
	
	public static var NEGATIVE_UNIT_INCREMENT(default, null) : String;
	
	public static var NEGATIVE_BLOCK_INCREMENT(default, null) : String;
	
	public static var MIN_SCROLL_INCREMENT(default, null) : String;
	
	public static var MAX_SCROLL_INCREMENT(default, null) : String;
	
	@:overload public function new(name : String) : Void;
	
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
