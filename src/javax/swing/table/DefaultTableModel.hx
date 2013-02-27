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
extern class DefaultTableModel extends javax.swing.table.AbstractTableModel implements java.io.Serializable
{
	/**
	* The <code>Vector</code> of <code>Vectors</code> of
	* <code>Object</code> values.
	*/
	private var dataVector : java.util.Vector<Dynamic>;
	
	/** The <code>Vector</code> of column identifiers. */
	private var columnIdentifiers : java.util.Vector<Dynamic>;
	
	/**
	*  Constructs a default <code>DefaultTableModel</code>
	*  which is a table of zero columns and zero rows.
	*/
	@:overload public function new() : Void;
	
	/**
	*  Constructs a <code>DefaultTableModel</code> with
	*  <code>rowCount</code> and <code>columnCount</code> of
	*  <code>null</code> object values.
	*
	* @param rowCount           the number of rows the table holds
	* @param columnCount        the number of columns the table holds
	*
	* @see #setValueAt
	*/
	@:overload public function new(rowCount : Int, columnCount : Int) : Void;
	
	/**
	*  Constructs a <code>DefaultTableModel</code> with as many columns
	*  as there are elements in <code>columnNames</code>
	*  and <code>rowCount</code> of <code>null</code>
	*  object values.  Each column's name will be taken from
	*  the <code>columnNames</code> vector.
	*
	* @param columnNames       <code>vector</code> containing the names
	*                          of the new columns; if this is
	*                          <code>null</code> then the model has no columns
	* @param rowCount           the number of rows the table holds
	* @see #setDataVector
	* @see #setValueAt
	*/
	@:overload public function new(columnNames : java.util.Vector<Dynamic>, rowCount : Int) : Void;
	
	/**
	*  Constructs a <code>DefaultTableModel</code> with as many
	*  columns as there are elements in <code>columnNames</code>
	*  and <code>rowCount</code> of <code>null</code>
	*  object values.  Each column's name will be taken from
	*  the <code>columnNames</code> array.
	*
	* @param columnNames       <code>array</code> containing the names
	*                          of the new columns; if this is
	*                          <code>null</code> then the model has no columns
	* @param rowCount           the number of rows the table holds
	* @see #setDataVector
	* @see #setValueAt
	*/
	@:overload public function new(columnNames : java.NativeArray<Dynamic>, rowCount : Int) : Void;
	
	/**
	*  Constructs a <code>DefaultTableModel</code> and initializes the table
	*  by passing <code>data</code> and <code>columnNames</code>
	*  to the <code>setDataVector</code> method.
	*
	* @param data              the data of the table, a <code>Vector</code>
	*                          of <code>Vector</code>s of <code>Object</code>
	*                          values
	* @param columnNames       <code>vector</code> containing the names
	*                          of the new columns
	* @see #getDataVector
	* @see #setDataVector
	*/
	@:overload public function new(data : java.util.Vector<Dynamic>, columnNames : java.util.Vector<Dynamic>) : Void;
	
	/**
	*  Constructs a <code>DefaultTableModel</code> and initializes the table
	*  by passing <code>data</code> and <code>columnNames</code>
	*  to the <code>setDataVector</code>
	*  method. The first index in the <code>Object[][]</code> array is
	*  the row index and the second is the column index.
	*
	* @param data              the data of the table
	* @param columnNames       the names of the columns
	* @see #getDataVector
	* @see #setDataVector
	*/
	@:overload public function new(data : java.NativeArray<java.NativeArray<Dynamic>>, columnNames : java.NativeArray<Dynamic>) : Void;
	
	/**
	*  Returns the <code>Vector</code> of <code>Vectors</code>
	*  that contains the table's
	*  data values.  The vectors contained in the outer vector are
	*  each a single row of values.  In other words, to get to the cell
	*  at row 1, column 5: <p>
	*
	*  <code>((Vector)getDataVector().elementAt(1)).elementAt(5);</code><p>
	*
	* @return  the vector of vectors containing the tables data values
	*
	* @see #newDataAvailable
	* @see #newRowsAdded
	* @see #setDataVector
	*/
	@:overload public function getDataVector() : java.util.Vector<Dynamic>;
	
	/**
	*  Replaces the current <code>dataVector</code> instance variable
	*  with the new <code>Vector</code> of rows, <code>dataVector</code>.
	*  Each row is represented in <code>dataVector</code> as a
	*  <code>Vector</code> of <code>Object</code> values.
	*  <code>columnIdentifiers</code> are the names of the new
	*  columns.  The first name in <code>columnIdentifiers</code> is
	*  mapped to column 0 in <code>dataVector</code>. Each row in
	*  <code>dataVector</code> is adjusted to match the number of
	*  columns in <code>columnIdentifiers</code>
	*  either by truncating the <code>Vector</code> if it is too long,
	*  or adding <code>null</code> values if it is too short.
	*  <p>Note that passing in a <code>null</code> value for
	*  <code>dataVector</code> results in unspecified behavior,
	*  an possibly an exception.
	*
	* @param   dataVector         the new data vector
	* @param   columnIdentifiers     the names of the columns
	* @see #getDataVector
	*/
	@:overload public function setDataVector(dataVector : java.util.Vector<Dynamic>, columnIdentifiers : java.util.Vector<Dynamic>) : Void;
	
	/**
	*  Replaces the value in the <code>dataVector</code> instance
	*  variable with the values in the array <code>dataVector</code>.
	*  The first index in the <code>Object[][]</code>
	*  array is the row index and the second is the column index.
	*  <code>columnIdentifiers</code> are the names of the new columns.
	*
	* @param dataVector                the new data vector
	* @param columnIdentifiers the names of the columns
	* @see #setDataVector(Vector, Vector)
	*/
	@:overload public function setDataVector(dataVector : java.NativeArray<java.NativeArray<Dynamic>>, columnIdentifiers : java.NativeArray<Dynamic>) : Void;
	
	/**
	*  Equivalent to <code>fireTableChanged</code>.
	*
	* @param event  the change event
	*
	*/
	@:overload public function newDataAvailable(event : javax.swing.event.TableModelEvent) : Void;
	
	/**
	*  Ensures that the new rows have the correct number of columns.
	*  This is accomplished by  using the <code>setSize</code> method in
	*  <code>Vector</code> which truncates vectors
	*  which are too long, and appends <code>null</code>s if they
	*  are too short.
	*  This method also sends out a <code>tableChanged</code>
	*  notification message to all the listeners.
	*
	* @param e         this <code>TableModelEvent</code> describes
	*                           where the rows were added.
	*                           If <code>null</code> it assumes
	*                           all the rows were newly added
	* @see #getDataVector
	*/
	@:overload public function newRowsAdded(e : javax.swing.event.TableModelEvent) : Void;
	
	/**
	*  Equivalent to <code>fireTableChanged</code>.
	*
	*  @param event the change event
	*
	*/
	@:overload public function rowsRemoved(event : javax.swing.event.TableModelEvent) : Void;
	
	/*
	*  Sets the number of rows in the model.  If the new size is greater
	*  than the current size, new rows are added to the end of the model
	*  If the new size is less than the current size, all
	*  rows at index <code>rowCount</code> and greater are discarded. <p>
	*
	* @param   rowCount   the new number of rows
	* @see #setRowCount
	*/
	@:overload public function setNumRows(rowCount : Int) : Void;
	
	/**
	*  Sets the number of rows in the model.  If the new size is greater
	*  than the current size, new rows are added to the end of the model
	*  If the new size is less than the current size, all
	*  rows at index <code>rowCount</code> and greater are discarded. <p>
	*
	*  @see #setColumnCount
	* @since 1.3
	*/
	@:require(java3) @:overload public function setRowCount(rowCount : Int) : Void;
	
	/**
	*  Adds a row to the end of the model.  The new row will contain
	*  <code>null</code> values unless <code>rowData</code> is specified.
	*  Notification of the row being added will be generated.
	*
	* @param   rowData          optional data of the row being added
	*/
	@:overload public function addRow(rowData : java.util.Vector<Dynamic>) : Void;
	
	/**
	*  Adds a row to the end of the model.  The new row will contain
	*  <code>null</code> values unless <code>rowData</code> is specified.
	*  Notification of the row being added will be generated.
	*
	* @param   rowData          optional data of the row being added
	*/
	@:overload public function addRow(rowData : java.NativeArray<Dynamic>) : Void;
	
	/**
	*  Inserts a row at <code>row</code> in the model.  The new row
	*  will contain <code>null</code> values unless <code>rowData</code>
	*  is specified.  Notification of the row being added will be generated.
	*
	* @param   row             the row index of the row to be inserted
	* @param   rowData         optional data of the row being added
	* @exception  ArrayIndexOutOfBoundsException  if the row was invalid
	*/
	@:overload public function insertRow(row : Int, rowData : java.util.Vector<Dynamic>) : Void;
	
	/**
	*  Inserts a row at <code>row</code> in the model.  The new row
	*  will contain <code>null</code> values unless <code>rowData</code>
	*  is specified.  Notification of the row being added will be generated.
	*
	* @param   row      the row index of the row to be inserted
	* @param   rowData          optional data of the row being added
	* @exception  ArrayIndexOutOfBoundsException  if the row was invalid
	*/
	@:overload public function insertRow(row : Int, rowData : java.NativeArray<Dynamic>) : Void;
	
	/**
	*  Moves one or more rows from the inclusive range <code>start</code> to
	*  <code>end</code> to the <code>to</code> position in the model.
	*  After the move, the row that was at index <code>start</code>
	*  will be at index <code>to</code>.
	*  This method will send a <code>tableChanged</code> notification
	*  message to all the listeners. <p>
	*
	*  <pre>
	*  Examples of moves:
	*  <p>
	*  1. moveRow(1,3,5);
	*          a|B|C|D|e|f|g|h|i|j|k   - before
	*          a|e|f|g|h|B|C|D|i|j|k   - after
	*  <p>
	*  2. moveRow(6,7,1);
	*          a|b|c|d|e|f|G|H|i|j|k   - before
	*          a|G|H|b|c|d|e|f|i|j|k   - after
	*  <p>
	*  </pre>
	*
	* @param   start       the starting row index to be moved
	* @param   end         the ending row index to be moved
	* @param   to          the destination of the rows to be moved
	* @exception  ArrayIndexOutOfBoundsException  if any of the elements
	* would be moved out of the table's range
	*
	*/
	@:overload public function moveRow(start : Int, end : Int, to : Int) : Void;
	
	/**
	*  Removes the row at <code>row</code> from the model.  Notification
	*  of the row being removed will be sent to all the listeners.
	*
	* @param   row      the row index of the row to be removed
	* @exception  ArrayIndexOutOfBoundsException  if the row was invalid
	*/
	@:overload public function removeRow(row : Int) : Void;
	
	/**
	* Replaces the column identifiers in the model.  If the number of
	* <code>newIdentifier</code>s is greater than the current number
	* of columns, new columns are added to the end of each row in the model.
	* If the number of <code>newIdentifier</code>s is less than the current
	* number of columns, all the extra columns at the end of a row are
	* discarded. <p>
	*
	* @param   columnIdentifiers  vector of column identifiers.  If
	*                          <code>null</code>, set the model
	*                          to zero columns
	* @see #setNumRows
	*/
	@:overload public function setColumnIdentifiers(columnIdentifiers : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Replaces the column identifiers in the model.  If the number of
	* <code>newIdentifier</code>s is greater than the current number
	* of columns, new columns are added to the end of each row in the model.
	* If the number of <code>newIdentifier</code>s is less than the current
	* number of columns, all the extra columns at the end of a row are
	* discarded. <p>
	*
	* @param   newIdentifiers  array of column identifiers.
	*                          If <code>null</code>, set
	*                          the model to zero columns
	* @see #setNumRows
	*/
	@:overload public function setColumnIdentifiers(newIdentifiers : java.NativeArray<Dynamic>) : Void;
	
	/**
	*  Sets the number of columns in the model.  If the new size is greater
	*  than the current size, new columns are added to the end of the model
	*  with <code>null</code> cell values.
	*  If the new size is less than the current size, all columns at index
	*  <code>columnCount</code> and greater are discarded.
	*
	*  @param columnCount  the new number of columns in the model
	*
	*  @see #setColumnCount
	* @since 1.3
	*/
	@:require(java3) @:overload public function setColumnCount(columnCount : Int) : Void;
	
	/**
	*  Adds a column to the model.  The new column will have the
	*  identifier <code>columnName</code>, which may be null.  This method
	*  will send a
	*  <code>tableChanged</code> notification message to all the listeners.
	*  This method is a cover for <code>addColumn(Object, Vector)</code> which
	*  uses <code>null</code> as the data vector.
	*
	* @param   columnName the identifier of the column being added
	*/
	@:overload public function addColumn(columnName : Dynamic) : Void;
	
	/**
	*  Adds a column to the model.  The new column will have the
	*  identifier <code>columnName</code>, which may be null.
	*  <code>columnData</code> is the
	*  optional vector of data for the column.  If it is <code>null</code>
	*  the column is filled with <code>null</code> values.  Otherwise,
	*  the new data will be added to model starting with the first
	*  element going to row 0, etc.  This method will send a
	*  <code>tableChanged</code> notification message to all the listeners.
	*
	* @param   columnName the identifier of the column being added
	* @param   columnData       optional data of the column being added
	*/
	@:overload public function addColumn(columnName : Dynamic, columnData : java.util.Vector<Dynamic>) : Void;
	
	/**
	*  Adds a column to the model.  The new column will have the
	*  identifier <code>columnName</code>.  <code>columnData</code> is the
	*  optional array of data for the column.  If it is <code>null</code>
	*  the column is filled with <code>null</code> values.  Otherwise,
	*  the new data will be added to model starting with the first
	*  element going to row 0, etc.  This method will send a
	*  <code>tableChanged</code> notification message to all the listeners.
	*
	* @see #addColumn(Object, Vector)
	*/
	@:overload public function addColumn(columnName : Dynamic, columnData : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns the number of rows in this data table.
	* @return the number of rows in the model
	*/
	@:overload override public function getRowCount() : Int;
	
	/**
	* Returns the number of columns in this data table.
	* @return the number of columns in the model
	*/
	@:overload override public function getColumnCount() : Int;
	
	/**
	* Returns the column name.
	*
	* @return a name for this column using the string value of the
	* appropriate member in <code>columnIdentifiers</code>.
	* If <code>columnIdentifiers</code> does not have an entry
	* for this index, returns the default
	* name provided by the superclass.
	*/
	@:overload override public function getColumnName(column : Int) : String;
	
	/**
	* Returns true regardless of parameter values.
	*
	* @param   row             the row whose value is to be queried
	* @param   column          the column whose value is to be queried
	* @return                  true
	* @see #setValueAt
	*/
	@:overload override public function isCellEditable(row : Int, column : Int) : Bool;
	
	/**
	* Returns an attribute value for the cell at <code>row</code>
	* and <code>column</code>.
	*
	* @param   row             the row whose value is to be queried
	* @param   column          the column whose value is to be queried
	* @return                  the value Object at the specified cell
	* @exception  ArrayIndexOutOfBoundsException  if an invalid row or
	*               column was given
	*/
	@:overload override public function getValueAt(row : Int, column : Int) : Dynamic;
	
	/**
	* Sets the object value for the cell at <code>column</code> and
	* <code>row</code>.  <code>aValue</code> is the new value.  This method
	* will generate a <code>tableChanged</code> notification.
	*
	* @param   aValue          the new value; this can be null
	* @param   row             the row whose value is to be changed
	* @param   column          the column whose value is to be changed
	* @exception  ArrayIndexOutOfBoundsException  if an invalid row or
	*               column was given
	*/
	@:overload override public function setValueAt(aValue : Dynamic, row : Int, column : Int) : Void;
	
	/**
	* Returns a vector that contains the same objects as the array.
	* @param anArray  the array to be converted
	* @return  the new vector; if <code>anArray</code> is <code>null</code>,
	*                          returns <code>null</code>
	*/
	@:overload private static function convertToVector(anArray : java.NativeArray<Dynamic>) : java.util.Vector<Dynamic>;
	
	/**
	* Returns a vector of vectors that contains the same objects as the array.
	* @param anArray  the double array to be converted
	* @return the new vector of vectors; if <code>anArray</code> is
	*                          <code>null</code>, returns <code>null</code>
	*/
	@:overload private static function convertToVector(anArray : java.NativeArray<java.NativeArray<Dynamic>>) : java.util.Vector<Dynamic>;
	
	
}
