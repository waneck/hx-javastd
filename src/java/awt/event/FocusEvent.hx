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
extern class FocusEvent extends java.awt.event.ComponentEvent
{
	/**
	* The first number in the range of ids used for focus events.
	*/
	@:public @:static @:final public static var FOCUS_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for focus events.
	*/
	@:public @:static @:final public static var FOCUS_LAST(default, null) : Int;
	
	/**
	* This event indicates that the Component is now the focus owner.
	*/
	@:public @:static @:final public static var FOCUS_GAINED(default, null) : Int;
	
	/**
	* This event indicates that the Component is no longer the focus owner.
	*/
	@:public @:static @:final public static var FOCUS_LOST(default, null) : Int;
	
	/**
	* Constructs a <code>FocusEvent</code> object with the
	* specified temporary state and opposite <code>Component</code>.
	* The opposite <code>Component</code> is the other
	* <code>Component</code> involved in this focus change.
	* For a <code>FOCUS_GAINED</code> event, this is the
	* <code>Component</code> that lost focus. For a
	* <code>FOCUS_LOST</code> event, this is the <code>Component</code>
	* that gained focus. If this focus change occurs with a native
	* application, with a Java application in a different VM,
	* or with no other <code>Component</code>, then the opposite
	* <code>Component</code> is <code>null</code>.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source     The <code>Component</code> that originated the event
	* @param id         An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link FocusEvent}
	* @param temporary  Equals <code>true</code> if the focus change is temporary;
	*                   <code>false</code> otherwise
	* @param opposite   The other Component involved in the focus change,
	*                   or <code>null</code>
	* @throws IllegalArgumentException if <code>source</code> equals {@code null}
	* @see #getSource()
	* @see #getID()
	* @see #isTemporary()
	* @see #getOppositeComponent()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(source : java.awt.Component, id : Int, temporary : Bool, opposite : java.awt.Component) : Void;
	
	/**
	* Constructs a <code>FocusEvent</code> object and identifies
	* whether or not the change is temporary.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source    The <code>Component</code> that originated the event
	* @param id        An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link FocusEvent}
	* @param temporary Equals <code>true</code> if the focus change is temporary;
	*                  <code>false</code> otherwise
	* @throws IllegalArgumentException if <code>source</code> equals {@code null}
	* @see #getSource()
	* @see #getID()
	* @see #isTemporary()
	*/
	@:overload @:public public function new(source : java.awt.Component, id : Int, temporary : Bool) : Void;
	
	/**
	* Constructs a <code>FocusEvent</code> object and identifies it
	* as a permanent change in focus.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source    The <code>Component</code> that originated the event
	* @param id        An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link FocusEvent}
	* @throws IllegalArgumentException if <code>source</code> equals {@code null}
	* @see #getSource()
	* @see #getID()
	*/
	@:overload @:public public function new(source : java.awt.Component, id : Int) : Void;
	
	/**
	* Identifies the focus change event as temporary or permanent.
	*
	* @return <code>true</code> if the focus change is temporary;
	*         <code>false</code> otherwise
	*/
	@:overload @:public public function isTemporary() : Bool;
	
	/**
	* Returns the other Component involved in this focus change. For a
	* FOCUS_GAINED event, this is the Component that lost focus. For a
	* FOCUS_LOST event, this is the Component that gained focus. If this
	* focus change occurs with a native application, with a Java application
	* in a different VM or context, or with no other Component, then null is
	* returned.
	*
	* @return the other Component involved in the focus change, or null
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getOppositeComponent() : java.awt.Component;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload @:public override public function paramString() : String;
	
	
}
