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
/**
* Implementation of ScrollBarUI for the Basic Look and Feel
*
* @author Rich Schiavi
* @author David Kloba
* @author Hans Muller
*/
extern class BasicScrollBarUI extends javax.swing.plaf.ScrollBarUI implements java.awt.LayoutManager implements javax.swing.SwingConstants
{
	private var minimumThumbSize : java.awt.Dimension;
	
	private var maximumThumbSize : java.awt.Dimension;
	
	private var thumbHighlightColor : java.awt.Color;
	
	private var thumbLightShadowColor : java.awt.Color;
	
	private var thumbDarkShadowColor : java.awt.Color;
	
	private var thumbColor : java.awt.Color;
	
	private var trackColor : java.awt.Color;
	
	private var trackHighlightColor : java.awt.Color;
	
	private var scrollbar : javax.swing.JScrollBar;
	
	private var incrButton : javax.swing.JButton;
	
	private var decrButton : javax.swing.JButton;
	
	private var isDragging : Bool;
	
	private var trackListener : BasicScrollBarUI_TrackListener;
	
	private var buttonListener : BasicScrollBarUI_ArrowButtonListener;
	
	private var modelListener : BasicScrollBarUI_ModelListener;
	
	private var thumbRect : java.awt.Rectangle;
	
	private var trackRect : java.awt.Rectangle;
	
	private var trackHighlight : Int;
	
	private static var NO_HIGHLIGHT(default, null) : Int;
	
	private static var DECREASE_HIGHLIGHT(default, null) : Int;
	
	private static var INCREASE_HIGHLIGHT(default, null) : Int;
	
	private var scrollListener : BasicScrollBarUI_ScrollListener;
	
	private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	private var scrollTimer : javax.swing.Timer;
	
	/**
	* Hint as to what width (when vertical) or height (when horizontal)
	* should be.
	*
	* @since 1.7
	*/
	@:require(java7) private var scrollBarWidth : Int;
	
	/**
	* Distance between the increment button and the track. This may be a negative
	* number. If negative, then an overlap between the button and track will occur,
	* which is useful for shaped buttons.
	*
	* @since 1.7
	*/
	@:require(java7) private var incrGap : Int;
	
	/**
	* Distance between the decrement button and the track. This may be a negative
	* number. If negative, then an overlap between the button and track will occur,
	* which is useful for shaped buttons.
	*
	* @since 1.7
	*/
	@:require(java7) private var decrGap : Int;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload private function configureScrollBarColors() : Void;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function installComponents() : Void;
	
	@:overload private function uninstallComponents() : Void;
	
	@:overload private function installListeners() : Void;
	
	@:overload private function installKeyboardActions() : Void;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function createTrackListener() : BasicScrollBarUI_TrackListener;
	
	@:overload private function createArrowButtonListener() : BasicScrollBarUI_ArrowButtonListener;
	
	@:overload private function createModelListener() : BasicScrollBarUI_ModelListener;
	
	@:overload private function createScrollListener() : BasicScrollBarUI_ScrollListener;
	
	@:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Sets whether or not the mouse is currently over the thumb.
	*
	* @param active True indicates the thumb is currently active.
	* @since 1.5
	*/
	@:require(java5) @:overload private function setThumbRollover(active : Bool) : Void;
	
	/**
	* Returns true if the mouse is currently over the thumb.
	*
	* @return true if the thumb is currently active
	* @since 1.5
	*/
	@:require(java5) @:overload public function isThumbRollover() : Bool;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
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
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* @param c The JScrollBar that's delegating this method to us.
	* @return new Dimension(Integer.MAX_VALUE, Integer.MAX_VALUE);
	* @see #getMinimumSize
	* @see #getPreferredSize
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload private function createDecreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload private function createIncreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload private function paintDecreaseHighlight(g : java.awt.Graphics) : Void;
	
	@:overload private function paintIncreaseHighlight(g : java.awt.Graphics) : Void;
	
	@:overload private function paintTrack(g : java.awt.Graphics, c : javax.swing.JComponent, trackBounds : java.awt.Rectangle) : Void;
	
	@:overload private function paintThumb(g : java.awt.Graphics, c : javax.swing.JComponent, thumbBounds : java.awt.Rectangle) : Void;
	
	/**
	* Returns the smallest acceptable size for the thumb.  If the scrollbar
	* becomes so small that this size isn't available, the thumb will be
	* hidden.
	* <p>
	* <b>Warning </b>: the value returned by this method should not be
	* be modified, it's a shared static constant.
	*
	* @return The smallest acceptable size for the thumb.
	* @see #getMaximumThumbSize
	*/
	@:overload private function getMinimumThumbSize() : java.awt.Dimension;
	
	/**
	* Returns the largest acceptable size for the thumb.  To create a fixed
	* size thumb one make this method and <code>getMinimumThumbSize</code>
	* return the same value.
	* <p>
	* <b>Warning </b>: the value returned by this method should not be
	* be modified, it's a shared static constant.
	*
	* @return The largest acceptable size for the thumb.
	* @see #getMinimumThumbSize
	*/
	@:overload private function getMaximumThumbSize() : java.awt.Dimension;
	
	/*
	* LayoutManager Implementation
	*/
	@:overload public function addLayoutComponent(name : String, child : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(child : java.awt.Component) : Void;
	
	@:overload public function preferredLayoutSize(scrollbarContainer : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function minimumLayoutSize(scrollbarContainer : java.awt.Container) : java.awt.Dimension;
	
	@:overload private function layoutVScrollbar(sb : javax.swing.JScrollBar) : Void;
	
	@:overload private function layoutHScrollbar(sb : javax.swing.JScrollBar) : Void;
	
	@:overload public function layoutContainer(scrollbarContainer : java.awt.Container) : Void;
	
	/**
	* Set the bounds of the thumb and force a repaint that includes
	* the old thumbBounds and the new one.
	*
	* @see #getThumbBounds
	*/
	@:overload private function setThumbBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Return the current size/location of the thumb.
	* <p>
	* <b>Warning </b>: the value returned by this method should not be
	* be modified, it's a reference to the actual rectangle, not a copy.
	*
	* @return The current size/location of the thumb.
	* @see #setThumbBounds
	*/
	@:overload private function getThumbBounds() : java.awt.Rectangle;
	
	/**
	* Returns the current bounds of the track, i.e. the space in between
	* the increment and decrement buttons, less the insets.  The value
	* returned by this method is updated each time the scrollbar is
	* laid out (validated).
	* <p>
	* <b>Warning </b>: the value returned by this method should not be
	* be modified, it's a reference to the actual rectangle, not a copy.
	*
	* @return the current bounds of the scrollbar track
	* @see #layoutContainer
	*/
	@:overload private function getTrackBounds() : java.awt.Rectangle;
	
	@:overload private function scrollByBlock(direction : Int) : Void;
	
	@:overload private function scrollByUnit(direction : Int) : Void;
	
	/**
	* Indicates whether the user can absolutely position the thumb with
	* a mouse gesture (usually the middle mouse button).
	*
	* @return true if a mouse gesture can absolutely position the thumb
	* @since 1.5
	*/
	@:require(java5) @:overload public function getSupportsAbsolutePositioning() : Bool;
	
	
}
/**
* A listener to listen for model changes.
*
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$ModelListener') extern class BasicScrollBarUI_ModelListener implements javax.swing.event.ChangeListener
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* Track mouse drags.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$TrackListener') extern class BasicScrollBarUI_TrackListener extends java.awt.event.MouseAdapter implements java.awt.event.MouseMotionListener
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
	
	/**
	* Set the models value to the position of the thumb's top of Vertical
	* scrollbar, or the left/right of Horizontal scrollbar in
	* left-to-right/right-to-left scrollbar relative to the origin of the
	* track.
	*/
	@:overload override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse exits the scrollbar.
	*
	* @param e MouseEvent further describing the event
	* @since 1.5
	*/
	@:require(java5) @:overload override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Listener for cursor keys.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$ArrowButtonListener') extern class BasicScrollBarUI_ArrowButtonListener extends java.awt.event.MouseAdapter
{
	@:overload override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Listener for scrolling events initiated in the
* <code>ScrollPane</code>.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$ScrollListener') extern class BasicScrollBarUI_ScrollListener implements java.awt.event.ActionListener
{
	@:overload public function new() : Void;
	
	@:overload public function new(dir : Int, block : Bool) : Void;
	
	@:overload public function setDirection(direction : Int) : Void;
	
	@:overload public function setScrollByBlock(block : Bool) : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicScrollBarUI$PropertyChangeHandler') extern class BasicScrollBarUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Used for scrolling the scrollbar.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$Actions') @:internal extern class BasicScrollBarUI_Actions extends sun.swing.UIAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicScrollBarUI$Handler') @:internal extern class BasicScrollBarUI_Handler implements java.awt.event.FocusListener implements java.beans.PropertyChangeListener
{
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
