package java.awt;
/*
* Copyright (c) 1995, 2002, Oracle and/or its affiliates. All rights reserved.
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
* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
* available only for backwards compatilibility.  It has been replaced
* by the <code>AWTEvent</code> class and its subclasses.
* <p>
* <code>Event</code> is a platform-independent class that
* encapsulates events from the platform's Graphical User
* Interface in the Java&nbsp;1.0 event model. In Java&nbsp;1.1
* and later versions, the <code>Event</code> class is maintained
* only for backwards compatibilty. The information in this
* class description is provided to assist programmers in
* converting Java&nbsp;1.0 programs to the new event model.
* <p>
* In the Java&nbsp;1.0 event model, an event contains an
* {@link Event#id} field
* that indicates what type of event it is and which other
* <code>Event</code> variables are relevant for the event.
* <p>
* For keyboard events, {@link Event#key}
* contains a value indicating which key was activated, and
* {@link Event#modifiers} contains the
* modifiers for that event.  For the KEY_PRESS and KEY_RELEASE
* event ids, the value of <code>key</code> is the unicode
* character code for the key. For KEY_ACTION and
* KEY_ACTION_RELEASE, the value of <code>key</code> is
* one of the defined action-key identifiers in the
* <code>Event</code> class (<code>PGUP</code>,
* <code>PGDN</code>, <code>F1</code>, <code>F2</code>, etc).
*
* @author     Sami Shaio
* @since      JDK1.0
*/
@:require(java0) extern class Event implements java.io.Serializable
{
	/**
	* This flag indicates that the Shift key was down when the event
	* occurred.
	*/
	public static var SHIFT_MASK(default, null) : Int;
	
	/**
	* This flag indicates that the Control key was down when the event
	* occurred.
	*/
	public static var CTRL_MASK(default, null) : Int;
	
	/**
	* This flag indicates that the Meta key was down when the event
	* occurred. For mouse events, this flag indicates that the right
	* button was pressed or released.
	*/
	public static var META_MASK(default, null) : Int;
	
	/**
	* This flag indicates that the Alt key was down when
	* the event occurred. For mouse events, this flag indicates that the
	* middle mouse button was pressed or released.
	*/
	public static var ALT_MASK(default, null) : Int;
	
	/**
	* The Home key, a non-ASCII action key.
	*/
	public static var HOME(default, null) : Int;
	
	/**
	* The End key, a non-ASCII action key.
	*/
	public static var END(default, null) : Int;
	
	/**
	* The Page Up key, a non-ASCII action key.
	*/
	public static var PGUP(default, null) : Int;
	
	/**
	* The Page Down key, a non-ASCII action key.
	*/
	public static var PGDN(default, null) : Int;
	
	/**
	* The Up Arrow key, a non-ASCII action key.
	*/
	public static var UP(default, null) : Int;
	
	/**
	* The Down Arrow key, a non-ASCII action key.
	*/
	public static var DOWN(default, null) : Int;
	
	/**
	* The Left Arrow key, a non-ASCII action key.
	*/
	public static var LEFT(default, null) : Int;
	
	/**
	* The Right Arrow key, a non-ASCII action key.
	*/
	public static var RIGHT(default, null) : Int;
	
	/**
	* The F1 function key, a non-ASCII action key.
	*/
	public static var F1(default, null) : Int;
	
	/**
	* The F2 function key, a non-ASCII action key.
	*/
	public static var F2(default, null) : Int;
	
	/**
	* The F3 function key, a non-ASCII action key.
	*/
	public static var F3(default, null) : Int;
	
	/**
	* The F4 function key, a non-ASCII action key.
	*/
	public static var F4(default, null) : Int;
	
	/**
	* The F5 function key, a non-ASCII action key.
	*/
	public static var F5(default, null) : Int;
	
	/**
	* The F6 function key, a non-ASCII action key.
	*/
	public static var F6(default, null) : Int;
	
	/**
	* The F7 function key, a non-ASCII action key.
	*/
	public static var F7(default, null) : Int;
	
	/**
	* The F8 function key, a non-ASCII action key.
	*/
	public static var F8(default, null) : Int;
	
	/**
	* The F9 function key, a non-ASCII action key.
	*/
	public static var F9(default, null) : Int;
	
	/**
	* The F10 function key, a non-ASCII action key.
	*/
	public static var F10(default, null) : Int;
	
	/**
	* The F11 function key, a non-ASCII action key.
	*/
	public static var F11(default, null) : Int;
	
	/**
	* The F12 function key, a non-ASCII action key.
	*/
	public static var F12(default, null) : Int;
	
	/**
	* The Print Screen key, a non-ASCII action key.
	*/
	public static var PRINT_SCREEN(default, null) : Int;
	
	/**
	* The Scroll Lock key, a non-ASCII action key.
	*/
	public static var SCROLL_LOCK(default, null) : Int;
	
	/**
	* The Caps Lock key, a non-ASCII action key.
	*/
	public static var CAPS_LOCK(default, null) : Int;
	
	/**
	* The Num Lock key, a non-ASCII action key.
	*/
	public static var NUM_LOCK(default, null) : Int;
	
	/**
	* The Pause key, a non-ASCII action key.
	*/
	public static var PAUSE(default, null) : Int;
	
	/**
	* The Insert key, a non-ASCII action key.
	*/
	public static var INSERT(default, null) : Int;
	
	/**
	* The Enter key.
	*/
	public static var ENTER(default, null) : Int;
	
	/**
	* The BackSpace key.
	*/
	public static var BACK_SPACE(default, null) : Int;
	
	/**
	* The Tab key.
	*/
	public static var TAB(default, null) : Int;
	
	/**
	* The Escape key.
	*/
	public static var ESCAPE(default, null) : Int;
	
	/**
	* The Delete key.
	*/
	public static var DELETE(default, null) : Int;
	
	/**
	* The user has asked the window manager to kill the window.
	*/
	public static var WINDOW_DESTROY(default, null) : Int;
	
	/**
	* The user has asked the window manager to expose the window.
	*/
	public static var WINDOW_EXPOSE(default, null) : Int;
	
	/**
	* The user has asked the window manager to iconify the window.
	*/
	public static var WINDOW_ICONIFY(default, null) : Int;
	
	/**
	* The user has asked the window manager to de-iconify the window.
	*/
	public static var WINDOW_DEICONIFY(default, null) : Int;
	
	/**
	* The user has asked the window manager to move the window.
	*/
	public static var WINDOW_MOVED(default, null) : Int;
	
	/**
	* The user has pressed a normal key.
	*/
	public static var KEY_PRESS(default, null) : Int;
	
	/**
	* The user has released a normal key.
	*/
	public static var KEY_RELEASE(default, null) : Int;
	
	/**
	* The user has pressed a non-ASCII <em>action</em> key.
	* The <code>key</code> field contains a value that indicates
	* that the event occurred on one of the action keys, which
	* comprise the 12 function keys, the arrow (cursor) keys,
	* Page Up, Page Down, Home, End, Print Screen, Scroll Lock,
	* Caps Lock, Num Lock, Pause, and Insert.
	*/
	public static var KEY_ACTION(default, null) : Int;
	
	/**
	* The user has released a non-ASCII <em>action</em> key.
	* The <code>key</code> field contains a value that indicates
	* that the event occurred on one of the action keys, which
	* comprise the 12 function keys, the arrow (cursor) keys,
	* Page Up, Page Down, Home, End, Print Screen, Scroll Lock,
	* Caps Lock, Num Lock, Pause, and Insert.
	*/
	public static var KEY_ACTION_RELEASE(default, null) : Int;
	
	/**
	* The user has pressed the mouse button. The <code>ALT_MASK</code>
	* flag indicates that the middle button has been pressed.
	* The <code>META_MASK</code>flag indicates that the
	* right button has been pressed.
	* @see     java.awt.Event#ALT_MASK
	* @see     java.awt.Event#META_MASK
	*/
	public static var MOUSE_DOWN(default, null) : Int;
	
	/**
	* The user has released the mouse button. The <code>ALT_MASK</code>
	* flag indicates that the middle button has been released.
	* The <code>META_MASK</code>flag indicates that the
	* right button has been released.
	* @see     java.awt.Event#ALT_MASK
	* @see     java.awt.Event#META_MASK
	*/
	public static var MOUSE_UP(default, null) : Int;
	
	/**
	* The mouse has moved with no button pressed.
	*/
	public static var MOUSE_MOVE(default, null) : Int;
	
	/**
	* The mouse has entered a component.
	*/
	public static var MOUSE_ENTER(default, null) : Int;
	
	/**
	* The mouse has exited a component.
	*/
	public static var MOUSE_EXIT(default, null) : Int;
	
	/**
	* The user has moved the mouse with a button pressed. The
	* <code>ALT_MASK</code> flag indicates that the middle
	* button is being pressed. The <code>META_MASK</code> flag indicates
	* that the right button is being pressed.
	* @see     java.awt.Event#ALT_MASK
	* @see     java.awt.Event#META_MASK
	*/
	public static var MOUSE_DRAG(default, null) : Int;
	
	/**
	* The user has activated the <em>line up</em>
	* area of a scroll bar.
	*/
	public static var SCROLL_LINE_UP(default, null) : Int;
	
	/**
	* The user has activated the <em>line down</em>
	* area of a scroll bar.
	*/
	public static var SCROLL_LINE_DOWN(default, null) : Int;
	
	/**
	* The user has activated the <em>page up</em>
	* area of a scroll bar.
	*/
	public static var SCROLL_PAGE_UP(default, null) : Int;
	
	/**
	* The user has activated the <em>page down</em>
	* area of a scroll bar.
	*/
	public static var SCROLL_PAGE_DOWN(default, null) : Int;
	
	/**
	* The user has moved the bubble (thumb) in a scroll bar,
	* moving to an "absolute" position, rather than to
	* an offset from the last postion.
	*/
	public static var SCROLL_ABSOLUTE(default, null) : Int;
	
	/**
	* The scroll begin event.
	*/
	public static var SCROLL_BEGIN(default, null) : Int;
	
	/**
	* The scroll end event.
	*/
	public static var SCROLL_END(default, null) : Int;
	
	/**
	* An item in a list has been selected.
	*/
	public static var LIST_SELECT(default, null) : Int;
	
	/**
	* An item in a list has been deselected.
	*/
	public static var LIST_DESELECT(default, null) : Int;
	
	/**
	* This event indicates that the user wants some action to occur.
	*/
	public static var ACTION_EVENT(default, null) : Int;
	
	/**
	* A file loading event.
	*/
	public static var LOAD_FILE(default, null) : Int;
	
	/**
	* A file saving event.
	*/
	public static var SAVE_FILE(default, null) : Int;
	
	/**
	* A component gained the focus.
	*/
	public static var GOT_FOCUS(default, null) : Int;
	
	/**
	* A component lost the focus.
	*/
	public static var LOST_FOCUS(default, null) : Int;
	
	/**
	* The target component. This indicates the component over which the
	* event occurred or with which the event is associated.
	* This object has been replaced by AWTEvent.getSource()
	*
	* @serial
	* @see java.awt.AWTEvent#getSource()
	*/
	public var target : Dynamic;
	
	/**
	* The time stamp.
	* Replaced by InputEvent.getWhen().
	*
	* @serial
	* @see java.awt.event.InputEvent#getWhen()
	*/
	public var when : haxe.Int64;
	
	/**
	* Indicates which type of event the event is, and which
	* other <code>Event</code> variables are relevant for the event.
	* This has been replaced by AWTEvent.getID()
	*
	* @serial
	* @see java.awt.AWTEvent#getID()
	*/
	public var id : Int;
	
	/**
	* The <i>x</i> coordinate of the event.
	* Replaced by MouseEvent.getX()
	*
	* @serial
	* @see java.awt.event.MouseEvent#getX()
	*/
	public var x : Int;
	
	/**
	* The <i>y</i> coordinate of the event.
	* Replaced by MouseEvent.getY()
	*
	* @serial
	* @see java.awt.event.MouseEvent#getY()
	*/
	public var y : Int;
	
	/**
	* The key code of the key that was pressed in a keyboard event.
	* This has been replaced by KeyEvent.getKeyCode()
	*
	* @serial
	* @see java.awt.event.KeyEvent#getKeyCode()
	*/
	public var key : Int;
	
	/**
	* The state of the modifier keys.
	* This is replaced with InputEvent.getModifiers()
	* In java 1.1 MouseEvent and KeyEvent are subclasses
	* of InputEvent.
	*
	* @serial
	* @see java.awt.event.InputEvent#getModifiers()
	*/
	public var modifiers : Int;
	
	/**
	* For <code>MOUSE_DOWN</code> events, this field indicates the
	* number of consecutive clicks. For other events, its value is
	* <code>0</code>.
	* This field has been replaced by MouseEvent.getClickCount().
	*
	* @serial
	* @see java.awt.event.MouseEvent#getClickCount().
	*/
	public var clickCount : Int;
	
	/**
	* An arbitrary argument of the event. The value of this field
	* depends on the type of event.
	* <code>arg</code> has been replaced by event specific property.
	*
	* @serial
	*/
	public var arg : Dynamic;
	
	/**
	* The next event. This field is set when putting events into a
	* linked list.
	* This has been replaced by EventQueue.
	*
	* @serial
	* @see java.awt.EventQueue
	*/
	public var evt : java.awt.Event;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Creates an instance of <code>Event</code> with the specified target
	* component, time stamp, event type, <i>x</i> and <i>y</i>
	* coordinates, keyboard key, state of the modifier keys, and
	* argument.
	* @param     target     the target component.
	* @param     when       the time stamp.
	* @param     id         the event type.
	* @param     x          the <i>x</i> coordinate.
	* @param     y          the <i>y</i> coordinate.
	* @param     key        the key pressed in a keyboard event.
	* @param     modifiers  the state of the modifier keys.
	* @param     arg        the specified argument.
	*/
	@:overload public function new(target : Dynamic, when : haxe.Int64, id : Int, x : Int, y : Int, key : Int, modifiers : Int, arg : Dynamic) : Void;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Creates an instance of <code>Event</code>, with the specified target
	* component, time stamp, event type, <i>x</i> and <i>y</i>
	* coordinates, keyboard key, state of the modifier keys, and an
	* argument set to <code>null</code>.
	* @param     target     the target component.
	* @param     when       the time stamp.
	* @param     id         the event type.
	* @param     x          the <i>x</i> coordinate.
	* @param     y          the <i>y</i> coordinate.
	* @param     key        the key pressed in a keyboard event.
	* @param     modifiers  the state of the modifier keys.
	*/
	@:overload public function new(target : Dynamic, when : haxe.Int64, id : Int, x : Int, y : Int, key : Int, modifiers : Int) : Void;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Creates an instance of <code>Event</code> with the specified
	* target component, event type, and argument.
	* @param     target     the target component.
	* @param     id         the event type.
	* @param     arg        the specified argument.
	*/
	@:overload public function new(target : Dynamic, id : Int, arg : Dynamic) : Void;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Translates this event so that its <i>x</i> and <i>y</i>
	* coordinates are increased by <i>dx</i> and <i>dy</i>,
	* respectively.
	* <p>
	* This method translates an event relative to the given component.
	* This involves, at a minimum, translating the coordinates into the
	* local coordinate system of the given component. It may also involve
	* translating a region in the case of an expose event.
	* @param     dx     the distance to translate the <i>x</i> coordinate.
	* @param     dy     the distance to translate the <i>y</i> coordinate.
	*/
	@:overload public function translate(dx : Int, dy : Int) : Void;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Checks if the Shift key is down.
	* @return    <code>true</code> if the key is down;
	*            <code>false</code> otherwise.
	* @see       java.awt.Event#modifiers
	* @see       java.awt.Event#controlDown
	* @see       java.awt.Event#metaDown
	*/
	@:overload public function shiftDown() : Bool;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Checks if the Control key is down.
	* @return    <code>true</code> if the key is down;
	*            <code>false</code> otherwise.
	* @see       java.awt.Event#modifiers
	* @see       java.awt.Event#shiftDown
	* @see       java.awt.Event#metaDown
	*/
	@:overload public function controlDown() : Bool;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Checks if the Meta key is down.
	*
	* @return    <code>true</code> if the key is down;
	*            <code>false</code> otherwise.
	* @see       java.awt.Event#modifiers
	* @see       java.awt.Event#shiftDown
	* @see       java.awt.Event#controlDown
	*/
	@:overload public function metaDown() : Bool;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Returns a string representing the state of this <code>Event</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return    the parameter string of this event
	*/
	@:overload private function paramString() : String;
	
	/**
	* <b>NOTE:</b> The <code>Event</code> class is obsolete and is
	* available only for backwards compatilibility.  It has been replaced
	* by the <code>AWTEvent</code> class and its subclasses.
	* <p>
	* Returns a representation of this event's values as a string.
	* @return    a string that represents the event and the values
	*                 of its member fields.
	* @see       java.awt.Event#paramString
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function toString() : String;
	
	
}
