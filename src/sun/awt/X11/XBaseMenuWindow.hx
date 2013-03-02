package sun.awt.X11;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XBaseMenuWindow extends sun.awt.X11.XWindow
{
	/**
	* If the PopupMenu is invoked as a result of right button click
	* first mouse event after grabInput would be MouseReleased.
	* We need to check if the user has moved mouse after input grab.
	* If yes - hide the PopupMenu. If no - do nothing
	*/
	private var grabInputPoint : java.awt.Point;
	
	private var hasPointerMoved : Bool;
	
	/**
	* Returns parent menu window (not the X-heirarchy parent window)
	*/
	@:overload @:abstract private function getParentMenuWindow() : sun.awt.X11.XBaseMenuWindow;
	
	/**
	* Performs mapping of items in window.
	* This function creates and fills specific
	* descendant of MappingData
	* and sets mapping coordinates of items
	* This function should return default menu data
	* if errors occur
	*/
	@:overload @:abstract private function map() : sun.awt.X11.XBaseMenuWindow.XBaseMenuWindow_MappingData;
	
	/**
	* Calculates placement of submenu window
	* given bounds of item with submenu and
	* size of submenu window. Returns suggested
	* rectangle for submenu window in global coordinates
	* @param itemBounds the bounding rectangle of item
	* in local coordinates
	* @param windowSize the desired size of submenu's window
	*/
	@:overload @:abstract private function getSubmenuBounds(itemBounds : java.awt.Rectangle, windowSize : java.awt.Dimension) : java.awt.Rectangle;
	
	/**
	* This function is to be called if it's likely that size
	* of items was changed. It can be called from any thread
	* in any locked state, so it should not take locks
	*/
	@:overload @:abstract private function updateSize() : Void;
	
	/**
	* This function is called to clear all saved
	* size data.
	*/
	@:overload private function resetMapping() : Void;
	
	/**
	* Adds item to end of items vector.
	* Note that this function does not perform
	* check for adding duplicate items
	* @param item item to add
	*/
	@:overload public function addItem(item : java.awt.MenuItem) : Void;
	
	/**
	* Removes item at the specified index from items vector.
	* @param index the position of the item to be removed
	*/
	@:overload public function delItem(index : Int) : Void;
	
	/**
	* Clears items vector and loads specified vector
	* @param items vector to be loaded
	*/
	@:overload public function reloadItems(items : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Filters X events
	*/
	@:overload override private function isEventDisabled(e : sun.awt.X11.XEvent) : Bool;
	
	/**
	* Invokes disposal procedure on eventHandlerThread
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Performs disposal of menu window.
	* Should be called only on eventHandlerThread
	*/
	@:overload private function doDispose() : Void;
	
	/**
	* The implementation of base window performs processing
	* of paint events only. This behaviour is changed in
	* descendants.
	*/
	@:overload private function handleEvent(event : java.awt.AWTEvent) : Void;
	
	/**
	* Save location of pointer for further use
	* then invoke superclass
	*/
	@:overload override public function grabInput() : Bool;
	
	
}
@:native('sun$awt$X11$XBaseMenuWindow$MappingData') @:internal extern class XBaseMenuWindow_MappingData implements java.lang.Cloneable
{
	@:overload public function clone() : Dynamic;
	
	@:overload public function getItems() : java.NativeArray<sun.awt.X11.XMenuItemPeer>;
	
	
}
