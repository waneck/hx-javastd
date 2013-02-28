package javax.swing;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A menu item that can be selected or deselected. If selected, the menu
* item typically appears with a checkmark next to it. If unselected or
* deselected, the menu item appears without a checkmark. Like a regular
* menu item, a check box menu item can have either text or a graphic
* icon associated with it, or both.
* <p>
* Either <code>isSelected</code>/<code>setSelected</code> or
* <code>getState</code>/<code>setState</code> can be used
* to determine/specify the menu item's selection state. The
* preferred methods are <code>isSelected</code> and
* <code>setSelected</code>, which work for all menus and buttons.
* The <code>getState</code> and <code>setState</code> methods exist for
* compatibility with other component sets.
* <p>
* Menu items can be configured, and to some degree controlled, by
* <code><a href="Action.html">Action</a></code>s.  Using an
* <code>Action</code> with a menu item has many benefits beyond directly
* configuring a menu item.  Refer to <a href="Action.html#buttonActions">
* Swing Components Supporting <code>Action</code></a> for more
* details, and you can find more information in <a
* href="http://java.sun.com/docs/books/tutorial/uiswing/misc/action.html">How
* to Use Actions</a>, a section in <em>The Java Tutorial</em>.
* <p>
* For further information and examples of using check box menu items,
* see <a
href="http://java.sun.com/docs/books/tutorial/uiswing/components/menu.html">How to Use Menus</a>,
* a section in <em>The Java Tutorial.</em>
* <p>
* <strong>Warning:</strong> Swing is not thread safe. For more
* information see <a
* href="package-summary.html#threading">Swing's Threading
* Policy</a>.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @beaninfo
*   attribute: isContainer false
* description: A menu item which can be selected or deselected.
*
* @author Georges Saab
* @author David Karlton
*/
extern class JCheckBoxMenuItem extends javax.swing.JMenuItem implements javax.swing.SwingConstants implements javax.accessibility.Accessible
{
	/**
	* Creates an initially unselected check box menu item with no set text or icon.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an initially unselected check box menu item with an icon.
	*
	* @param icon the icon of the CheckBoxMenuItem.
	*/
	@:overload public function new(icon : javax.swing.Icon) : Void;
	
	/**
	* Creates an initially unselected check box menu item with text.
	*
	* @param text the text of the CheckBoxMenuItem
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Creates a menu item whose properties are taken from the
	* Action supplied.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(a : javax.swing.Action) : Void;
	
	/**
	* Creates an initially unselected check box menu item with the specified text and icon.
	*
	* @param text the text of the CheckBoxMenuItem
	* @param icon the icon of the CheckBoxMenuItem
	*/
	@:overload public function new(text : String, icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a check box menu item with the specified text and selection state.
	*
	* @param text the text of the check box menu item.
	* @param b the selected state of the check box menu item
	*/
	@:overload public function new(text : String, b : Bool) : Void;
	
	/**
	* Creates a check box menu item with the specified text, icon, and selection state.
	*
	* @param text the text of the check box menu item
	* @param icon the icon of the check box menu item
	* @param b the selected state of the check box menu item
	*/
	@:overload public function new(text : String, icon : javax.swing.Icon, b : Bool) : Void;
	
	/**
	* Returns the name of the L&F class
	* that renders this component.
	*
	* @return "CheckBoxMenuItemUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Returns the selected-state of the item. This method
	* exists for AWT compatibility only.  New code should
	* use isSelected() instead.
	*
	* @return true  if the item is selected
	*/
	@:overload public function getState() : Bool;
	
	/**
	* Sets the selected-state of the item. This method
	* exists for AWT compatibility only.  New code should
	* use setSelected() instead.
	*
	* @param b  a boolean value indicating the item's
	*           selected-state, where true=selected
	* @beaninfo
	* description: The selection state of the check box menu item
	*      hidden: true
	*/
	@:overload @:synchronized public function setState(b : Bool) : Void;
	
	/**
	* Returns an array (length 1) containing the check box menu item
	* label or null if the check box is not selected.
	*
	* @return an array containing one Object -- the text of the menu item
	*         -- if the item is selected; otherwise null
	*/
	@:overload override public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	/**
	* Returns a string representation of this JCheckBoxMenuItem. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JCheckBoxMenuItem.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JCheckBoxMenuItem.
	* For JCheckBoxMenuItems, the AccessibleContext takes the form of an
	* AccessibleJCheckBoxMenuItem.
	* A new AccessibleJCheckBoxMenuItem instance is created if necessary.
	*
	* @return an AccessibleJCheckBoxMenuItem that serves as the
	*         AccessibleContext of this AccessibleJCheckBoxMenuItem
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JCheckBoxMenuItem</code> class.  It provides an implementation
* of the Java Accessibility API appropriate to checkbox menu item
* user-interface elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JCheckBoxMenuItem$AccessibleJCheckBoxMenuItem') extern class JCheckBoxMenuItem_AccessibleJCheckBoxMenuItem extends javax.swing.JMenuItem.JMenuItem_AccessibleJMenuItem
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
