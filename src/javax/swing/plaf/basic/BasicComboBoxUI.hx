package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicComboBoxUI extends javax.swing.plaf.ComboBoxUI
{
	/**
	* Basic UI implementation for JComboBox.
	* <p>
	* The combo box is a compound component which means that it is an agregate of
	* many simpler components. This class creates and manages the listeners
	* on the combo box and the combo box model. These listeners update the user
	* interface in response to changes in the properties and state of the combo box.
	* <p>
	* All event handling is handled by listener classes created with the
	* <code>createxxxListener()</code> methods and internal classes.
	* You can change the behavior of this class by overriding the
	* <code>createxxxListener()</code> methods and supplying your own
	* event listeners or subclassing from the ones supplied in this class.
	* <p>
	* For adding specific actions,
	* overide <code>installKeyboardActions</code> to add actions in response to
	* KeyStroke bindings. See the article <a href="http://java.sun.com/products/jfc/tsc/special_report/kestrel/keybindings.html">Keyboard Bindings in Swing</a>
	* at <a href="http://java.sun.com/products/jfc/tsc"><em>The Swing Connection</em></a>.
	*
	* @author Arnaud Weber
	* @author Tom Santos
	* @author Mark Davidson
	*/
	private var comboBox : javax.swing.JComboBox<Dynamic>;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override.
	*/
	private var hasFocus : Bool;
	
	private var listBox : javax.swing.JList<Dynamic>;
	
	private var currentValuePane : javax.swing.CellRendererPane;
	
	private var popup : javax.swing.plaf.basic.ComboPopup;
	
	private var editor : java.awt.Component;
	
	private var arrowButton : javax.swing.JButton;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Override the listener construction method instead.
	*
	* @see #createKeyListener
	*/
	private var keyListener : java.awt.event.KeyListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Override the listener construction method instead.
	*
	* @see #createFocusListener
	*/
	private var focusListener : java.awt.event.FocusListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Override the listener construction method instead.
	*
	* @see #createPropertyChangeListener
	*/
	private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Override the listener construction method instead.
	*
	* @see #createItemListener
	*/
	private var itemListener : java.awt.event.ItemListener;
	
	private var popupMouseListener : java.awt.event.MouseListener;
	
	private var popupMouseMotionListener : java.awt.event.MouseMotionListener;
	
	private var popupKeyListener : java.awt.event.KeyListener;
	
	/**
	* This protected field is implementation specific. Do not access directly
	* or override. Override the listener construction method instead.
	*
	* @see #createListDataListener
	*/
	private var listDataListener : javax.swing.event.ListDataListener;
	
	private var isMinimumSizeDirty : Bool;
	
	private var cachedMinimumSize : java.awt.Dimension;
	
	/**
	* Indicates whether or not the combo box button should be square.
	* If square, then the width and height are equal, and are both set to
	* the height of the combo minus appropriate insets.
	*
	* @since 1.7
	*/
	@:require(java7) private var squareButton : Bool;
	
	/**
	* If specified, these insets act as padding around the cell renderer when
	* laying out and painting the "selected" item in the combo box. These
	* insets add to those specified by the cell renderer.
	*
	* @since 1.7
	*/
	@:require(java7) private var padding : java.awt.Insets;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Installs the default colors, default font, default renderer, and default
	* editor into the JComboBox.
	*/
	@:overload private function installDefaults() : Void;
	
	/**
	* Creates and installs listeners for the combo box and its model.
	* This method is called when the UI is installed.
	*/
	@:overload private function installListeners() : Void;
	
	/**
	* Uninstalls the default colors, default font, default renderer,
	* and default editor from the combo box.
	*/
	@:overload private function uninstallDefaults() : Void;
	
	/**
	* Removes the installed listeners from the combo box and its model.
	* The number and types of listeners removed and in this method should be
	* the same that was added in <code>installListeners</code>
	*/
	@:overload private function uninstallListeners() : Void;
	
	/**
	* Creates the popup portion of the combo box.
	*
	* @return an instance of <code>ComboPopup</code>
	* @see ComboPopup
	*/
	@:overload private function createPopup() : javax.swing.plaf.basic.ComboPopup;
	
	/**
	* Creates a <code>KeyListener</code> which will be added to the
	* combo box. If this method returns null then it will not be added
	* to the combo box.
	*
	* @return an instance <code>KeyListener</code> or null
	*/
	@:overload private function createKeyListener() : java.awt.event.KeyListener;
	
	/**
	* Creates a <code>FocusListener</code> which will be added to the combo box.
	* If this method returns null then it will not be added to the combo box.
	*
	* @return an instance of a <code>FocusListener</code> or null
	*/
	@:overload private function createFocusListener() : java.awt.event.FocusListener;
	
	/**
	* Creates a list data listener which will be added to the
	* <code>ComboBoxModel</code>. If this method returns null then
	* it will not be added to the combo box model.
	*
	* @return an instance of a <code>ListDataListener</code> or null
	*/
	@:overload private function createListDataListener() : javax.swing.event.ListDataListener;
	
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
	* Creates a <code>PropertyChangeListener</code> which will be added to
	* the combo box. If this method returns null then it will not
	* be added to the combo box.
	*
	* @return an instance of a <code>PropertyChangeListener</code> or null
	*/
	@:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Creates a layout manager for managing the components which make up the
	* combo box.
	*
	* @return an instance of a layout manager
	*/
	@:overload private function createLayoutManager() : java.awt.LayoutManager;
	
	/**
	* Creates the default renderer that will be used in a non-editiable combo
	* box. A default renderer will used only if a renderer has not been
	* explicitly set with <code>setRenderer</code>.
	*
	* @return a <code>ListCellRender</code> used for the combo box
	* @see javax.swing.JComboBox#setRenderer
	*/
	@:overload private function createRenderer() : javax.swing.ListCellRenderer<Dynamic>;
	
	/**
	* Creates the default editor that will be used in editable combo boxes.
	* A default editor will be used only if an editor has not been
	* explicitly set with <code>setEditor</code>.
	*
	* @return a <code>ComboBoxEditor</code> used for the combo box
	* @see javax.swing.JComboBox#setEditor
	*/
	@:overload private function createEditor() : javax.swing.ComboBoxEditor;
	
	/**
	* Creates and initializes the components which make up the
	* aggregate combo box. This method is called as part of the UI
	* installation process.
	*/
	@:overload private function installComponents() : Void;
	
	/**
	* The aggregate components which compise the combo box are
	* unregistered and uninitialized. This method is called as part of the
	* UI uninstallation process.
	*/
	@:overload private function uninstallComponents() : Void;
	
	/**
	* This public method is implementation specific and should be private.
	* do not call or override. To implement a specific editor create a
	* custom <code>ComboBoxEditor</code>
	*
	* @see #createEditor
	* @see javax.swing.JComboBox#setEditor
	* @see javax.swing.ComboBoxEditor
	*/
	@:overload public function addEditor() : Void;
	
	/**
	* This public method is implementation specific and should be private.
	* do not call or override.
	*
	* @see #addEditor
	*/
	@:overload public function removeEditor() : Void;
	
	/**
	* This protected method is implementation specific and should be private.
	* do not call or override.
	*
	* @see #addEditor
	*/
	@:overload private function configureEditor() : Void;
	
	/**
	* This protected method is implementation specific and should be private.
	* Do not call or override.
	*
	* @see #addEditor
	*/
	@:overload private function unconfigureEditor() : Void;
	
	/**
	* This public method is implementation specific and should be private. Do
	* not call or override.
	*
	* @see #createArrowButton
	*/
	@:overload public function configureArrowButton() : Void;
	
	/**
	* This public method is implementation specific and should be private. Do
	* not call or override.
	*
	* @see #createArrowButton
	*/
	@:overload public function unconfigureArrowButton() : Void;
	
	/**
	* Creates a button which will be used as the control to show or hide
	* the popup portion of the combo box.
	*
	* @return a button which represents the popup control
	*/
	@:overload private function createArrowButton() : javax.swing.JButton;
	
	/**
	* Tells if the popup is visible or not.
	*/
	@:overload override public function isPopupVisible(c : javax.swing.JComboBox<Dynamic>) : Bool;
	
	/**
	* Hides the popup.
	*/
	@:overload override public function setPopupVisible(c : javax.swing.JComboBox<Dynamic>, v : Bool) : Void;
	
	/**
	* Determines if the JComboBox is focus traversable.  If the JComboBox is editable
	* this returns false, otherwise it returns true.
	*/
	@:overload override public function isFocusTraversable(c : javax.swing.JComboBox<Dynamic>) : Bool;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* The minumum size is the size of the display area plus insets plus the button.
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	@:overload override public function getAccessibleChildrenCount(c : javax.swing.JComponent) : Int;
	
	@:overload override public function getAccessibleChild(c : javax.swing.JComponent, i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns whether or not the supplied keyCode maps to a key that is used for
	* navigation.  This is used for optimizing key input by only passing non-
	* navigation keys to the type-ahead mechanism.  Subclasses should override this
	* if they change the navigation keys.
	*/
	@:overload private function isNavigationKey(keyCode : Int) : Bool;
	
	/**
	* Selects the next item in the list.  It won't change the selection if the
	* currently selected item is already the last item.
	*/
	@:overload private function selectNextPossibleValue() : Void;
	
	/**
	* Selects the previous item in the list.  It won't change the selection if the
	* currently selected item is already the first item.
	*/
	@:overload private function selectPreviousPossibleValue() : Void;
	
	/**
	* Hides the popup if it is showing and shows the popup if it is hidden.
	*/
	@:overload private function toggleOpenClose() : Void;
	
	/**
	* Returns the area that is reserved for drawing the currently selected item.
	*/
	@:overload private function rectangleForCurrentValue() : java.awt.Rectangle;
	
	/**
	* Gets the insets from the JComboBox.
	*/
	@:overload private function getInsets() : java.awt.Insets;
	
	/**
	* Paints the currently selected item.
	*/
	@:overload public function paintCurrentValue(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	/**
	* Paints the background of the currently selected item.
	*/
	@:overload public function paintCurrentValueBackground(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	/**
	* Return the default size of an empty display area of the combo box using
	* the current renderer and font.
	*
	* @return the size of an empty display area
	* @see #getDisplaySize
	*/
	@:overload private function getDefaultSize() : java.awt.Dimension;
	
	/**
	* Returns the calculated size of the display area. The display area is the
	* portion of the combo box in which the selected item is displayed. This
	* method will use the prototype display value if it has been set.
	* <p>
	* For combo boxes with a non trivial number of items, it is recommended to
	* use a prototype display value to significantly speed up the display
	* size calculation.
	*
	* @return the size of the display area calculated from the combo box items
	* @see javax.swing.JComboBox#setPrototypeDisplayValue
	*/
	@:overload private function getDisplaySize() : java.awt.Dimension;
	
	/**
	* Returns the size a component would have if used as a cell renderer.
	*
	* @param comp a {@code Component} to check
	* @return size of the component
	* @since 1.7
	*/
	@:require(java7) @:overload private function getSizeForComponent(comp : java.awt.Component) : java.awt.Dimension;
	
	/**
	* Adds keyboard actions to the JComboBox.  Actions on enter and esc are already
	* supplied.  Add more actions as you need them.
	*/
	@:overload private function installKeyboardActions() : Void;
	
	/**
	* Removes the focus InputMap and ActionMap.
	*/
	@:overload private function uninstallKeyboardActions() : Void;
	
	
}
/**
* This listener checks to see if the key event isn't a navigation key.  If
* it finds a key event that wasn't a navigation key it dispatches it to
* JComboBox.selectWithKeyChar() so that it can do type-ahead.
*
* This public inner class should be treated as protected.
* Instantiate it only within subclasses of
* <code>BasicComboBoxUI</code>.
*/
@:native('javax$swing$plaf$basic$BasicComboBoxUI$KeyHandler') extern class BasicComboBoxUI_KeyHandler extends java.awt.event.KeyAdapter
{
	@:overload override public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	
}
/**
* This listener hides the popup when the focus is lost.  It also repaints
* when focus is gained or lost.
*
* This public inner class should be treated as protected.
* Instantiate it only within subclasses of
* <code>BasicComboBoxUI</code>.
*/
@:native('javax$swing$plaf$basic$BasicComboBoxUI$FocusHandler') extern class BasicComboBoxUI_FocusHandler implements java.awt.event.FocusListener
{
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
/**
* This listener watches for changes in the
* <code>ComboBoxModel</code>.
* <p>
* This public inner class should be treated as protected.
* Instantiate it only within subclasses of
* <code>BasicComboBoxUI</code>.
*
* @see #createListDataListener
*/
@:native('javax$swing$plaf$basic$BasicComboBoxUI$ListDataHandler') extern class BasicComboBoxUI_ListDataHandler implements javax.swing.event.ListDataListener
{
	@:overload public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
/**
* This listener watches for changes to the selection in the
* combo box.
* <p>
* This public inner class should be treated as protected.
* Instantiate it only within subclasses of
* <code>BasicComboBoxUI</code>.
*
* @see #createItemListener
*/
@:native('javax$swing$plaf$basic$BasicComboBoxUI$ItemHandler') extern class BasicComboBoxUI_ItemHandler implements java.awt.event.ItemListener
{
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}
/**
* This listener watches for bound properties that have changed in the
* combo box.
* <p>
* Subclasses which wish to listen to combo box property changes should
* call the superclass methods to ensure that the combo box ui correctly
* handles property changes.
* <p>
* This public inner class should be treated as protected.
* Instantiate it only within subclasses of
* <code>BasicComboBoxUI</code>.
*
* @see #createPropertyChangeListener
*/
@:native('javax$swing$plaf$basic$BasicComboBoxUI$PropertyChangeHandler') extern class BasicComboBoxUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This layout manager handles the 'standard' layout of combo boxes.  It puts
* the arrow button to the right and the editor to the left.  If there is no
* editor it still keeps the arrow button to the right.
*
* This public inner class should be treated as protected.
* Instantiate it only within subclasses of
* <code>BasicComboBoxUI</code>.
*/
@:native('javax$swing$plaf$basic$BasicComboBoxUI$ComboBoxLayoutManager') extern class BasicComboBoxUI_ComboBoxLayoutManager implements java.awt.LayoutManager
{
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicComboBoxUI$Actions') @:internal extern class BasicComboBoxUI_Actions extends sun.swing.UIAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled(c : Dynamic) : Bool;
	
	
}
@:native('javax$swing$plaf$basic$BasicComboBoxUI$Handler') @:internal extern class BasicComboBoxUI_Handler implements java.awt.event.ActionListener implements java.awt.event.FocusListener implements java.awt.event.KeyListener implements java.awt.LayoutManager implements javax.swing.event.ListDataListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	@:overload public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicComboBoxUI$DefaultKeySelectionManager') @:internal extern class BasicComboBoxUI_DefaultKeySelectionManager implements javax.swing.JComboBox.JComboBox_KeySelectionManager implements javax.swing.plaf.UIResource
{
	@:overload public function selectionForKey(aKey : java.StdTypes.Char16, aModel : javax.swing.ComboBoxModel<Dynamic>) : Int;
	
	
}
