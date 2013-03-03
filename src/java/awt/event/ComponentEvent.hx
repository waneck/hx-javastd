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
extern class ComponentEvent extends java.awt.AWTEvent
{
	/**
	* The first number in the range of ids used for component events.
	*/
	@:public @:static @:final public static var COMPONENT_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for component events.
	*/
	@:public @:static @:final public static var COMPONENT_LAST(default, null) : Int;
	
	/**
	* This event indicates that the component's position changed.
	*/
	@:public @:static @:final public static var COMPONENT_MOVED(default, null) : Int;
	
	/**
	* This event indicates that the component's size changed.
	*/
	@:public @:static @:final public static var COMPONENT_RESIZED(default, null) : Int;
	
	/**
	* This event indicates that the component was made visible.
	*/
	@:public @:static @:final public static var COMPONENT_SHOWN(default, null) : Int;
	
	/**
	* This event indicates that the component was rendered invisible.
	*/
	@:public @:static @:final public static var COMPONENT_HIDDEN(default, null) : Int;
	
	/**
	* Constructs a <code>ComponentEvent</code> object.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source The <code>Component</code> that originated the event
	* @param id     An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link ComponentEvent}
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getComponent()
	* @see #getID()
	*/
	@:overload @:public public function new(source : java.awt.Component, id : Int) : Void;
	
	/**
	* Returns the originator of the event.
	*
	* @return the <code>Component</code> object that originated
	* the event, or <code>null</code> if the object is not a
	* <code>Component</code>.
	*/
	@:overload @:public public function getComponent() : java.awt.Component;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload @:public override public function paramString() : String;
	
	
}
