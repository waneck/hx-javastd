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
extern class WindowEvent extends java.awt.event.ComponentEvent
{
	/**
	* The first number in the range of ids used for window events.
	*/
	@:public @:static @:final public static var WINDOW_FIRST(default, null) : Int;
	
	/**
	* The window opened event.  This event is delivered only
	* the first time a window is made visible.
	*/
	@:public @:static @:final public static var WINDOW_OPENED(default, null) : Int;
	
	/**
	* The "window is closing" event. This event is delivered when
	* the user attempts to close the window from the window's system menu.
	* If the program does not explicitly hide or dispose the window
	* while processing this event, the window close operation will be
	* cancelled.
	*/
	@:public @:static @:final public static var WINDOW_CLOSING(default, null) : Int;
	
	/**
	* The window closed event. This event is delivered after
	* the window has been closed as the result of a call to dispose.
	*/
	@:public @:static @:final public static var WINDOW_CLOSED(default, null) : Int;
	
	/**
	* The window iconified event. This event is delivered when
	* the window has been changed from a normal to a minimized state.
	* For many platforms, a minimized window is displayed as
	* the icon specified in the window's iconImage property.
	* @see java.awt.Frame#setIconImage
	*/
	@:public @:static @:final public static var WINDOW_ICONIFIED(default, null) : Int;
	
	/**
	* The window deiconified event type. This event is delivered when
	* the window has been changed from a minimized to a normal state.
	*/
	@:public @:static @:final public static var WINDOW_DEICONIFIED(default, null) : Int;
	
	/**
	* The window-activated event type. This event is delivered when the Window
	* becomes the active Window. Only a Frame or a Dialog can be the active
	* Window. The native windowing system may denote the active Window or its
	* children with special decorations, such as a highlighted title bar. The
	* active Window is always either the focused Window, or the first Frame or
	* Dialog that is an owner of the focused Window.
	*/
	@:public @:static @:final public static var WINDOW_ACTIVATED(default, null) : Int;
	
	/**
	* The window-deactivated event type. This event is delivered when the
	* Window is no longer the active Window. Only a Frame or a Dialog can be
	* the active Window. The native windowing system may denote the active
	* Window or its children with special decorations, such as a highlighted
	* title bar. The active Window is always either the focused Window, or the
	* first Frame or Dialog that is an owner of the focused Window.
	*/
	@:public @:static @:final public static var WINDOW_DEACTIVATED(default, null) : Int;
	
	/**
	* The window-gained-focus event type. This event is delivered when the
	* Window becomes the focused Window, which means that the Window, or one
	* of its subcomponents, will receive keyboard events.
	*/
	@:public @:static @:final public static var WINDOW_GAINED_FOCUS(default, null) : Int;
	
	/**
	* The window-lost-focus event type. This event is delivered when a Window
	* is no longer the focused Window, which means keyboard events will no
	* longer be delivered to the Window or any of its subcomponents.
	*/
	@:public @:static @:final public static var WINDOW_LOST_FOCUS(default, null) : Int;
	
	/**
	* The window-state-changed event type.  This event is delivered
	* when a Window's state is changed by virtue of it being
	* iconified, maximized etc.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var WINDOW_STATE_CHANGED(default, null) : Int;
	
	/**
	* The last number in the range of ids used for window events.
	*/
	@:public @:static @:final public static var WINDOW_LAST(default, null) : Int;
	
	/**
	* Constructs a <code>WindowEvent</code> object.
	* <p>This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source    The <code>Window</code> object
	*                    that originated the event
	* @param id        An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link WindowEvent}
	* @param opposite  The other window involved in the focus or activation
	*                      change, or <code>null</code>
	* @param oldState  Previous state of the window for window state change event.
	*                  See {@code #getOldState()} for allowable values
	* @param newState  New state of the window for window state change event.
	*                  See {@code #getNewState()} for allowable values
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getWindow()
	* @see #getID()
	* @see #getOppositeWindow()
	* @see #getOldState()
	* @see #getNewState()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(source : java.awt.Window, id : Int, opposite : java.awt.Window, oldState : Int, newState : Int) : Void;
	
	/**
	* Constructs a <code>WindowEvent</code> object with the
	* specified opposite <code>Window</code>. The opposite
	* <code>Window</code> is the other <code>Window</code>
	* involved in this focus or activation change.
	* For a <code>WINDOW_ACTIVATED</code> or
	* <code>WINDOW_GAINED_FOCUS</code> event, this is the
	* <code>Window</code> that lost activation or focus.
	* For a <code>WINDOW_DEACTIVATED</code> or
	* <code>WINDOW_LOST_FOCUS</code> event, this is the
	* <code>Window</code> that gained activation or focus.
	* If this focus change occurs with a native application, with a
	* Java application in a different VM, or with no other
	* <code>Window</code>, then the opposite Window is <code>null</code>.
	* <p>This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source     The <code>Window</code> object that
	*                   originated the event
	* @param id        An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link WindowEvent}.
	*                  It is expected that this constructor will not
	*                  be used for other then
	*                  {@code WINDOW_ACTIVATED},{@code WINDOW_DEACTIVATED},
	*                  {@code WINDOW_GAINED_FOCUS}, or {@code WINDOW_LOST_FOCUS}.
	*                  {@code WindowEvent} types,
	*                  because the opposite <code>Window</code> of other event types
	*                  will always be {@code null}.
	* @param opposite   The other <code>Window</code> involved in the
	*                   focus or activation change, or <code>null</code>
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getWindow()
	* @see #getID()
	* @see #getOppositeWindow()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(source : java.awt.Window, id : Int, opposite : java.awt.Window) : Void;
	
	/**
	* Constructs a <code>WindowEvent</code> object with the specified
	* previous and new window states.
	* <p>This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source    The <code>Window</code> object
	*                  that originated the event
	* @param id        An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link WindowEvent}.
	*                  It is expected that this constructor will not
	*                  be used for other then
	*                  {@code WINDOW_STATE_CHANGED}
	*                  {@code WindowEvent}
	*                  types, because the previous and new window
	*                  states are meaningless for other event types.
	* @param oldState  An integer representing the previous window state.
	*                  See {@code #getOldState()} for allowable values
	* @param newState  An integer representing the new window state.
	*                  See {@code #getNewState()} for allowable values
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getWindow()
	* @see #getID()
	* @see #getOldState()
	* @see #getNewState()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(source : java.awt.Window, id : Int, oldState : Int, newState : Int) : Void;
	
	/**
	* Constructs a <code>WindowEvent</code> object.
	* <p>This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source The <code>Window</code> object that originated the event
	* @param id     An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link WindowEvent}.
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getWindow()
	* @see #getID()
	*/
	@:overload @:public public function new(source : java.awt.Window, id : Int) : Void;
	
	/**
	* Returns the originator of the event.
	*
	* @return the Window object that originated the event
	*/
	@:overload @:public public function getWindow() : java.awt.Window;
	
	/**
	* Returns the other Window involved in this focus or activation change.
	* For a WINDOW_ACTIVATED or WINDOW_GAINED_FOCUS event, this is the Window
	* that lost activation or focus. For a WINDOW_DEACTIVATED or
	* WINDOW_LOST_FOCUS event, this is the Window that gained activation or
	* focus. For any other type of WindowEvent, or if the focus or activation
	* change occurs with a native application, with a Java application in a
	* different VM or context, or with no other Window, null is returned.
	*
	* @return the other Window involved in the focus or activation change, or
	*         null
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getOppositeWindow() : java.awt.Window;
	
	/**
	* For <code>WINDOW_STATE_CHANGED</code> events returns the
	* previous state of the window. The state is
	* represented as a bitwise mask.
	* <ul>
	* <li><code>NORMAL</code>
	* <br>Indicates that no state bits are set.
	* <li><code>ICONIFIED</code>
	* <li><code>MAXIMIZED_HORIZ</code>
	* <li><code>MAXIMIZED_VERT</code>
	* <li><code>MAXIMIZED_BOTH</code>
	* <br>Concatenates <code>MAXIMIZED_HORIZ</code>
	* and <code>MAXIMIZED_VERT</code>.
	* </ul>
	*
	* @return a bitwise mask of the previous window state
	* @see java.awt.Frame#getExtendedState()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getOldState() : Int;
	
	/**
	* For <code>WINDOW_STATE_CHANGED</code> events returns the
	* new state of the window. The state is
	* represented as a bitwise mask.
	* <ul>
	* <li><code>NORMAL</code>
	* <br>Indicates that no state bits are set.
	* <li><code>ICONIFIED</code>
	* <li><code>MAXIMIZED_HORIZ</code>
	* <li><code>MAXIMIZED_VERT</code>
	* <li><code>MAXIMIZED_BOTH</code>
	* <br>Concatenates <code>MAXIMIZED_HORIZ</code>
	* and <code>MAXIMIZED_VERT</code>.
	* </ul>
	*
	* @return a bitwise mask of the new window state
	* @see java.awt.Frame#getExtendedState()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getNewState() : Int;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload @:public override public function paramString() : String;
	
	
}
