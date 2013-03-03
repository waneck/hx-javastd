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
* An implementation of a menu bar. You add <code>JMenu</code> objects to the
* menu bar to construct a menu. When the user selects a <code>JMenu</code>
* object, its associated <code>JPopupMenu</code> is displayed, allowing the
* user to select one of the <code>JMenuItems</code> on it.
* <p>
* For information and examples of using menu bars see
* <a
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
*   attribute: isContainer true
* description: A container for holding and displaying menus.
*
* @author Georges Saab
* @author David Karlton
* @author Arnaud Weber
* @see JMenu
* @see JPopupMenu
* @see JMenuItem
*/
extern class JMenuBar extends javax.swing.JComponent implements javax.accessibility.Accessible implements javax.swing.MenuElement
{
	/**
	* Creates a new menu bar.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the menubar's current UI.
	* @see #setUI
	*/
	@:overload @:public public function getUI() : javax.swing.plaf.MenuBarUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui the new MenuBarUI L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload @:public public function setUI(ui : javax.swing.plaf.MenuBarUI) : Void;
	
	/**
	* Resets the UI property with a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "MenuBarUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Returns the model object that handles single selections.
	*
	* @return the <code>SingleSelectionModel</code> property
	* @see SingleSelectionModel
	*/
	@:overload @:public public function getSelectionModel() : javax.swing.SingleSelectionModel;
	
	/**
	* Sets the model object to handle single selections.
	*
	* @param model the <code>SingleSelectionModel</code> to use
	* @see SingleSelectionModel
	* @beaninfo
	*       bound: true
	* description: The selection model, recording which child is selected.
	*/
	@:overload @:public public function setSelectionModel(model : javax.swing.SingleSelectionModel) : Void;
	
	/**
	* Appends the specified menu to the end of the menu bar.
	*
	* @param c the <code>JMenu</code> component to add
	* @return the menu component
	*/
	@:overload @:public public function add(c : javax.swing.JMenu) : javax.swing.JMenu;
	
	/**
	* Returns the menu at the specified position in the menu bar.
	*
	* @param index  an integer giving the position in the menu bar, where
	*               0 is the first position
	* @return the <code>JMenu</code> at that position, or <code>null</code> if
	*          if there is no <code>JMenu</code> at that position (ie. if
	*          it is a <code>JMenuItem</code>)
	*/
	@:overload @:public public function getMenu(index : Int) : javax.swing.JMenu;
	
	/**
	* Returns the number of items in the menu bar.
	*
	* @return the number of items in the menu bar
	*/
	@:overload @:public public function getMenuCount() : Int;
	
	/**
	* Sets the help menu that appears when the user selects the
	* "help" option in the menu bar. This method is not yet implemented
	* and will throw an exception.
	*
	* @param menu the JMenu that delivers help to the user
	*/
	@:overload @:public public function setHelpMenu(menu : javax.swing.JMenu) : Void;
	
	/**
	* Gets the help menu for the menu bar.  This method is not yet
	* implemented and will throw an exception.
	*
	* @return the <code>JMenu</code> that delivers help to the user
	*/
	@:overload @:public public function getHelpMenu() : javax.swing.JMenu;
	
	/**
	* Returns the component at the specified index.
	*
	* @param i an integer specifying the position, where 0 is first
	* @return the <code>Component</code> at the position,
	*          or <code>null</code> for an invalid index
	* @deprecated replaced by <code>getComponent(int i)</code>
	*/
	@:overload @:public public function getComponentAtIndex(i : Int) : java.awt.Component;
	
	/**
	* Returns the index of the specified component.
	*
	* @param c  the <code>Component</code> to find
	* @return an integer giving the component's position, where 0 is first;
	*          or -1 if it can't be found
	*/
	@:overload @:public public function getComponentIndex(c : java.awt.Component) : Int;
	
	/**
	* Sets the currently selected component, producing a
	* a change to the selection model.
	*
	* @param sel the <code>Component</code> to select
	*/
	@:overload @:public public function setSelected(sel : java.awt.Component) : Void;
	
	/**
	* Returns true if the menu bar currently has a component selected.
	*
	* @return true if a selection has been made, else false
	*/
	@:overload @:public public function isSelected() : Bool;
	
	/**
	* Returns true if the menu bars border should be painted.
	*
	* @return  true if the border should be painted, else false
	*/
	@:overload @:public public function isBorderPainted() : Bool;
	
	/**
	* Sets whether the border should be painted.
	*
	* @param b if true and border property is not <code>null</code>,
	*          the border is painted.
	* @see #isBorderPainted
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether the border should be painted.
	*/
	@:overload @:public public function setBorderPainted(b : Bool) : Void;
	
	/**
	* Paints the menubar's border if <code>BorderPainted</code>
	* property is true.
	*
	* @param g the <code>Graphics</code> context to use for painting
	* @see JComponent#paint
	* @see JComponent#setBorder
	*/
	@:overload @:protected override private function paintBorder(g : java.awt.Graphics) : Void;
	
	/**
	* Sets the margin between the menubar's border and
	* its menus. Setting to <code>null</code> will cause the menubar to
	* use the default margins.
	*
	* @param m an Insets object containing the margin values
	* @see Insets
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The space between the menubar's border and its contents
	*/
	@:overload @:public public function setMargin(m : java.awt.Insets) : Void;
	
	/**
	* Returns the margin between the menubar's border and
	* its menus.  If there is no previous margin, it will create
	* a default margin with zero size.
	*
	* @return an <code>Insets</code> object containing the margin values
	* @see Insets
	*/
	@:overload @:public public function getMargin() : java.awt.Insets;
	
	/**
	* Implemented to be a <code>MenuElement</code> -- does nothing.
	*
	* @see #getSubElements
	*/
	@:overload @:public public function processMouseEvent(event : java.awt.event.MouseEvent, path : java.NativeArray<javax.swing.MenuElement>, manager : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Implemented to be a <code>MenuElement</code> -- does nothing.
	*
	* @see #getSubElements
	*/
	@:overload @:public public function processKeyEvent(e : java.awt.event.KeyEvent, path : java.NativeArray<javax.swing.MenuElement>, manager : javax.swing.MenuSelectionManager) : Void;
	
	/**
	* Implemented to be a <code>MenuElement</code> -- does nothing.
	*
	* @see #getSubElements
	*/
	@:overload @:public public function menuSelectionChanged(isIncluded : Bool) : Void;
	
	/**
	* Implemented to be a <code>MenuElement</code> -- returns the
	* menus in this menu bar.
	* This is the reason for implementing the <code>MenuElement</code>
	* interface -- so that the menu bar can be treated the same as
	* other menu elements.
	* @return an array of menu items in the menu bar.
	*/
	@:overload @:public public function getSubElements() : java.NativeArray<javax.swing.MenuElement>;
	
	/**
	* Implemented to be a <code>MenuElement</code>. Returns this object.
	*
	* @return the current <code>Component</code> (this)
	* @see #getSubElements
	*/
	@:overload @:public public function getComponent() : java.awt.Component;
	
	/**
	* Returns a string representation of this <code>JMenuBar</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JMenuBar</code>
	*/
	@:overload @:protected override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JMenuBar.
	* For JMenuBars, the AccessibleContext takes the form of an
	* AccessibleJMenuBar.
	* A new AccessibleJMenuBar instance is created if necessary.
	*
	* @return an AccessibleJMenuBar that serves as the
	*         AccessibleContext of this JMenuBar
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Subclassed to check all the child menus.
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected override private function processKeyBinding(ks : javax.swing.KeyStroke, e : java.awt.event.KeyEvent, condition : Int, pressed : Bool) : Bool;
	
	/**
	* Overrides <code>JComponent.addNotify</code> to register this
	* menu bar with the current keyboard manager.
	*/
	@:overload @:public override public function addNotify() : Void;
	
	/**
	* Overrides <code>JComponent.removeNotify</code> to unregister this
	* menu bar with the current keyboard manager.
	*/
	@:overload @:public override public function removeNotify() : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JMenuBar</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to menu bar user-interface
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
@:native('javax$swing$JMenuBar$AccessibleJMenuBar') extern class JMenuBar_AccessibleJMenuBar extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleSelection
{
	/**
	* Get the accessible state set of this object.
	*
	* @return an instance of AccessibleState containing the current state
	*         of the object
	*/
	@:overload @:public override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the AccessibleSelection associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleSelection interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload @:public override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Returns 1 if a menu is currently selected in this menu bar.
	*
	* @return 1 if a menu is currently selected, else 0
	*/
	@:overload @:public public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns the currently selected menu if one is selected,
	* otherwise null.
	*/
	@:overload @:public public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns true if the current child of this object is selected.
	*
	* @param i the zero-based index of the child in this Accessible
	* object.
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload @:public public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Selects the nth menu in the menu bar, forcing it to
	* pop up.  If another menu is popped up, this will force
	* it to close.  If the nth menu is already selected, this
	* method has no effect.
	*
	* @param i the zero-based index of selectable items
	* @see #getAccessibleStateSet
	*/
	@:overload @:public public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the nth selected item in the object from the object's
	* selection.  If the nth item isn't currently selected, this
	* method has no effect.  Otherwise, it closes the popup menu.
	*
	* @param i the zero-based index of selectable items
	*/
	@:overload @:public public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that nothing in the
	* object is selected.  This will close any open menu.
	*/
	@:overload @:public public function clearAccessibleSelection() : Void;
	
	/**
	* Normally causes every selected item in the object to be selected
	* if the object supports multiple selections.  This method
	* makes no sense in a menu bar, and so does nothing.
	*/
	@:overload @:public public function selectAllAccessibleSelection() : Void;
	
	
}
