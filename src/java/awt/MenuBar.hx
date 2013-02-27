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
/**
* The <code>MenuBar</code> class encapsulates the platform's
* concept of a menu bar bound to a frame. In order to associate
* the menu bar with a <code>Frame</code> object, call the
* frame's <code>setMenuBar</code> method.
* <p>
* <A NAME="mbexample"></A><!-- target for cross references -->
* This is what a menu bar might look like:
* <p>
* <img src="doc-files/MenuBar-1.gif"
* <alt="Diagram of MenuBar containing 2 menus: Examples and Options.
* Examples menu is expanded showing items: Basic, Simple, Check, and More Examples."
* ALIGN=center HSPACE=10 VSPACE=7>
* <p>
* A menu bar handles keyboard shortcuts for menu items, passing them
* along to its child menus.
* (Keyboard shortcuts, which are optional, provide the user with
* an alternative to the mouse for invoking a menu item and the
* action that is associated with it.)
* Each menu item can maintain an instance of <code>MenuShortcut</code>.
* The <code>MenuBar</code> class defines several methods,
* {@link MenuBar#shortcuts} and
* {@link MenuBar#getShortcutMenuItem}
* that retrieve information about the shortcuts a given
* menu bar is managing.
*
* @author Sami Shaio
* @see        java.awt.Frame
* @see        java.awt.Frame#setMenuBar(java.awt.MenuBar)
* @see        java.awt.Menu
* @see        java.awt.MenuItem
* @see        java.awt.MenuShortcut
* @since      JDK1.0
*/
@:require(java0) extern class MenuBar extends java.awt.MenuComponent implements java.awt.MenuContainer implements javax.accessibility.Accessible
{
	/**
	* Creates a new menu bar.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates the menu bar's peer.  The peer allows us to change the
	* appearance of the menu bar without changing any of the menu bar's
	* functionality.
	*/
	@:overload public function addNotify() : Void;
	
	/**
	* Removes the menu bar's peer.  The peer allows us to change the
	* appearance of the menu bar without changing any of the menu bar's
	* functionality.
	*/
	@:overload override public function removeNotify() : Void;
	
	/**
	* Gets the help menu on the menu bar.
	* @return    the help menu on this menu bar.
	*/
	@:overload public function getHelpMenu() : java.awt.Menu;
	
	/**
	* Sets the specified menu to be this menu bar's help menu.
	* If this menu bar has an existing help menu, the old help menu is
	* removed from the menu bar, and replaced with the specified menu.
	* @param m    the menu to be set as the help menu
	*/
	@:overload public function setHelpMenu(m : java.awt.Menu) : Void;
	
	/**
	* Adds the specified menu to the menu bar.
	* If the menu has been part of another menu bar,
	* removes it from that menu bar.
	*
	* @param        m   the menu to be added
	* @return       the menu added
	* @see          java.awt.MenuBar#remove(int)
	* @see          java.awt.MenuBar#remove(java.awt.MenuComponent)
	*/
	@:overload public function add(m : java.awt.Menu) : java.awt.Menu;
	
	/**
	* Removes the menu located at the specified
	* index from this menu bar.
	* @param        index   the position of the menu to be removed.
	* @see          java.awt.MenuBar#add(java.awt.Menu)
	*/
	@:overload public function remove(index : Int) : Void;
	
	/**
	* Removes the specified menu component from this menu bar.
	* @param        m the menu component to be removed.
	* @see          java.awt.MenuBar#add(java.awt.Menu)
	*/
	@:overload public function remove(m : java.awt.MenuComponent) : Void;
	
	/**
	* Gets the number of menus on the menu bar.
	* @return     the number of menus on the menu bar.
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getMenuCount() : Int;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getMenuCount()</code>.
	*/
	@:overload public function countMenus() : Int;
	
	/**
	* Gets the specified menu.
	* @param      i the index position of the menu to be returned.
	* @return     the menu at the specified index of this menu bar.
	*/
	@:overload public function getMenu(i : Int) : java.awt.Menu;
	
	/**
	* Gets an enumeration of all menu shortcuts this menu bar
	* is managing.
	* @return      an enumeration of menu shortcuts that this
	*                      menu bar is managing.
	* @see         java.awt.MenuShortcut
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function shortcuts() : java.util.Enumeration<java.awt.MenuShortcut>;
	
	/**
	* Gets the instance of <code>MenuItem</code> associated
	* with the specified <code>MenuShortcut</code> object,
	* or <code>null</code> if none of the menu items being managed
	* by this menu bar is associated with the specified menu
	* shortcut.
	* @param        s the specified menu shortcut.
	* @see          java.awt.MenuItem
	* @see          java.awt.MenuShortcut
	* @since        JDK1.1
	*/
	@:require(java1) @:overload public function getShortcutMenuItem(s : java.awt.MenuShortcut) : java.awt.MenuItem;
	
	/**
	* Deletes the specified menu shortcut.
	* @param     s the menu shortcut to delete.
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function deleteShortcut(s : java.awt.MenuShortcut) : Void;
	
	/**
	* Gets the AccessibleContext associated with this MenuBar.
	* For menu bars, the AccessibleContext takes the form of an
	* AccessibleAWTMenuBar.
	* A new AccessibleAWTMenuBar instance is created if necessary.
	*
	* @return an AccessibleAWTMenuBar that serves as the
	*         AccessibleContext of this MenuBar
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Inner class of MenuBar used to provide default support for
* accessibility.  This class is not meant to be used directly by
* application developers, but is instead meant only to be
* subclassed by menu component developers.
* <p>
* This class implements accessibility support for the
* <code>MenuBar</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to menu bar user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$MenuBar$AccessibleAWTMenuBar') extern class MenuBar_AccessibleAWTMenuBar extends AccessibleAWTMenuComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
