package java.awt;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ScrollPane extends java.awt.Container implements javax.accessibility.Accessible
{
	/**
	* Specifies that horizontal/vertical scrollbar should be shown
	* only when the size of the child exceeds the size of the scrollpane
	* in the horizontal/vertical dimension.
	*/
	public static var SCROLLBARS_AS_NEEDED(default, null) : Int;
	
	/**
	* Specifies that horizontal/vertical scrollbars should always be
	* shown regardless of the respective sizes of the scrollpane and child.
	*/
	public static var SCROLLBARS_ALWAYS(default, null) : Int;
	
	/**
	* Specifies that horizontal/vertical scrollbars should never be shown
	* regardless of the respective sizes of the scrollpane and child.
	*/
	public static var SCROLLBARS_NEVER(default, null) : Int;
	
	/**
	* Create a new scrollpane container with a scrollbar display
	* policy of "as needed".
	* @throws HeadlessException if GraphicsEnvironment.isHeadless()
	*     returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new scrollpane container.
	* @param scrollbarDisplayPolicy policy for when scrollbars should be shown
	* @throws IllegalArgumentException if the specified scrollbar
	*     display policy is invalid
	* @throws HeadlessException if GraphicsEnvironment.isHeadless()
	*     returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(scrollbarDisplayPolicy : Int) : Void;
	
	/**
	* Adds the specified component to this scroll pane container.
	* If the scroll pane has an existing child component, that
	* component is removed and the new one is added.
	* @param comp the component to be added
	* @param constraints  not applicable
	* @param index position of child component (must be <= 0)
	*/
	@:overload @:final override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Returns the display policy for the scrollbars.
	* @return the display policy for the scrollbars
	*/
	@:overload public function getScrollbarDisplayPolicy() : Int;
	
	/**
	* Returns the current size of the scroll pane's view port.
	* @return the size of the view port in pixels
	*/
	@:overload public function getViewportSize() : java.awt.Dimension;
	
	/**
	* Returns the height that would be occupied by a horizontal
	* scrollbar, which is independent of whether it is currently
	* displayed by the scroll pane or not.
	* @return the height of a horizontal scrollbar in pixels
	*/
	@:overload public function getHScrollbarHeight() : Int;
	
	/**
	* Returns the width that would be occupied by a vertical
	* scrollbar, which is independent of whether it is currently
	* displayed by the scroll pane or not.
	* @return the width of a vertical scrollbar in pixels
	*/
	@:overload public function getVScrollbarWidth() : Int;
	
	/**
	* Returns the <code>ScrollPaneAdjustable</code> object which
	* represents the state of the vertical scrollbar.
	* The declared return type of this method is
	* <code>Adjustable</code> to maintain backward compatibility.
	* @see java.awt.ScrollPaneAdjustable
	*/
	@:overload public function getVAdjustable() : java.awt.Adjustable;
	
	/**
	* Returns the <code>ScrollPaneAdjustable</code> object which
	* represents the state of the horizontal scrollbar.
	* The declared return type of this method is
	* <code>Adjustable</code> to maintain backward compatibility.
	* @see java.awt.ScrollPaneAdjustable
	*/
	@:overload public function getHAdjustable() : java.awt.Adjustable;
	
	/**
	* Scrolls to the specified position within the child component.
	* A call to this method is only valid if the scroll pane contains
	* a child.  Specifying a position outside of the legal scrolling bounds
	* of the child will scroll to the closest legal position.
	* Legal bounds are defined to be the rectangle:
	* x = 0, y = 0, width = (child width - view port width),
	* height = (child height - view port height).
	* This is a convenience method which interfaces with the Adjustable
	* objects which represent the state of the scrollbars.
	* @param x the x position to scroll to
	* @param y the y position to scroll to
	* @throws NullPointerException if the scrollpane does not contain
	*     a child
	*/
	@:overload public function setScrollPosition(x : Int, y : Int) : Void;
	
	/**
	* Scrolls to the specified position within the child component.
	* A call to this method is only valid if the scroll pane contains
	* a child and the specified position is within legal scrolling bounds
	* of the child.  Specifying a position outside of the legal scrolling
	* bounds of the child will scroll to the closest legal position.
	* Legal bounds are defined to be the rectangle:
	* x = 0, y = 0, width = (child width - view port width),
	* height = (child height - view port height).
	* This is a convenience method which interfaces with the Adjustable
	* objects which represent the state of the scrollbars.
	* @param p the Point representing the position to scroll to
	* @throws NullPointerException if {@code p} is {@code null}
	*/
	@:overload public function setScrollPosition(p : java.awt.Point) : Void;
	
	/**
	* Returns the current x,y position within the child which is displayed
	* at the 0,0 location of the scrolled panel's view port.
	* This is a convenience method which interfaces with the adjustable
	* objects which represent the state of the scrollbars.
	* @return the coordinate position for the current scroll position
	* @throws NullPointerException if the scrollpane does not contain
	*     a child
	*/
	@:overload public function getScrollPosition() : java.awt.Point;
	
	/**
	* Sets the layout manager for this container.  This method is
	* overridden to prevent the layout mgr from being set.
	* @param mgr the specified layout manager
	*/
	@:overload @:final override public function setLayout(mgr : java.awt.LayoutManager) : Void;
	
	/**
	* Lays out this container by resizing its child to its preferred size.
	* If the new preferred size of the child causes the current scroll
	* position to be invalid, the scroll position is set to the closest
	* valid position.
	*
	* @see Component#validate
	*/
	@:overload override public function doLayout() : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>doLayout()</code>.
	*/
	@:overload override public function layout() : Void;
	
	/**
	* Prints the component in this scroll pane.
	* @param g the specified Graphics window
	* @see Component#print
	* @see Component#printAll
	*/
	@:overload override public function printComponents(g : java.awt.Graphics) : Void;
	
	/**
	* Creates the scroll pane's peer.
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* Returns a string representing the state of this
	* <code>ScrollPane</code>. This
	* method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return the parameter string of this scroll pane
	*/
	@:overload override public function paramString() : String;
	
	/**
	* Process mouse wheel events that are delivered to this
	* <code>ScrollPane</code> by scrolling an appropriate amount.
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param e  the mouse wheel event
	* @since 1.4
	*/
	@:require(java4) @:overload private function processMouseWheelEvent(e : java.awt.event.MouseWheelEvent) : Void;
	
	/**
	* If wheel scrolling is enabled, we return true for MouseWheelEvents
	* @since 1.4
	*/
	@:require(java4) @:overload private function eventTypeEnabled(type : Int) : Bool;
	
	/**
	* Enables/disables scrolling in response to movement of the mouse wheel.
	* Wheel scrolling is enabled by default.
	*
	* @param handleWheel   <code>true</code> if scrolling should be done
	*                      automatically for a MouseWheelEvent,
	*                      <code>false</code> otherwise.
	* @see #isWheelScrollingEnabled
	* @see java.awt.event.MouseWheelEvent
	* @see java.awt.event.MouseWheelListener
	* @since 1.4
	*/
	@:require(java4) @:overload public function setWheelScrollingEnabled(handleWheel : Bool) : Void;
	
	/**
	* Indicates whether or not scrolling will take place in response to
	* the mouse wheel.  Wheel scrolling is enabled by default.
	*
	* @see #setWheelScrollingEnabled(boolean)
	* @since 1.4
	*/
	@:require(java4) @:overload public function isWheelScrollingEnabled() : Bool;
	
	/**
	* Gets the AccessibleContext associated with this ScrollPane.
	* For scroll panes, the AccessibleContext takes the form of an
	* AccessibleAWTScrollPane.
	* A new AccessibleAWTScrollPane instance is created if necessary.
	*
	* @return an AccessibleAWTScrollPane that serves as the
	*         AccessibleContext of this ScrollPane
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('java$awt$ScrollPane$PeerFixer') @:internal extern class ScrollPane_PeerFixer implements java.awt.event.AdjustmentListener implements java.io.Serializable
{
	/**
	* Invoked when the value of the adjustable has changed.
	*/
	@:overload public function adjustmentValueChanged(e : java.awt.event.AdjustmentEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>ScrollPane</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to scroll pane user-interface
* elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$ScrollPane$AccessibleAWTScrollPane') extern class ScrollPane_AccessibleAWTScrollPane extends java.awt.Container.Container_AccessibleAWTContainer
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
@:internal extern class PeerFixer implements java.awt.event.AdjustmentListener implements java.io.Serializable
{
	/**
	* Invoked when the value of the adjustable has changed.
	*/
	@:overload public function adjustmentValueChanged(e : java.awt.event.AdjustmentEvent) : Void;
	
	
}
