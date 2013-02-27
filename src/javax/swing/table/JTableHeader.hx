package javax.swing.table;
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
extern class JTableHeader extends javax.swing.JComponent implements javax.swing.event.TableColumnModelListener implements javax.accessibility.Accessible
{
	/**
	* The table for which this object is the header;
	* the default is <code>null</code>.
	*/
	private var table : javax.swing.JTable;
	
	/**
	* The <code>TableColumnModel</code> of the table header.
	*/
	private var columnModel : javax.swing.table.TableColumnModel;
	
	/**
	* If true, reordering of columns are allowed by the user;
	* the default is true.
	*/
	private var reorderingAllowed : Bool;
	
	/**
	* If true, resizing of columns are allowed by the user;
	* the default is true.
	*/
	private var resizingAllowed : Bool;
	
	/*
	* If this flag is true, then the header will repaint the table as
	* a column is dragged or resized; the default is true.
	*/
	private var updateTableInRealTime : Bool;
	
	/** The index of the column being resized. <code>null</code> if not resizing. */
	@:transient private var resizingColumn : javax.swing.table.TableColumn;
	
	/** The index of the column being dragged. <code>null</code> if not dragging. */
	@:transient private var draggedColumn : javax.swing.table.TableColumn;
	
	/** The distance from its original position the column has been dragged. */
	@:transient private var draggedDistance : Int;
	
	/**
	*  Constructs a <code>JTableHeader</code> with a default
	*  <code>TableColumnModel</code>.
	*
	* @see #createDefaultColumnModel
	*/
	@:overload public function new() : Void;
	
	/**
	*  Constructs a <code>JTableHeader</code> which is initialized with
	*  <code>cm</code> as the column model.  If <code>cm</code> is
	*  <code>null</code> this method will initialize the table header
	*  with a default <code>TableColumnModel</code>.
	*
	* @param cm        the column model for the table
	* @see #createDefaultColumnModel
	*/
	@:overload public function new(cm : javax.swing.table.TableColumnModel) : Void;
	
	/**
	*  Sets the table associated with this header.
	*  @param  table   the new table
	*  @beaninfo
	*   bound: true
	*   description: The table associated with this header.
	*/
	@:overload public function setTable(table : javax.swing.JTable) : Void;
	
	/**
	*  Returns the table associated with this header.
	*  @return  the <code>table</code> property
	*/
	@:overload public function getTable() : javax.swing.JTable;
	
	/**
	*  Sets whether the user can drag column headers to reorder columns.
	*
	* @param   reorderingAllowed       true if the table view should allow
	*                                  reordering; otherwise false
	* @see     #getReorderingAllowed
	* @beaninfo
	*  bound: true
	*  description: Whether the user can drag column headers to reorder columns.
	*/
	@:overload public function setReorderingAllowed(reorderingAllowed : Bool) : Void;
	
	/**
	* Returns true if the user is allowed to rearrange columns by
	* dragging their headers, false otherwise. The default is true. You can
	* rearrange columns programmatically regardless of this setting.
	*
	* @return  the <code>reorderingAllowed</code> property
	* @see     #setReorderingAllowed
	*/
	@:overload public function getReorderingAllowed() : Bool;
	
	/**
	*  Sets whether the user can resize columns by dragging between headers.
	*
	* @param   resizingAllowed         true if table view should allow
	*                                  resizing
	* @see     #getResizingAllowed
	* @beaninfo
	*  bound: true
	*  description: Whether the user can resize columns by dragging between headers.
	*/
	@:overload public function setResizingAllowed(resizingAllowed : Bool) : Void;
	
	/**
	* Returns true if the user is allowed to resize columns by dragging
	* between their headers, false otherwise. The default is true. You can
	* resize columns programmatically regardless of this setting.
	*
	* @return  the <code>resizingAllowed</code> property
	* @see     #setResizingAllowed
	*/
	@:overload public function getResizingAllowed() : Bool;
	
	/**
	* Returns the the dragged column, if and only if, a drag is in
	* process, otherwise returns <code>null</code>.
	*
	* @return  the dragged column, if a drag is in
	*          process, otherwise returns <code>null</code>
	* @see     #getDraggedDistance
	*/
	@:overload public function getDraggedColumn() : javax.swing.table.TableColumn;
	
	/**
	* Returns the column's horizontal distance from its original
	* position, if and only if, a drag is in process. Otherwise, the
	* the return value is meaningless.
	*
	* @return  the column's horizontal distance from its original
	*          position, if a drag is in process, otherwise the return
	*          value is meaningless
	* @see     #getDraggedColumn
	*/
	@:overload public function getDraggedDistance() : Int;
	
	/**
	* Returns the resizing column.  If no column is being
	* resized this method returns <code>null</code>.
	*
	* @return  the resizing column, if a resize is in process, otherwise
	*          returns <code>null</code>
	*/
	@:overload public function getResizingColumn() : javax.swing.table.TableColumn;
	
	/*
	*  Sets whether the body of the table updates in real time when
	*  a column is resized or dragged.
	*
	* @param   flag                    true if tableView should update
	*                                  the body of the table in real time
	* @see #getUpdateTableInRealTime
	*/
	@:overload public function setUpdateTableInRealTime(flag : Bool) : Void;
	
	/*
	* Returns true if the body of the table view updates in real
	* time when a column is resized or dragged.  User can set this flag to
	* false to speed up the table's response to user resize or drag actions.
	* The default is true.
	*
	* @return  true if the table updates in real time
	* @see #setUpdateTableInRealTime
	*/
	@:overload public function getUpdateTableInRealTime() : Bool;
	
	/**
	* Sets the default renderer to be used when no <code>headerRenderer</code>
	* is defined by a <code>TableColumn</code>.
	* @param  defaultRenderer  the default renderer
	* @since 1.3
	*/
	@:require(java3) @:overload public function setDefaultRenderer(defaultRenderer : javax.swing.table.TableCellRenderer) : Void;
	
	/**
	* Returns the default renderer used when no <code>headerRenderer</code>
	* is defined by a <code>TableColumn</code>.
	* @return the default renderer
	* @since 1.3
	*/
	@:require(java3) @:overload public function getDefaultRenderer() : javax.swing.table.TableCellRenderer;
	
	/**
	* Returns the index of the column that <code>point</code> lies in, or -1 if it
	* lies out of bounds.
	*
	* @return  the index of the column that <code>point</code> lies in, or -1 if it
	*          lies out of bounds
	*/
	@:overload public function columnAtPoint(point : java.awt.Point) : Int;
	
	/**
	* Returns the rectangle containing the header tile at <code>column</code>.
	* When the <code>column</code> parameter is out of bounds this method uses the
	* same conventions as the <code>JTable</code> method <code>getCellRect</code>.
	*
	* @return  the rectangle containing the header tile at <code>column</code>
	* @see JTable#getCellRect
	*/
	@:overload public function getHeaderRect(column : Int) : java.awt.Rectangle;
	
	/**
	* Allows the renderer's tips to be used if there is text set.
	* @param  event  the location of the event identifies the proper
	*                          renderer and, therefore, the proper tip
	* @return the tool tip for this component
	*/
	@:overload override public function getToolTipText(event : java.awt.event.MouseEvent) : String;
	
	/**
	* Returns the look and feel (L&F) object that renders this component.
	*
	* @return the <code>TableHeaderUI</code> object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.TableHeaderUI;
	
	/**
	* Sets the look and feel (L&F) object that renders this component.
	*
	* @param ui  the <code>TableHeaderUI</code> L&F object
	* @see UIDefaults#getUI
	*/
	@:overload public function setUI(ui : javax.swing.plaf.TableHeaderUI) : Void;
	
	/**
	* Notification from the <code>UIManager</code> that the look and feel
	* (L&F) has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the suffix used to construct the name of the look and feel
	* (L&F) class used to render this component.
	* @return the string "TableHeaderUI"
	*
	* @return "TableHeaderUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	*  Sets the column model for this table to <code>newModel</code> and registers
	*  for listener notifications from the new column model.
	*
	* @param   columnModel     the new data source for this table
	* @exception IllegalArgumentException
	*                          if <code>newModel</code> is <code>null</code>
	* @see     #getColumnModel
	* @beaninfo
	*  bound: true
	*  description: The object governing the way columns appear in the view.
	*/
	@:overload public function setColumnModel(columnModel : javax.swing.table.TableColumnModel) : Void;
	
	/**
	* Returns the <code>TableColumnModel</code> that contains all column information
	* of this table header.
	*
	* @return  the <code>columnModel</code> property
	* @see     #setColumnModel
	*/
	@:overload public function getColumnModel() : javax.swing.table.TableColumnModel;
	
	/**
	* Invoked when a column is added to the table column model.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by <code>JTable</code>.
	*
	* @param e  the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnAdded(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Invoked when a column is removed from the table column model.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by <code>JTable</code>.
	*
	* @param e  the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnRemoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Invoked when a column is repositioned.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by <code>JTable</code>.
	*
	* @param e the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnMoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Invoked when a column is moved due to a margin change.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by <code>JTable</code>.
	*
	* @param e the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnMarginChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* Invoked when the selection model of the <code>TableColumnModel</code>
	* is changed.  This method currently has no effect (the header is not
	* redrawn).
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by <code>JTable</code>.
	*
	* @param e the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnSelectionChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	*  Returns the default column model object which is
	*  a <code>DefaultTableColumnModel</code>.  A subclass can override this
	*  method to return a different column model object
	*
	* @return the default column model object
	*/
	@:overload private function createDefaultColumnModel() : javax.swing.table.TableColumnModel;
	
	/**
	*  Returns a default renderer to be used when no header renderer
	*  is defined by a <code>TableColumn</code>.
	*
	*  @return the default table column renderer
	* @since 1.3
	*/
	@:require(java3) @:overload private function createDefaultRenderer() : javax.swing.table.TableCellRenderer;
	
	/**
	* Initializes the local variables and properties with default values.
	* Used by the constructor methods.
	*/
	@:overload private function initializeLocalVars() : Void;
	
	/**
	* Sizes the header and marks it as needing display.  Equivalent
	* to <code>revalidate</code> followed by <code>repaint</code>.
	*/
	@:overload public function resizeAndRepaint() : Void;
	
	/**
	*  Sets the header's <code>draggedColumn</code> to <code>aColumn</code>.
	*  <p>
	*  Application code will not use this method explicitly, it is used
	*  internally by the column dragging mechanism.
	*
	*  @param  aColumn  the column being dragged, or <code>null</code> if
	*                 no column is being dragged
	*/
	@:overload public function setDraggedColumn(aColumn : javax.swing.table.TableColumn) : Void;
	
	/**
	*  Sets the header's <code>draggedDistance</code> to <code>distance</code>.
	*  @param distance  the distance dragged
	*/
	@:overload public function setDraggedDistance(distance : Int) : Void;
	
	/**
	*  Sets the header's <code>resizingColumn</code> to <code>aColumn</code>.
	*  <p>
	*  Application code will not use this method explicitly, it
	*  is used internally by the column sizing mechanism.
	*
	*  @param  aColumn  the column being resized, or <code>null</code> if
	*                 no column is being resized
	*/
	@:overload public function setResizingColumn(aColumn : javax.swing.table.TableColumn) : Void;
	
	/**
	* Returns a string representation of this <code>JTableHeader</code>. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	* <P>
	* Overriding <code>paramString</code> to provide information about the
	* specific new aspects of the JFC components.
	*
	* @return  a string representation of this <code>JTableHeader</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JTableHeader.
	* For JTableHeaders, the AccessibleContext takes the form of an
	* AccessibleJTableHeader.
	* A new AccessibleJTableHeader instance is created if necessary.
	*
	* @return an AccessibleJTableHeader that serves as the
	*         AccessibleContext of this JTableHeader
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JTableHeader</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to table header user-interface
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
@:native('javax$swing$table$JTableHeader$AccessibleJTableHeader') extern class JTableHeader_AccessibleJTableHeader extends AccessibleJComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Returns the Accessible child, if one exists, contained at the local
	* coordinate Point.
	*
	* @param p The point defining the top-left corner of the Accessible,
	* given in the coordinate space of the object's parent.
	* @return the Accessible, if it exists, at the specified location;
	* else null
	*/
	@:overload public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of accessible children in the object.  If all
	* of the children of this object implement Accessible, than this
	* method should return the number of children of this object.
	*
	* @return the number of accessible children in the object.
	*/
	@:overload public function getAccessibleChildrenCount() : Int;
	
	/**
	* Return the nth Accessible child of the object.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	
}
/**
* This class provides an implementation of the Java Accessibility
* API appropropriate for JTableHeader entries.
*/
@:native('javax$swing$table$JTableHeader$AccessibleJTableHeader$AccessibleJTableHeaderEntry') extern class JTableHeader_AccessibleJTableHeader_AccessibleJTableHeaderEntry extends javax.accessibility.AccessibleContext implements javax.accessibility.Accessible implements javax.accessibility.AccessibleComponent
{
	/**
	*  Constructs an AccessiblJTableHeaaderEntry
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(c : Int, p : JTableHeader, t : javax.swing.JTable) : Void;
	
	/**
	* Get the AccessibleContext associated with this object.
	* In the implementation of the Java Accessibility API
	* for this class, returns this object, which serves as
	* its own AccessibleContext.
	*
	* @return this object
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	@:overload override public function getAccessibleName() : String;
	
	@:overload override public function setAccessibleName(s : String) : Void;
	
	@:overload override public function getAccessibleDescription() : String;
	
	@:overload override public function setAccessibleDescription(s : String) : Void;
	
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	@:overload override public function getLocale() : java.util.Locale;
	
	@:overload override public function addPropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	@:overload override public function removePropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	@:overload override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Get the AccessibleComponent associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleComponent interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	@:overload override public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	@:overload public function getBackground() : java.awt.Color;
	
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	@:overload public function getForeground() : java.awt.Color;
	
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	@:overload public function getCursor() : java.awt.Cursor;
	
	@:overload public function setCursor(c : java.awt.Cursor) : Void;
	
	@:overload public function getFont() : java.awt.Font;
	
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload public function isEnabled() : Bool;
	
	@:overload public function setEnabled(b : Bool) : Void;
	
	@:overload public function isVisible() : Bool;
	
	@:overload public function setVisible(b : Bool) : Void;
	
	@:overload public function isShowing() : Bool;
	
	@:overload public function contains(p : java.awt.Point) : Bool;
	
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	@:overload public function getLocation() : java.awt.Point;
	
	@:overload public function setLocation(p : java.awt.Point) : Void;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	@:overload public function setBounds(r : java.awt.Rectangle) : Void;
	
	@:overload public function getSize() : java.awt.Dimension;
	
	@:overload public function setSize(d : java.awt.Dimension) : Void;
	
	@:overload public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	@:overload public function isFocusTraversable() : Bool;
	
	@:overload public function requestFocus() : Void;
	
	@:overload public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	@:overload public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	
}
