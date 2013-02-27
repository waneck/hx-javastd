package java.awt.event;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MouseWheelEvent extends java.awt.event.MouseEvent
{
	/**
	* Constant representing scrolling by "units" (like scrolling with the
	* arrow keys)
	*
	* @see #getScrollType
	*/
	public static var WHEEL_UNIT_SCROLL(default, null) : Int;
	
	/**
	* Constant representing scrolling by a "block" (like scrolling
	* with page-up, page-down keys)
	*
	* @see #getScrollType
	*/
	public static var WHEEL_BLOCK_SCROLL(default, null) : Int;
	
	/**
	* Constructs a <code>MouseWheelEvent</code> object with the
	* specified source component, type, modifiers, coordinates,
	* scroll type, scroll amount, and wheel rotation.
	* <p>Absolute coordinates xAbs and yAbs are set to source's location on screen plus
	* relative coordinates x and y. xAbs and yAbs are set to zero if the source is not showing.
	* <p>Note that passing in an invalid <code>id</code> results in
	* unspecified behavior. This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source         the <code>Component</code> that originated
	*                       the event
	* @param id             the integer that identifies the event
	* @param when           a long that gives the time the event occurred
	* @param modifiers      the modifier keys down during event
	*                       (shift, ctrl, alt, meta)
	* @param x              the horizontal x coordinate for the mouse location
	* @param y              the vertical y coordinate for the mouse location
	* @param clickCount     the number of mouse clicks associated with event
	* @param popupTrigger   a boolean, true if this event is a trigger for a
	*                       popup-menu
	* @param scrollType     the type of scrolling which should take place in
	*                       response to this event;  valid values are
	*                       <code>WHEEL_UNIT_SCROLL</code> and
	*                       <code>WHEEL_BLOCK_SCROLL</code>
	* @param  scrollAmount  for scrollType <code>WHEEL_UNIT_SCROLL</code>,
	*                       the number of units to be scrolled
	* @param wheelRotation  the integer number of "clicks" by which the mouse
	*                       wheel was rotated
	*
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, boolean)
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, int, int, boolean, int)
	*/
	@:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, clickCount : Int, popupTrigger : Bool, scrollType : Int, scrollAmount : Int, wheelRotation : Int) : Void;
	
	/**
	* Constructs a <code>MouseWheelEvent</code> object with the
	* specified source component, type, modifiers, coordinates,
	* absolute coordinates, scroll type, scroll amount, and wheel rotation.
	* <p>Note that passing in an invalid <code>id</code> results in
	* unspecified behavior. This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.<p>
	* Even if inconsistent values for relative and absolute coordinates are
	* passed to the constructor, the MouseWheelEvent instance is still
	* created and no exception is thrown.
	*
	* @param source         the <code>Component</code> that originated
	*                       the event
	* @param id             the integer that identifies the event
	* @param when           a long that gives the time the event occurred
	* @param modifiers      the modifier keys down during event
	*                       (shift, ctrl, alt, meta)
	* @param x              the horizontal x coordinate for the mouse location
	* @param y              the vertical y coordinate for the mouse location
	* @param xAbs           the absolute horizontal x coordinate for the mouse location
	* @param yAbs           the absolute vertical y coordinate for the mouse location
	* @param clickCount     the number of mouse clicks associated with event
	* @param popupTrigger   a boolean, true if this event is a trigger for a
	*                       popup-menu
	* @param scrollType     the type of scrolling which should take place in
	*                       response to this event;  valid values are
	*                       <code>WHEEL_UNIT_SCROLL</code> and
	*                       <code>WHEEL_BLOCK_SCROLL</code>
	* @param  scrollAmount  for scrollType <code>WHEEL_UNIT_SCROLL</code>,
	*                       the number of units to be scrolled
	* @param wheelRotation  the integer number of "clicks" by which the mouse
	*                       wheel was rotated
	*
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, boolean)
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, int, int, boolean, int)
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, xAbs : Int, yAbs : Int, clickCount : Int, popupTrigger : Bool, scrollType : Int, scrollAmount : Int, wheelRotation : Int) : Void;
	
	/**
	* Constructs a <code>MouseWheelEvent</code> object with the specified
	* source component, type, modifiers, coordinates, absolute coordinates,
	* scroll type, scroll amount, and wheel rotation.
	* <p>Note that passing in an invalid <code>id</code> parameter results
	* in unspecified behavior. This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code> equals
	* <code>null</code>.
	* <p>Even if inconsistent values for relative and absolute coordinates
	* are passed to the constructor, a <code>MouseWheelEvent</code> instance
	* is still created and no exception is thrown.
	*
	* @param source         the <code>Component</code> that originated the event
	* @param id             the integer value that identifies the event
	* @param when           a long value that gives the time when the event occurred
	* @param modifiers      the modifier keys down during event
	*                       (shift, ctrl, alt, meta)
	* @param x              the horizontal <code>x</code> coordinate for the
	*                       mouse location
	* @param y              the vertical <code>y</code> coordinate for the
	*                       mouse location
	* @param xAbs           the absolute horizontal <code>x</code> coordinate for
	*                       the mouse location
	* @param yAbs           the absolute vertical <code>y</code> coordinate for
	*                       the mouse location
	* @param clickCount     the number of mouse clicks associated with the event
	* @param popupTrigger   a boolean value, <code>true</code> if this event is a trigger
	*                       for a popup-menu
	* @param scrollType     the type of scrolling which should take place in
	*                       response to this event;  valid values are
	*                       <code>WHEEL_UNIT_SCROLL</code> and
	*                       <code>WHEEL_BLOCK_SCROLL</code>
	* @param  scrollAmount  for scrollType <code>WHEEL_UNIT_SCROLL</code>,
	*                       the number of units to be scrolled
	* @param wheelRotation  the integer number of "clicks" by which the mouse wheel
	*                       was rotated
	* @param preciseWheelRotation the double number of "clicks" by which the mouse wheel
	*                       was rotated
	*
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, boolean)
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, int, int, boolean, int)
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, xAbs : Int, yAbs : Int, clickCount : Int, popupTrigger : Bool, scrollType : Int, scrollAmount : Int, wheelRotation : Int, preciseWheelRotation : Float) : Void;
	
	/**
	* Returns the type of scrolling that should take place in response to this
	* event.  This is determined by the native platform.  Legal values are:
	* <ul>
	* <li> MouseWheelEvent.WHEEL_UNIT_SCROLL
	* <li> MouseWheelEvent.WHEEL_BLOCK_SCROLL
	* </ul>
	*
	* @return either MouseWheelEvent.WHEEL_UNIT_SCROLL or
	*  MouseWheelEvent.WHEEL_BLOCK_SCROLL, depending on the configuration of
	*  the native platform.
	* @see java.awt.Adjustable#getUnitIncrement
	* @see java.awt.Adjustable#getBlockIncrement
	* @see javax.swing.Scrollable#getScrollableUnitIncrement
	* @see javax.swing.Scrollable#getScrollableBlockIncrement
	*/
	@:overload public function getScrollType() : Int;
	
	/**
	* Returns the number of units that should be scrolled per
	* click of mouse wheel rotation.
	* Only valid if <code>getScrollType</code> returns
	* <code>MouseWheelEvent.WHEEL_UNIT_SCROLL</code>
	*
	* @return number of units to scroll, or an undefined value if
	*  <code>getScrollType</code> returns
	*  <code>MouseWheelEvent.WHEEL_BLOCK_SCROLL</code>
	* @see #getScrollType
	*/
	@:overload public function getScrollAmount() : Int;
	
	/**
	* Returns the number of "clicks" the mouse wheel was rotated, as an integer.
	* A partial rotation may occur if the mouse supports a high-resolution wheel.
	* In this case, the method returns zero until a full "click" has been accumulated.
	*
	* @return negative values if the mouse wheel was rotated up/away from
	* the user, and positive values if the mouse wheel was rotated down/
	* towards the user
	* @see #getPreciseWheelRotation
	*/
	@:overload public function getWheelRotation() : Int;
	
	/**
	* Returns the number of "clicks" the mouse wheel was rotated, as a double.
	* A partial rotation may occur if the mouse supports a high-resolution wheel.
	* In this case, the return value will include a fractional "click".
	*
	* @return negative values if the mouse wheel was rotated up or away from
	* the user, and positive values if the mouse wheel was rotated down or
	* towards the user
	* @see #getWheelRotation
	* @since 1.7
	*/
	@:require(java7) @:overload public function getPreciseWheelRotation() : Float;
	
	/**
	* This is a convenience method to aid in the implementation of
	* the common-case MouseWheelListener - to scroll a ScrollPane or
	* JScrollPane by an amount which conforms to the platform settings.
	* (Note, however, that <code>ScrollPane</code> and
	* <code>JScrollPane</code> already have this functionality built in.)
	* <P>
	* This method returns the number of units to scroll when scroll type is
	* MouseWheelEvent.WHEEL_UNIT_SCROLL, and should only be called if
	* <code>getScrollType</code> returns MouseWheelEvent.WHEEL_UNIT_SCROLL.
	* <P>
	* Direction of scroll, amount of wheel movement,
	* and platform settings for wheel scrolling are all accounted for.
	* This method does not and cannot take into account value of the
	* Adjustable/Scrollable unit increment, as this will vary among
	* scrolling components.
	* <P>
	* A simplified example of how this method might be used in a
	* listener:
	* <pre>
	*  mouseWheelMoved(MouseWheelEvent event) {
	*      ScrollPane sp = getScrollPaneFromSomewhere();
	*      Adjustable adj = sp.getVAdjustable()
	*      if (MouseWheelEvent.getScrollType() == WHEEL_UNIT_SCROLL) {
	*          int totalScrollAmount =
	*              event.getUnitsToScroll() *
	*              adj.getUnitIncrement();
	*          adj.setValue(adj.getValue() + totalScrollAmount);
	*      }
	*  }
	* </pre>
	*
	* @return the number of units to scroll based on the direction and amount
	*  of mouse wheel rotation, and on the wheel scrolling settings of the
	*  native platform
	* @see #getScrollType
	* @see #getScrollAmount
	* @see MouseWheelListener
	* @see java.awt.Adjustable
	* @see java.awt.Adjustable#getUnitIncrement
	* @see javax.swing.Scrollable
	* @see javax.swing.Scrollable#getScrollableUnitIncrement
	* @see java.awt.ScrollPane
	* @see java.awt.ScrollPane#setWheelScrollingEnabled
	* @see javax.swing.JScrollPane
	* @see javax.swing.JScrollPane#setWheelScrollingEnabled
	*/
	@:overload public function getUnitsToScroll() : Int;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload override public function paramString() : String;
	
	
}
