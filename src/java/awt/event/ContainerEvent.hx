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
extern class ContainerEvent extends java.awt.event.ComponentEvent
{
	/**
	* The first number in the range of ids used for container events.
	*/
	public static var CONTAINER_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for container events.
	*/
	public static var CONTAINER_LAST(default, null) : Int;
	
	/**
	* This event indicates that a component was added to the container.
	*/
	public static var COMPONENT_ADDED(default, null) : Int;
	
	/**
	* This event indicates that a component was removed from the container.
	*/
	public static var COMPONENT_REMOVED(default, null) : Int;
	
	/**
	* Constructs a <code>ContainerEvent</code> object.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source The <code>Component</code> object (container)
	*               that originated the event
	* @param id     An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link ContainerEvent}
	* @param child  the component that was added or removed
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getContainer()
	* @see #getID()
	* @see #getChild()
	*/
	@:overload public function new(source : java.awt.Component, id : Int, child : java.awt.Component) : Void;
	
	/**
	* Returns the originator of the event.
	*
	* @return the <code>Container</code> object that originated
	* the event, or <code>null</code> if the object is not a
	* <code>Container</code>.
	*/
	@:overload public function getContainer() : java.awt.Container;
	
	/**
	* Returns the component that was affected by the event.
	*
	* @return the Component object that was added or removed
	*/
	@:overload public function getChild() : java.awt.Component;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload override public function paramString() : String;
	
	
}
