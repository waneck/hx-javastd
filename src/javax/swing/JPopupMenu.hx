package javax.swing;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class JPopupMenu extends javax.swing.JComponent implements javax.accessibility.Accessible implements javax.swing.MenuElement
{
	/**
	*  Sets the default value of the <code>lightWeightPopupEnabled</code>
	*  property.
	*
	*  @param aFlag <code>true</code> if popups can be lightweight,
	*               otherwise <code>false</code>
	*  @see #getDefaultLightWeightPopupEnabled
	*  @see #setLightWeightPopupEnabled
	*/
	@:overload public static function setDefaultLightWeightPopupEnabled(aFlag : Bool) : Void;
	
	/**
	*  Gets the <code>defaultLightWeightPopupEnabled</code> property,
	*  which by default is <code>true</code>.
	*
	*  @return the value of the <code>defaultLightWeightPopupEnabled</code>
	*          property
	*
	*  @see #setDefaultLightWeightPopupEnabled
	*/
	@:overload public static function getDefaultLightWeightPopupEnabled() : Bool;
	
	/**
	* Constructs a <code>JPopupMenu</code> without an "invoker".
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a <code>JPopupMenu</code> with the specified title.
	*
	* @param label  the string that a UI may use to display as a title
	* for the popup menu.
	*/
	@:overload public function new(label : String) : Void;
	
	/**
	* Returns the look and feel (L&F) object that renders this component.
	*
	* @return the <code>PopupMenuUI</code> object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.PopupMenuUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui the new <code>PopupMenuUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.PopupMenuUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "PopupMenuUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	@:overload override private function processFocusEvent(evt : java.awt.event.FocusEvent) : Void;
	
	/**
	* Processes key stroke events such as mnemonics and accelerators.
	*
	* @param evt  the key event to be processed
	*/
	@:overload override private function processKeyEvent(evt : java.awt.event.KeyEvent) : Void;
	
	/**
	* Returns the model object that handles single selections.
	*
	* @return the <code>selectionModel</code> property
	* @see SingleSelectionModel
	*/
	@:overload public function getSelectionModel() : javax.swing.SingleSelectionModel;
	
	/**
	* Sets the model object to handle single selections.
	*
	* @param model the new <code>SingleSelectionModel</code>
	* @see SingleSelectionModel
	* @beaninfo
	* description: The selection model for the popup menu
	*      expert: true
	*/
	@:overload public function setSelectionModel(model : javax.swing.SingleSelectionModel) : Void;
	
	/**
	* Appends the specified menu item to the end of this menu.
	*
	* @param menuItem the <code>JMenuItem</code> to add
	* @return the <code>JMenuItem</code> added
	*/
	@:overload public function add(menuItem : javax.swing.JMenuItem) : javax.swing.JMenuItem;
	
	/**
	* Creates a new menu item with the specified text and appends
	* it to the end of this menu.
	*
	* @param s the string for the menu item to be added
	*/
	@:overload public function add(s : String) : javax.swing.JMenuItem;
	
	/**
	* Appends a new menu item to the end of the menu which
	* dispatches the specified <code>Action</code> object.
	*
	* @param a the <code>Action</code> to add to the menu
	* @return the new menu item
	* @see Action
	*/
	@:overload public function add(a : javax.swing.Action) : javax.swing.JMenuItem;
	
	/**
	* Factory method which creates the <code>JMenuItem</code> for
	* <code>Actions</code> added to the <code>JPopupMenu</code>.
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
	* Removes the component at the specified index from this popup menu.
	*
	* @param       pos the position of the item to be removed
	* @exception   IllegalArgumentException if the value of
	*                          <code>pos</code> < 0, or if the value of
	*                          <code>pos</code> is greater than the
	*                          number of items
	*/
	@:overload override public function remove(pos : Int) : Void;
	
	/**
	* Sets the value of the <code>lightWeightPopupEnabled</code> property,
	* which by default is <code>true</code>.
	* By default, when a look and feel displays a popup,
	* it can choose to
	* use a lightweight (all-Java) popup.
	* Lightweight popup windows are more efficient than heavyweight
	* (native peer) windows,
	* but lightweight and heavyweight components do not mix well in a GUI.
	* If your application mixes lightweight and heavyweight components,
	* you should disable lightweight popups.
	* Some look and feels might always use heavyweight popups,
	* no matter what the value of this property.
	*
	* @param aFlag  <code>false</code> to disable lightweight popups
	* @beaninfo
	* description: Determines whether lightweight popups are used when possible
	*      expert: true
	*
	* @see #isLightWeightPopupEnabled
	*/
	@:overload public function setLightWeightPopupEnabled(aFlag : Bool) : Void;
	
	/**
	* Gets the <code>lightWeightPopupEnabled</code> property.
	*
	* @return the value of the <code>lightWeightPopupEnabled</code> property
	* @see #setLightWeightPopupEnabled
	*/
	@:overload public function isLightWeightPopupEnabled() : Bool;
	
	/**
	* Returns the popup menu's label
	*
	* @return a string containing the popup menu's label
	* @see #setLabel
	*/
	@:overload public function getLabel() : String;
	
	/**
	* Sets the popup menu's label.  Different look and feels may choose
	* to display or not display this.
	*
	* @param label a string specifying the label for the popup menu
	*
	* @see #setLabel
	* @beaninfo
	* description: The label for the popup menu.
	*       bound: true
	*/
	@:overload public function setLabel(label : String) : Void;
	
	/**
	* Appends a new separator at the end of the menu.
	*/
	@:overload public function addSeparator() : Void;
	
	/**
	* Inserts a menu item for the specified <code>Action</code> object at
	* a given position.
	*
	* @param a  the <code>Action</code> object to insert
	* @param index      specifies the position at which to insert the
	*                   <code>Action</code>, where 0 is the first
	* @exception IllegalArgumentException if <code>index</code> < 0
	* @see Action
	*/
	@:overload public function insert(a : javax.swing.Action, index : Int) : Void;
	
	/**
	* Inserts the specified component into the menu at a given
	* position.
	*
	* @param component  the <code>Component</code> to insert
	* @param index      specifies the position at which
	*                   to insert the component, where 0 is the first
	* @exception IllegalArgumentException if <code>index</code> < 0
	*/
	@:overload public function insert(component : java.awt.Component, index : Int) : Void;
	
	/**
	*  Adds a <code>PopupMenu</code> listener.
	*
	*  @param l  the <code>PopupMenuListener</code> to add
	*/
	@:overload public function addPopupMenuListener(l : javax.swing.event.PopupMenuListener) : Void;
	
	/**
	* Removes a <code>PopupMenu</code> listener.
	*
	* @param l  the <code>PopupMenuListener</code> to remove
	*/
	@:overload public function removePopupMenuListener(l : javax.swing.event.PopupMenuListener) : Void;
	
	/**
	* Returns an array of all the <code>PopupMenuListener</code>s added
	* to this JMenuItem with addPopupMenuListener().
	*
	* @return all of the <code>PopupMenuListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPopupMenuListeners() : java.NativeArray<javax.swing.event.PopupMenuListener>;
	
	/**
	* Adds a <code>MenuKeyListener</code> to the popup menu.
	*
	* @param l the <code>MenuKeyListener</code> to be added
	* @since 1.5
	*/
	@:require(java5) @:overload public function addMenuKeyListener(l : javax.swing.event.MenuKeyListener) : Void;
	
	/**
	* Removes a <code>MenuKeyListener</code> from the popup menu.
	*
	* @param l the <code>MenuKeyListener</code> to be removed
	* @since 1.5
	*/
	@:require(java5) @:overload public function removeMenuKeyListener(l : javax.swing.event.MenuKeyListener) : Void;
	
	/**
	* Returns an array of all the <code>MenuKeyListener</code>s added
	* to this JPopupMenu with addMenuKeyListener().
	*
	* @return all of the <code>MenuKeyListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.5
	*/
	@:require(java5) @:overload public function getMenuKeyListeners() : java.NativeArray<javax.swing.event.MenuKeyListener>;
	
	/**
	* Notifies <code>PopupMenuListener</code>s that this popup menu will
	* become visible.
	*/
	@:overload private function firePopupMenuWillBecomeVisible() : Void;
	
	/**
	* Notifies <code>PopupMenuListener</code>s that this popup menu will
	* become invisible.
	*/
	@:overload private function firePopupMenuWillBecomeInvisible() : Void;
	
	/**
	* Notifies <code>PopupMenuListeners</code> that this popup menu is
	* cancelled.
	*/
	@:overload private function firePopupMenuCanceled() : Void;
	
	/**
	* Lays out the container so that it uses the minimum space
	* needed to display its contents.
	*/
	@:overload public function pack() : Void;
	
	/**
	* Sets the visibility of the popup menu.
	*
	* @param b true to make the popup visible, or false to
	*          hide it
	* @beaninfo
	*           bound: true
	*     description: Makes the popup visible
	*/
	@:overload override public function setVisible(b : Bool) : Void;
	
	/**
	* Returns true if the popup menu is visible (currently
	* being displayed).
	*/
	@:overload override public function isVisible() : Bool;
	
	/**
	* Sets the location of the upper left corner of the
	* popup menu using x, y coordinates.
	*
	* @param x the x coordinate of the popup's new position
	*          in the screen's coordinate space
	* @param y the y coordinate of the popup's new position
	*          in the screen's coordinate space
	* @beaninfo
	* description: The location of the popup menu.
	*/
	@:overload override public function setLocation(x : Int, y : Int) : Void;
	
	/**
	* Returns the component which is the 'invoker' of this
	* popup menu.
	*
	* @return the <code>Component</code> in which the popup menu is displayed
	*/
	@:overload public function getInvoker() : java.awt.Component;
	
	/**
	* Sets the invoker of this popup menu -- the component in which
	* the popup menu menu is to be displayed.
	*
	* @param invoker the <code>Component</code> in which the popup
	*          menu is displayed
	* @beaninfo
	* description: The invoking component for the popup menu
	*      expert: true
	*/
	@:overload public function setInvoker(invoker : java.awt.Component) : Void;
	
	/**
	* Displays the popup menu at the position x,y in the coordinate
	* space of the component invoker.
	*
	* @param invoker the component in whose space the popup menu is to appear
	* @param x the x coordinate in invoker's coordinate space at which
	* the popup menu is to be displayed
	* @param y the y coordinate in invoker's coordinate space at which
	* the popup menu is to be displayed
	*/
	@:overload public function show(invoker : java.awt.Component, x : Int, y : Int) : Void;
	
	/**
	* Returns the component at the specified index.
	*
	* @param i  the index of the component, where 0 is the first
	* @return the <code>Component</code> at that index
	* @deprecated replaced by {@link java.awt.Container#getComponent(int)}
	*/
	@:overload public function getComponentAtIndex(i : Int) : java.awt.Component;
	
	/**
	* Returns the index of the specified component.
	*
	* @param  c the <code>Component</code> to find
	* @return the index of the component, where 0 is the first;
	*         or -1 if the component is not found
	*/
	@:overload public function getComponentIndex(c : java.awt.Component) : Int;
	
	/**
	* Sets the size of the Popup window using a <code>Dimension</code> object.
	* This is equivalent to <code>setPreferredSize(d)</code>.
	*
	* @param d   the <code>Dimension</code> specifying the new size
	* of this component.
	* @beaninfo
	* description: The size of the popup menu
	*/
	@:overload public function setPopupSize(d : java.awt.Dimension) : Void;
	
	/**
	* Sets the size of the Popup window to the specified width and
	* height. This is equivalent to
	*  <code>setPreferredSize(new Dimension(width, height))</code>.
	*
	* @param width the new width of the Popup in pixels
	* @param height the new height of the Popup in pixels
	* @beaninfo
	* description: The size of the popup menu
	*/
	@:overload public function setPopupSize(width : Int, height : Int) : Void;
	
	/**
	* Sets the currently selected component,  This will result
	* in a change to the selection model.
	*
	* @param sel the <code>Component</code> to select
	* @beaninfo
	* description: The selected component on the popup menu
	*      expert: true
	*      hidden: true
	*/
	@:overload public function setSelected(sel : java.awt.Component) : Void;
	
	/**
	* Checks whether the border should be painted.
	*
	* @return true if the border is painted, false otherwise
	* @see #setBorderPainted
	*/
	@:overload public function isBorderPainted() : Bool;
	
	/**
	* Sets whether the border should be painted.
	*
	* @param b if true, the border is painted.
	* @see #isBorderPainted
	* @beaninfo
	* description: Is the border of the popup menu painted
	*/
	@:overload public function setBorderPainted(b : Bool) : Void;
	
	/**
	* Paints the popup menu's border if the <code>borderPainted</code>
	* property is <code>true</code>.
	* @param g  the <code>Graphics</code> object
	*
	* @see JComponent#paint
	* @see JComponent#setBorder
	*/
	@:overload override private function paintBorder(g : java.awt.Graphics) : Void;
	
	/**
	* Returns the margin, in pixels, between the popup menu's border and
	* its containees.
	*
	* @return an <code>Insets</code> object containing the margin values.
	*/
	@:overload public function getMargin() : java.awt.Insets;
	
	/**
	* Returns a string representation of this <code>JPopupMenu</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JPopupMenu</code>.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JPopupMenu.
	* For JPopupMenus, the AccessibleContext takes the form of an
	* AccessibleJPopupMenu.
	* A new AccessibleJPopupMenu instance is created if necessary.
	*
	* @return an AccessibleJPopupMenu that serves as the
	*         AccessibleContext of this JPopupMenu
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* This method is required to conform to the
	* <code>MenuElement</code> interface, but it not implemented.
	* @see MenuElement#processMouseEvent(MouseEvent, MenuElement[], MenuSelectionManager)
	*/
	@:overload public function processMouseEvent(event : java.awt.event.MouseEvent, path : java.NativeArray<javax.swing.MenuElement>, manager : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Processes a key event forwarded from the
	* <code>MenuSelectionManager</code> and changes the menu selection,
	* if necessary, by using <code>MenuSelectionManager</code>'s API.
	* <p>
	* Note: you do not have to forward the event to sub-components.
	* This is done automatically by the <code>MenuSelectionManager</code>.
	*
	* @param e  a <code>KeyEvent</code>
	* @param path the <code>MenuElement</code> path array
	* @param manager   the <code>MenuSelectionManager</code>
	*/
	@:overload public function processKeyEvent(e : java.awt.event.KeyEvent, path : java.NativeArray<javax.swing.MenuElement>, manager : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Messaged when the menubar selection changes to activate or
	* deactivate this menu. This implements the
	* <code>javax.swing.MenuElement</code> interface.
	* Overrides <code>MenuElement.menuSelectionChanged</code>.
	*
	* @param isIncluded  true if this menu is active, false if
	*        it is not
	* @see MenuElement#menuSelectionChanged(boolean)
	*/
	@:overload public function menuSelectionChanged(isIncluded : Bool) : Void;
	
	/**
	* Returns an array of <code>MenuElement</code>s containing the submenu
	* for this menu component.  It will only return items conforming to
	* the <code>JMenuElement</code> interface.
	* If popup menu is <code>null</code> returns
	* an empty array.  This method is required to conform to the
	* <code>MenuElement</code> interface.
	*
	* @return an array of <code>MenuElement</code> objects
	* @see MenuElement#getSubElements
	*/
	@:overload public function getSubElements() : java.NativeArray<javax.swing.MenuElement>;
	
	/**
	* Returns this <code>JPopupMenu</code> component.
	* @return this <code>JPopupMenu</code> object
	* @see MenuElement#getComponent
	*/
	@:overload public function getComponent() : java.awt.Component;
	
	/**
	* Returns true if the <code>MouseEvent</code> is considered a popup trigger
	* by the <code>JPopupMenu</code>'s currently installed UI.
	*
	* @return true if the mouse event is a popup trigger
	* @since 1.3
	*/
	@:require(java3) @:overload public function isPopupTrigger(e : java.awt.event.MouseEvent) : Bool;
	
	
}
/**
* This class implements accessibility support for the
* <code>JPopupMenu</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to popup menu user-interface
* elements.
*/
@:native('javax$swing$JPopupMenu$AccessibleJPopupMenu') extern class JPopupMenu_AccessibleJPopupMenu extends AccessibleJComponent implements java.beans.PropertyChangeListener
{
	/**
	* AccessibleJPopupMenu constructor
	*
	* @since 1.5
	*/
	@:require(java5) @:overload private function new() : Void;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of
	* the object
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* This method gets called when a bound property is changed.
	* @param e A <code>PropertyChangeEvent</code> object describing
	* the event source and the property that has changed. Must not be null.
	*
	* @throws NullPointerException if the parameter is null.
	* @since 1.5
	*/
	@:require(java5) @:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* A popup menu-specific separator.
*/
@:native('javax$swing$JPopupMenu$Separator') extern class JPopupMenu_Separator extends javax.swing.JSeparator
{
	@:overload public function new() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "PopupMenuSeparatorUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	
}
