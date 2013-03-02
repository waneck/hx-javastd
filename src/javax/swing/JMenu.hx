package javax.swing;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class JMenu extends javax.swing.JMenuItem implements javax.accessibility.Accessible implements javax.swing.MenuElement
{
	/**
	* Constructs a new <code>JMenu</code> with no text.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <code>JMenu</code> with the supplied string
	* as its text.
	*
	* @param s  the text for the menu label
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Constructs a menu whose properties are taken from the
	* <code>Action</code> supplied.
	* @param a an <code>Action</code>
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(a : javax.swing.Action) : Void;
	
	/**
	* Constructs a new <code>JMenu</code> with the supplied string as
	* its text and specified as a tear-off menu or not.
	*
	* @param s the text for the menu label
	* @param b can the menu be torn off (not yet implemented)
	*/
	@:overload public function new(s : String, b : Bool) : Void;
	
	/**
	* Resets the UI property with a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "MenuUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Sets the data model for the "menu button" -- the label
	* that the user clicks to open or close the menu.
	*
	* @param newModel the <code>ButtonModel</code>
	* @see #getModel
	* @beaninfo
	* description: The menu's model
	*       bound: true
	*      expert: true
	*      hidden: true
	*/
	@:overload override public function setModel(newModel : javax.swing.ButtonModel) : Void;
	
	/**
	* Returns true if the menu is currently selected (highlighted).
	*
	* @return true if the menu is selected, else false
	*/
	@:overload public function isSelected() : Bool;
	
	/**
	* Sets the selection status of the menu.
	*
	* @param b  true to select (highlight) the menu; false to de-select
	*          the menu
	* @beaninfo
	*      description: When the menu is selected, its popup child is shown.
	*           expert: true
	*           hidden: true
	*/
	@:overload public function setSelected(b : Bool) : Void;
	
	/**
	* Returns true if the menu's popup window is visible.
	*
	* @return true if the menu is visible, else false
	*/
	@:overload public function isPopupMenuVisible() : Bool;
	
	/**
	* Sets the visibility of the menu's popup.  If the menu is
	* not enabled, this method will have no effect.
	*
	* @param b  a boolean value -- true to make the menu visible,
	*           false to hide it
	* @beaninfo
	*      description: The popup menu's visibility
	*           expert: true
	*           hidden: true
	*/
	@:overload public function setPopupMenuVisible(b : Bool) : Void;
	
	/**
	* Computes the origin for the <code>JMenu</code>'s popup menu.
	* This method uses Look and Feel properties named
	* <code>Menu.menuPopupOffsetX</code>,
	* <code>Menu.menuPopupOffsetY</code>,
	* <code>Menu.submenuPopupOffsetX</code>, and
	* <code>Menu.submenuPopupOffsetY</code>
	* to adjust the exact location of popup.
	*
	* @return a <code>Point</code> in the coordinate space of the
	*          menu which should be used as the origin
	*          of the <code>JMenu</code>'s popup menu
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function getPopupMenuOrigin() : java.awt.Point;
	
	/**
	* Returns the suggested delay, in milliseconds, before submenus
	* are popped up or down.
	* Each look and feel (L&F) may determine its own policy for
	* observing the <code>delay</code> property.
	* In most cases, the delay is not observed for top level menus
	* or while dragging.  The default for <code>delay</code> is 0.
	* This method is a property of the look and feel code and is used
	* to manage the idiosyncracies of the various UI implementations.
	*
	*
	* @return the <code>delay</code> property
	*/
	@:overload public function getDelay() : Int;
	
	/**
	* Sets the suggested delay before the menu's <code>PopupMenu</code>
	* is popped up or down.  Each look and feel (L&F) may determine
	* it's own policy for observing the delay property.  In most cases,
	* the delay is not observed for top level menus or while dragging.
	* This method is a property of the look and feel code and is used
	* to manage the idiosyncracies of the various UI implementations.
	*
	* @param       d the number of milliseconds to delay
	* @exception   IllegalArgumentException if <code>d</code>
	*                       is less than 0
	* @beaninfo
	*      description: The delay between menu selection and making the popup menu visible
	*           expert: true
	*/
	@:overload public function setDelay(d : Int) : Void;
	
	/**
	* The window-closing listener for the popup.
	*
	* @see WinListener
	*/
	private var popupListener : javax.swing.JMenu.JMenu_WinListener;
	
	/**
	* Sets the location of the popup component.
	*
	* @param x the x coordinate of the popup's new position
	* @param y the y coordinate of the popup's new position
	*/
	@:overload public function setMenuLocation(x : Int, y : Int) : Void;
	
	/**
	* Appends a menu item to the end of this menu.
	* Returns the menu item added.
	*
	* @param menuItem the <code>JMenuitem</code> to be added
	* @return the <code>JMenuItem</code> added
	*/
	@:overload public function add(menuItem : javax.swing.JMenuItem) : javax.swing.JMenuItem;
	
	/**
	* Appends a component to the end of this menu.
	* Returns the component added.
	*
	* @param c the <code>Component</code> to add
	* @return the <code>Component</code> added
	*/
	@:overload override public function add(c : java.awt.Component) : java.awt.Component;
	
	/**
	* Adds the specified component to this container at the given
	* position. If <code>index</code> equals -1, the component will
	* be appended to the end.
	* @param     c   the <code>Component</code> to add
	* @param     index    the position at which to insert the component
	* @return    the <code>Component</code> added
	* @see       #remove
	* @see java.awt.Container#add(Component, int)
	*/
	@:overload override public function add(c : java.awt.Component, index : Int) : java.awt.Component;
	
	/**
	* Creates a new menu item with the specified text and appends
	* it to the end of this menu.
	*
	* @param s the string for the menu item to be added
	*/
	@:overload public function add(s : String) : javax.swing.JMenuItem;
	
	/**
	* Creates a new menu item attached to the specified
	* <code>Action</code> object and appends it to the end of this menu.
	*
	* @param a the <code>Action</code> for the menu item to be added
	* @see Action
	*/
	@:overload public function add(a : javax.swing.Action) : javax.swing.JMenuItem;
	
	/**
	* Factory method which creates the <code>JMenuItem</code> for
	* <code>Action</code>s added to the <code>JMenu</code>.
	*
	* @param a the <code>Action</code> for the menu item to be added
	* @return the new menu item
	* @see Action
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function createActionComponent(a : javax.swing.Action) : javax.swing.JMenuItem;
	
	/**
	* Returns a properly configured <code>PropertyChangeListener</code>
	* which updates the control as changes to the <code>Action</code> occur.
	*/
	@:overload private function createActionChangeListener(b : javax.swing.JMenuItem) : java.beans.PropertyChangeListener;
	
	/**
	* Appends a new separator to the end of the menu.
	*/
	@:overload public function addSeparator() : Void;
	
	/**
	* Inserts a new menu item with the specified text at a
	* given position.
	*
	* @param s the text for the menu item to add
	* @param pos an integer specifying the position at which to add the
	*               new menu item
	* @exception IllegalArgumentException when the value of
	*                  <code>pos</code> < 0
	*/
	@:overload public function insert(s : String, pos : Int) : Void;
	
	/**
	* Inserts the specified <code>JMenuitem</code> at a given position.
	*
	* @param mi the <code>JMenuitem</code> to add
	* @param pos an integer specifying the position at which to add the
	*               new <code>JMenuitem</code>
	* @return the new menu item
	* @exception IllegalArgumentException if the value of
	*                  <code>pos</code> < 0
	*/
	@:overload public function insert(mi : javax.swing.JMenuItem, pos : Int) : javax.swing.JMenuItem;
	
	/**
	* Inserts a new menu item attached to the specified <code>Action</code>
	* object at a given position.
	*
	* @param a the <code>Action</code> object for the menu item to add
	* @param pos an integer specifying the position at which to add the
	*               new menu item
	* @exception IllegalArgumentException if the value of
	*                  <code>pos</code> < 0
	*/
	@:overload public function insert(a : javax.swing.Action, pos : Int) : javax.swing.JMenuItem;
	
	/**
	* Inserts a separator at the specified position.
	*
	* @param       index an integer specifying the position at which to
	*                    insert the menu separator
	* @exception   IllegalArgumentException if the value of
	*                       <code>index</code> < 0
	*/
	@:overload public function insertSeparator(index : Int) : Void;
	
	/**
	* Returns the <code>JMenuItem</code> at the specified position.
	* If the component at <code>pos</code> is not a menu item,
	* <code>null</code> is returned.
	* This method is included for AWT compatibility.
	*
	* @param pos    an integer specifying the position
	* @exception   IllegalArgumentException if the value of
	*                       <code>pos</code> < 0
	* @return  the menu item at the specified position; or <code>null</code>
	*          if the item as the specified position is not a menu item
	*/
	@:overload public function getItem(pos : Int) : javax.swing.JMenuItem;
	
	/**
	* Returns the number of items on the menu, including separators.
	* This method is included for AWT compatibility.
	*
	* @return an integer equal to the number of items on the menu
	* @see #getMenuComponentCount
	*/
	@:overload public function getItemCount() : Int;
	
	/**
	* Returns true if the menu can be torn off.  This method is not
	* yet implemented.
	*
	* @return true if the menu can be torn off, else false
	* @exception  Error  if invoked -- this method is not yet implemented
	*/
	@:overload public function isTearOff() : Bool;
	
	/**
	* Removes the specified menu item from this menu.  If there is no
	* popup menu, this method will have no effect.
	*
	* @param    item the <code>JMenuItem</code> to be removed from the menu
	*/
	@:overload public function remove(item : javax.swing.JMenuItem) : Void;
	
	/**
	* Removes the menu item at the specified index from this menu.
	*
	* @param       pos the position of the item to be removed
	* @exception   IllegalArgumentException if the value of
	*                       <code>pos</code> < 0, or if <code>pos</code>
	*                       is greater than the number of menu items
	*/
	@:overload override public function remove(pos : Int) : Void;
	
	/**
	* Removes the component <code>c</code> from this menu.
	*
	* @param       c the component to be removed
	*/
	@:overload override public function remove(c : java.awt.Component) : Void;
	
	/**
	* Removes all menu items from this menu.
	*/
	@:overload override public function removeAll() : Void;
	
	/**
	* Returns the number of components on the menu.
	*
	* @return an integer containing the number of components on the menu
	*/
	@:overload public function getMenuComponentCount() : Int;
	
	/**
	* Returns the component at position <code>n</code>.
	*
	* @param n the position of the component to be returned
	* @return the component requested, or <code>null</code>
	*                  if there is no popup menu
	*
	*/
	@:overload public function getMenuComponent(n : Int) : java.awt.Component;
	
	/**
	* Returns an array of <code>Component</code>s of the menu's
	* subcomponents.  Note that this returns all <code>Component</code>s
	* in the popup menu, including separators.
	*
	* @return an array of <code>Component</code>s or an empty array
	*          if there is no popup menu
	*/
	@:overload public function getMenuComponents() : java.NativeArray<java.awt.Component>;
	
	/**
	* Returns true if the menu is a 'top-level menu', that is, if it is
	* the direct child of a menubar.
	*
	* @return true if the menu is activated from the menu bar;
	*         false if the menu is activated from a menu item
	*         on another menu
	*/
	@:overload public function isTopLevelMenu() : Bool;
	
	/**
	* Returns true if the specified component exists in the
	* submenu hierarchy.
	*
	* @param c the <code>Component</code> to be tested
	* @return true if the <code>Component</code> exists, false otherwise
	*/
	@:overload public function isMenuComponent(c : java.awt.Component) : Bool;
	
	/**
	* Returns the popupmenu associated with this menu.  If there is
	* no popupmenu, it will create one.
	*/
	@:overload public function getPopupMenu() : javax.swing.JPopupMenu;
	
	/**
	* Adds a listener for menu events.
	*
	* @param l the listener to be added
	*/
	@:overload public function addMenuListener(l : javax.swing.event.MenuListener) : Void;
	
	/**
	* Removes a listener for menu events.
	*
	* @param l the listener to be removed
	*/
	@:overload public function removeMenuListener(l : javax.swing.event.MenuListener) : Void;
	
	/**
	* Returns an array of all the <code>MenuListener</code>s added
	* to this JMenu with addMenuListener().
	*
	* @return all of the <code>MenuListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getMenuListeners() : java.NativeArray<javax.swing.event.MenuListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is created lazily.
	*
	* @exception Error  if there is a <code>null</code> listener
	* @see EventListenerList
	*/
	@:overload private function fireMenuSelected() : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is created lazily.
	*
	* @exception Error if there is a <code>null</code> listener
	* @see EventListenerList
	*/
	@:overload private function fireMenuDeselected() : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is created lazily.
	*
	* @exception Error if there is a <code>null</code> listener
	* @see EventListenerList
	*/
	@:overload private function fireMenuCanceled() : Void;
	
	/**
	* Creates a window-closing listener for the popup.
	*
	* @param p the <code>JPopupMenu</code>
	* @return the new window-closing listener
	*
	* @see WinListener
	*/
	@:overload private function createWinListener(p : javax.swing.JPopupMenu) : javax.swing.JMenu.JMenu_WinListener;
	
	/**
	* Messaged when the menubar selection changes to activate or
	* deactivate this menu.
	* Overrides <code>JMenuItem.menuSelectionChanged</code>.
	*
	* @param isIncluded  true if this menu is active, false if
	*        it is not
	*/
	@:overload override public function menuSelectionChanged(isIncluded : Bool) : Void;
	
	/**
	* Returns an array of <code>MenuElement</code>s containing the submenu
	* for this menu component.  If popup menu is <code>null</code> returns
	* an empty array.  This method is required to conform to the
	* <code>MenuElement</code> interface.  Note that since
	* <code>JSeparator</code>s do not conform to the <code>MenuElement</code>
	* interface, this array will only contain <code>JMenuItem</code>s.
	*
	* @return an array of <code>MenuElement</code> objects
	*/
	@:overload override public function getSubElements() : java.NativeArray<javax.swing.MenuElement>;
	
	/**
	* Returns the <code>java.awt.Component</code> used to
	* paint this <code>MenuElement</code>.
	* The returned component is used to convert events and detect if
	* an event is inside a menu component.
	*/
	@:overload override public function getComponent() : java.awt.Component;
	
	/**
	* Sets the <code>ComponentOrientation</code> property of this menu
	* and all components contained within it. This includes all
	* components returned by {@link #getMenuComponents getMenuComponents}.
	*
	* @param o the new component orientation of this menu and
	*        the components contained within it.
	* @exception NullPointerException if <code>orientation</code> is null.
	* @see java.awt.Component#setComponentOrientation
	* @see java.awt.Component#getComponentOrientation
	* @since 1.4
	*/
	@:require(java4) @:overload override public function applyComponentOrientation(o : java.awt.ComponentOrientation) : Void;
	
	@:overload override public function setComponentOrientation(o : java.awt.ComponentOrientation) : Void;
	
	/**
	* <code>setAccelerator</code> is not defined for <code>JMenu</code>.
	* Use <code>setMnemonic</code> instead.
	* @param keyStroke  the keystroke combination which will invoke
	*                  the <code>JMenuItem</code>'s actionlisteners
	*                  without navigating the menu hierarchy
	* @exception Error  if invoked -- this method is not defined for JMenu.
	*                  Use <code>setMnemonic</code> instead
	*
	* @beaninfo
	*     description: The keystroke combination which will invoke the JMenuItem's
	*                  actionlisteners without navigating the menu hierarchy
	*          hidden: true
	*/
	@:overload override public function setAccelerator(keyStroke : javax.swing.KeyStroke) : Void;
	
	/**
	* Processes key stroke events such as mnemonics and accelerators.
	*
	* @param evt  the key event to be processed
	*/
	@:overload override private function processKeyEvent(evt : java.awt.event.KeyEvent) : Void;
	
	/**
	* Programmatically performs a "click".  This overrides the method
	* <code>AbstractButton.doClick</code> in order to make the menu pop up.
	* @param pressTime  indicates the number of milliseconds the
	*          button was pressed for
	*/
	@:overload public function doClick(pressTime : Int) : Void;
	
	/**
	* Returns a string representation of this <code>JMenu</code>. This
	* method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JMenu.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JMenu.
	* For JMenus, the AccessibleContext takes the form of an
	* AccessibleJMenu.
	* A new AccessibleJMenu instance is created if necessary.
	*
	* @return an AccessibleJMenu that serves as the
	*         AccessibleContext of this JMenu
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JMenu$MenuChangeListener') @:internal extern class JMenu_MenuChangeListener implements javax.swing.event.ChangeListener implements java.io.Serializable
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* A listener class that watches for a popup window closing.
* When the popup is closing, the listener deselects the menu.
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
@:native('javax$swing$JMenu$WinListener') extern class JMenu_WinListener extends java.awt.event.WindowAdapter implements java.io.Serializable
{
	/**
	*  Create the window listener for the specified popup.
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(p : javax.swing.JPopupMenu) : Void;
	
	/**
	* Deselect the menu when the popup is closed from outside.
	*/
	@:overload override public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JMenu</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to menu user-interface elements.
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
@:native('javax$swing$JMenu$AccessibleJMenu') extern class JMenu_AccessibleJMenu extends javax.swing.JMenuItem.JMenuItem_AccessibleJMenuItem implements javax.accessibility.AccessibleSelection
{
	/**
	* Returns the number of accessible children in the object.  If all
	* of the children of this object implement Accessible, than this
	* method should return the number of children of this object.
	*
	* @return the number of accessible children in the object.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the nth Accessible child of the object.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the AccessibleSelection associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleSelection interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Returns 1 if a sub-menu is currently selected in this menu.
	*
	* @return 1 if a menu is currently selected, else 0
	*/
	@:overload public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns the currently selected sub-menu if one is selected,
	* otherwise null (there can only be one selection, and it can
	* only be a sub-menu, as otherwise menu items don't remain
	* selected).
	*/
	@:overload public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns true if the current child of this object is selected
	* (that is, if this child is a popped-up submenu).
	*
	* @param i the zero-based index of the child in this Accessible
	* object.
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Selects the <code>i</code>th menu in the menu.
	* If that item is a submenu,
	* it will pop up in response.  If a different item is already
	* popped up, this will force it to close.  If this is a sub-menu
	* that is already popped up (selected), this method has no
	* effect.
	*
	* @param i the index of the item to be selected
	* @see #getAccessibleStateSet
	*/
	@:overload public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the nth item from the selection.  In general, menus
	* can only have one item within them selected at a time
	* (e.g. one sub-menu popped open).
	*
	* @param i the zero-based index of the selected item
	*/
	@:overload public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that nothing in the
	* object is selected.  This will close any open sub-menu.
	*/
	@:overload public function clearAccessibleSelection() : Void;
	
	/**
	* Normally causes every selected item in the object to be selected
	* if the object supports multiple selections.  This method
	* makes no sense in a menu bar, and so does nothing.
	*/
	@:overload public function selectAllAccessibleSelection() : Void;
	
	
}
