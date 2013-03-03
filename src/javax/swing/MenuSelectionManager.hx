package javax.swing;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class MenuSelectionManager
{
	/**
	* Returns the default menu selection manager.
	*
	* @return a MenuSelectionManager object
	*/
	@:overload @:public @:static public static function defaultManager() : javax.swing.MenuSelectionManager;
	
	/**
	* Only one ChangeEvent is needed per button model instance since the
	* event's only state is the source property.  The source of events
	* generated is always "this".
	*/
	@:protected @:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Changes the selection in the menu hierarchy.  The elements
	* in the array are sorted in order from the root menu
	* element to the currently selected menu element.
	* <p>
	* Note that this method is public but is used by the look and
	* feel engine and should not be called by client applications.
	*
	* @param path  an array of <code>MenuElement</code> objects specifying
	*        the selected path
	*/
	@:overload @:public public function setSelectedPath(path : java.NativeArray<javax.swing.MenuElement>) : Void;
	
	/**
	* Returns the path to the currently selected menu item
	*
	* @return an array of MenuElement objects representing the selected path
	*/
	@:overload @:public public function getSelectedPath() : java.NativeArray<javax.swing.MenuElement>;
	
	/**
	* Tell the menu selection to close and unselect all the menu components. Call this method
	* when a choice has been made
	*/
	@:overload @:public public function clearSelectedPath() : Void;
	
	/**
	* Adds a ChangeListener to the button.
	*
	* @param l the listener to add
	*/
	@:overload @:public public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a ChangeListener from the button.
	*
	* @param l the listener to remove
	*/
	@:overload @:public public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this MenuSelectionManager with addChangeListener().
	*
	* @return all of the <code>ChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is created lazily.
	*
	* @see EventListenerList
	*/
	@:overload @:protected private function fireStateChanged() : Void;
	
	/**
	* When a MenuElement receives an event from a MouseListener, it should never process the event
	* directly. Instead all MenuElements should call this method with the event.
	*
	* @param event  a MouseEvent object
	*/
	@:overload @:public public function processMouseEvent(event : java.awt.event.MouseEvent) : Void;
	
	/**
	* Returns the component in the currently selected path
	* which contains sourcePoint.
	*
	* @param source The component in whose coordinate space sourcePoint
	*        is given
	* @param sourcePoint The point which is being tested
	* @return The component in the currently selected path which
	*         contains sourcePoint (relative to the source component's
	*         coordinate space.  If sourcePoint is not inside a component
	*         on the currently selected path, null is returned.
	*/
	@:overload @:public public function componentForPoint(source : java.awt.Component, sourcePoint : java.awt.Point) : java.awt.Component;
	
	/**
	* When a MenuElement receives an event from a KeyListener, it should never process the event
	* directly. Instead all MenuElements should call this method with the event.
	*
	* @param e  a KeyEvent object
	*/
	@:overload @:public public function processKeyEvent(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Return true if c is part of the currently used menu
	*/
	@:overload @:public public function isComponentPartOfCurrentMenu(c : java.awt.Component) : Bool;
	
	
}
