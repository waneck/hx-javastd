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
/**
* An implementation of an item in a menu. A menu item is essentially a button
* sitting in a list. When the user selects the "button", the action
* associated with the menu item is performed. A <code>JMenuItem</code>
* contained in a <code>JPopupMenu</code> performs exactly that function.
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
* For further documentation and for examples, see
* <a
href="http://java.sun.com/docs/books/tutorial/uiswing/components/menu.html">How to Use Menus</a>
* in <em>The Java Tutorial.</em>
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
* description: An item which can be selected in a menu.
*
* @author Georges Saab
* @author David Karlton
* @see JPopupMenu
* @see JMenu
* @see JCheckBoxMenuItem
* @see JRadioButtonMenuItem
*/
extern class JMenuItem extends javax.swing.AbstractButton implements javax.accessibility.Accessible implements javax.swing.MenuElement
{
	/**
	* Creates a <code>JMenuItem</code> with no set text or icon.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <code>JMenuItem</code> with the specified icon.
	*
	* @param icon the icon of the <code>JMenuItem</code>
	*/
	@:overload @:public public function new(icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a <code>JMenuItem</code> with the specified text.
	*
	* @param text the text of the <code>JMenuItem</code>
	*/
	@:overload @:public public function new(text : String) : Void;
	
	/**
	* Creates a menu item whose properties are taken from the
	* specified <code>Action</code>.
	*
	* @param a the action of the <code>JMenuItem</code>
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(a : javax.swing.Action) : Void;
	
	/**
	* Creates a <code>JMenuItem</code> with the specified text and icon.
	*
	* @param text the text of the <code>JMenuItem</code>
	* @param icon the icon of the <code>JMenuItem</code>
	*/
	@:overload @:public public function new(text : String, icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a <code>JMenuItem</code> with the specified text and
	* keyboard mnemonic.
	*
	* @param text the text of the <code>JMenuItem</code>
	* @param mnemonic the keyboard mnemonic for the <code>JMenuItem</code>
	*/
	@:overload @:public public function new(text : String, mnemonic : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function setModel(newModel : javax.swing.ButtonModel) : Void;
	
	/**
	* Initializes the menu item with the specified text and icon.
	*
	* @param text the text of the <code>JMenuItem</code>
	* @param icon the icon of the <code>JMenuItem</code>
	*/
	@:overload @:protected override private function init(text : String, icon : javax.swing.Icon) : Void;
	
	/**
	* Sets the look and feel object that renders this component.
	*
	* @param ui  the <code>JMenuItemUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload @:public public function setUI(ui : javax.swing.plaf.MenuItemUI) : Void;
	
	/**
	* Resets the UI property with a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns the suffix used to construct the name of the L&F class used to
	* render this component.
	*
	* @return the string "MenuItemUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Identifies the menu item as "armed". If the mouse button is
	* released while it is over this item, the menu's action event
	* will fire. If the mouse button is released elsewhere, the
	* event will not fire and the menu item will be disarmed.
	*
	* @param b true to arm the menu item so it can be selected
	* @beaninfo
	*    description: Mouse release will fire an action event
	*         hidden: true
	*/
	@:overload @:public public function setArmed(b : Bool) : Void;
	
	/**
	* Returns whether the menu item is "armed".
	*
	* @return true if the menu item is armed, and it can be selected
	* @see #setArmed
	*/
	@:overload @:public public function isArmed() : Bool;
	
	/**
	* Enables or disables the menu item.
	*
	* @param b  true to enable the item
	* @beaninfo
	*    description: Does the component react to user interaction
	*          bound: true
	*      preferred: true
	*/
	@:overload @:public override public function setEnabled(b : Bool) : Void;
	
	/**
	* Sets the key combination which invokes the menu item's
	* action listeners without navigating the menu hierarchy. It is the
	* UI's responsibility to install the correct action.  Note that
	* when the keyboard accelerator is typed, it will work whether or
	* not the menu is currently displayed.
	*
	* @param keyStroke the <code>KeyStroke</code> which will
	*          serve as an accelerator
	* @beaninfo
	*     description: The keystroke combination which will invoke the
	*                  JMenuItem's actionlisteners without navigating the
	*                  menu hierarchy
	*           bound: true
	*       preferred: true
	*/
	@:overload @:public public function setAccelerator(keyStroke : javax.swing.KeyStroke) : Void;
	
	/**
	* Returns the <code>KeyStroke</code> which serves as an accelerator
	* for the menu item.
	* @return a <code>KeyStroke</code> object identifying the
	*          accelerator key
	*/
	@:overload @:public public function getAccelerator() : javax.swing.KeyStroke;
	
	/**
	* {@inheritDoc}
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected override private function configurePropertiesFromAction(a : javax.swing.Action) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected override private function actionPropertyChanged(action : javax.swing.Action, propertyName : String) : Void;
	
	/**
	* Processes a mouse event forwarded from the
	* <code>MenuSelectionManager</code> and changes the menu
	* selection, if necessary, by using the
	* <code>MenuSelectionManager</code>'s API.
	* <p>
	* Note: you do not have to forward the event to sub-components.
	* This is done automatically by the <code>MenuSelectionManager</code>.
	*
	* @param e   a <code>MouseEvent</code>
	* @param path  the <code>MenuElement</code> path array
	* @param manager   the <code>MenuSelectionManager</code>
	*/
	@:overload @:public public function processMouseEvent(e : java.awt.event.MouseEvent, path : java.NativeArray<javax.swing.MenuElement>, manager : javax.swing.MenuSelectionManager) : Void;
	
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
	@:overload @:public public function processKeyEvent(e : java.awt.event.KeyEvent, path : java.NativeArray<javax.swing.MenuElement>, manager : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Handles mouse drag in a menu.
	*
	* @param e  a <code>MenuDragMouseEvent</code> object
	*/
	@:overload @:public public function processMenuDragMouseEvent(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	/**
	* Handles a keystroke in a menu.
	*
	* @param e  a <code>MenuKeyEvent</code> object
	*/
	@:overload @:public public function processMenuKeyEvent(e : javax.swing.event.MenuKeyEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param event a <code>MenuMouseDragEvent</code>
	* @see EventListenerList
	*/
	@:overload @:protected private function fireMenuDragMouseEntered(event : javax.swing.event.MenuDragMouseEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param event a <code>MenuDragMouseEvent</code>
	* @see EventListenerList
	*/
	@:overload @:protected private function fireMenuDragMouseExited(event : javax.swing.event.MenuDragMouseEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param event a <code>MenuDragMouseEvent</code>
	* @see EventListenerList
	*/
	@:overload @:protected private function fireMenuDragMouseDragged(event : javax.swing.event.MenuDragMouseEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param event a <code>MenuDragMouseEvent</code>
	* @see EventListenerList
	*/
	@:overload @:protected private function fireMenuDragMouseReleased(event : javax.swing.event.MenuDragMouseEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param event a <code>MenuKeyEvent</code>
	* @see EventListenerList
	*/
	@:overload @:protected private function fireMenuKeyPressed(event : javax.swing.event.MenuKeyEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param event a <code>MenuKeyEvent</code>
	* @see EventListenerList
	*/
	@:overload @:protected private function fireMenuKeyReleased(event : javax.swing.event.MenuKeyEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param event a <code>MenuKeyEvent</code>
	* @see EventListenerList
	*/
	@:overload @:protected private function fireMenuKeyTyped(event : javax.swing.event.MenuKeyEvent) : Void;
	
	/**
	* Called by the <code>MenuSelectionManager</code> when the
	* <code>MenuElement</code> is selected or unselected.
	*
	* @param isIncluded  true if this menu item is on the part of the menu
	*                    path that changed, false if this menu is part of the
	*                    a menu path that changed, but this particular part of
	*                    that path is still the same
	* @see MenuSelectionManager#setSelectedPath(MenuElement[])
	*/
	@:overload @:public public function menuSelectionChanged(isIncluded : Bool) : Void;
	
	/**
	* This method returns an array containing the sub-menu
	* components for this menu component.
	*
	* @return an array of <code>MenuElement</code>s
	*/
	@:overload @:public public function getSubElements() : java.NativeArray<javax.swing.MenuElement>;
	
	/**
	* Returns the <code>java.awt.Component</code> used to paint
	* this object. The returned component will be used to convert
	* events and detect if an event is inside a menu component.
	*
	* @return the <code>Component</code> that paints this menu item
	*/
	@:overload @:public public function getComponent() : java.awt.Component;
	
	/**
	* Adds a <code>MenuDragMouseListener</code> to the menu item.
	*
	* @param l the <code>MenuDragMouseListener</code> to be added
	*/
	@:overload @:public public function addMenuDragMouseListener(l : javax.swing.event.MenuDragMouseListener) : Void;
	
	/**
	* Removes a <code>MenuDragMouseListener</code> from the menu item.
	*
	* @param l the <code>MenuDragMouseListener</code> to be removed
	*/
	@:overload @:public public function removeMenuDragMouseListener(l : javax.swing.event.MenuDragMouseListener) : Void;
	
	/**
	* Returns an array of all the <code>MenuDragMouseListener</code>s added
	* to this JMenuItem with addMenuDragMouseListener().
	*
	* @return all of the <code>MenuDragMouseListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getMenuDragMouseListeners() : java.NativeArray<javax.swing.event.MenuDragMouseListener>;
	
	/**
	* Adds a <code>MenuKeyListener</code> to the menu item.
	*
	* @param l the <code>MenuKeyListener</code> to be added
	*/
	@:overload @:public public function addMenuKeyListener(l : javax.swing.event.MenuKeyListener) : Void;
	
	/**
	* Removes a <code>MenuKeyListener</code> from the menu item.
	*
	* @param l the <code>MenuKeyListener</code> to be removed
	*/
	@:overload @:public public function removeMenuKeyListener(l : javax.swing.event.MenuKeyListener) : Void;
	
	/**
	* Returns an array of all the <code>MenuKeyListener</code>s added
	* to this JMenuItem with addMenuKeyListener().
	*
	* @return all of the <code>MenuKeyListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getMenuKeyListeners() : java.NativeArray<javax.swing.event.MenuKeyListener>;
	
	/**
	* Returns a string representation of this <code>JMenuItem</code>.
	* This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JMenuItem</code>
	*/
	@:overload @:protected override private function paramString() : String;
	
	/**
	* Returns the <code>AccessibleContext</code> associated with this
	* <code>JMenuItem</code>. For <code>JMenuItem</code>s,
	* the <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJMenuItem</code>.
	* A new AccessibleJMenuItme instance is created if necessary.
	*
	* @return an <code>AccessibleJMenuItem</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>JMenuItem</code>
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JMenuItem$MenuItemFocusListener') @:internal extern class JMenuItem_MenuItemFocusListener implements java.awt.event.FocusListener implements java.io.Serializable
{
	@:overload @:public public function focusGained(event : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(event : java.awt.event.FocusEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JMenuItem</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to menu item user-interface
* elements.
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
@:native('javax$swing$JMenuItem$AccessibleJMenuItem') extern class JMenuItem_AccessibleJMenuItem extends javax.swing.AbstractButton.AbstractButton_AccessibleAbstractButton implements javax.swing.event.ChangeListener
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Supports the change listener interface and fires property changes.
	*/
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
