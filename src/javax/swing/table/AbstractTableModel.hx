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
extern class AbstractTableModel implements javax.swing.table.TableModel implements java.io.Serializable
{
	/** List of listeners */
	private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	*  Returns a default name for the column using spreadsheet conventions:
	*  A, B, C, ... Z, AA, AB, etc.  If <code>column</code> cannot be found,
	*  returns an empty string.
	*
	* @param column  the column being queried
	* @return a string containing the default name of <code>column</code>
	*/
	@:overload public function getColumnName(column : Int) : String;
	
	/**
	* Returns a column given its name.
	* Implementation is naive so this should be overridden if
	* this method is to be called often. This method is not
	* in the <code>TableModel</code> interface and is not used by the
	* <code>JTable</code>.
	*
	* @param columnName string containing name of column to be located
	* @return the column with <code>columnName</code>, or -1 if not found
	*/
	@:overload public function findColumn(columnName : String) : Int;
	
	/**
	*  Returns <code>Object.class</code> regardless of <code>columnIndex</code>.
	*
	*  @param columnIndex  the column being queried
	*  @return the Object.class
	*/
	@:overload public function getColumnClass(columnIndex : Int) : Class<Dynamic>;
	
	/**
	*  Returns false.  This is the default implementation for all cells.
	*
	*  @param  rowIndex  the row being queried
	*  @param  columnIndex the column being queried
	*  @return false
	*/
	@:overload public function isCellEditable(rowIndex : Int, columnIndex : Int) : Bool;
	
	/**
	*  This empty implementation is provided so users don't have to implement
	*  this method if their data model is not editable.
	*
	*  @param  aValue   value to assign to cell
	*  @param  rowIndex   row of cell
	*  @param  columnIndex  column of cell
	*/
	@:overload public function setValueAt(aValue : Dynamic, rowIndex : Int, columnIndex : Int) : Void;
	
	/**
	* Adds a listener to the list that's notified each time a change
	* to the data model occurs.
	*
	* @param   l               the TableModelListener
	*/
	@:overload public function addTableModelListener(l : javax.swing.event.TableModelListener) : Void;
	
	/**
	* Removes a listener from the list that's notified each time a
	* change to the data model occurs.
	*
	* @param   l               the TableModelListener
	*/
	@:overload public function removeTableModelListener(l : javax.swing.event.TableModelListener) : Void;
	
	/**
	* Returns an array of all the table model listeners
	* registered on this model.
	*
	* @return all of this model's <code>TableModelListener</code>s
	*         or an empty
	*         array if no table model listeners are currently registered
	*
	* @see #addTableModelListener
	* @see #removeTableModelListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function getTableModelListeners() : java.NativeArray<javax.swing.event.TableModelListener>;
	
	/**
	* Notifies all listeners that all cell values in the table's
	* rows may have changed. The number of rows may also have changed
	* and the <code>JTable</code> should redraw the
	* table from scratch. The structure of the table (as in the order of the
	* columns) is assumed to be the same.
	*
	* @see TableModelEvent
	* @see EventListenerList
	* @see javax.swing.JTable#tableChanged(TableModelEvent)
	*/
	@:overload public function fireTableDataChanged() : Void;
	
	/**
	* Notifies all listeners that the table's structure has changed.
	* The number of columns in the table, and the names and types of
	* the new columns may be different from the previous state.
	* If the <code>JTable</code> receives this event and its
	* <code>autoCreateColumnsFromModel</code>
	* flag is set it discards any table columns that it had and reallocates
	* default columns in the order they appear in the model. This is the
	* same as calling <code>setModel(TableModel)</code> on the
	* <code>JTable</code>.
	*
	* @see TableModelEvent
	* @see EventListenerList
	*/
	@:overload public function fireTableStructureChanged() : Void;
	
	/**
	* Notifies all listeners that rows in the range
	* <code>[firstRow, lastRow]</code>, inclusive, have been inserted.
	*
	* @param  firstRow  the first row
	* @param  lastRow   the last row
	*
	* @see TableModelEvent
	* @see EventListenerList
	*
	*/
	@:overload public function fireTableRowsInserted(firstRow : Int, lastRow : Int) : Void;
	
	/**
	* Notifies all listeners that rows in the range
	* <code>[firstRow, lastRow]</code>, inclusive, have been updated.
	*
	* @param firstRow  the first row
	* @param lastRow   the last row
	*
	* @see TableModelEvent
	* @see EventListenerList
	*/
	@:overload public function fireTableRowsUpdated(firstRow : Int, lastRow : Int) : Void;
	
	/**
	* Notifies all listeners that rows in the range
	* <code>[firstRow, lastRow]</code>, inclusive, have been deleted.
	*
	* @param firstRow  the first row
	* @param lastRow   the last row
	*
	* @see TableModelEvent
	* @see EventListenerList
	*/
	@:overload public function fireTableRowsDeleted(firstRow : Int, lastRow : Int) : Void;
	
	/**
	* Notifies all listeners that the value of the cell at
	* <code>[row, column]</code> has been updated.
	*
	* @param row  row of cell which has been updated
	* @param column  column of cell which has been updated
	* @see TableModelEvent
	* @see EventListenerList
	*/
	@:overload public function fireTableCellUpdated(row : Int, column : Int) : Void;
	
	/**
	* Forwards the given notification event to all
	* <code>TableModelListeners</code> that registered
	* themselves as listeners for this table model.
	*
	* @param e  the event to be forwarded
	*
	* @see #addTableModelListener
	* @see TableModelEvent
	* @see EventListenerList
	*/
	@:overload public function fireTableChanged(e : javax.swing.event.TableModelEvent) : Void;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this <code>AbstractTableModel</code>.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	*
	* You can specify the <code>listenerType</code> argument
	* with a class literal,
	* such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* model <code>m</code>
	* for its table model listeners with the following code:
	*
	* <pre>TableModelListener[] tmls = (TableModelListener[])(m.getListeners(TableModelListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this component,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getTableModelListeners
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Returns the number of columns in the model. A
	* <code>JTable</code> uses this method to determine how many columns it
	* should create and display by default.
	*
	* @return the number of columns in the model
	* @see #getRowCount
	*/
	@:overload public function getColumnCount() : Int;
	
	/**
	* Returns the value for the cell at <code>columnIndex</code> and
	* <code>rowIndex</code>.
	*
	* @param   rowIndex        the row whose value is to be queried
	* @param   columnIndex     the column whose value is to be queried
	* @return  the value Object at the specified cell
	*/
	@:overload public function getValueAt(rowIndex : Int, columnIndex : Int) : Dynamic;
	
	/**
	* Returns the number of rows in the model. A
	* <code>JTable</code> uses this method to determine how many rows it
	* should display.  This method should be quick, as it
	* is called frequently during rendering.
	*
	* @return the number of rows in the model
	* @see #getColumnCount
	*/
	@:overload public function getRowCount() : Int;
	
	
}
