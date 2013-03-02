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
* A component that combines a button or editable field and a drop-down list.
* The user can select a value from the drop-down list, which appears at the
* user's request. If you make the combo box editable, then the combo box
* includes an editable field into which the user can type a value.
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
* <p>
* See <a href="http://java.sun.com/docs/books/tutorial/uiswing/components/combobox.html">How to Use Combo Boxes</a>
* in <a href="http://java.sun.com/Series/Tutorial/index.html"><em>The Java Tutorial</em></a>
* for further information.
* <p>
* @see ComboBoxModel
* @see DefaultComboBoxModel
*
* @param <E> the type of the elements of this combo box
*
* @beaninfo
*   attribute: isContainer false
* description: A combination of a text field and a drop-down list.
*
* @author Arnaud Weber
* @author Mark Davidson
*/
extern class JComboBox<E> extends javax.swing.JComponent implements java.awt.ItemSelectable implements javax.swing.event.ListDataListener implements java.awt.event.ActionListener implements javax.accessibility.Accessible
{
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #getModel
	* @see #setModel
	*/
	private var dataModel : javax.swing.ComboBoxModel<E>;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #getRenderer
	* @see #setRenderer
	*/
	private var renderer : javax.swing.ListCellRenderer<E>;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #getEditor
	* @see #setEditor
	*/
	private var editor : javax.swing.ComboBoxEditor;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #getMaximumRowCount
	* @see #setMaximumRowCount
	*/
	private var maximumRowCount : Int;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #setKeySelectionManager
	* @see #getKeySelectionManager
	*/
	private var keySelectionManager : javax.swing.JComboBox.JComboBox_KeySelectionManager;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #setActionCommand
	* @see #getActionCommand
	*/
	private var actionCommand : String;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #setLightWeightPopupEnabled
	* @see #isLightWeightPopupEnabled
	*/
	private var lightWeightPopupEnabled : Bool;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override.
	*/
	private var selectedItemReminder : Dynamic;
	
	/**
	* Creates a <code>JComboBox</code> that takes its items from an
	* existing <code>ComboBoxModel</code>.  Since the
	* <code>ComboBoxModel</code> is provided, a combo box created using
	* this constructor does not create a default combo box model and
	* may impact how the insert, remove and add methods behave.
	*
	* @param aModel the <code>ComboBoxModel</code> that provides the
	*          displayed list of items
	* @see DefaultComboBoxModel
	*/
	@:overload public function new(aModel : javax.swing.ComboBoxModel<E>) : Void;
	
	/**
	* Creates a <code>JComboBox</code> that contains the elements
	* in the specified array.  By default the first item in the array
	* (and therefore the data model) becomes selected.
	*
	* @param items  an array of objects to insert into the combo box
	* @see DefaultComboBoxModel
	*/
	@:overload public function new(items : java.NativeArray<E>) : Void;
	
	/**
	* Creates a <code>JComboBox</code> that contains the elements
	* in the specified Vector.  By default the first item in the vector
	* (and therefore the data model) becomes selected.
	*
	* @param items  an array of vectors to insert into the combo box
	* @see DefaultComboBoxModel
	*/
	@:overload public function new(items : java.util.Vector<E>) : Void;
	
	/**
	* Creates a <code>JComboBox</code> with a default data model.
	* The default data model is an empty list of objects.
	* Use <code>addItem</code> to add items.  By default the first item
	* in the data model becomes selected.
	*
	* @see DefaultComboBoxModel
	*/
	@:overload public function new() : Void;
	
	@:overload private function installAncestorListener() : Void;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the <code>ComboBoxUI</code> L&F object
	* @see UIDefaults#getUI
	*
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.ComboBoxUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "ComboBoxUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload public function getUIClassID() : String;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return the ComboBoxUI object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.ComboBoxUI;
	
	/**
	* Sets the data model that the <code>JComboBox</code> uses to obtain
	* the list of items.
	*
	* @param aModel the <code>ComboBoxModel</code> that provides the
	*  displayed list of items
	*
	* @beaninfo
	*        bound: true
	*  description: Model that the combo box uses to get data to display.
	*/
	@:overload public function setModel(aModel : javax.swing.ComboBoxModel<E>) : Void;
	
	/**
	* Returns the data model currently used by the <code>JComboBox</code>.
	*
	* @return the <code>ComboBoxModel</code> that provides the displayed
	*                  list of items
	*/
	@:overload public function getModel() : javax.swing.ComboBoxModel<E>;
	
	/**
	* Sets the <code>lightWeightPopupEnabled</code> property, which
	* provides a hint as to whether or not a lightweight
	* <code>Component</code> should be used to contain the
	* <code>JComboBox</code>, versus a heavyweight
	* <code>Component</code> such as a <code>Panel</code>
	* or a <code>Window</code>.  The decision of lightweight
	* versus heavyweight is ultimately up to the
	* <code>JComboBox</code>.  Lightweight windows are more
	* efficient than heavyweight windows, but lightweight
	* and heavyweight components do not mix well in a GUI.
	* If your application mixes lightweight and heavyweight
	* components, you should disable lightweight popups.
	* The default value for the <code>lightWeightPopupEnabled</code>
	* property is <code>true</code>, unless otherwise specified
	* by the look and feel.  Some look and feels always use
	* heavyweight popups, no matter what the value of this property.
	* <p>
	* See the article <a href="http://java.sun.com/products/jfc/tsc/articles/mixing/index.html">Mixing Heavy and Light Components</a>
	* on <a href="http://java.sun.com/products/jfc/tsc">
	* <em>The Swing Connection</em></a>
	* This method fires a property changed event.
	*
	* @param aFlag if <code>true</code>, lightweight popups are desired
	*
	* @beaninfo
	*        bound: true
	*       expert: true
	*  description: Set to <code>false</code> to require heavyweight popups.
	*/
	@:overload public function setLightWeightPopupEnabled(aFlag : Bool) : Void;
	
	/**
	* Gets the value of the <code>lightWeightPopupEnabled</code>
	* property.
	*
	* @return the value of the <code>lightWeightPopupEnabled</code>
	*    property
	* @see #setLightWeightPopupEnabled
	*/
	@:overload public function isLightWeightPopupEnabled() : Bool;
	
	/**
	* Determines whether the <code>JComboBox</code> field is editable.
	* An editable <code>JComboBox</code> allows the user to type into the
	* field or selected an item from the list to initialize the field,
	* after which it can be edited. (The editing affects only the field,
	* the list item remains intact.) A non editable <code>JComboBox</code>
	* displays the selected item in the field,
	* but the selection cannot be modified.
	*
	* @param aFlag a boolean value, where true indicates that the
	*                  field is editable
	*
	* @beaninfo
	*        bound: true
	*    preferred: true
	*  description: If true, the user can type a new value in the combo box.
	*/
	@:overload public function setEditable(aFlag : Bool) : Void;
	
	/**
	* Returns true if the <code>JComboBox</code> is editable.
	* By default, a combo box is not editable.
	*
	* @return true if the <code>JComboBox</code> is editable, else false
	*/
	@:overload public function isEditable() : Bool;
	
	/**
	* Sets the maximum number of rows the <code>JComboBox</code> displays.
	* If the number of objects in the model is greater than count,
	* the combo box uses a scrollbar.
	*
	* @param count an integer specifying the maximum number of items to
	*              display in the list before using a scrollbar
	* @beaninfo
	*        bound: true
	*    preferred: true
	*  description: The maximum number of rows the popup should have
	*/
	@:overload public function setMaximumRowCount(count : Int) : Void;
	
	/**
	* Returns the maximum number of items the combo box can display
	* without a scrollbar
	*
	* @return an integer specifying the maximum number of items that are
	*         displayed in the list before using a scrollbar
	*/
	@:overload public function getMaximumRowCount() : Int;
	
	/**
	* Sets the renderer that paints the list items and the item selected from the list in
	* the JComboBox field. The renderer is used if the JComboBox is not
	* editable. If it is editable, the editor is used to render and edit
	* the selected item.
	* <p>
	* The default renderer displays a string or an icon.
	* Other renderers can handle graphic images and composite items.
	* <p>
	* To display the selected item,
	* <code>aRenderer.getListCellRendererComponent</code>
	* is called, passing the list object and an index of -1.
	*
	* @param aRenderer  the <code>ListCellRenderer</code> that
	*                  displays the selected item
	* @see #setEditor
	* @beaninfo
	*      bound: true
	*     expert: true
	*  description: The renderer that paints the item selected in the list.
	*/
	@:overload public function setRenderer(aRenderer : javax.swing.ListCellRenderer<E>) : Void;
	
	/**
	* Returns the renderer used to display the selected item in the
	* <code>JComboBox</code> field.
	*
	* @return  the <code>ListCellRenderer</code> that displays
	*                  the selected item.
	*/
	@:overload public function getRenderer() : javax.swing.ListCellRenderer<E>;
	
	/**
	* Sets the editor used to paint and edit the selected item in the
	* <code>JComboBox</code> field.  The editor is used only if the
	* receiving <code>JComboBox</code> is editable. If not editable,
	* the combo box uses the renderer to paint the selected item.
	*
	* @param anEditor  the <code>ComboBoxEditor</code> that
	*                  displays the selected item
	* @see #setRenderer
	* @beaninfo
	*     bound: true
	*    expert: true
	*  description: The editor that combo box uses to edit the current value
	*/
	@:overload public function setEditor(anEditor : javax.swing.ComboBoxEditor) : Void;
	
	/**
	* Returns the editor used to paint and edit the selected item in the
	* <code>JComboBox</code> field.
	*
	* @return the <code>ComboBoxEditor</code> that displays the selected item
	*/
	@:overload public function getEditor() : javax.swing.ComboBoxEditor;
	
	/**
	* Sets the selected item in the combo box display area to the object in
	* the argument.
	* If <code>anObject</code> is in the list, the display area shows
	* <code>anObject</code> selected.
	* <p>
	* If <code>anObject</code> is <i>not</i> in the list and the combo box is
	* uneditable, it will not change the current selection. For editable
	* combo boxes, the selection will change to <code>anObject</code>.
	* <p>
	* If this constitutes a change in the selected item,
	* <code>ItemListener</code>s added to the combo box will be notified with
	* one or two <code>ItemEvent</code>s.
	* If there is a current selected item, an <code>ItemEvent</code> will be
	* fired and the state change will be <code>ItemEvent.DESELECTED</code>.
	* If <code>anObject</code> is in the list and is not currently selected
	* then an <code>ItemEvent</code> will be fired and the state change will
	* be <code>ItemEvent.SELECTED</code>.
	* <p>
	* <code>ActionListener</code>s added to the combo box will be notified
	* with an <code>ActionEvent</code> when this method is called.
	*
	* @param anObject  the list object to select; use <code>null</code> to
	clear the selection
	* @beaninfo
	*    preferred:   true
	*    description: Sets the selected item in the JComboBox.
	*/
	@:overload public function setSelectedItem(anObject : Dynamic) : Void;
	
	/**
	* Returns the current selected item.
	* <p>
	* If the combo box is editable, then this value may not have been added
	* to the combo box with <code>addItem</code>, <code>insertItemAt</code>
	* or the data constructors.
	*
	* @return the current selected Object
	* @see #setSelectedItem
	*/
	@:overload public function getSelectedItem() : Dynamic;
	
	/**
	* Selects the item at index <code>anIndex</code>.
	*
	* @param anIndex an integer specifying the list item to select,
	*                  where 0 specifies the first item in the list and -1 indicates no selection
	* @exception IllegalArgumentException if <code>anIndex</code> < -1 or
	*                  <code>anIndex</code> is greater than or equal to size
	* @beaninfo
	*   preferred: true
	*  description: The item at index is selected.
	*/
	@:overload public function setSelectedIndex(anIndex : Int) : Void;
	
	/**
	* Returns the first item in the list that matches the given item.
	* The result is not always defined if the <code>JComboBox</code>
	* allows selected items that are not in the list.
	* Returns -1 if there is no selected item or if the user specified
	* an item which is not in the list.

	* @return an integer specifying the currently selected list item,
	*                  where 0 specifies
	*                  the first item in the list;
	*                  or -1 if no item is selected or if
	*                  the currently selected item is not in the list
	*/
	@:overload public function getSelectedIndex() : Int;
	
	/**
	* Returns the "prototypical display" value - an Object used
	* for the calculation of the display height and width.
	*
	* @return the value of the <code>prototypeDisplayValue</code> property
	* @see #setPrototypeDisplayValue
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPrototypeDisplayValue() : E;
	
	/**
	* Sets the prototype display value used to calculate the size of the display
	* for the UI portion.
	* <p>
	* If a prototype display value is specified, the preferred size of
	* the combo box is calculated by configuring the renderer with the
	* prototype display value and obtaining its preferred size. Specifying
	* the preferred display value is often useful when the combo box will be
	* displaying large amounts of data. If no prototype display value has
	* been specified, the renderer must be configured for each value from
	* the model and its preferred size obtained, which can be
	* relatively expensive.
	*
	* @param prototypeDisplayValue
	* @see #getPrototypeDisplayValue
	* @since 1.4
	* @beaninfo
	*       bound: true
	*   attribute: visualUpdate true
	* description: The display prototype value, used to compute display width and height.
	*/
	@:require(java4) @:overload public function setPrototypeDisplayValue(prototypeDisplayValue : E) : Void;
	
	/**
	* Adds an item to the item list.
	* This method works only if the <code>JComboBox</code> uses a
	* mutable data model.
	* <p>
	* <strong>Warning:</strong>
	* Focus and keyboard navigation problems may arise if you add duplicate
	* String objects. A workaround is to add new objects instead of String
	* objects and make sure that the toString() method is defined.
	* For example:
	* <pre>
	*   comboBox.addItem(makeObj("Item 1"));
	*   comboBox.addItem(makeObj("Item 1"));
	*   ...
	*   private Object makeObj(final String item)  {
	*     return new Object() { public String toString() { return item; } };
	*   }
	* </pre>
	*
	* @param item the item to add to the list
	* @see MutableComboBoxModel
	*/
	@:overload public function addItem(item : E) : Void;
	
	/**
	* Inserts an item into the item list at a given index.
	* This method works only if the <code>JComboBox</code> uses a
	* mutable data model.
	*
	* @param item the item to add to the list
	* @param index    an integer specifying the position at which
	*                  to add the item
	* @see MutableComboBoxModel
	*/
	@:overload public function insertItemAt(item : E, index : Int) : Void;
	
	/**
	* Removes an item from the item list.
	* This method works only if the <code>JComboBox</code> uses a
	* mutable data model.
	*
	* @param anObject  the object to remove from the item list
	* @see MutableComboBoxModel
	*/
	@:overload public function removeItem(anObject : Dynamic) : Void;
	
	/**
	* Removes the item at <code>anIndex</code>
	* This method works only if the <code>JComboBox</code> uses a
	* mutable data model.
	*
	* @param anIndex  an int specifying the index of the item to remove,
	*                  where 0
	*                  indicates the first item in the list
	* @see MutableComboBoxModel
	*/
	@:overload public function removeItemAt(anIndex : Int) : Void;
	
	/**
	* Removes all items from the item list.
	*/
	@:overload public function removeAllItems() : Void;
	
	/**
	* Causes the combo box to display its popup window.
	* @see #setPopupVisible
	*/
	@:overload public function showPopup() : Void;
	
	/**
	* Causes the combo box to close its popup window.
	* @see #setPopupVisible
	*/
	@:overload public function hidePopup() : Void;
	
	/**
	* Sets the visibility of the popup.
	*/
	@:overload public function setPopupVisible(v : Bool) : Void;
	
	/**
	* Determines the visibility of the popup.
	*
	* @return true if the popup is visible, otherwise returns false
	*/
	@:overload public function isPopupVisible() : Bool;
	
	/**
	* Adds an <code>ItemListener</code>.
	* <p>
	* <code>aListener</code> will receive one or two <code>ItemEvent</code>s when
	* the selected item changes.
	*
	* @param aListener the <code>ItemListener</code> that is to be notified
	* @see #setSelectedItem
	*/
	@:overload public function addItemListener(aListener : java.awt.event.ItemListener) : Void;
	
	/** Removes an <code>ItemListener</code>.
	*
	* @param aListener  the <code>ItemListener</code> to remove
	*/
	@:overload public function removeItemListener(aListener : java.awt.event.ItemListener) : Void;
	
	/**
	* Returns an array of all the <code>ItemListener</code>s added
	* to this JComboBox with addItemListener().
	*
	* @return all of the <code>ItemListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getItemListeners() : java.NativeArray<java.awt.event.ItemListener>;
	
	/**
	* Adds an <code>ActionListener</code>.
	* <p>
	* The <code>ActionListener</code> will receive an <code>ActionEvent</code>
	* when a selection has been made. If the combo box is editable, then
	* an <code>ActionEvent</code> will be fired when editing has stopped.
	*
	* @param l  the <code>ActionListener</code> that is to be notified
	* @see #setSelectedItem
	*/
	@:overload public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	/** Removes an <code>ActionListener</code>.
	*
	* @param l  the <code>ActionListener</code> to remove
	*/
	@:overload public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the <code>ActionListener</code>s added
	* to this JComboBox with addActionListener().
	*
	* @return all of the <code>ActionListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Adds a <code>PopupMenu</code> listener which will listen to notification
	* messages from the popup portion of the combo box.
	* <p>
	* For all standard look and feels shipped with Java, the popup list
	* portion of combo box is implemented as a <code>JPopupMenu</code>.
	* A custom look and feel may not implement it this way and will
	* therefore not receive the notification.
	*
	* @param l  the <code>PopupMenuListener</code> to add
	* @since 1.4
	*/
	@:require(java4) @:overload public function addPopupMenuListener(l : javax.swing.event.PopupMenuListener) : Void;
	
	/**
	* Removes a <code>PopupMenuListener</code>.
	*
	* @param l  the <code>PopupMenuListener</code> to remove
	* @see #addPopupMenuListener
	* @since 1.4
	*/
	@:require(java4) @:overload public function removePopupMenuListener(l : javax.swing.event.PopupMenuListener) : Void;
	
	/**
	* Returns an array of all the <code>PopupMenuListener</code>s added
	* to this JComboBox with addPopupMenuListener().
	*
	* @return all of the <code>PopupMenuListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPopupMenuListeners() : java.NativeArray<javax.swing.event.PopupMenuListener>;
	
	/**
	* Notifies <code>PopupMenuListener</code>s that the popup portion of the
	* combo box will become visible.
	* <p>
	* This method is public but should not be called by anything other than
	* the UI delegate.
	* @see #addPopupMenuListener
	* @since 1.4
	*/
	@:require(java4) @:overload public function firePopupMenuWillBecomeVisible() : Void;
	
	/**
	* Notifies <code>PopupMenuListener</code>s that the popup portion of the
	* combo box has become invisible.
	* <p>
	* This method is public but should not be called by anything other than
	* the UI delegate.
	* @see #addPopupMenuListener
	* @since 1.4
	*/
	@:require(java4) @:overload public function firePopupMenuWillBecomeInvisible() : Void;
	
	/**
	* Notifies <code>PopupMenuListener</code>s that the popup portion of the
	* combo box has been canceled.
	* <p>
	* This method is public but should not be called by anything other than
	* the UI delegate.
	* @see #addPopupMenuListener
	* @since 1.4
	*/
	@:require(java4) @:overload public function firePopupMenuCanceled() : Void;
	
	/**
	* Sets the action command that should be included in the event
	* sent to action listeners.
	*
	* @param aCommand  a string containing the "command" that is sent
	*                  to action listeners; the same listener can then
	*                  do different things depending on the command it
	*                  receives
	*/
	@:overload public function setActionCommand(aCommand : String) : Void;
	
	/**
	* Returns the action command that is included in the event sent to
	* action listeners.
	*
	* @return  the string containing the "command" that is sent
	*          to action listeners.
	*/
	@:overload public function getActionCommand() : String;
	
	/**
	* Sets the <code>Action</code> for the <code>ActionEvent</code> source.
	* The new <code>Action</code> replaces any previously set
	* <code>Action</code> but does not affect <code>ActionListeners</code>
	* independently added with <code>addActionListener</code>.
	* If the <code>Action</code> is already a registered
	* <code>ActionListener</code> for the <code>ActionEvent</code> source,
	* it is not re-registered.
	* <p>
	* Setting the <code>Action</code> results in immediately changing
	* all the properties described in <a href="Action.html#buttonActions">
	* Swing Components Supporting <code>Action</code></a>.
	* Subsequently, the combobox's properties are automatically updated
	* as the <code>Action</code>'s properties change.
	* <p>
	* This method uses three other methods to set
	* and help track the <code>Action</code>'s property values.
	* It uses the <code>configurePropertiesFromAction</code> method
	* to immediately change the combobox's properties.
	* To track changes in the <code>Action</code>'s property values,
	* this method registers the <code>PropertyChangeListener</code>
	* returned by <code>createActionPropertyChangeListener</code>. The
	* default {@code PropertyChangeListener} invokes the
	* {@code actionPropertyChanged} method when a property in the
	* {@code Action} changes.
	*
	* @param a the <code>Action</code> for the <code>JComboBox</code>,
	*                  or <code>null</code>.
	* @since 1.3
	* @see Action
	* @see #getAction
	* @see #configurePropertiesFromAction
	* @see #createActionPropertyChangeListener
	* @see #actionPropertyChanged
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: the Action instance connected with this ActionEvent source
	*/
	@:require(java3) @:overload public function setAction(a : javax.swing.Action) : Void;
	
	/**
	* Returns the currently set <code>Action</code> for this
	* <code>ActionEvent</code> source, or <code>null</code> if no
	* <code>Action</code> is set.
	*
	* @return the <code>Action</code> for this <code>ActionEvent</code>
	*          source; or <code>null</code>
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload public function getAction() : javax.swing.Action;
	
	/**
	* Sets the properties on this combobox to match those in the specified
	* <code>Action</code>.  Refer to <a href="Action.html#buttonActions">
	* Swing Components Supporting <code>Action</code></a> for more
	* details as to which properties this sets.
	*
	* @param a the <code>Action</code> from which to get the properties,
	*          or <code>null</code>
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload private function configurePropertiesFromAction(a : javax.swing.Action) : Void;
	
	/**
	* Creates and returns a <code>PropertyChangeListener</code> that is
	* responsible for listening for changes from the specified
	* <code>Action</code> and updating the appropriate properties.
	* <p>
	* <b>Warning:</b> If you subclass this do not create an anonymous
	* inner class.  If you do the lifetime of the combobox will be tied to
	* that of the <code>Action</code>.
	*
	* @param a the combobox's action
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload private function createActionPropertyChangeListener(a : javax.swing.Action) : java.beans.PropertyChangeListener;
	
	/**
	* Updates the combobox's state in response to property changes in
	* associated action. This method is invoked from the
	* {@code PropertyChangeListener} returned from
	* {@code createActionPropertyChangeListener}. Subclasses do not normally
	* need to invoke this. Subclasses that support additional {@code Action}
	* properties should override this and
	* {@code configurePropertiesFromAction}.
	* <p>
	* Refer to the table at <a href="Action.html#buttonActions">
	* Swing Components Supporting <code>Action</code></a> for a list of
	* the properties this method sets.
	*
	* @param action the <code>Action</code> associated with this combobox
	* @param propertyName the name of the property that changed
	* @since 1.6
	* @see Action
	* @see #configurePropertiesFromAction
	*/
	@:require(java6) @:overload private function actionPropertyChanged(action : javax.swing.Action, propertyName : String) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	* @param e  the event of interest
	*
	* @see EventListenerList
	*/
	@:overload private function fireItemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @see EventListenerList
	*/
	@:overload private function fireActionEvent() : Void;
	
	/**
	* This protected method is implementation specific. Do not access directly
	* or override.
	*/
	@:overload private function selectedItemChanged() : Void;
	
	/**
	* Returns an array containing the selected item.
	* This method is implemented for compatibility with
	* <code>ItemSelectable</code>.
	*
	* @return an array of <code>Objects</code> containing one
	*          element -- the selected item
	*/
	@:overload public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	/**
	* This method is public as an implementation side effect.
	* do not call or override.
	*/
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* This method is public as an implementation side effect.
	* do not call or override.
	*/
	@:overload public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	/**
	* This method is public as an implementation side effect.
	* do not call or override.
	*/
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	/**
	* This method is public as an implementation side effect.
	* do not call or override.
	*/
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	/**
	* Selects the list item that corresponds to the specified keyboard
	* character and returns true, if there is an item corresponding
	* to that character.  Otherwise, returns false.
	*
	* @param keyChar a char, typically this is a keyboard key
	*                  typed by the user
	*/
	@:overload public function selectWithKeyChar(keyChar : java.StdTypes.Char16) : Bool;
	
	/**
	* Enables the combo box so that items can be selected. When the
	* combo box is disabled, items cannot be selected and values
	* cannot be typed into its field (if it is editable).
	*
	* @param b a boolean value, where true enables the component and
	*          false disables it
	* @beaninfo
	*        bound: true
	*    preferred: true
	*  description: Whether the combo box is enabled.
	*/
	@:overload public function setEnabled(b : Bool) : Void;
	
	/**
	* Initializes the editor with the specified item.
	*
	* @param anEditor the <code>ComboBoxEditor</code> that displays
	*                  the list item in the
	*                  combo box field and allows it to be edited
	* @param anItem   the object to display and edit in the field
	*/
	@:overload public function configureEditor(anEditor : javax.swing.ComboBoxEditor, anItem : Dynamic) : Void;
	
	/**
	* Handles <code>KeyEvent</code>s, looking for the Tab key.
	* If the Tab key is found, the popup window is closed.
	*
	* @param e  the <code>KeyEvent</code> containing the keyboard
	*          key that was pressed
	*/
	@:overload public function processKeyEvent(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Sets the object that translates a keyboard character into a list
	* selection. Typically, the first selection with a matching first
	* character becomes the selected item.
	*
	* @beaninfo
	*       expert: true
	*  description: The objects that changes the selection when a key is pressed.
	*/
	@:overload public function setKeySelectionManager(aManager : javax.swing.JComboBox.JComboBox_KeySelectionManager) : Void;
	
	/**
	* Returns the list's key-selection manager.
	*
	* @return the <code>KeySelectionManager</code> currently in use
	*/
	@:overload public function getKeySelectionManager() : javax.swing.JComboBox.JComboBox_KeySelectionManager;
	
	/**
	* Returns the number of items in the list.
	*
	* @return an integer equal to the number of items in the list
	*/
	@:overload public function getItemCount() : Int;
	
	/**
	* Returns the list item at the specified index.  If <code>index</code>
	* is out of range (less than zero or greater than or equal to size)
	* it will return <code>null</code>.
	*
	* @param index  an integer indicating the list position, where the first
	*               item starts at zero
	* @return the item at that list position; or
	*                  <code>null</code> if out of range
	*/
	@:overload public function getItemAt(index : Int) : E;
	
	/**
	* Returns an instance of the default key-selection manager.
	*
	* @return the <code>KeySelectionManager</code> currently used by the list
	* @see #setKeySelectionManager
	*/
	@:overload private function createDefaultKeySelectionManager() : javax.swing.JComboBox.JComboBox_KeySelectionManager;
	
	/**
	* Returns a string representation of this <code>JComboBox</code>.
	* This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JComboBox</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JComboBox.
	* For combo boxes, the AccessibleContext takes the form of an
	* AccessibleJComboBox.
	* A new AccessibleJComboBox instance is created if necessary.
	*
	* @return an AccessibleJComboBox that serves as the
	*         AccessibleContext of this JComboBox
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JComboBox$ComboBoxActionPropertyChangeListener') @:internal extern class JComboBox_ComboBoxActionPropertyChangeListener extends javax.swing.ActionPropertyChangeListener<javax.swing.JComboBox<Dynamic>>
{
	@:overload private function actionPropertyChanged(cb : javax.swing.JComboBox<Dynamic>, action : javax.swing.Action, e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* The interface that defines a <code>KeySelectionManager</code>.
* To qualify as a <code>KeySelectionManager</code>,
* the class needs to implement the method
* that identifies the list index given a character and the
* combo box data model.
*/
@:native('javax$swing$JComboBox$KeySelectionManager') extern interface JComboBox_KeySelectionManager
{
	/** Given <code>aKey</code> and the model, returns the row
	*  that should become selected. Return -1 if no match was
	*  found.
	*
	* @param  aKey  a char value, usually indicating a keyboard key that
	*               was pressed
	* @param aModel a ComboBoxModel -- the component's data model, containing
	*               the list of selectable items
	* @return an int equal to the selected row, where 0 is the
	*         first item and -1 is none.
	*/
	@:overload public function selectionForKey(aKey : java.StdTypes.Char16, aModel : javax.swing.ComboBoxModel<Dynamic>) : Int;
	
	
}
@:native('javax$swing$JComboBox$DefaultKeySelectionManager') @:internal extern class JComboBox_DefaultKeySelectionManager implements javax.swing.JComboBox.JComboBox_KeySelectionManager implements java.io.Serializable
{
	@:overload public function selectionForKey(aKey : java.StdTypes.Char16, aModel : javax.swing.ComboBoxModel<Dynamic>) : Int;
	
	
}
/**
* This class implements accessibility support for the
* <code>JComboBox</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to Combo Box user-interface elements.
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
@:native('javax$swing$JComboBox$AccessibleJComboBox') extern class JComboBox_AccessibleJComboBox extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleAction implements javax.accessibility.AccessibleSelection
{
	/**
	* Returns an AccessibleJComboBox instance
	* @since 1.4
	*/
	@:require(java4) @:overload public function new() : Void;
	
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
	* The child at index zero represents the popup.
	* If the combo box is editable, the child at index one
	* represents the editor.
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
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the state set of this object.  The AccessibleStateSet of
	* an object is composed of a set of unique AccessibleStates.
	* A change in the AccessibleStateSet of an object will cause a
	* PropertyChangeEvent to be fired for the ACCESSIBLE_STATE_PROPERTY
	* property.
	*
	* @return an instance of AccessibleStateSet containing the
	* current state set of the object
	* @see AccessibleStateSet
	* @see AccessibleState
	* @see #addPropertyChangeListener
	*
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the AccessibleAction associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleAction interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Return a description of the specified action of the object.
	*
	* @param i zero-based index of the actions
	*/
	@:overload public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Returns the number of Actions available in this object.  The
	* default behavior of a combo box is to have one action.
	*
	* @return 1, the number of Actions in this object
	*/
	@:overload public function getAccessibleActionCount() : Int;
	
	/**
	* Perform the specified Action on the object
	*
	* @param i zero-based index of actions
	* @return true if the the action was performed; else false.
	*/
	@:overload public function doAccessibleAction(i : Int) : Bool;
	
	/**
	* Get the AccessibleSelection associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleSelection interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Returns the number of Accessible children currently selected.
	* If no children are selected, the return value will be 0.
	*
	* @return the number of items currently selected.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns an Accessible representing the specified selected child
	* in the popup.  If there isn't a selection, or there are
	* fewer children selected than the integer passed in, the return
	* value will be null.
	* <p>Note that the index represents the i-th selected child, which
	* is different from the i-th child.
	*
	* @param i the zero-based index of selected children
	* @return the i-th selected child
	* @see #getAccessibleSelectionCount
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Determines if the current child of this object is selected.
	*
	* @return true if the current child of this object is selected;
	*              else false
	* @param i the zero-based index of the child in this Accessible
	* object.
	* @see AccessibleContext#getAccessibleChild
	* @since 1.3
	*/
	@:require(java3) @:overload public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Adds the specified Accessible child of the object to the object's
	* selection.  If the object supports multiple selections,
	* the specified child is added to any existing selection, otherwise
	* it replaces any existing selection in the object.  If the
	* specified child is already selected, this method has no effect.
	*
	* @param i the zero-based index of the child
	* @see AccessibleContext#getAccessibleChild
	* @since 1.3
	*/
	@:require(java3) @:overload public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the specified child of the object from the object's
	* selection.  If the specified item isn't currently selected, this
	* method has no effect.
	*
	* @param i the zero-based index of the child
	* @see AccessibleContext#getAccessibleChild
	* @since 1.3
	*/
	@:require(java3) @:overload public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that no children in the
	* object are selected.
	* @since 1.3
	*/
	@:require(java3) @:overload public function clearAccessibleSelection() : Void;
	
	/**
	* Causes every child of the object to be selected
	* if the object supports multiple selections.
	* @since 1.3
	*/
	@:require(java3) @:overload public function selectAllAccessibleSelection() : Void;
	
	
}
/*
* JComboBox PropertyChangeListener
*/
@:native('javax$swing$JComboBox$AccessibleJComboBox$AccessibleJComboBoxPropertyChangeListener') @:internal extern class JComboBox_AccessibleJComboBox_AccessibleJComboBoxPropertyChangeListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/*
* Listener for combo box popup menu
* TIGER - 4669379 4894434
*/
@:native('javax$swing$JComboBox$AccessibleJComboBox$AccessibleJComboBoxPopupMenuListener') @:internal extern class JComboBox_AccessibleJComboBox_AccessibleJComboBoxPopupMenuListener implements javax.swing.event.PopupMenuListener
{
	/**
	*  This method is called before the popup menu becomes visible
	*/
	@:overload public function popupMenuWillBecomeVisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	/**
	* This method is called before the popup menu becomes invisible
	* Note that a JPopupMenu can become invisible any time
	*/
	@:overload public function popupMenuWillBecomeInvisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	/**
	* This method is called when the popup menu is canceled
	*/
	@:overload public function popupMenuCanceled(e : javax.swing.event.PopupMenuEvent) : Void;
	
	
}
/*
* Handles changes to the popup list selection.
* TIGER - 4669379 4894434 4933143
*/
@:native('javax$swing$JComboBox$AccessibleJComboBox$AccessibleJComboBoxListSelectionListener') @:internal extern class JComboBox_AccessibleJComboBox_AccessibleJComboBoxListSelectionListener implements javax.swing.event.ListSelectionListener
{
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	
}
@:native('javax$swing$JComboBox$AccessibleJComboBox$AccessibleEditor') @:internal extern class JComboBox_AccessibleJComboBox_AccessibleEditor implements javax.accessibility.Accessible
{
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/*
* Wrapper class for the AccessibleContext implemented by the
* combo box editor.  Delegates all method calls except
* getAccessibleIndexInParent to the editor.  The
* getAccessibleIndexInParent method returns the selected
* index in the combo box.
*/
@:native('javax$swing$JComboBox$AccessibleJComboBox$EditorAccessibleContext') @:internal extern class JComboBox_AccessibleJComboBox_EditorAccessibleContext extends javax.accessibility.AccessibleContext
{
	/**
	* Gets the accessibleName property of this object.  The accessibleName
	* property of an object is a localized String that designates the purpose
	* of the object.  For example, the accessibleName property of a label
	* or button might be the text of the label or button itself.  In the
	* case of an object that doesn't display its name, the accessibleName
	* should still be set.  For example, in the case of a text field used
	* to enter the name of a city, the accessibleName for the en_US locale
	* could be 'city.'
	*
	* @return the localized name of the object; null if this
	* object does not have a name
	*
	* @see #setAccessibleName
	*/
	@:overload public function getAccessibleName() : String;
	
	/**
	* Sets the localized accessible name of this object.  Changing the
	* name will cause a PropertyChangeEvent to be fired for the
	* ACCESSIBLE_NAME_PROPERTY property.
	*
	* @param s the new localized name of the object.
	*
	* @see #getAccessibleName
	* @see #addPropertyChangeListener
	*
	* @beaninfo
	*    preferred:   true
	*    description: Sets the accessible name for the component.
	*/
	@:overload public function setAccessibleName(s : String) : Void;
	
	/**
	* Gets the accessibleDescription property of this object.  The
	* accessibleDescription property of this object is a short localized
	* phrase describing the purpose of the object.  For example, in the
	* case of a 'Cancel' button, the accessibleDescription could be
	* 'Ignore changes and close dialog box.'
	*
	* @return the localized description of the object; null if
	* this object does not have a description
	*
	* @see #setAccessibleDescription
	*/
	@:overload public function getAccessibleDescription() : String;
	
	/**
	* Sets the accessible description of this object.  Changing the
	* name will cause a PropertyChangeEvent to be fired for the
	* ACCESSIBLE_DESCRIPTION_PROPERTY property.
	*
	* @param s the new localized description of the object
	*
	* @see #setAccessibleName
	* @see #addPropertyChangeListener
	*
	* @beaninfo
	*    preferred:   true
	*    description: Sets the accessible description for the component.
	*/
	@:overload public function setAccessibleDescription(s : String) : Void;
	
	/**
	* Gets the role of this object.  The role of the object is the generic
	* purpose or use of the class of this object.  For example, the role
	* of a push button is AccessibleRole.PUSH_BUTTON.  The roles in
	* AccessibleRole are provided so component developers can pick from
	* a set of predefined roles.  This enables assistive technologies to
	* provide a consistent interface to various tweaked subclasses of
	* components (e.g., use AccessibleRole.PUSH_BUTTON for all components
	* that act like a push button) as well as distinguish between sublasses
	* that behave differently (e.g., AccessibleRole.CHECK_BOX for check boxes
	* and AccessibleRole.RADIO_BUTTON for radio buttons).
	* <p>Note that the AccessibleRole class is also extensible, so
	* custom component developers can define their own AccessibleRole's
	* if the set of predefined roles is inadequate.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the state set of this object.  The AccessibleStateSet of an object
	* is composed of a set of unique AccessibleStates.  A change in the
	* AccessibleStateSet of an object will cause a PropertyChangeEvent to
	* be fired for the ACCESSIBLE_STATE_PROPERTY property.
	*
	* @return an instance of AccessibleStateSet containing the
	* current state set of the object
	* @see AccessibleStateSet
	* @see AccessibleState
	* @see #addPropertyChangeListener
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the Accessible parent of this object.
	*
	* @return the Accessible parent of this object; null if this
	* object does not have an Accessible parent
	*/
	@:overload public function getAccessibleParent() : javax.accessibility.Accessible;
	
	/**
	* Sets the Accessible parent of this object.  This is meant to be used
	* only in the situations where the actual component's parent should
	* not be treated as the component's accessible parent and is a method
	* that should only be called by the parent of the accessible child.
	*
	* @param a - Accessible to be set as the parent
	*/
	@:overload public function setAccessibleParent(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Gets the 0-based index of this object in its accessible parent.
	*
	* @return the 0-based index of this object in its parent; -1 if this
	* object does not have an accessible parent.
	*
	* @see #getAccessibleParent
	* @see #getAccessibleChildrenCount
	* @see #getAccessibleChild
	*/
	@:overload public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children of the object.
	*
	* @return the number of accessible children of the object.
	*/
	@:overload public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the specified Accessible child of the object.  The Accessible
	* children of an Accessible object are zero-based, so the first child
	* of an Accessible child is at index 0, the second child is at index 1,
	* and so on.
	*
	* @param i zero-based index of child
	* @return the Accessible child of the object
	* @see #getAccessibleChildrenCount
	*/
	@:overload public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Gets the locale of the component. If the component does not have a
	* locale, then the locale of its parent is returned.
	*
	* @return this component's locale.  If this component does not have
	* a locale, the locale of its parent is returned.
	*
	* @exception IllegalComponentStateException
	* If the Component does not have its own locale and has not yet been
	* added to a containment hierarchy such that the locale can be
	* determined from the containing parent.
	*/
	@:overload public function getLocale() : java.util.Locale;
	
	/**
	* Adds a PropertyChangeListener to the listener list.
	* The listener is registered for all Accessible properties and will
	* be called when those properties change.
	*
	* @see #ACCESSIBLE_NAME_PROPERTY
	* @see #ACCESSIBLE_DESCRIPTION_PROPERTY
	* @see #ACCESSIBLE_STATE_PROPERTY
	* @see #ACCESSIBLE_VALUE_PROPERTY
	* @see #ACCESSIBLE_SELECTION_PROPERTY
	* @see #ACCESSIBLE_TEXT_PROPERTY
	* @see #ACCESSIBLE_VISIBLE_DATA_PROPERTY
	*
	* @param listener  The PropertyChangeListener to be added
	*/
	@:overload public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a PropertyChangeListener from the listener list.
	* This removes a PropertyChangeListener that was registered
	* for all properties.
	*
	* @param listener  The PropertyChangeListener to be removed
	*/
	@:overload public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Gets the AccessibleAction associated with this object that supports
	* one or more actions.
	*
	* @return AccessibleAction if supported by object; else return null
	* @see AccessibleAction
	*/
	@:overload public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Gets the AccessibleComponent associated with this object that has a
	* graphical representation.
	*
	* @return AccessibleComponent if supported by object; else return null
	* @see AccessibleComponent
	*/
	@:overload public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	/**
	* Gets the AccessibleSelection associated with this object which allows its
	* Accessible children to be selected.
	*
	* @return AccessibleSelection if supported by object; else return null
	* @see AccessibleSelection
	*/
	@:overload public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Gets the AccessibleText associated with this object presenting
	* text on the display.
	*
	* @return AccessibleText if supported by object; else return null
	* @see AccessibleText
	*/
	@:overload public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Gets the AccessibleEditableText associated with this object
	* presenting editable text on the display.
	*
	* @return AccessibleEditableText if supported by object; else return null
	* @see AccessibleEditableText
	*/
	@:overload public function getAccessibleEditableText() : javax.accessibility.AccessibleEditableText;
	
	/**
	* Gets the AccessibleValue associated with this object that supports a
	* Numerical value.
	*
	* @return AccessibleValue if supported by object; else return null
	* @see AccessibleValue
	*/
	@:overload public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Gets the AccessibleIcons associated with an object that has
	* one or more associated icons
	*
	* @return an array of AccessibleIcon if supported by object;
	* otherwise return null
	* @see AccessibleIcon
	*/
	@:overload public function getAccessibleIcon() : java.NativeArray<javax.accessibility.AccessibleIcon>;
	
	/**
	* Gets the AccessibleRelationSet associated with an object
	*
	* @return an AccessibleRelationSet if supported by object;
	* otherwise return null
	* @see AccessibleRelationSet
	*/
	@:overload public function getAccessibleRelationSet() : javax.accessibility.AccessibleRelationSet;
	
	/**
	* Gets the AccessibleTable associated with an object
	*
	* @return an AccessibleTable if supported by object;
	* otherwise return null
	* @see AccessibleTable
	*/
	@:overload public function getAccessibleTable() : javax.accessibility.AccessibleTable;
	
	/**
	* Support for reporting bound property changes.  If oldValue and
	* newValue are not equal and the PropertyChangeEvent listener list
	* is not empty, then fire a PropertyChange event to each listener.
	* In general, this is for use by the Accessible objects themselves
	* and should not be called by an application program.
	* @param propertyName  The programmatic name of the property that
	* was changed.
	* @param oldValue  The old value of the property.
	* @param newValue  The new value of the property.
	* @see java.beans.PropertyChangeSupport
	* @see #addPropertyChangeListener
	* @see #removePropertyChangeListener
	* @see #ACCESSIBLE_NAME_PROPERTY
	* @see #ACCESSIBLE_DESCRIPTION_PROPERTY
	* @see #ACCESSIBLE_STATE_PROPERTY
	* @see #ACCESSIBLE_VALUE_PROPERTY
	* @see #ACCESSIBLE_SELECTION_PROPERTY
	* @see #ACCESSIBLE_TEXT_PROPERTY
	* @see #ACCESSIBLE_VISIBLE_DATA_PROPERTY
	*/
	@:overload public function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	
}
