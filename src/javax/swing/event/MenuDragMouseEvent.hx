package javax.swing.event;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MenuDragMouseEvent extends java.awt.event.MouseEvent
{
	/**
	* Constructs a MenuDragMouseEvent object.
	* <p>Absolute coordinates xAbs and yAbs are set to source's location on screen plus
	* relative coordinates x and y. xAbs and yAbs are set to zero if the source is not showing.
	*
	* @param source        the Component that originated the event
	*                      (typically <code>this</code>)
	* @param id            an int specifying the type of event, as defined
	*                      in {@link java.awt.event.MouseEvent}
	* @param when          a long identifying the time the event occurred
	* @param modifiers     an int specifying any modifier keys held down,
	*                      as specified in {@link java.awt.event.InputEvent}
	* @param x             an int specifying the horizontal position at which
	*                      the event occurred, in pixels
	* @param y             an int specifying the vertical position at which
	*                      the event occurred, in pixels
	* @param clickCount    an int specifying the number of mouse-clicks
	* @param popupTrigger  a boolean -- true if the event {should?/did?}
	*                      trigger a popup
	* @param p             an array of MenuElement objects specifying a path
	*                        to a menu item affected by the drag
	* @param m             a MenuSelectionManager object that handles selections
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, int, int, boolean, int)
	*/
	@:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, clickCount : Int, popupTrigger : Bool, p : java.NativeArray<javax.swing.MenuElement>, m : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Constructs a MenuDragMouseEvent object.
	* <p>Even if inconsistent values for relative and absolute coordinates are
	* passed to the constructor, the MenuDragMouseEvent instance is still
	* created.
	* @param source        the Component that originated the event
	*                      (typically <code>this</code>)
	* @param id            an int specifying the type of event, as defined
	*                      in {@link java.awt.event.MouseEvent}
	* @param when          a long identifying the time the event occurred
	* @param modifiers     an int specifying any modifier keys held down,
	*                      as specified in {@link java.awt.event.InputEvent}
	* @param x             an int specifying the horizontal position at which
	*                      the event occurred, in pixels
	* @param y             an int specifying the vertical position at which
	*                      the event occurred, in pixels
	* @param xAbs          an int specifying the horizontal absolute position at which
	*                      the event occurred, in pixels
	* @param yAbs          an int specifying the vertical absolute position at which
	*                      the event occurred, in pixels
	* @param clickCount    an int specifying the number of mouse-clicks
	* @param popupTrigger  a boolean -- true if the event {should?/did?}
	*                      trigger a popup
	* @param p             an array of MenuElement objects specifying a path
	*                        to a menu item affected by the drag
	* @param m             a MenuSelectionManager object that handles selections
	* @see MouseEvent#MouseEvent(java.awt.Component, int, long, int, int, int, int, int, int, boolean, int)
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, x : Int, y : Int, xAbs : Int, yAbs : Int, clickCount : Int, popupTrigger : Bool, p : java.NativeArray<javax.swing.MenuElement>, m : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Returns the path to the selected menu item.
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
