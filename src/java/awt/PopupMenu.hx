package java.awt;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PopupMenu extends java.awt.Menu
{
	/**
	* Creates a new popup menu with an empty name.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new popup menu with the specified name.
	*
	* @param label a non-<code>null</code> string specifying
	*                the popup menu's label
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload @:public public function new(label : String) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getParent() : java.awt.MenuContainer;
	
	/**
	* Creates the popup menu's peer.
	* The peer allows us to change the appearance of the popup menu without
	* changing any of the popup menu's functionality.
	*/
	@:overload @:public override public function addNotify() : Void;
	
	/**
	* Shows the popup menu at the x, y position relative to an origin
	* component.
	* The origin component must be contained within the component
	* hierarchy of the popup menu's parent.  Both the origin and the parent
	* must be showing on the screen for this method to be valid.
	* <p>
	* If this <code>PopupMenu</code> is being used as a <code>Menu</code>
	* (i.e., it has a non-<code>Component</code> parent),
	* then you cannot call this method on the <code>PopupMenu</code>.
	*
	* @param origin the component which defines the coordinate space
	* @param x the x coordinate position to popup the menu
	* @param y the y coordinate position to popup the menu
	* @exception NullPointerException  if the parent is <code>null</code>
	* @exception IllegalArgumentException  if this <code>PopupMenu</code>
	*                has a non-<code>Component</code> parent
	* @exception IllegalArgumentException if the origin is not in the
	*                parent's heirarchy
	* @exception RuntimeException if the parent is not showing on screen
	*/
	@:overload @:public public function show(origin : java.awt.Component, x : Int, y : Int) : Void;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>PopupMenu</code>.
	*
	* @return the <code>AccessibleContext</code> of this
	*                <code>PopupMenu</code>
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Inner class of PopupMenu used to provide default support for
* accessibility.  This class is not meant to be used directly by
* application developers, but is instead meant only to be
* subclassed by menu component developers.
* <p>
* The class used to obtain the accessible role for this object.
* @since 1.3
*/
@:require(java3) @:native('java$awt$PopupMenu$AccessibleAWTPopupMenu') extern class PopupMenu_AccessibleAWTPopupMenu extends java.awt.Menu.Menu_AccessibleAWTMenu
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
