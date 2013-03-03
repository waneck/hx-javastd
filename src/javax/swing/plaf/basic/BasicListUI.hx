package javax.swing.plaf.basic;
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
extern class BasicListUI extends javax.swing.plaf.ListUI
{
	@:protected private var list : javax.swing.JList<Dynamic>;
	
	@:protected private var rendererPane : javax.swing.CellRendererPane;
	
	@:protected private var focusListener : java.awt.event.FocusListener;
	
	@:protected private var mouseInputListener : javax.swing.event.MouseInputListener;
	
	@:protected private var listSelectionListener : javax.swing.event.ListSelectionListener;
	
	@:protected private var listDataListener : javax.swing.event.ListDataListener;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:protected private var cellHeights : java.NativeArray<Int>;
	
	@:protected private var cellHeight : Int;
	
	@:protected private var cellWidth : Int;
	
	@:protected private var updateLayoutStateNeeded : Int;
	
	/* The bits below define JList property changes that affect layout.
	* When one of these properties changes we set a bit in
	* updateLayoutStateNeeded.  The change is dealt with lazily, see
	* maybeUpdateLayoutState.  Changes to the JLists model, e.g. the
	* models length changed, are handled similarly, see DataListener.
	*/
	@:protected @:final @:static private static var modelChanged(default, null) : Int;
	
	@:protected @:final @:static private static var selectionModelChanged(default, null) : Int;
	
	@:protected @:final @:static private static var fontChanged(default, null) : Int;
	
	@:protected @:final @:static private static var fixedCellWidthChanged(default, null) : Int;
	
	@:protected @:final @:static private static var fixedCellHeightChanged(default, null) : Int;
	
	@:protected @:final @:static private static var prototypeCellValueChanged(default, null) : Int;
	
	@:protected @:final @:static private static var cellRendererChanged(default, null) : Int;
	
	/**
	* Paint one List cell: compute the relevant state, get the "rubber stamp"
	* cell renderer component, and then use the CellRendererPane to paint it.
	* Subclasses may want to override this method rather than paint().
	*
	* @see #paint
	*/
	@:overload @:protected private function paintCell(g : java.awt.Graphics, row : Int, rowBounds : java.awt.Rectangle, cellRenderer : javax.swing.ListCellRenderer<Dynamic>, dataModel : javax.swing.ListModel<Dynamic>, selModel : javax.swing.ListSelectionModel, leadIndex : Int) : Void;
	
	/**
	* Paint the rows that intersect the Graphics objects clipRect.  This
	* method calls paintCell as necessary.  Subclasses
	* may want to override these methods.
	*
	* @see #paintCell
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	/**
	* The preferredSize of the list depends upon the layout orientation.
	* <table summary="Describes the preferred size for each layout orientation">
	* <tr><th>Layout Orientation</th><th>Preferred Size</th></tr>
	* <tr>
	*   <td>JList.VERTICAL
	*   <td>The preferredSize of the list is total height of the rows
	*       and the maximum width of the cells.  If JList.fixedCellHeight
	*       is specified then the total height of the rows is just
	*       (cellVerticalMargins + fixedCellHeight) * model.getSize() where
	*       rowVerticalMargins is the space we allocate for drawing
	*       the yellow focus outline.  Similarly if fixedCellWidth is
	*       specified then we just use that.
	*   </td>
	* <tr>
	*   <td>JList.VERTICAL_WRAP
	*   <td>If the visible row count is greater than zero, the preferredHeight
	*       is the maximum cell height * visibleRowCount. If the visible row
	*       count is <= 0, the preferred height is either the current height
	*       of the list, or the maximum cell height, whichever is
	*       bigger. The preferred width is than the maximum cell width *
	*       number of columns needed. Where the number of columns needs is
	*       list.height / max cell height. Max cell height is either the fixed
	*       cell height, or is determined by iterating through all the cells
	*       to find the maximum height from the ListCellRenderer.
	* <tr>
	*   <td>JList.HORIZONTAL_WRAP
	*   <td>If the visible row count is greater than zero, the preferredHeight
	*       is the maximum cell height * adjustedRowCount.  Where
	*       visibleRowCount is used to determine the number of columns.
	*       Because this lays out horizontally the number of rows is
	*       then determined from the column count.  For example, lets say
	*       you have a model with 10 items and the visible row count is 8.
	*       The number of columns needed to display this is 2, but you no
	*       longer need 8 rows to display this, you only need 5, thus
	*       the adjustedRowCount is 5.
	*       <p>If the visible row
	*       count is <= 0, the preferred height is dictated by the
	*       number of columns, which will be as many as can fit in the width
	*       of the <code>JList</code> (width / max cell width), with at
	*       least one column.  The preferred height then becomes the
	*       model size / number of columns * maximum cell height.
	*       Max cell height is either the fixed
	*       cell height, or is determined by iterating through all the cells
	*       to find the maximum height from the ListCellRenderer.
	* </table>
	* The above specifies the raw preferred width and height. The resulting
	* preferred width is the above width + insets.left + insets.right and
	* the resulting preferred height is the above height + insets.top +
	* insets.bottom. Where the <code>Insets</code> are determined from
	* <code>list.getInsets()</code>.
	*
	* @param c The JList component.
	* @return The total size of the list.
	*/
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Selected the previous row and force it to be visible.
	*
	* @see JList#ensureIndexIsVisible
	*/
	@:overload @:protected private function selectPreviousIndex() : Void;
	
	/**
	* Selected the previous row and force it to be visible.
	*
	* @see JList#ensureIndexIsVisible
	*/
	@:overload @:protected private function selectNextIndex() : Void;
	
	/**
	* Registers the keyboard bindings on the <code>JList</code> that the
	* <code>BasicListUI</code> is associated with. This method is called at
	* installUI() time.
	*
	* @see #installUI
	*/
	@:overload @:protected private function installKeyboardActions() : Void;
	
	/**
	* Unregisters keyboard actions installed from
	* <code>installKeyboardActions</code>.
	* This method is called at uninstallUI() time - subclassess should
	* ensure that all of the keyboard actions registered at installUI
	* time are removed here.
	*
	* @see #installUI
	*/
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	/**
	* Creates and installs the listeners for the JList, its model, and its
	* selectionModel.  This method is called at installUI() time.
	*
	* @see #installUI
	* @see #uninstallListeners
	*/
	@:overload @:protected private function installListeners() : Void;
	
	/**
	* Removes the listeners from the JList, its model, and its
	* selectionModel.  All of the listener fields, are reset to
	* null here.  This method is called at uninstallUI() time,
	* it should be kept in sync with installListeners.
	*
	* @see #uninstallUI
	* @see #installListeners
	*/
	@:overload @:protected private function uninstallListeners() : Void;
	
	/**
	* Initializes list properties such as font, foreground, and background,
	* and adds the CellRendererPane. The font, foreground, and background
	* properties are only set if their current value is either null
	* or a UIResource, other properties are set if the current
	* value is null.
	*
	* @see #uninstallDefaults
	* @see #installUI
	* @see CellRendererPane
	*/
	@:overload @:protected private function installDefaults() : Void;
	
	/**
	* Sets the list properties that have not been explicitly overridden to
	* {@code null}. A property is considered overridden if its current value
	* is not a {@code UIResource}.
	*
	* @see #installDefaults
	* @see #uninstallUI
	* @see CellRendererPane
	*/
	@:overload @:protected private function uninstallDefaults() : Void;
	
	/**
	* Initializes <code>this.list</code> by calling <code>installDefaults()</code>,
	* <code>installListeners()</code>, and <code>installKeyboardActions()</code>
	* in order.
	*
	* @see #installDefaults
	* @see #installListeners
	* @see #installKeyboardActions
	*/
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Uninitializes <code>this.list</code> by calling <code>uninstallListeners()</code>,
	* <code>uninstallKeyboardActions()</code>, and <code>uninstallDefaults()</code>
	* in order.  Sets this.list to null.
	*
	* @see #uninstallListeners
	* @see #uninstallKeyboardActions
	* @see #uninstallDefaults
	*/
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Returns a new instance of BasicListUI.  BasicListUI delegates are
	* allocated one per JList.
	*
	* @return A new ListUI implementation for the Windows look and feel.
	*/
	@:overload @:public @:static public static function createUI(list : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* {@inheritDoc}
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public override public function locationToIndex(list : javax.swing.JList<Dynamic>, location : java.awt.Point) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function indexToLocation(list : javax.swing.JList<Dynamic>, index : Int) : java.awt.Point;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getCellBounds(list : javax.swing.JList<Dynamic>, index1 : Int, index2 : Int) : java.awt.Rectangle;
	
	/**
	* Returns the height of the specified row based on the current layout.
	*
	* @return The specified row height or -1 if row isn't valid.
	* @see #convertYToRow
	* @see #convertRowToY
	* @see #updateLayoutState
	*/
	@:overload @:protected private function getRowHeight(row : Int) : Int;
	
	/**
	* Convert the JList relative coordinate to the row that contains it,
	* based on the current layout.  If y0 doesn't fall within any row,
	* return -1.
	*
	* @return The row that contains y0, or -1.
	* @see #getRowHeight
	* @see #updateLayoutState
	*/
	@:overload @:protected private function convertYToRow(y0 : Int) : Int;
	
	/**
	* Return the JList relative Y coordinate of the origin of the specified
	* row or -1 if row isn't valid.
	*
	* @return The Y coordinate of the origin of row, or -1.
	* @see #getRowHeight
	* @see #updateLayoutState
	*/
	@:overload @:protected private function convertRowToY(row : Int) : Int;
	
	/**
	* If updateLayoutStateNeeded is non zero, call updateLayoutState() and reset
	* updateLayoutStateNeeded.  This method should be called by methods
	* before doing any computation based on the geometry of the list.
	* For example it's the first call in paint() and getPreferredSize().
	*
	* @see #updateLayoutState
	*/
	@:overload @:protected private function maybeUpdateLayoutState() : Void;
	
	/**
	* Recompute the value of cellHeight or cellHeights based
	* and cellWidth, based on the current font and the current
	* values of fixedCellWidth, fixedCellHeight, and prototypeCellValue.
	*
	* @see #maybeUpdateLayoutState
	*/
	@:overload @:protected private function updateLayoutState() : Void;
	
	/**
	* Creates a delegate that implements MouseInputListener.
	* The delegate is added to the corresponding java.awt.Component listener
	* lists at installUI() time. Subclasses can override this method to return
	* a custom MouseInputListener, e.g.
	* <pre>
	* class MyListUI extends BasicListUI {
	*    protected MouseInputListener <b>createMouseInputListener</b>() {
	*        return new MyMouseInputHandler();
	*    }
	*    public class MyMouseInputHandler extends MouseInputHandler {
	*        public void mouseMoved(MouseEvent e) {
	*            // do some extra work when the mouse moves
	*            super.mouseMoved(e);
	*        }
	*    }
	* }
	* </pre>
	*
	* @see MouseInputHandler
	* @see #installUI
	*/
	@:overload @:protected private function createMouseInputListener() : javax.swing.event.MouseInputListener;
	
	@:overload @:protected private function createFocusListener() : java.awt.event.FocusListener;
	
	/**
	* Creates an instance of ListSelectionHandler that's added to
	* the JLists by selectionModel as needed.  Subclasses can override
	* this method to return a custom ListSelectionListener, e.g.
	* <pre>
	* class MyListUI extends BasicListUI {
	*    protected ListSelectionListener <b>createListSelectionListener</b>() {
	*        return new MySelectionListener();
	*    }
	*    public class MySelectionListener extends ListSelectionHandler {
	*        public void valueChanged(ListSelectionEvent e) {
	*            // do some extra work when the selection changes
	*            super.valueChange(e);
	*        }
	*    }
	* }
	* </pre>
	*
	* @see ListSelectionHandler
	* @see #installUI
	*/
	@:overload @:protected private function createListSelectionListener() : javax.swing.event.ListSelectionListener;
	
	/**
	* Creates an instance of ListDataListener that's added to
	* the JLists by model as needed.  Subclasses can override
	* this method to return a custom ListDataListener, e.g.
	* <pre>
	* class MyListUI extends BasicListUI {
	*    protected ListDataListener <b>createListDataListener</b>() {
	*        return new MyListDataListener();
	*    }
	*    public class MyListDataListener extends ListDataHandler {
	*        public void contentsChanged(ListDataEvent e) {
	*            // do some extra work when the models contents change
	*            super.contentsChange(e);
	*        }
	*    }
	* }
	* </pre>
	*
	* @see ListDataListener
	* @see JList#getModel
	* @see #installUI
	*/
	@:overload @:protected private function createListDataListener() : javax.swing.event.ListDataListener;
	
	/**
	* Creates an instance of PropertyChangeHandler that's added to
	* the JList by installUI().  Subclasses can override this method
	* to return a custom PropertyChangeListener, e.g.
	* <pre>
	* class MyListUI extends BasicListUI {
	*    protected PropertyChangeListener <b>createPropertyChangeListener</b>() {
	*        return new MyPropertyChangeListener();
	*    }
	*    public class MyPropertyChangeListener extends PropertyChangeHandler {
	*        public void propertyChange(PropertyChangeEvent e) {
	*            if (e.getPropertyName().equals("model")) {
	*                // do some extra work when the model changes
	*            }
	*            super.propertyChange(e);
	*        }
	*    }
	* }
	* </pre>
	*
	* @see PropertyChangeListener
	* @see #installUI
	*/
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	
}
/**
* Mouse input, and focus handling for JList.  An instance of this
* class is added to the appropriate java.awt.Component lists
* at installUI() time.  Note keyboard input is handled with JComponent
* KeyboardActions, see installKeyboardActions().
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
* @see #createMouseInputListener
* @see #installKeyboardActions
* @see #installUI
*/
@:native('javax$swing$plaf$basic$BasicListUI$MouseInputHandler') extern class BasicListUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicListUI}.
*/
@:native('javax$swing$plaf$basic$BasicListUI$FocusHandler') extern class BasicListUI_FocusHandler implements java.awt.event.FocusListener
{
	@:overload @:protected private function repaintCellFocus() : Void;
	
	/* The focusGained() focusLost() methods run when the JList
	* focus changes.
	*/
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
/**
* The ListSelectionListener that's added to the JLists selection
* model at installUI time, and whenever the JList.selectionModel property
* changes.  When the selection changes we repaint the affected rows.
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
* @see #createListSelectionListener
* @see #getCellBounds
* @see #installUI
*/
@:native('javax$swing$plaf$basic$BasicListUI$ListSelectionHandler') extern class BasicListUI_ListSelectionHandler implements javax.swing.event.ListSelectionListener
{
	@:overload @:public public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	
}
/**
* The ListDataListener that's added to the JLists model at
* installUI time, and whenever the JList.model property changes.
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
* @see JList#getModel
* @see #maybeUpdateLayoutState
* @see #createListDataListener
* @see #installUI
*/
@:native('javax$swing$plaf$basic$BasicListUI$ListDataHandler') extern class BasicListUI_ListDataHandler implements javax.swing.event.ListDataListener
{
	@:overload @:public public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
/**
* The PropertyChangeListener that's added to the JList at
* installUI time.  When the value of a JList property that
* affects layout changes, we set a bit in updateLayoutStateNeeded.
* If the JLists model changes we additionally remove our listeners
* from the old model.  Likewise for the JList selectionModel.
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
* @see #maybeUpdateLayoutState
* @see #createPropertyChangeListener
* @see #installUI
*/
@:native('javax$swing$plaf$basic$BasicListUI$PropertyChangeHandler') extern class BasicListUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicListUI$Actions') @:internal extern class BasicListUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public override public function isEnabled(c : Dynamic) : Bool;
	
	
}
@:native('javax$swing$plaf$basic$BasicListUI$Handler') @:internal extern class BasicListUI_Handler implements java.awt.event.FocusListener implements java.awt.event.KeyListener implements javax.swing.event.ListDataListener implements javax.swing.event.ListSelectionListener implements javax.swing.event.MouseInputListener implements java.beans.PropertyChangeListener implements javax.swing.plaf.basic.DragRecognitionSupport.DragRecognitionSupport_BeforeDrag
{
	/**
	* Invoked when a key has been typed.
	*
	* Moves the keyboard focus to the first element whose prefix matches the
	* sequence of alphanumeric keys pressed by the user with delay less
	* than value of <code>timeFactor</code> property (or 1000 milliseconds
	* if it is not defined). Subsequent same key presses move the keyboard
	* focus to the next object that starts with the same letter until another
	* key is pressed, then it is treated as the prefix with appropriate number
	* of the same letters followed by first typed another letter.
	*/
	@:overload @:public public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Invoked when a key has been pressed.
	*
	* Checks to see if the key event is a navigation key to prevent
	* dispatching these keys for the first letter navigation.
	*/
	@:overload @:public public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Invoked when a key has been released.
	* See the class description for {@link KeyEvent} for a definition of
	* a key released event.
	*/
	@:overload @:public public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function dragStarting(me : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:protected private function repaintCellFocus() : Void;
	
	/* The focusGained() focusLost() methods run when the JList
	* focus changes.
	*/
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicListUI$ListTransferHandler') @:internal extern class BasicListUI_ListTransferHandler extends javax.swing.TransferHandler implements javax.swing.plaf.UIResource
{
	/**
	* Create a Transferable to use as the source for a data transfer.
	*
	* @param c  The component holding the data to be transfered.  This
	*  argument is provided to enable sharing of TransferHandlers by
	*  multiple components.
	* @return  The representation of the data to be transfered.
	*
	*/
	@:overload @:protected override private function createTransferable(c : javax.swing.JComponent) : java.awt.datatransfer.Transferable;
	
	@:overload @:public override public function getSourceActions(c : javax.swing.JComponent) : Int;
	
	
}
