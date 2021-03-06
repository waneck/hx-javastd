package java.awt.event;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class HierarchyEvent extends java.awt.AWTEvent
{
	/**
	* Marks the first integer id for the range of hierarchy event ids.
	*/
	@:public @:static @:final public static var HIERARCHY_FIRST(default, null) : Int;
	
	/**
	* The event id indicating that modification was made to the
	* entire hierarchy tree.
	*/
	@:public @:static @:final public static var HIERARCHY_CHANGED(default, null) : Int;
	
	/**
	* The event id indicating an ancestor-Container was moved.
	*/
	@:public @:static @:final public static var ANCESTOR_MOVED(default, null) : Int;
	
	/**
	* The event id indicating an ancestor-Container was resized.
	*/
	@:public @:static @:final public static var ANCESTOR_RESIZED(default, null) : Int;
	
	/**
	* Marks the last integer id for the range of ancestor event ids.
	*/
	@:public @:static @:final public static var HIERARCHY_LAST(default, null) : Int;
	
	/**
	* A change flag indicates that the <code>HIERARCHY_CHANGED</code> event
	* was generated by a reparenting operation.
	*/
	@:public @:static @:final public static var PARENT_CHANGED(default, null) : Int;
	
	/**
	* A change flag indicates that the <code>HIERARCHY_CHANGED</code> event
	* was generated due to the changing of the hierarchy displayability.
	* To discern the
	* current displayability of the hierarchy, call the
	* <code>Component.isDisplayable</code> method. Displayability changes occur
	* in response to explicit or implicit calls of the
	* <code>Component.addNotify</code> and
	* <code>Component.removeNotify</code> methods.
	*
	* @see java.awt.Component#isDisplayable()
	* @see java.awt.Component#addNotify()
	* @see java.awt.Component#removeNotify()
	*/
	@:public @:static @:final public static var DISPLAYABILITY_CHANGED(default, null) : Int;
	
	/**
	* A change flag indicates that the <code>HIERARCHY_CHANGED</code> event
	* was generated due to the changing of the hierarchy showing state.
	* To discern the
	* current showing state of the hierarchy, call the
	* <code>Component.isShowing</code> method. Showing state changes occur
	* when either the displayability or visibility of the
	* hierarchy occurs. Visibility changes occur in response to explicit
	* or implicit calls of the <code>Component.show</code> and
	* <code>Component.hide</code> methods.
	*
	* @see java.awt.Component#isShowing()
	* @see java.awt.Component#addNotify()
	* @see java.awt.Component#removeNotify()
	* @see java.awt.Component#show()
	* @see java.awt.Component#hide()
	*/
	@:public @:static @:final public static var SHOWING_CHANGED(default, null) : Int;
	
	/**
	* Constructs an <code>HierarchyEvent</code> object to identify a
	* change in the <code>Component</code> hierarchy.
	* <p>This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source          The <code>Component</code> object that
	*                        originated the event
	* @param id              An integer indicating the type of event.
	*                        For information on allowable values, see
	*                        the class description for {@link HierarchyEvent}
	* @param changed         The <code>Component</code> at the top of
	*                        the hierarchy which was changed
	* @param changedParent   The parent of the <code>changed</code> component.
	*                        This
	*                        may be the parent before or after the
	*                        change, depending on the type of change
	* @throws IllegalArgumentException if <code>source</code> is {@code null}
	* @see #getSource()
	* @see #getID()
	* @see #getChanged()
	* @see #getChangedParent()
	*/
	@:overload @:public public function new(source : java.awt.Component, id : Int, changed : java.awt.Component, changedParent : java.awt.Container) : Void;
	
	/**
	* Constructs an <code>HierarchyEvent</code> object to identify
	* a change in the <code>Component</code> hierarchy.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source          The <code>Component</code> object that
	*                        originated the event
	* @param id              An integer indicating the type of event.
	*                        For information on allowable values, see
	*                        the class description for {@link HierarchyEvent}
	* @param changed         The <code>Component</code> at the top
	*                        of the hierarchy which was changed
	* @param changedParent   The parent of the <code>changed</code> component.
	*                        This
	*                        may be the parent before or after the
	*                        change, depending on the type of change
	* @param changeFlags     A bitmask which indicates the type(s) of
	*                        the <code>HIERARCHY_CHANGED</code> events
	*                        represented in this event object.
	*                        For information on allowable values, see
	*                        the class description for {@link HierarchyEvent}
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getChanged()
	* @see #getChangedParent()
	* @see #getChangeFlags()
	*/
	@:overload @:public public function new(source : java.awt.Component, id : Int, changed : java.awt.Component, changedParent : java.awt.Container, changeFlags : haxe.Int64) : Void;
	
	/**
	* Returns the originator of the event.
	*
	* @return the <code>Component</code> object that originated
	* the event, or <code>null</code> if the object is not a
	* <code>Component</code>.
	*/
	@:overload @:public public function getComponent() : java.awt.Component;
	
	/**
	* Returns the Component at the top of the hierarchy which was
	* changed.
	*
	* @return the changed Component
	*/
	@:overload @:public public function getChanged() : java.awt.Component;
	
	/**
	* Returns the parent of the Component returned by <code>
	* getChanged()</code>. For a HIERARCHY_CHANGED event where the
	* change was of type PARENT_CHANGED via a call to <code>
	* Container.add</code>, the parent returned is the parent
	* after the add operation. For a HIERARCHY_CHANGED event where
	* the change was of type PARENT_CHANGED via a call to <code>
	* Container.remove</code>, the parent returned is the parent
	* before the remove operation. For all other events and types,
	* the parent returned is the parent during the operation.
	*
	* @return the parent of the changed Component
	*/
	@:overload @:public public function getChangedParent() : java.awt.Container;
	
	/**
	* Returns a bitmask which indicates the type(s) of
	* HIERARCHY_CHANGED events represented in this event object.
	* The bits have been bitwise-ored together.
	*
	* @return the bitmask, or 0 if this is not an HIERARCHY_CHANGED
	* event
	*/
	@:overload @:public public function getChangeFlags() : haxe.Int64;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload @:public override public function paramString() : String;
	
	
}
