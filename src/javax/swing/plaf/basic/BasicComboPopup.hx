package javax.swing.plaf.basic;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicComboPopup extends javax.swing.JPopupMenu implements javax.swing.plaf.basic.ComboPopup
{
	private var comboBox : javax.swing.JComboBox<Dynamic>;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor methods instead.
	*
	* @see #getList
	* @see #createList
	*/
	private var list : javax.swing.JList<Dynamic>;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the create method instead
	*
	* @see #createScroller
	*/
	private var scroller : javax.swing.JScrollPane;
	
	/**
	* As of Java 2 platform v1.4 this previously undocumented field is no
	* longer used.
	*/
	private var valueIsAdjusting : Bool;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor or create methods instead.
	*
	* @see #getMouseMotionListener
	* @see #createMouseMotionListener
	*/
	private var mouseMotionListener : java.awt.event.MouseMotionListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor or create methods instead.
	*
	* @see #getMouseListener
	* @see #createMouseListener
	*/
	private var mouseListener : java.awt.event.MouseListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the accessor or create methods instead.
	*
	* @see #getKeyListener
	* @see #createKeyListener
	*/
	private var keyListener : java.awt.event.KeyListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the create method instead.
	*
	* @see #createListSelectionListener
	*/
	private var listSelectionListener : javax.swing.event.ListSelectionListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the create method instead.
	*
	* @see #createListMouseListener
	*/
	private var listMouseListener : java.awt.event.MouseListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the create method instead
	*
	* @see #createListMouseMotionListener
	*/
	private var listMouseMotionListener : java.awt.event.MouseMotionListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the create method instead
	*
	* @see #createPropertyChangeListener
	*/
	private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the create method instead
	*
	* @see #createListDataListener
	*/
	private var listDataListener : javax.swing.event.ListDataListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Use the create method instead
	*
	* @see #createItemListener
	*/
	private var itemListener : java.awt.event.ItemListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override.
	*/
	private var autoscrollTimer : javax.swing.Timer;
	
	private var hasEntered : Bool;
	
	private var isAutoScrolling : Bool;
	
	private var scrollDirection : Int;
	
	private static var SCROLL_UP(default, null) : Int;
	
	private static var SCROLL_DOWN(default, null) : Int;
	
	/**
	* Implementation of ComboPopup.show().
	*/
	@:overload override public function show() : Void;
	
	/**
	* Implementation of ComboPopup.hide().
	*/
	@:overload override public function hide() : Void;
	
	/**
	* Implementation of ComboPopup.getList().
	*/
	@:overload public function getList() : javax.swing.JList<Dynamic>;
	
	/**
	* Implementation of ComboPopup.getMouseListener().
	*
	* @return a <code>MouseListener</code> or null
	* @see ComboPopup#getMouseListener
	*/
	@:overload public function getMouseListener() : java.awt.event.MouseListener;
	
	/**
	* Implementation of ComboPopup.getMouseMotionListener().
	*
	* @return a <code>MouseMotionListener</code> or null
	* @see ComboPopup#getMouseMotionListener
	*/
	@:overload public function getMouseMotionListener() : java.awt.event.MouseMotionListener;
	
	/**
	* Implementation of ComboPopup.getKeyListener().
	*
	* @return a <code>KeyListener</code> or null
	* @see ComboPopup#getKeyListener
	*/
	@:overload public function getKeyListener() : java.awt.event.KeyListener;
	
	/**
	* Called when the UI is uninstalling.  Since this popup isn't in the component
	* tree, it won't get it's uninstallUI() called.  It removes the listeners that
	* were added in addComboBoxListeners().
	*/
	@:overload public function uninstallingUI() : Void;
	
	/**
	* Removes the listeners from the combo box model
	*
	* @param model The combo box model to install listeners
	* @see #installComboBoxModelListeners
	*/
	@:overload private function uninstallComboBoxModelListeners(model : javax.swing.ComboBoxModel<Dynamic>) : Void;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	@:overload public function new(combo : javax.swing.JComboBox<Dynamic>) : Void;
	
	@:overload override private function firePopupMenuWillBecomeVisible() : Void;
	
	@:overload override private function firePopupMenuWillBecomeInvisible() : Void;
	
	@:overload override private function firePopupMenuCanceled() : Void;
	
	/**
	* Creates a listener
	* that will watch for mouse-press and release events on the combo box.
	*
	* <strong>Warning:</strong>
	* When overriding this method, make sure to maintain the existing
	* behavior.
	*
	* @return a <code>MouseListener</code> which will be added to
	* the combo box or null
	*/
	@:overload private function createMouseListener() : java.awt.event.MouseListener;
	
	/**
	* Creates the mouse motion listener which will be added to the combo
	* box.
	*
	* <strong>Warning:</strong>
	* When overriding this method, make sure to maintain the existing
	* behavior.
	*
	* @return a <code>MouseMotionListener</code> which will be added to
	*         the combo box or null
	*/
	@:overload private function createMouseMotionListener() : java.awt.event.MouseMotionListener;
	
	/**
	* Creates the key listener that will be added to the combo box. If
	* this method returns null then it will not be added to the combo box.
	*
	* @return a <code>KeyListener</code> or null
	*/
	@:overload private function createKeyListener() : java.awt.event.KeyListener;
	
	/**
	* Creates a list selection listener that watches for selection changes in
	* the popup's list.  If this method returns null then it will not
	* be added to the popup list.
	*
	* @return an instance of a <code>ListSelectionListener</code> or null
	*/
	@:overload private function createListSelectionListener() : javax.swing.event.ListSelectionListener;
	
	/**
	* Creates a list data listener which will be added to the
	* <code>ComboBoxModel</code>. If this method returns null then
	* it will not be added to the combo box model.
	*
	* @return an instance of a <code>ListDataListener</code> or null
	*/
	@:overload private function createListDataListener() : javax.swing.event.ListDataListener;
	
	/**
	* Creates a mouse listener that watches for mouse events in
	* the popup's list. If this method returns null then it will
	* not be added to the combo box.
	*
	* @return an instance of a <code>MouseListener</code> or null
	*/
	@:overload private function createListMouseListener() : java.awt.event.MouseListener;
	
	/**
	* Creates a mouse motion listener that watches for mouse motion
	* events in the popup's list. If this method returns null then it will
	* not be added to the combo box.
	*
	* @return an instance of a <code>MouseMotionListener</code> or null
	*/
	@:overload private function createListMouseMotionListener() : java.awt.event.MouseMotionListener;
	
	/**
	* Creates a <code>PropertyChangeListener</code> which will be added to
	* the combo box. If this method returns null then it will not
	* be added to the combo box.
	*
	* @return an instance of a <code>PropertyChangeListener</code> or null
	*/
	@:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Creates an <code>ItemListener</code> which will be added to the
	* combo box. If this method returns null then it will not
	* be added to the combo box.
	* <p>
	* Subclasses may override this method to return instances of their own
	* ItemEvent handlers.
	*
	* @return an instance of an <code>ItemListener</code> or null
	*/
	@:overload private function createItemListener() : java.awt.event.ItemListener;
	
	/**
	* Creates the JList used in the popup to display
	* the items in the combo box model. This method is called when the UI class
	* is created.
	*
	* @return a <code>JList</code> used to display the combo box items
	*/
	@:overload private function createList() : javax.swing.JList<Dynamic>;
	
	/**
	* Configures the list which is used to hold the combo box items in the
	* popup. This method is called when the UI class
	* is created.
	*
	* @see #createList
	*/
	@:overload private function configureList() : Void;
	
	/**
	* Adds the listeners to the list control.
	*/
	@:overload private function installListListeners() : Void;
	
	/**
	* Creates the scroll pane which houses the scrollable list.
	*/
	@:overload private function createScroller() : javax.swing.JScrollPane;
	
	/**
	* Configures the scrollable portion which holds the list within
	* the combo box popup. This method is called when the UI class
	* is created.
	*/
	@:overload private function configureScroller() : Void;
	
	/**
	* Configures the popup portion of the combo box. This method is called
	* when the UI class is created.
	*/
	@:overload private function configurePopup() : Void;
	
	/**
	* This method adds the necessary listeners to the JComboBox.
	*/
	@:overload private function installComboBoxListeners() : Void;
	
	/**
	* Installs the listeners on the combo box model. Any listeners installed
	* on the combo box model should be removed in
	* <code>uninstallComboBoxModelListeners</code>.
	*
	* @param model The combo box model to install listeners
	* @see #uninstallComboBoxModelListeners
	*/
	@:overload private function installComboBoxModelListeners(model : javax.swing.ComboBoxModel<Dynamic>) : Void;
	
	@:overload private function installKeyboardActions() : Void;
	
	/**
	* Overridden to unconditionally return false.
	*/
	@:overload override public function isFocusTraversable() : Bool;
	
	/**
	* This protected method is implementation specific and should be private.
	* do not call or override.
	*/
	@:overload private function startAutoScrolling(direction : Int) : Void;
	
	/**
	* This protected method is implementation specific and should be private.
	* do not call or override.
	*/
	@:overload private function stopAutoScrolling() : Void;
	
	/**
	* This protected method is implementation specific and should be private.
	* do not call or override.
	*/
	@:overload private function autoScrollUp() : Void;
	
	/**
	* This protected method is implementation specific and should be private.
	* do not call or override.
	*/
	@:overload private function autoScrollDown() : Void;
	
	/**
	* Gets the AccessibleContext associated with this BasicComboPopup.
	* The AccessibleContext will have its parent set to the ComboBox.
	*
	* @return an AccessibleContext for the BasicComboPopup
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* This is is a utility method that helps event handlers figure out where to
	* send the focus when the popup is brought up.  The standard implementation
	* delegates the focus to the editor (if the combo box is editable) or to
	* the JComboBox if it is not editable.
	*/
	@:overload private function delegateFocus(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Makes the popup visible if it is hidden and makes it hidden if it is
	* visible.
	*/
	@:overload private function togglePopup() : Void;
	
	@:overload private function convertMouseEvent(e : java.awt.event.MouseEvent) : java.awt.event.MouseEvent;
	
	/**
	* Retrieves the height of the popup based on the current
	* ListCellRenderer and the maximum row count.
	*/
	@:overload private function getPopupHeightForRowCount(maxRowCount : Int) : Int;
	
	/**
	* Calculate the placement and size of the popup portion of the combo box based
	* on the combo box location and the enclosing screen bounds. If
	* no transformations are required, then the returned rectangle will
	* have the same values as the parameters.
	*
	* @param px starting x location
	* @param py starting y location
	* @param pw starting width
	* @param ph starting height
	* @return a rectangle which represents the placement and size of the popup
	*/
	@:overload private function computePopupBounds(px : Int, py : Int, pw : Int, ph : Int) : java.awt.Rectangle;
	
	/**
	* A utility method used by the event listeners.  Given a mouse event, it changes
	* the list selection to the list item below the mouse.
	*/
	@:overload private function updateListBoxSelectionForEvent(anEvent : java.awt.event.MouseEvent, shouldScroll : Bool) : Void;
	
	
}
/**
* This is a basic implementation of the <code>ComboPopup</code> interface.
*
* This class represents the ui for the popup portion of the combo box.
* <p>
* All event handling is handled by listener classes created with the
* <code>createxxxListener()</code> methods and internal classes.
* You can change the behavior of this class by overriding the
* <code>createxxxListener()</code> methods and supplying your own
* event listeners or subclassing from the ones supplied in this class.
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
* @author Tom Santos
* @author Mark Davidson
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$EmptyListModelClass') @:internal extern class BasicComboPopup_EmptyListModelClass implements javax.swing.ListModel<Dynamic> implements java.io.Serializable
{
	@:overload public function getSize() : Int;
	
	@:overload public function getElementAt(index : Int) : Dynamic;
	
	@:overload public function addListDataListener(l : javax.swing.event.ListDataListener) : Void;
	
	@:overload public function removeListDataListener(l : javax.swing.event.ListDataListener) : Void;
	
	
}
/**
* A listener to be registered upon the combo box
* (<em>not</em> its popup menu)
* to handle mouse events
* that affect the state of the popup menu.
* The main purpose of this listener is to make the popup menu
* appear and disappear.
* This listener also helps
* with click-and-drag scenarios by setting the selection if the mouse was
* released over the list during a drag.
*
* <p>
* <strong>Warning:</strong>
* We recommend that you <em>not</em>
* create subclasses of this class.
* If you absolutely must create a subclass,
* be sure to invoke the superclass
* version of each method.
*
* @see BasicComboPopup#createMouseListener
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$InvocationMouseHandler') extern class BasicComboPopup_InvocationMouseHandler extends java.awt.event.MouseAdapter
{
	/**
	* Responds to mouse-pressed events on the combo box.
	*
	* @param e the mouse-press event to be handled
	*/
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Responds to the user terminating
	* a click or drag that began on the combo box.
	*
	* @param e the mouse-release event to be handled
	*/
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* This listener watches for dragging and updates the current selection in the
* list if it is dragging over the list.
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$InvocationMouseMotionHandler') extern class BasicComboPopup_InvocationMouseMotionHandler extends java.awt.event.MouseMotionAdapter
{
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* As of Java 2 platform v 1.4, this class is now obsolete and is only included for
* backwards API compatibility. Do not instantiate or subclass.
* <p>
* All the functionality of this class has been included in
* BasicComboBoxUI ActionMap/InputMap methods.
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$InvocationKeyHandler') extern class BasicComboPopup_InvocationKeyHandler extends java.awt.event.KeyAdapter
{
	@:overload override public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	
}
/**
* As of Java 2 platform v 1.4, this class is now obsolete, doesn't do anything, and
* is only included for backwards API compatibility. Do not call or
* override.
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$ListSelectionHandler') extern class BasicComboPopup_ListSelectionHandler implements javax.swing.event.ListSelectionListener
{
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	
}
/**
* As of 1.4, this class is now obsolete, doesn't do anything, and
* is only included for backwards API compatibility. Do not call or
* override.
* <p>
* The functionality has been migrated into <code>ItemHandler</code>.
*
* @see #createItemListener
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$ListDataHandler') extern class BasicComboPopup_ListDataHandler implements javax.swing.event.ListDataListener
{
	@:overload public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
/**
* This listener hides the popup when the mouse is released in the list.
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$ListMouseHandler') extern class BasicComboPopup_ListMouseHandler extends java.awt.event.MouseAdapter
{
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(anEvent : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* This listener changes the selected item as you move the mouse over the list.
* The selection change is not committed to the model, this is for user feedback only.
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$ListMouseMotionHandler') extern class BasicComboPopup_ListMouseMotionHandler extends java.awt.event.MouseMotionAdapter
{
	@:overload public function mouseMoved(anEvent : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* This listener watches for changes to the selection in the
* combo box.
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$ItemHandler') extern class BasicComboPopup_ItemHandler implements java.awt.event.ItemListener
{
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}
/**
* This listener watches for bound properties that have changed in the
* combo box.
* <p>
* Subclasses which wish to listen to combo box property changes should
* call the superclass methods to ensure that the combo popup correctly
* handles property changes.
*
* @see #createPropertyChangeListener
*/
@:native('javax$swing$plaf$basic$BasicComboPopup$PropertyChangeHandler') extern class BasicComboPopup_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicComboPopup$AutoScrollActionHandler') @:internal extern class BasicComboPopup_AutoScrollActionHandler implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicComboPopup$Handler') @:internal extern class BasicComboPopup_Handler implements java.awt.event.ItemListener implements java.awt.event.MouseListener implements java.awt.event.MouseMotionListener implements java.beans.PropertyChangeListener implements java.io.Serializable
{
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(anEvent : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}
