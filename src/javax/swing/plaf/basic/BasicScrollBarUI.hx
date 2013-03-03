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
	@:protected private var minimumThumbSize : java.awt.Dimension;
	
	@:protected private var maximumThumbSize : java.awt.Dimension;
	
	@:protected private var thumbHighlightColor : java.awt.Color;
	
	@:protected private var thumbLightShadowColor : java.awt.Color;
	
	@:protected private var thumbDarkShadowColor : java.awt.Color;
	
	@:protected private var thumbColor : java.awt.Color;
	
	@:protected private var trackColor : java.awt.Color;
	
	@:protected private var trackHighlightColor : java.awt.Color;
	
	@:protected private var scrollbar : javax.swing.JScrollBar;
	
	@:protected private var incrButton : javax.swing.JButton;
	
	@:protected private var decrButton : javax.swing.JButton;
	
	@:protected private var isDragging : Bool;
	
	@:protected private var trackListener : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_TrackListener;
	
	@:protected private var buttonListener : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_ArrowButtonListener;
	
	@:protected private var modelListener : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_ModelListener;
	
	@:protected private var thumbRect : java.awt.Rectangle;
	
	@:protected private var trackRect : java.awt.Rectangle;
	
	@:protected private var trackHighlight : Int;
	
	@:protected @:static @:final private static var NO_HIGHLIGHT(default, null) : Int;
	
	@:protected @:static @:final private static var DECREASE_HIGHLIGHT(default, null) : Int;
	
	@:protected @:static @:final private static var INCREASE_HIGHLIGHT(default, null) : Int;
	
	@:protected private var scrollListener : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_ScrollListener;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:protected private var scrollTimer : javax.swing.Timer;
	
	/**
	* Hint as to what width (when vertical) or height (when horizontal)
	* should be.
	*
	* @since 1.7
	*/
	@:require(java7) @:protected private var scrollBarWidth : Int;
	
	/**
	* Distance between the increment button and the track. This may be a negative
	* number. If negative, then an overlap between the button and track will occur,
	* which is useful for shaped buttons.
	*
	* @since 1.7
	*/
	@:require(java7) @:protected private var incrGap : Int;
	
	/**
	* Distance between the decrement button and the track. This may be a negative
	* number. If negative, then an overlap between the button and track will occur,
	* which is useful for shaped buttons.
	*
	* @since 1.7
	*/
	@:require(java7) @:protected private var decrGap : Int;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:protected private function configureScrollBarColors() : Void;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function installComponents() : Void;
	
	@:overload @:protected private function uninstallComponents() : Void;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function installKeyboardActions() : Void;
	
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function createTrackListener() : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_TrackListener;
	
	@:overload @:protected private function createArrowButtonListener() : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_ArrowButtonListener;
	
	@:overload @:protected private function createModelListener() : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_ModelListener;
	
	@:overload @:protected private function createScrollListener() : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_ScrollListener;
	
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Sets whether or not the mouse is currently over the thumb.
	*
	* @param active True indicates the thumb is currently active.
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function setThumbRollover(active : Bool) : Void;
	
	/**
	* Returns true if the mouse is currently over the thumb.
	*
	* @return true if the thumb is currently active
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isThumbRollover() : Bool;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
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
	* @param c The JScrollBar that's delegating this method to us.
	* @return new Dimension(Integer.MAX_VALUE, Integer.MAX_VALUE);
	* @see #getMinimumSize
	* @see #getPreferredSize
	*/
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:protected private function createDecreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload @:protected private function createIncreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload @:protected private function paintDecreaseHighlight(g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function paintIncreaseHighlight(g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function paintTrack(g : java.awt.Graphics, c : javax.swing.JComponent, trackBounds : java.awt.Rectangle) : Void;
	
	@:overload @:protected private function paintThumb(g : java.awt.Graphics, c : javax.swing.JComponent, thumbBounds : java.awt.Rectangle) : Void;
	
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
	@:overload @:protected private function getMinimumThumbSize() : java.awt.Dimension;
	
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
	@:overload @:protected private function getMaximumThumbSize() : java.awt.Dimension;
	
	/*
	* LayoutManager Implementation
	*/
	@:overload @:public public function addLayoutComponent(name : String, child : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(child : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(scrollbarContainer : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(scrollbarContainer : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:protected private function layoutVScrollbar(sb : javax.swing.JScrollBar) : Void;
	
	@:overload @:protected private function layoutHScrollbar(sb : javax.swing.JScrollBar) : Void;
	
	@:overload @:public public function layoutContainer(scrollbarContainer : java.awt.Container) : Void;
	
	/**
	* Set the bounds of the thumb and force a repaint that includes
	* the old thumbBounds and the new one.
	*
	* @see #getThumbBounds
	*/
	@:overload @:protected private function setThumbBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Return the current size/location of the thumb.
	* <p>
	* <b>Warning </b>: the value returned by this method should not be
	* be modified, it's a reference to the actual rectangle, not a copy.
	*
	* @return The current size/location of the thumb.
	* @see #setThumbBounds
	*/
	@:overload @:protected private function getThumbBounds() : java.awt.Rectangle;
	
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
	@:overload @:protected private function getTrackBounds() : java.awt.Rectangle;
	
	@:overload @:protected private function scrollByBlock(direction : Int) : Void;
	
	@:overload @:protected private function scrollByUnit(direction : Int) : Void;
	
	/**
	* Indicates whether the user can absolutely position the thumb with
	* a mouse gesture (usually the middle mouse button).
	*
	* @return true if a mouse gesture can absolutely position the thumb
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getSupportsAbsolutePositioning() : Bool;
	
	
}
/**
* A listener to listen for model changes.
*
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$ModelListener') extern class BasicScrollBarUI_ModelListener implements javax.swing.event.ChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* Track mouse drags.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$TrackListener') extern class BasicScrollBarUI_TrackListener extends java.awt.event.MouseAdapter implements java.awt.event.MouseMotionListener
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
	
	/**
	* Set the models value to the position of the thumb's top of Vertical
	* scrollbar, or the left/right of Horizontal scrollbar in
	* left-to-right/right-to-left scrollbar relative to the origin of the
	* track.
	*/
	@:overload @:public override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse exits the scrollbar.
	*
	* @param e MouseEvent further describing the event
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Listener for cursor keys.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$ArrowButtonListener') extern class BasicScrollBarUI_ArrowButtonListener extends java.awt.event.MouseAdapter
{
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Listener for scrolling events initiated in the
* <code>ScrollPane</code>.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$ScrollListener') extern class BasicScrollBarUI_ScrollListener implements java.awt.event.ActionListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(dir : Int, block : Bool) : Void;
	
	@:overload @:public public function setDirection(direction : Int) : Void;
	
	@:overload @:public public function setScrollByBlock(block : Bool) : Void;
	
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicScrollBarUI$PropertyChangeHandler') extern class BasicScrollBarUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Used for scrolling the scrollbar.
*/
@:native('javax$swing$plaf$basic$BasicScrollBarUI$Actions') @:internal extern class BasicScrollBarUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicScrollBarUI$Handler') @:internal extern class BasicScrollBarUI_Handler implements java.awt.event.FocusListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
