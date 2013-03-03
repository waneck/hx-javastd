package sun.awt;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class GlobalCursorManager
{
	/**
	* Should be called for any activity at the Java level which may affect
	* the global cursor, except for Java MOUSE_MOVED events.
	*/
	@:overload @:public public function updateCursorImmediately() : Void;
	
	/**
	* Should be called in response to Java MOUSE_MOVED events. The update
	* will be discarded if the InputEvent is outdated.
	*
	* @param   e the InputEvent which triggered the cursor update.
	*/
	@:overload @:public public function updateCursorImmediately(e : java.awt.event.InputEvent) : Void;
	
	/**
	* Should be called in response to a native mouse enter or native mouse
	* button released message. Should not be called during a mouse drag.
	*/
	@:overload @:public public function updateCursorLater(heavy : java.awt.Component) : Void;
	
	@:overload @:protected private function new() : Void;
	
	/**
	* Set the global cursor to the specified cursor. The component over
	* which the Cursor current resides is provided as a convenience. Not
	* all platforms may require the Component.
	*/
	@:overload @:protected @:abstract private function setCursor(comp : java.awt.Component, cursor : java.awt.Cursor, useCache : Bool) : Void;
	
	/**
	* Returns the global cursor position, in screen coordinates.
	*/
	@:overload @:protected @:abstract private function getCursorPos(p : java.awt.Point) : Void;
	
	@:overload @:protected @:abstract private function findComponentAt(con : java.awt.Container, x : Int, y : Int) : java.awt.Component;
	
	@:overload @:protected @:abstract private function getLocationOnScreen(com : java.awt.Component) : java.awt.Point;
	
	/**
	* Returns the most specific, visible, heavyweight Component
	* under the cursor. This method should return null iff the cursor is
	* not over any Java Window.
	*
	* @param   useCache If true, the implementation is free to use caching
	* mechanisms because the Z-order, visibility, and enabled state of the
	* Components has not changed. If false, the implementation should not
	* make these assumptions.
	*/
	@:overload @:protected @:abstract private function findHeavyweightUnderCursor(useCache : Bool) : java.awt.Component;
	
	@:overload @:protected private function updateCursorOutOfJava() : Void;
	
	
}
/**
* A stateless class which responds to native mouse moves, Component resizes,
* Component moves, showing and hiding of Components, minimizing and
* maximizing of top level Windows, addition and removal of Components,
* and calls to setCursor().
*/
@:native('sun$awt$GlobalCursorManager$NativeUpdater') @:internal extern class GlobalCursorManager_NativeUpdater implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	@:overload @:public public function postIfNotPending(heavy : java.awt.Component, _in : java.awt.event.InvocationEvent) : Void;
	
	
}
