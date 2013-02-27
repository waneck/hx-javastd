package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicSplitPaneDivider extends java.awt.Container implements java.beans.PropertyChangeListener
{
	/**
	* Width or height of the divider based on orientation
	* BasicSplitPaneUI adds two to this.
	*/
	private static var ONE_TOUCH_SIZE(default, null) : Int;
	
	private static var ONE_TOUCH_OFFSET(default, null) : Int;
	
	/**
	* Handles mouse dragging message to do the actual dragging.
	*/
	private var dragger : BasicSplitPaneDivider_DragController;
	
	/**
	* UI this instance was created from.
	*/
	private var splitPaneUI : javax.swing.plaf.basic.BasicSplitPaneUI;
	
	/**
	* Size of the divider.
	*/
	private var dividerSize : Int;
	
	/**
	* Divider that is used for noncontinuous layout mode.
	*/
	private var hiddenDivider : java.awt.Component;
	
	/**
	* JSplitPane the receiver is contained in.
	*/
	private var splitPane : javax.swing.JSplitPane;
	
	/**
	* Handles mouse events from both this class, and the split pane.
	* Mouse events are handled for the splitpane since you want to be able
	* to drag when clicking on the border of the divider, which is not
	* drawn by the divider.
	*/
	private var mouseHandler : BasicSplitPaneDivider_MouseHandler;
	
	/**
	* Orientation of the JSplitPane.
	*/
	private var orientation : Int;
	
	/**
	* Button for quickly toggling the left component.
	*/
	private var leftButton : javax.swing.JButton;
	
	/**
	* Button for quickly toggling the right component.
	*/
	private var rightButton : javax.swing.JButton;
	
	/**
	* Creates an instance of BasicSplitPaneDivider. Registers this
	* instance for mouse events and mouse dragged events.
	*/
	@:overload public function new(ui : javax.swing.plaf.basic.BasicSplitPaneUI) : Void;
	
	/**
	* Sets the SplitPaneUI that is using the receiver.
	*/
	@:overload public function setBasicSplitPaneUI(newUI : javax.swing.plaf.basic.BasicSplitPaneUI) : Void;
	
	/**
	* Returns the <code>SplitPaneUI</code> the receiver is currently
	* in.
	*/
	@:overload public function getBasicSplitPaneUI() : javax.swing.plaf.basic.BasicSplitPaneUI;
	
	/**
	* Sets the size of the divider to <code>newSize</code>. That is
	* the width if the splitpane is <code>HORIZONTAL_SPLIT</code>, or
	* the height of <code>VERTICAL_SPLIT</code>.
	*/
	@:overload public function setDividerSize(newSize : Int) : Void;
	
	/**
	* Returns the size of the divider, that is the width if the splitpane
	* is HORIZONTAL_SPLIT, or the height of VERTICAL_SPLIT.
	*/
	@:overload public function getDividerSize() : Int;
	
	/**
	* Sets the border of this component.
	* @since 1.3
	*/
	@:require(java3) @:overload public function setBorder(border : javax.swing.border.Border) : Void;
	
	/**
	* Returns the border of this component or null if no border is
	* currently set.
	*
	* @return the border object for this component
	* @see #setBorder
	* @since 1.3
	*/
	@:require(java3) @:overload public function getBorder() : javax.swing.border.Border;
	
	/**
	* If a border has been set on this component, returns the
	* border's insets, else calls super.getInsets.
	*
	* @return the value of the insets property.
	* @see #setBorder
	*/
	@:overload override public function getInsets() : java.awt.Insets;
	
	/**
	* Sets whether or not the mouse is currently over the divider.
	*
	* @param mouseOver whether or not the mouse is currently over the divider
	* @since 1.5
	*/
	@:require(java5) @:overload private function setMouseOver(mouseOver : Bool) : Void;
	
	/**
	* Returns whether or not the mouse is currently over the divider
	*
	* @return whether or not the mouse is currently over the divider
	* @since 1.5
	*/
	@:require(java5) @:overload public function isMouseOver() : Bool;
	
	/**
	* Returns dividerSize x dividerSize
	*/
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* Returns dividerSize x dividerSize
	*/
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* Property change event, presumably from the JSplitPane, will message
	* updateOrientation if necessary.
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Paints the divider.
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Messaged when the oneTouchExpandable value of the JSplitPane the
	* receiver is contained in changes. Will create the
	* <code>leftButton</code> and <code>rightButton</code> if they
	* are null. invalidates the receiver as well.
	*/
	@:overload private function oneTouchExpandableChanged() : Void;
	
	/**
	* Creates and return an instance of JButton that can be used to
	* collapse the left component in the split pane.
	*/
	@:overload private function createLeftOneTouchButton() : javax.swing.JButton;
	
	/**
	* Creates and return an instance of JButton that can be used to
	* collapse the right component in the split pane.
	*/
	@:overload private function createRightOneTouchButton() : javax.swing.JButton;
	
	/**
	* Message to prepare for dragging. This messages the BasicSplitPaneUI
	* with startDragging.
	*/
	@:overload private function prepareForDragging() : Void;
	
	/**
	* Messages the BasicSplitPaneUI with dragDividerTo that this instance
	* is contained in.
	*/
	@:overload private function dragDividerTo(location : Int) : Void;
	
	/**
	* Messages the BasicSplitPaneUI with finishDraggingTo that this instance
	* is contained in.
	*/
	@:overload private function finishDraggingTo(location : Int) : Void;
	
	
}
/**
* MouseHandler is responsible for converting mouse events
* (released, dragged...) into the appropriate DragController
* methods.
* <p>
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneDivider$MouseHandler') extern class BasicSplitPaneDivider_MouseHandler extends java.awt.event.MouseAdapter implements java.awt.event.MouseMotionListener
{
	/**
	* Starts the dragging session by creating the appropriate instance
	* of DragController.
	*/
	@:overload override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* If dragger is not null it is messaged with completeDrag.
	*/
	@:overload override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* If dragger is not null it is messaged with continueDrag.
	*/
	@:overload override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	*  Resets the cursor based on the orientation.
	*/
	@:overload override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse enters a component.
	*
	* @param e MouseEvent describing the details of the enter event.
	* @since 1.5
	*/
	@:require(java5) @:overload override public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse exits a component.
	*
	* @param e MouseEvent describing the details of the exit event.
	* @since 1.5
	*/
	@:require(java5) @:overload override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Handles the events during a dragging session for a
