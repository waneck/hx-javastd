package sun.awt.X11;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class XMenuBarPeer extends sun.awt.X11.XBaseMenuWindow implements java.awt.peer.MenuBarPeer
{
	/*
	* From MenuComponentPeer
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/*
	* Functions addMenu, delMenu, addHelpMenu
	* need to have somewhat strange behaivour
	* deduced from java.awt.MenuBar.
	* We can not get index of particular item in
	* MenuBar.menus array, because MenuBar firstly
	* performs array operations and then calls peer.
	* So we need to synchronize indicies in 'items'
	* array with MenuBar.menus. We have to follow
	* these rules:
	* 1. Menus are always added to the end of array,
	* even when helpMenu is present
	* 2. Removal of any menu item acts as casual
	* remove from array
	* 3. MenuBar.setHelpMenu _firstly_ removes
	* previous helpMenu by calling delMenu() if
	* necessary, then it performs addMenu(),
	* and then - addHelpMenu().
	*
	* Note that these functions don't perform
	* type checks and checks for nulls or duplicates
	*/
	@:overload public function addMenu(m : java.awt.Menu) : Void;
	
	@:overload public function delMenu(index : Int) : Void;
	
	@:overload public function addHelpMenu(m : java.awt.Menu) : Void;
	
	/**
	* called from XFramePeer.setMenuBar
	*/
	@:overload public function init(frame : java.awt.Frame) : Void;
	
	/**
	* Menu bar is always root window in menu window's
	* hierarchy
	*/
	@:overload override private function getParentMenuWindow() : sun.awt.X11.XBaseMenuWindow;
	
	/**
	* @see XBaseMenuWindow.map
	*/
	@:overload override private function map() : sun.awt.X11.XBaseMenuWindow.XBaseMenuWindow_MappingData;
	
	/**
	* @see XBaseMenuWindow.getSubmenuBounds
	*/
	@:overload override private function getSubmenuBounds(itemBounds : java.awt.Rectangle, windowSize : java.awt.Dimension) : java.awt.Rectangle;
	
	/**
	* This function is called when it's likely that
	* size of items has changed.
	* Invokes framePeer's updateChildrenSizes()
	*/
	@:overload override private function updateSize() : Void;
	
	/**
	* @see XBaseMenuWindow.doDispose()
	*/
	@:overload override private function doDispose() : Void;
	
	/**
	* For menu bars this function is called from framePeer's
	* reshape(...) and updateChildrenSizes()
	*/
	@:overload override public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/************************************************
	*
	* Overriden XWindow painting & printing
	*
	************************************************/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/************************************************
	*
	* Overriden XBaseMenuWindow event handling
	*
	************************************************/
	@:overload override private function handleEvent(event : java.awt.AWTEvent) : Void;
	
	/*
	* In previous version keys were handled in handleKeyPress.
	* Now we override this function do disable F10 explicit
	* processing. All processing is done using KeyEvent.
	*/
	@:overload override public function handleKeyPress(xev : sun.awt.X11.XEvent) : Void;
	
	
}
/**
* XBaseMenuWindow's mappingData is extended with
* desired height of menu bar
*/
@:native('sun$awt$X11$XMenuBarPeer$MappingData') @:internal extern class XMenuBarPeer_MappingData extends sun.awt.X11.XBaseMenuWindow.XBaseMenuWindow_MappingData
{
	@:overload public function getDesiredHeight() : Int;
	
	
}
