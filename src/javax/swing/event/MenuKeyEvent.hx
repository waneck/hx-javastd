package javax.swing.event;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class MenuKeyEvent extends java.awt.event.KeyEvent
{
	/**
	* Constructs a MenuKeyEvent object.
	*
	* @param source     the Component that originated the event
	*                     (typically <code>this</code>)
	* @param id         an int specifying the type of event, as defined
	*                     in {@link java.awt.event.KeyEvent}
	* @param when       a long identifying the time the event occurred
	* @param modifiers     an int specifying any modifier keys held down,
	*                      as specified in {@link java.awt.event.InputEvent}
	* @param keyCode    an int specifying the specific key that was pressed
	* @param keyChar    a char specifying the key's character value, if any
	*                   -- null if the key has no character value
	* @param p          an array of MenuElement objects specifying a path
	*                     to a menu item affected by the drag
	* @param m          a MenuSelectionManager object that handles selections
	*/
	@:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, keyCode : Int, keyChar : java.StdTypes.Char16, p : java.NativeArray<javax.swing.MenuElement>, m : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Returns the path to the menu item referenced by this event.
	*
	* @return an array of MenuElement objects representing the path value
	*/
	@:overload public function getPath() : java.NativeArray<javax.swing.MenuElement>;
	
	/**
	* Returns the current menu selection manager.
	*
	* @return a MenuSelectionManager object
	*/
	@:overload public function getMenuSelectionManager() : javax.swing.MenuSelectionManager;
	
	
}
