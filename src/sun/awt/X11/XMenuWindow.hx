package sun.awt.X11;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class XMenuWindow extends sun.awt.X11.XBaseMenuWindow
{
	/**
	* @see XBaseMenuWindow.getParentMenuWindow()
	*/
	@:overload override private function getParentMenuWindow() : sun.awt.X11.XBaseMenuWindow;
	
	/**
	* @see XBaseMenuWindow.map()
	*/
	@:overload override private function map() : sun.awt.X11.XBaseMenuWindow.XBaseMenuWindow_MappingData;
	
	/**
	* @see XBaseMenuWindow.getSubmenuBounds()
	*/
	@:overload override private function getSubmenuBounds(itemBounds : java.awt.Rectangle, windowSize : java.awt.Dimension) : java.awt.Rectangle;
	
	/**
	* It's likely that size of items was changed
	* invoke resizing of window on eventHandlerThread
	*/
	@:overload override private function updateSize() : Void;
	
	/**
	* Returns size of menu window's caption or null
	* if window has no caption.
	* Can be overriden for popup menus and tear-off menus
	*/
	@:overload private function getCaptionSize() : java.awt.Dimension;
	
	/**
	* Paints menu window's caption.
	* Can be overriden for popup menus and tear-off menus.
	* Default implementation does nothing
	*/
	@:overload private function paintCaption(g : java.awt.Graphics, rect : java.awt.Rectangle) : Void;
	
	/**
	* Paints menu window
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	
}
/************************************************
*
* Mapping data
*
************************************************/
@:native('sun$awt$X11$XMenuWindow$MappingData') @:internal extern class XMenuWindow_MappingData extends sun.awt.X11.XBaseMenuWindow.XBaseMenuWindow_MappingData
{
	@:overload public function getCaptionRect() : java.awt.Rectangle;
	
	@:overload public function getDesiredSize() : java.awt.Dimension;
	
	@:overload public function getShortcutOrigin() : Int;
	
	@:overload public function getLeftMarkWidth() : Int;
	
	@:overload public function getRightMarkOrigin() : Int;
	
	
}