* HORIZONTAL_SPLIT oriented split pane. This continually
* messages <code>dragDividerTo</code> and then when done messages
* <code>finishDraggingTo</code>. When an instance is created it should be
* messaged with <code>isValid</code> to insure that dragging can happen
* (dragging won't be allowed if the two views can not be resized).
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneDivider$DragController') extern class BasicSplitPaneDivider_DragController
{
	@:overload private function new(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Returns true if the dragging session is valid.
	*/
	@:overload private function isValid() : Bool;
	
	/**
	* Returns the new position to put the divider at based on
	* the passed in MouseEvent.
	*/
	@:overload private function positionForMouseEvent(e : java.awt.event.MouseEvent) : Int;
	
	/**
	* Returns the x argument, since this is used for horizontal
	* splits.
	*/
	@:overload private function getNeededLocation(x : Int, y : Int) : Int;
	
	@:overload private function continueDrag(newX : Int, newY : Int) : Void;
	
	/**
	* Messages dragDividerTo with the new location for the mouse
	* event.
	*/
	@:overload private function continueDrag(e : java.awt.event.MouseEvent) : Void;
	
	@:overload private function completeDrag(x : Int, y : Int) : Void;
	
	/**
	* Messages finishDraggingTo with the new location for the mouse
	* event.
	*/
	@:overload private function completeDrag(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* Handles the events during a dragging session for a
* VERTICAL_SPLIT oriented split pane. This continually
* messages <code>dragDividerTo</code> and then when done messages
* <code>finishDraggingTo</code>. When an instance is created it should be
* messaged with <code>isValid</code> to insure that dragging can happen
* (dragging won't be allowed if the two views can not be resized).
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneDivider$VerticalDragController') extern class BasicSplitPaneDivider_VerticalDragController extends BasicSplitPaneDivider_DragController
{
	/* DragControllers ivars are now in terms of y, not x. */
	@:overload private function new(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Returns the y argument, since this is used for vertical
	* splits.
	*/
	@:overload override private function getNeededLocation(x : Int, y : Int) : Int;
	
	/**
	* Returns the new position to put the divider at based on
	* the passed in MouseEvent.
	*/
	@:overload override private function positionForMouseEvent(e : java.awt.event.MouseEvent) : Int;
	
	
}
/**
* Used to layout a <code>BasicSplitPaneDivider</code>.
* Layout for the divider
* involves appropriately moving the left/right buttons around.
* <p>
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneDivider$DividerLayout') extern class BasicSplitPaneDivider_DividerLayout implements java.awt.LayoutManager
{
	@:overload public function layoutContainer(c : java.awt.Container) : Void;
	
	@:overload public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload public function addLayoutComponent(string : String, c : java.awt.Component) : Void;
	
	
}
/**
* Listeners installed on the one touch expandable buttons.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneDivider$OneTouchActionHandler') @:internal extern class BasicSplitPaneDivider_OneTouchActionHandler implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
