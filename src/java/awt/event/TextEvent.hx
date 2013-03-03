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
extern class TextEvent extends java.awt.AWTEvent
{
	/**
	* The first number in the range of ids used for text events.
	*/
	@:public @:static @:final public static var TEXT_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for text events.
	*/
	@:public @:static @:final public static var TEXT_LAST(default, null) : Int;
	
	/**
	* This event id indicates that object's text changed.
	*/
	@:public @:static @:final public static var TEXT_VALUE_CHANGED(default, null) : Int;
	
	/**
	* Constructs a <code>TextEvent</code> object.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source The (<code>TextComponent</code>) object that
	*               originated the event
	* @param id     An integer that identifies the event type.
	*                     For information on allowable values, see
	*                     the class description for {@link TextEvent}
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	*/
	@:overload @:public public function new(source : Dynamic, id : Int) : Void;
	
	/**
	* Returns a parameter string identifying this text event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload @:public override public function paramString() : String;
	
	
}
