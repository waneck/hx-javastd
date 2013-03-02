package sun.awt.X11;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XPopupMenuPeer extends sun.awt.X11.XMenuWindow implements java.awt.peer.PopupMenuPeer
{
	/*
	* From MenuComponentPeer
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/*
	* From MenuItemPeer
	*/
	@:overload public function setLabel(label : String) : Void;
	
	@:overload public function setEnabled(enabled : Bool) : Void;
	
	/**
	* DEPRECATED:  Replaced by setEnabled(boolean).
	* @see java.awt.peer.MenuItemPeer
	*/
	@:overload public function enable() : Void;
	
	/**
	* DEPRECATED:  Replaced by setEnabled(boolean).
	* @see java.awt.peer.MenuItemPeer
	*/
	@:overload public function disable() : Void;
	
	/**
	* addSeparator routines are not used
	* in peers. Shared code invokes addItem("-")
	* for adding separators
	*/
	@:overload public function addSeparator() : Void;
	
	/*
	* From PopupMenuPeer
	*/
	@:overload public function show(e : java.awt.Event) : Void;
	
	/**
	* Calculates placement of popup menu window
	* given origin in global coordinates and
	* size of menu window. Returns suggested
	* rectangle for menu window in global coordinates
	* @param origin the origin point specified in show()
	* function converted to global coordinates
	* @param windowSize the desired size of menu's window
	*/
	@:overload private function getWindowBounds(origin : java.awt.Point, windowSize : java.awt.Dimension) : java.awt.Rectangle;
	
	/**
	* Returns height of menu window's caption.
	* Can be overriden for popup menus and tear-off menus
	*/
	@:overload private function getCaptionSize() : java.awt.Dimension;
	
	/**
	* Paints menu window's caption.
	* Can be overriden for popup menus and tear-off menus.
	* Default implementation does nothing
	*/
	@:overload private function paintCaption(g : java.awt.Graphics, rect : java.awt.Rectangle) : Void;
	
	/************************************************
	*
	* Overriden XBaseMenuWindow functions
	*
	************************************************/
	@:overload private function doDispose() : Void;
	
	@:overload private function handleEvent(event : java.awt.AWTEvent) : Void;
	
	/*
	* In previous version keys were handled in handleKeyPress.
	* Now we override this function do disable F10 explicit
	* processing. All processing is done using KeyEvent.
	*/
	@:overload override public function handleKeyPress(xev : sun.awt.X11.XEvent) : Void;
	
	
}
