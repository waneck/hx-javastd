package java.awt.event;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MouseEvent extends java.awt.event.InputEvent
{
	/**
	* The first number in the range of ids used for mouse events.
	*/
	@:public @:static @:final public static var MOUSE_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for mouse events.
	*/
	@:public @:static @:final public static var MOUSE_LAST(default, null) : Int;
	
	/**
	* The "mouse clicked" event. This <code>MouseEvent</code>
	* occurs when a mouse button is pressed and released.
	*/
	@:public @:static @:final public static var MOUSE_CLICKED(default, null) : Int;
	
	/**
	* The "mouse pressed" event. This <code>MouseEvent</code>
	* occurs when a mouse button is pushed down.
	*/
	@:public @:static @:final public static var MOUSE_PRESSED(default, null) : Int;
	
	/**
	* The "mouse released" event. This <code>MouseEvent</code>
	* occurs when a mouse button is let up.
	*/
	@:public @:static @:final public static var MOUSE_RELEASED(default, null) : Int;
	
	/**
	* The "mouse moved" event. This <code>MouseEvent</code>
	* occurs when the mouse position changes.
	*/
	@:public @:static @:final public static var MOUSE_MOVED(default, null) : Int;
	
	/**
	* The "mouse entered" event. This <code>MouseEvent</code>
	* occurs when the mouse cursor enters the unobscured part of component's
	* geometry.
	*/
	@:public @:static @:final public static var MOUSE_ENTERED(default, null) : Int;
	
	/**
	* The "mouse exited" event. This <code>MouseEvent</code>
	* occurs when the mouse cursor exits the unobscured part of component's
	* geometry.
	*/
	@:public @:static @:final public static var MOUSE_EXITED(default, null) : Int;
	
	/**
	* The "mouse dragged" event. This <code>MouseEvent</code>
	* occurs when the mouse position changes while a mouse button is pressed.
	*/
	@:public @:static @:final public static var MOUSE_DRAGGED(default, null) : Int;
	
	/**
	* The "mouse wheel" event.  This is the only <code>MouseWheelEvent</code>.
	* It occurs when a mouse equipped with a wheel has its wheel rotated.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var MOUSE_WHEEL(default, null) : Int;
	
	/**
	* Indicates no mouse buttons; used by {@link #getButton}.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var NOBUTTON(default, null) : Int;
	
	/**
	* Indicates mouse button #1; used by {@link #getButton}.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var BUTTON1(default, null) : Int;
	
	/**
	* Indicates mouse button #2; used by {@link #getButton}.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var BUTTON2(default, null) : Int;
	
	/**
	* Indicates mouse button #3; used by {@link #getButton}.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var BUTTON3(default, null) : Int;
	
	/**
	* Returns the absolute x, y position of the event.
	* In a virtual device multi-screen environment in which the
	* desktop area could span multiple physical screen devices,
	* these coordinates are relative to the virtual coordinate system.
	* Otherwise, these coordinates are relative to the coordinate system
	* associated with the Component's GraphicsConfiguration.
	*
	* @return a <code>Point</code> object containing the absolute  x
	*  and y coordinates.
	*
	* @see java.awt.GraphicsConfiguration
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Returns the absolute horizontal x position of the event.
	* In a virtual device multi-screen environment in which the
	* desktop area could span multiple physical screen devices,
	* this coordinate is relative to the virtual coordinate system.
	* Otherwise, this coordinate is relative to the coordinate system
	* associated with the Component's GraphicsConfiguration.
	*
	* @return x  an integer indicating absolute horizontal position.
	*
	* @see java.awt.GraphicsConfiguration
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getXOnScreen() : Int;
	
	/**
	* Returns the absolute vertical y position of the event.
	* In a virtual device multi-screen environment in which the
	* desktop area could span multiple physical screen devices,
	* this coordinate is relative to the virtual coordinate system.
	* Otherwise, this coordinate is relative to the coordinate system
	* associated with the Component's GraphicsConfiguration.
	*
	* @return y  an integer indicating absolute vertical position.
	*
	* @see java.awt.GraphicsConfiguration
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getYOnScreen() : Int;
	
	/**
	* Constructs a <code>MouseEvent</code> object with the
	* specified source component,
	* type, time, modifiers, coordinates, click count, popupTrigger flag,
	* and button number.
	* <p>
	* Creating an invalid event (such
	* as by using more than one of the old _MASKs, or modifier/button
	* values which don't match) results in unspecified behavior.
	* An invocation of the form
	* <tt>MouseEvent(source, id, when, modifiers, x, y, clickCount, popupTrigger, button)</tt>
	* behaves in exactly the same way as the invocation
	* <tt> {@link #MouseEvent(Component, int, long, int, int, int,
	* int, int, int, boolean, int) MouseEvent}(source, id, when, modifiers,
	* x, y, xAbs, yAbs, clickCount, popupTrigger, button)</tt>
	* where xAbs and yAbs defines as source's location on screen plus
	* relative coordinates x and y.
	* xAbs and yAbs are set to zero if the source is not showing.
	* This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source       The <code>Component</code> that originated the event
	* @param id              An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link MouseEvent}
	* @param when         A long integer that gives the time the event occurred.
	*                     Passing negative or zero value
	*                     is not recommended
	* @param modifiers    The modifier keys down during event (e.g. shift, ctrl,
	*                     alt, meta)
	*                     Passing negative parameter
	*                     is not recommended.
	*                     Zero value means that no modifiers were passed.
	*                     Use either an extended _DOWN_MASK or old _MASK modifiers,
	*                     however do not mix models in the one event.
	*                     The extended modifiers are preferred for using
	* @param x            The horizontal x coordinate for the mouse location.
	*                       It is allowed to pass negative values
	* @param y            The vertical y coordinate for the mouse location.
	*                       It is allowed to pass negative values
	* @param clickCount   The number of mouse clicks associated with event.
	*                       Passing negative value
	*                       is not recommended
	* @param popupTrigger A boolean that equals {@code true} if this event
	*                     is a trigger for a popup menu
	* @param button       An integer that indicates, which of the mouse buttons has
	*                     changed its state.
	* The following rules are applied to this parameter:
	* <ul>
	* <li>If support for the extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* then it is allowed to create {@code MouseEvent} objects only with the standard buttons:
	* {@code NOBUTTON}, {@code BUTTON1}, {@code BUTTON2}, and
	* {@code BUTTON3}.
	* <li> If support for the extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java
	* then it is allowed to create {@code MouseEvent} objects with
	* the standard buttons.
	* In case the support for extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java, then
	* in addition to the standard buttons, {@code MouseEvent} objects can be created
	* using buttons from the range starting from 4 to
	* {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()}
	* if the mouse has more than three buttons.
	* </ul>
	* @throws IllegalArgumentException if {@code button} is less then zero
	* @throws IllegalArgumentException if <code>source</code> is null
	* @throws IllegalArgumentException if {@code button} is greater then BUTTON3 and the support for extended mouse buttons is
	*                                  {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* @throws IllegalArgumentException if {@code button} is greater then the
	*                                  {@link java.awt.MouseInfo#getNumberOfButtons() current number of buttons} and the support
	*                                  for extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() enabled}
	*                                  by Java
	* @throws IllegalArgumentException if an invalid <code>button</code>
	*            value is passed in
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getWhen()
	* @see #getModifiers()
	* @see #getX()
	* @see #getY()
	* @see #getClickCount()
	* @see #isPopupTrigger()
	* @see #getButton()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, clickCount : Int, popupTrigger : Bool, button : Int) : Void;
	
	/**
	* Constructs a <code>MouseEvent</code> object with the
	* specified source component,
	* type, modifiers, coordinates, click count, and popupTrigger flag.
	* An invocation of the form
	* <tt>MouseEvent(source, id, when, modifiers, x, y, clickCount, popupTrigger)</tt>
	* behaves in exactly the same way as the invocation
	* <tt> {@link #MouseEvent(Component, int, long, int, int, int,
	* int, int, int, boolean, int) MouseEvent}(source, id, when, modifiers,
	* x, y, xAbs, yAbs, clickCount, popupTrigger, MouseEvent.NOBUTTON)</tt>
	* where xAbs and yAbs defines as source's location on screen plus
	* relative coordinates x and y.
	* xAbs and yAbs are set to zero if the source is not showing.
	* This method throws an <code>IllegalArgumentException</code>
	* if <code>source</code> is <code>null</code>.
	*
	* @param source       The <code>Component</code> that originated the event
	* @param id              An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link MouseEvent}
	* @param when         A long integer that gives the time the event occurred.
	*                     Passing negative or zero value
	*                     is not recommended
	* @param modifiers    The modifier keys down during event (e.g. shift, ctrl,
	*                     alt, meta)
	*                     Passing negative parameter
	*                     is not recommended.
	*                     Zero value means that no modifiers were passed.
	*                     Use either an extended _DOWN_MASK or old _MASK modifiers,
	*                     however do not mix models in the one event.
	*                     The extended modifiers are preferred for using
	* @param x            The horizontal x coordinate for the mouse location.
	*                       It is allowed to pass negative values
	* @param y            The vertical y coordinate for the mouse location.
	*                       It is allowed to pass negative values
	* @param clickCount   The number of mouse clicks associated with event.
	*                       Passing negative value
	*                       is not recommended
	* @param popupTrigger A boolean that equals {@code true} if this event
	*                     is a trigger for a popup menu
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getWhen()
	* @see #getModifiers()
	* @see #getX()
	* @see #getY()
	* @see #getClickCount()
	* @see #isPopupTrigger()
	*/
	@:overload @:public public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, clickCount : Int, popupTrigger : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getModifiersEx() : Int;
	
	/**
	* Constructs a <code>MouseEvent</code> object with the
	* specified source component,
	* type, time, modifiers, coordinates, absolute coordinates, click count, popupTrigger flag,
	* and button number.
	* <p>
	* Creating an invalid event (such
	* as by using more than one of the old _MASKs, or modifier/button
	* values which don't match) results in unspecified behavior.
	* Even if inconsistent values for relative and absolute coordinates are
	* passed to the constructor, the mouse event instance is still
	* created and no exception is thrown.
	* This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source       The <code>Component</code> that originated the event
	* @param id              An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link MouseEvent}
	* @param when         A long integer that gives the time the event occurred.
	*                     Passing negative or zero value
	*                     is not recommended
	* @param modifiers    The modifier keys down during event (e.g. shift, ctrl,
	*                     alt, meta)
	*                     Passing negative parameter
	*                     is not recommended.
	*                     Zero value means that no modifiers were passed.
	*                     Use either an extended _DOWN_MASK or old _MASK modifiers,
	*                     however do not mix models in the one event.
	*                     The extended modifiers are preferred for using
	* @param x            The horizontal x coordinate for the mouse location.
	*                       It is allowed to pass negative values
	* @param y            The vertical y coordinate for the mouse location.
	*                       It is allowed to pass negative values
	* @param xAbs           The absolute horizontal x coordinate for the mouse location
	*                       It is allowed to pass negative values
	* @param yAbs           The absolute vertical y coordinate for the mouse location
	*                       It is allowed to pass negative values
	* @param clickCount   The number of mouse clicks associated with event.
	*                       Passing negative value
	*                       is not recommended
	* @param popupTrigger A boolean that equals {@code true} if this event
	*                     is a trigger for a popup menu
	* @param button       An integer that indicates, which of the mouse buttons has
	*                     changed its state.
	* The following rules are applied to this parameter:
	* <ul>
	* <li>If support for the extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* then it is allowed to create {@code MouseEvent} objects only with the standard buttons:
	* {@code NOBUTTON}, {@code BUTTON1}, {@code BUTTON2}, and
	* {@code BUTTON3}.
	* <li> If support for the extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java
	* then it is allowed to create {@code MouseEvent} objects with
	* the standard buttons.
	* In case the support for extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java, then
	* in addition to the standard buttons, {@code MouseEvent} objects can be created
	* using buttons from the range starting from 4 to
	* {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()}
	* if the mouse has more than three buttons.
	* </ul>
	* @throws IllegalArgumentException if {@code button} is less then zero
	* @throws IllegalArgumentException if <code>source</code> is null
	* @throws IllegalArgumentException if {@code button} is greater then BUTTON3 and the support for extended mouse buttons is
	*                                  {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* @throws IllegalArgumentException if {@code button} is greater then the
	*                                  {@link java.awt.MouseInfo#getNumberOfButtons() current number of buttons} and the support
	*                                  for extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() enabled}
	*                                  by Java
	* @throws IllegalArgumentException if an invalid <code>button</code>
	*            value is passed in
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getWhen()
	* @see #getModifiers()
	* @see #getX()
	* @see #getY()
	* @see #getXOnScreen()
	* @see #getYOnScreen()
	* @see #getClickCount()
	* @see #isPopupTrigger()
	* @see #getButton()
	* @see #button
	* @see Toolkit#areExtraMouseButtonsEnabled()
	* @see java.awt.MouseInfo#getNumberOfButtons()
	* @see InputEvent#getMaskForButton(int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, xAbs : Int, yAbs : Int, clickCount : Int, popupTrigger : Bool, button : Int) : Void;
	
	/**
	* Returns the horizontal x position of the event relative to the
	* source component.
	*
	* @return x  an integer indicating horizontal position relative to
	*            the component
	*/
	@:overload @:public public function getX() : Int;
	
	/**
	* Returns the vertical y position of the event relative to the
	* source component.
	*
	* @return y  an integer indicating vertical position relative to
	*            the component
	*/
	@:overload @:public public function getY() : Int;
	
	/**
	* Returns the x,y position of the event relative to the source component.
	*
	* @return a <code>Point</code> object containing the x and y coordinates
	*         relative to the source component
	*
	*/
	@:overload @:public public function getPoint() : java.awt.Point;
	
	/**
	* Translates the event's coordinates to a new position
	* by adding specified <code>x</code> (horizontal) and <code>y</code>
	* (vertical) offsets.
	*
	* @param x the horizontal x value to add to the current x
	*          coordinate position
	* @param y the vertical y value to add to the current y
	coordinate position
	*/
	@:overload @:public @:synchronized public function translatePoint(x : Int, y : Int) : Void;
	
	/**
	* Returns the number of mouse clicks associated with this event.
	*
	* @return integer value for the number of clicks
	*/
	@:overload @:public public function getClickCount() : Int;
	
	/**
	* Returns which, if any, of the mouse buttons has changed state.
	* The returned value is ranged
	* from 0 to the {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()}
	* value.
	* The returned value includes at least the following constants:
	* <ul>
	* <li> {@code NOBUTTON}
	* <li> {@code BUTTON1}
	* <li> {@code BUTTON2}
	* <li> {@code BUTTON3}
	* </ul>
	* It is allowed to use those constants to compare with the returned button number in the application.
	* For example,
	* <pre>
	* if (anEvent.getButton() == MouseEvent.BUTTON1) {
	* </pre>
	* In particular, for a mouse with one, two, or three buttons this method may return the following values:
	* <ul>
	* <li> 0 ({@code NOBUTTON})
	* <li> 1 ({@code BUTTON1})
	* <li> 2 ({@code BUTTON2})
	* <li> 3 ({@code BUTTON3})
	* </ul>
	* Button numbers greater then {@code BUTTON3} have no constant identifier. So if a mouse with five buttons is
	* installed, this method may return the following values:
	* <ul>
	* <li> 0 ({@code NOBUTTON})
	* <li> 1 ({@code BUTTON1})
	* <li> 2 ({@code BUTTON2})
	* <li> 3 ({@code BUTTON3})
	* <li> 4
	* <li> 5
	* </ul>
	* <p>
	* Note: If support for extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* then the AWT event subsystem does not produce mouse events for the extended mouse
	* buttons. So it is not expected that this method returns anything except {@code NOBUTTON}, {@code BUTTON1},
	* {@code BUTTON2}, {@code BUTTON3}.
	*
	* @return one of the values from 0 to {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()}
	*         if support for the extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java.
	*         That range includes {@code NOBUTTON}, {@code BUTTON1}, {@code BUTTON2}, {@code BUTTON3};
	*         <br>
	*         {@code NOBUTTON}, {@code BUTTON1}, {@code BUTTON2} or {@code BUTTON3}
	*         if support for the extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* @since 1.4
	* @see Toolkit#areExtraMouseButtonsEnabled()
	* @see java.awt.MouseInfo#getNumberOfButtons()
	* @see #MouseEvent(Component, int, long, int, int, int, int, int, int, boolean, int)
	* @see InputEvent#getMaskForButton(int)
	*/
	@:require(java4) @:overload @:public public function getButton() : Int;
	
	/**
	* Returns whether or not this mouse event is the popup menu
	* trigger event for the platform.
	* <p><b>Note</b>: Popup menus are triggered differently
	* on different systems. Therefore, <code>isPopupTrigger</code>
	* should be checked in both <code>mousePressed</code>
	* and <code>mouseReleased</code>
	* for proper cross-platform functionality.
	*
	* @return boolean, true if this event is the popup menu trigger
	*         for this platform
	*/
	@:overload @:public public function isPopupTrigger() : Bool;
	
	/**
	* Returns a <code>String</code> instance describing the modifier keys and
	* mouse buttons that were down during the event, such as "Shift",
	* or "Ctrl+Shift". These strings can be localized by changing
	* the <code>awt.properties</code> file.
	* <p>
	* Note that the <code>InputEvent.ALT_MASK</code> and
	* <code>InputEvent.BUTTON2_MASK</code> have equal values,
	* so the "Alt" string is returned for both modifiers.  Likewise,
	* the <code>InputEvent.META_MASK</code> and
	* <code>InputEvent.BUTTON3_MASK</code> have equal values,
	* so the "Meta" string is returned for both modifiers.
	* <p>
	* Note that passing negative parameter is incorrect,
	* and will cause the returning an unspecified string.
	* Zero parameter means that no modifiers were passed and will
	* cause the returning an empty string.
	* <p>
	* @param modifiers A modifier mask describing the modifier keys and
	*                  mouse buttons that were down during the event
	* @return string   string text description of the combination of modifier
	*                  keys and mouse buttons that were down during the event
	* @see InputEvent#getModifiersExText(int)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function getMouseModifiersText(modifiers : Int) : String;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload @:public override public function paramString() : String;
	
	
}
