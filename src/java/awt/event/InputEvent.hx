package java.awt.event;
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
extern class InputEvent extends java.awt.event.ComponentEvent
{
	/**
	* The Shift key modifier constant.
	* It is recommended that SHIFT_DOWN_MASK be used instead.
	*/
	public static var SHIFT_MASK(default, null) : Int;
	
	/**
	* The Control key modifier constant.
	* It is recommended that CTRL_DOWN_MASK be used instead.
	*/
	public static var CTRL_MASK(default, null) : Int;
	
	/**
	* The Meta key modifier constant.
	* It is recommended that META_DOWN_MASK be used instead.
	*/
	public static var META_MASK(default, null) : Int;
	
	/**
	* The Alt key modifier constant.
	* It is recommended that ALT_DOWN_MASK be used instead.
	*/
	public static var ALT_MASK(default, null) : Int;
	
	/**
	* The AltGraph key modifier constant.
	*/
	public static var ALT_GRAPH_MASK(default, null) : Int;
	
	/**
	* The Mouse Button1 modifier constant.
	* It is recommended that BUTTON1_DOWN_MASK be used instead.
	*/
	public static var BUTTON1_MASK(default, null) : Int;
	
	/**
	* The Mouse Button2 modifier constant.
	* It is recommended that BUTTON2_DOWN_MASK be used instead.
	* Note that BUTTON2_MASK has the same value as ALT_MASK.
	*/
	public static var BUTTON2_MASK(default, null) : Int;
	
	/**
	* The Mouse Button3 modifier constant.
	* It is recommended that BUTTON3_DOWN_MASK be used instead.
	* Note that BUTTON3_MASK has the same value as META_MASK.
	*/
	public static var BUTTON3_MASK(default, null) : Int;
	
	/**
	* The Shift key extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var SHIFT_DOWN_MASK(default, null) : Int;
	
	/**
	* The Control key extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var CTRL_DOWN_MASK(default, null) : Int;
	
	/**
	* The Meta key extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var META_DOWN_MASK(default, null) : Int;
	
	/**
	* The Alt key extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var ALT_DOWN_MASK(default, null) : Int;
	
	/**
	* The Mouse Button1 extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var BUTTON1_DOWN_MASK(default, null) : Int;
	
	/**
	* The Mouse Button2 extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var BUTTON2_DOWN_MASK(default, null) : Int;
	
	/**
	* The Mouse Button3 extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var BUTTON3_DOWN_MASK(default, null) : Int;
	
	/**
	* The AltGraph key extended modifier constant.
	* @since 1.4
	*/
	@:require(java4) public static var ALT_GRAPH_DOWN_MASK(default, null) : Int;
	
	/**
	* A method to obtain a mask for any existing mouse button.
	* The returned mask may be used for different purposes. Following are some of them:
	* <ul>
	* <li> {@link java.awt.Robot#mousePress(int) mousePress(buttons)} and
	*      {@link java.awt.Robot#mouseRelease(int) mouseRelease(buttons)}
	* <li> as a {@code modifiers} parameter when creating a new {@link MouseEvent} instance
	* <li> to check {@link MouseEvent#getModifiersEx() modifiersEx} of existing {@code MouseEvent}
	* </ul>
	* @param button is a number to represent a button starting from 1.
	* For example,
	* <pre>
	* int button = InputEvent.getMaskForButton(1);
	* </pre>
	* will have the same meaning as
	* <pre>
	* int button = InputEvent.getMaskForButton(MouseEvent.BUTTON1);
	* </pre>
	* because {@link MouseEvent#BUTTON1 MouseEvent.BUTTON1} equals to 1.
	* If a mouse has three enabled buttons(see {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()})
	* then the values from the left column passed into the method will return
	* corresponding values from the right column:
	* <PRE>
	*    <b>button </b>   <b>returned mask</b>
	*    {@link MouseEvent#BUTTON1 BUTTON1}  {@link MouseEvent#BUTTON1_DOWN_MASK BUTTON1_DOWN_MASK}
	*    {@link MouseEvent#BUTTON2 BUTTON2}  {@link MouseEvent#BUTTON2_DOWN_MASK BUTTON2_DOWN_MASK}
	*    {@link MouseEvent#BUTTON3 BUTTON3}  {@link MouseEvent#BUTTON3_DOWN_MASK BUTTON3_DOWN_MASK}
	* </PRE>
	* If a mouse has more than three enabled buttons then more values
	* are admissible (4, 5, etc.). There is no assigned constants for these extended buttons.
	* The button masks for the extra buttons returned by this method have no assigned names like the
	* first three button masks.
	* <p>
	* This method has the following implementation restriction.
	* It returns masks for a limited number of buttons only. The maximum number is
	* implementation dependent and may vary.
	* This limit is defined by the relevant number
	* of buttons that may hypothetically exist on the mouse but it is greater than the
	* {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()}.
	* <p>
	* @throws IllegalArgumentException if {@code button} is less than zero or greater than the number
	*         of button masks reserved for buttons
	* @since 7.0
	* @see java.awt.MouseInfo#getNumberOfButtons()
	* @see Toolkit#areExtraMouseButtonsEnabled()
	* @see MouseEvent#getModifiers()
	* @see MouseEvent#getModifiersEx()
	*/
	@:require(java0) @:overload public static function getMaskForButton(button : Int) : Int;
	
	/**
	* Returns whether or not the Shift modifier is down on this event.
	*/
	@:overload public function isShiftDown() : Bool;
	
	/**
	* Returns whether or not the Control modifier is down on this event.
	*/
	@:overload public function isControlDown() : Bool;
	
	/**
	* Returns whether or not the Meta modifier is down on this event.
	*/
	@:overload public function isMetaDown() : Bool;
	
	/**
	* Returns whether or not the Alt modifier is down on this event.
	*/
	@:overload public function isAltDown() : Bool;
	
	/**
	* Returns whether or not the AltGraph modifier is down on this event.
	*/
	@:overload public function isAltGraphDown() : Bool;
	
	/**
	* Returns the difference in milliseconds between the timestamp of when this event occurred and
	* midnight, January 1, 1970 UTC.
	*/
	@:overload public function getWhen() : haxe.Int64;
	
	/**
	* Returns the modifier mask for this event.
	*/
	@:overload public function getModifiers() : Int;
	
	/**
	* Returns the extended modifier mask for this event.
	* Extended modifiers represent the state of all modal keys,
	* such as ALT, CTRL, META, and the mouse buttons just after
	* the event occurred
	* <P>
	* For example, if the user presses <b>button 1</b> followed by
	* <b>button 2</b>, and then releases them in the same order,
	* the following sequence of events is generated:
	* <PRE>
	*    <code>MOUSE_PRESSED</code>:  <code>BUTTON1_DOWN_MASK</code>
	*    <code>MOUSE_PRESSED</code>:  <code>BUTTON1_DOWN_MASK | BUTTON2_DOWN_MASK</code>
	*    <code>MOUSE_RELEASED</code>: <code>BUTTON2_DOWN_MASK</code>
	*    <code>MOUSE_CLICKED</code>:  <code>BUTTON2_DOWN_MASK</code>
	*    <code>MOUSE_RELEASED</code>:
	*    <code>MOUSE_CLICKED</code>:
	* </PRE>
	* <P>
	* It is not recommended to compare the return value of this method
	* using <code>==</code> because new modifiers can be added in the future.
	* For example, the appropriate way to check that SHIFT and BUTTON1 are
	* down, but CTRL is up is demonstrated by the following code:
	* <PRE>
	*    int onmask = SHIFT_DOWN_MASK | BUTTON1_DOWN_MASK;
	*    int offmask = CTRL_DOWN_MASK;
	*    if ((event.getModifiersEx() & (onmask | offmask)) == onmask) {
	*        ...
	*    }
	* </PRE>
	* The above code will work even if new modifiers are added.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function getModifiersEx() : Int;
	
	/**
	* Consumes this event so that it will not be processed
	* in the default manner by the source which originated it.
	*/
	@:overload override public function consume() : Void;
	
	/**
	* Returns whether or not this event has been consumed.
	* @see #consume
	*/
	@:overload override public function isConsumed() : Bool;
	
	/**
	* Returns a String describing the extended modifier keys and
	* mouse buttons, such as "Shift", "Button1", or "Ctrl+Shift".
	* These strings can be localized by changing the
	* <code>awt.properties</code> file.
	* <p>
	* Note that passing negative parameter is incorrect,
	* and will cause the returning an unspecified string.
	* Zero parameter means that no modifiers were passed and will
	* cause the returning an empty string.
	*
	* @param modifiers a modifier mask describing the extended
	*                modifier keys and mouse buttons for the event
	* @return a text description of the combination of extended
	*         modifier keys and mouse buttons that were held down
	*         during the event.
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getModifiersExText(modifiers : Int) : String;
	
	
}
