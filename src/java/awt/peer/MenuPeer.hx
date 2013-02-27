package java.awt.peer;
/*
* Copyright (c) 1995, 1998, Oracle and/or its affiliates. All rights reserved.
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
extern interface MenuPeer extends java.awt.peer.MenuItemPeer
{
	/**
	* Adds a separator (e.g. a horizontal line or similar) to the menu.
	*
	* @see Menu#addSeparator()
	*/
	@:overload public function addSeparator() : Void;
	
	/**
	* Adds the specified menu item to the menu.
	*
	* @param item the menu item to add
	*
	* @see Menu#add(MenuItem)
	*/
	@:overload public function addItem(item : java.awt.MenuItem) : Void;
	
	/**
	* Removes the menu item at the specified index.
	*
	* @param index the index of the item to remove
	*
	* @see Menu#remove(int)
	*/
	@:overload public function delItem(index : Int) : Void;
	
	
}
