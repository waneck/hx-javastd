package java.awt;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Menu extends java.awt.MenuItem implements java.awt.MenuContainer implements javax.accessibility.Accessible
{
	/**
	* Constructs a new menu with an empty label. This menu is not
	* a tear-off menu.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function new() : Void;
	
	/**
	* Constructs a new menu with the specified label. This menu is not
	* a tear-off menu.
	* @param       label the menu's label in the menu bar, or in
	*                   another menu of which this menu is a submenu.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(label : String) : Void;
	
	/**
	* Constructs a new menu with the specified label,
	* indicating whether the menu can be torn off.
	* <p>
	* Tear-off functionality may not be supported by all
	* implementations of AWT.  If a particular implementation doesn't
	* support tear-off menus, this value is silently ignored.
	* @param       label the menu's label in the menu bar, or in
	*                   another menu of which this menu is a submenu.
	* @param       tearOff   if <code>true</code>, the menu
	*                   is a tear-off menu.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since       JDK1.0.
	*/
	@:require(java0) @:overload public function new(label : String, tearOff : Bool) : Void;
	
	/**
	* Creates the menu's peer.  The peer allows us to modify the
	* appearance of the menu without changing its functionality.
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* Removes the menu's peer.  The peer allows us to modify the appearance
	* of the menu without changing its functionality.
	*/
	@:overload override public function removeNotify() : Void;
	
	/**
	* Indicates whether this menu is a tear-off menu.
	* <p>
	* Tear-off functionality may not be supported by all
	* implementations of AWT.  If a particular implementation doesn't
	* support tear-off menus, this value is silently ignored.
	* @return      <code>true</code> if this is a tear-off menu;
	*                         <code>false</code> otherwise.
	*/
	@:overload public function isTearOff() : Bool;
	
	/**
	* Get the number of items in this menu.
	* @return     the number of items in this menu.
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getItemCount() : Int;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getItemCount()</code>.
	*/
	@:overload public function countItems() : Int;
	
	/**
	* Gets the item located at the specified index of this menu.
	* @param     index the position of the item to be returned.
	* @return    the item located at the specified index.
	*/
	@:overload public function getItem(index : Int) : java.awt.MenuItem;
	
	/**
	* Adds the specified menu item to this menu. If the
	* menu item has been part of another menu, removes it
	* from that menu.
	*
	* @param       mi   the menu item to be added
	* @return      the menu item added
	* @see         java.awt.Menu#insert(java.lang.String, int)
	* @see         java.awt.Menu#insert(java.awt.MenuItem, int)
	*/
	@:overload public function add(mi : java.awt.MenuItem) : java.awt.MenuItem;
	
	/**
	* Adds an item with the specified label to this menu.
	*
	* @param       label   the text on the item
	* @see         java.awt.Menu#insert(java.lang.String, int)
	* @see         java.awt.Menu#insert(java.awt.MenuItem, int)
	*/
	@:overload public function add(label : String) : Void;
	
	/**
	* Inserts a menu item into this menu
	* at the specified position.
	*
	* @param         menuitem  the menu item to be inserted.
	* @param         index     the position at which the menu
	*                          item should be inserted.
	* @see           java.awt.Menu#add(java.lang.String)
	* @see           java.awt.Menu#add(java.awt.MenuItem)
	* @exception     IllegalArgumentException if the value of
	*                    <code>index</code> is less than zero
	* @since         JDK1.1
	*/
	@:require(java1) @:overload public function insert(menuitem : java.awt.MenuItem, index : Int) : Void;
	
	/**
	* Inserts a menu item with the specified label into this menu
	* at the specified position.  This is a convenience method for
	* <code>insert(menuItem, index)</code>.
	*
	* @param       label the text on the item
	* @param       index the position at which the menu item
	*                      should be inserted
	* @see         java.awt.Menu#add(java.lang.String)
	* @see         java.awt.Menu#add(java.awt.MenuItem)
	* @exception     IllegalArgumentException if the value of
	*                    <code>index</code> is less than zero
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function insert(label : String, index : Int) : Void;
	
	/**
	* Adds a separator line, or a hypen, to the menu at the current position.
	* @see         java.awt.Menu#insertSeparator(int)
	*/
	@:overload public function addSeparator() : Void;
	
	/**
	* Inserts a separator at the specified position.
	* @param       index the position at which the
	*                       menu separator should be inserted.
	* @exception   IllegalArgumentException if the value of
	*                       <code>index</code> is less than 0.
	* @see         java.awt.Menu#addSeparator
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function insertSeparator(index : Int) : Void;
	
	/**
	* Removes the menu item at the specified index from this menu.
	* @param       index the position of the item to be removed.
	*/
	@:overload public function remove(index : Int) : Void;
	
	/**
	* Removes the specified menu item from this menu.
	* @param  item the item to be removed from the menu.
	*         If <code>item</code> is <code>null</code>
	*         or is not in this menu, this method does
	*         nothing.
	*/
	@:overload public function remove(item : java.awt.MenuComponent) : Void;
	
	/**
	* Removes all items from this menu.
	* @since       JDK1.0.
	*/
	@:require(java0) @:overload public function removeAll() : Void;
	
	/**
	* Returns a string representing the state of this <code>Menu</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return the parameter string of this menu
	*/
	@:overload override public function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this Menu.
	* For menus, the AccessibleContext takes the form of an
	* AccessibleAWTMenu.
	* A new AccessibleAWTMenu instance is created if necessary.
	*
	* @return an AccessibleAWTMenu that serves as the
	*         AccessibleContext of this Menu
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Inner class of Menu used to provide default support for
* accessibility.  This class is not meant to be used directly by
* application developers, but is instead meant only to be
* subclassed by menu component developers.
* <p>
* This class implements accessibility support for the
* <code>Menu</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to menu user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$Menu$AccessibleAWTMenu') extern class Menu_AccessibleAWTMenu extends AccessibleAWTMenuItem
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
