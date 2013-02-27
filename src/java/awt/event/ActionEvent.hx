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
extern class ActionEvent extends java.awt.AWTEvent
{
	/**
	* The shift modifier. An indicator that the shift key was held
	* down during the event.
	*/
	public static var SHIFT_MASK(default, null) : Int;
	
	/**
	* The control modifier. An indicator that the control key was held
	* down during the event.
	*/
	public static var CTRL_MASK(default, null) : Int;
	
	/**
	* The meta modifier. An indicator that the meta key was held
	* down during the event.
	*/
	public static var META_MASK(default, null) : Int;
	
	/**
	* The alt modifier. An indicator that the alt key was held
	* down during the event.
	*/
	public static var ALT_MASK(default, null) : Int;
	
	/**
	* The first number in the range of ids used for action events.
	*/
	public static var ACTION_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for action events.
	*/
	public static var ACTION_LAST(default, null) : Int;
	
	/**
	* This event id indicates that a meaningful action occured.
	*/
	public static var ACTION_PERFORMED(default, null) : Int;
	
	/**
	* Constructs an <code>ActionEvent</code> object.
	* <p>
	* This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	* A <code>null</code> <code>command</code> string is legal,
	* but not recommended.
	*
	* @param source  The object that originated the event
	* @param id      An integer that identifies the event.
	*                     For information on allowable values, see
	*                     the class description for {@link ActionEvent}
	* @param command A string that may specify a command (possibly one
	*                of several) associated with the event
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getActionCommand()
	*/
	@:overload public function new(source : Dynamic, id : Int, command : String) : Void;
	
	/**
	* Constructs an <code>ActionEvent</code> object with modifier keys.
	* <p>
	* This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	* A <code>null</code> <code>command</code> string is legal,
	* but not recommended.
	*
	* @param source  The object that originated the event
	* @param id      An integer that identifies the event.
	*                     For information on allowable values, see
	*                     the class description for {@link ActionEvent}
	* @param command A string that may specify a command (possibly one
	*                of several) associated with the event
	* @param modifiers The modifier keys down during event
	*                  (shift, ctrl, alt, meta).
	*                  Passing negative parameter is not recommended.
	*                  Zero value means that no modifiers were passed
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getActionCommand()
	* @see #getModifiers()
	*/
	@:overload public function new(source : Dynamic, id : Int, command : String, modifiers : Int) : Void;
	
	/**
	* Constructs an <code>ActionEvent</code> object with the specified
	* modifier keys and timestamp.
	* <p>
	* This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	* A <code>null</code> <code>command</code> string is legal,
	* but not recommended.
	*
	* @param source    The object that originated the event
	* @param id      An integer that identifies the event.
	*                     For information on allowable values, see
	*                     the class description for {@link ActionEvent}
	* @param command A string that may specify a command (possibly one
	*                of several) associated with the event
	* @param modifiers The modifier keys down during event
	*                  (shift, ctrl, alt, meta).
	*                  Passing negative parameter is not recommended.
	*                  Zero value means that no modifiers were passed
	* @param when   A long that gives the time the event occurred.
	*               Passing negative or zero value
	*               is not recommended
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getActionCommand()
	* @see #getModifiers()
	* @see #getWhen()
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(source : Dynamic, id : Int, command : String, when : haxe.Int64, modifiers : Int) : Void;
	
	/**
	* Returns the command string associated with this action.
	* This string allows a "modal" component to specify one of several
	* commands, depending on its state. For example, a single button might
	* toggle between "show details" and "hide details". The source object
	* and the event would be the same in each case, but the command string
	* would identify the intended action.
	* <p>
	* Note that if a <code>null</code> command string was passed
	* to the constructor for this <code>ActionEvent</code>, this
	* this method returns <code>null</code>.
	*
	* @return the string identifying the command for this event
	*/
	@:overload public function getActionCommand() : String;
	
	/**
	* Returns the timestamp of when this event occurred. Because an
	* ActionEvent is a high-level, semantic event, the timestamp is typically
	* the same as an underlying InputEvent.
	*
	* @return this event's timestamp
	* @since 1.4
	*/
	@:require(java4) @:overload public function getWhen() : haxe.Int64;
	
	/**
	* Returns the modifier keys held down during this action event.
	*
	* @return the bitwise-or of the modifier constants
	*/
	@:overload public function getModifiers() : Int;
	
	/**
	* Returns a parameter string identifying this action event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its associated command
	*/
	@:overload override public function paramString() : String;
	
	
}
