package javax.swing.event;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
* TableModelEvent is used to notify listeners that a table model
* has changed. The model event describes changes to a TableModel
* and all references to rows and columns are in the co-ordinate
* system of the model.
* Depending on the parameters used in the constructors, the TableModelevent
* can be used to specify the following types of changes: <p>
*
* <pre>
* TableModelEvent(source);              //  The data, ie. all rows changed
* TableModelEvent(source, HEADER_ROW);  //  Structure change, reallocate TableColumns
* TableModelEvent(source, 1);           //  Row 1 changed
* TableModelEvent(source, 3, 6);        //  Rows 3 to 6 inclusive changed
* TableModelEvent(source, 2, 2, 6);     //  Cell at (2, 6) changed
* TableModelEvent(source, 3, 6, ALL_COLUMNS, INSERT); // Rows (3, 6) were inserted
* TableModelEvent(source, 3, 6, ALL_COLUMNS, DELETE); // Rows (3, 6) were deleted
* </pre>
*
* It is possible to use other combinations of the parameters, not all of them
* are meaningful. By subclassing, you can add other information, for example:
* whether the event WILL happen or DID happen. This makes the specification
* of rows in DELETE events more useful but has not been included in
* the swing package as the JTable only needs post-event notification.
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
* @author Alan Chung
* @author Philip Milne
* @see TableModel
*/
extern class TableModelEvent extends java.util.EventObject
{
	/** Identifies the addtion of new rows or columns. */
	public static var INSERT(default, null) : Int;
	
	/** Identifies a change to existing data. */
	public static var UPDATE(default, null) : Int;
	
	/** Identifies the removal of rows or columns. */
	public static var DELETE(default, null) : Int;
	
	/** Identifies the header row. */
	public static var HEADER_ROW(default, null) : Int;
	
	/** Specifies all columns in a row or rows. */
	public static var ALL_COLUMNS(default, null) : Int;
	
	private var type : Int;
	
	private var firstRow : Int;
	
	private var lastRow : Int;
	
	private var column : Int;
	
	/**
	*  All row data in the table has changed, listeners should discard any state
	*  that was based on the rows and requery the <code>TableModel</code>
	*  to get the new row count and all the appropriate values.
	*  The <code>JTable</code> will repaint the entire visible region on
	*  receiving this event, querying the model for the cell values that are visible.
	*  The structure of the table ie, the column names, types and order
	*  have not changed.
	*/
	@:overload public function new(source : javax.swing.table.TableModel) : Void;
	
	/**
	*  This row of data has been updated.
	*  To denote the arrival of a completely new table with a different structure
	*  use <code>HEADER_ROW</code> as the value for the <code>row</code>.
	*  When the <code>JTable</code> receives this event and its
	*  <code>autoCreateColumnsFromModel</code>
	*  flag is set it discards any TableColumns that it had and reallocates
	*  default ones in the order they appear in the model. This is the
	*  same as calling <code>setModel(TableModel)</code> on the <code>JTable</code>.
	*/
	@:overload public function new(source : javax.swing.table.TableModel, row : Int) : Void;
	
	/**
	*  The data in rows [<I>firstRow</I>, <I>lastRow</I>] have been updated.
	*/
	@:overload public function new(source : javax.swing.table.TableModel, firstRow : Int, lastRow : Int) : Void;
	
	/**
	*  The cells in column <I>column</I> in the range
	*  [<I>firstRow</I>, <I>lastRow</I>] have been updated.
	*/
	@:overload public function new(source : javax.swing.table.TableModel, firstRow : Int, lastRow : Int, column : Int) : Void;
	
	/**
	*  The cells from (firstRow, column) to (lastRow, column) have been changed.
	*  The <I>column</I> refers to the column index of the cell in the model's
	*  co-ordinate system. When <I>column</I> is ALL_COLUMNS, all cells in the
	*  specified range of rows are considered changed.
	*  <p>
	*  The <I>type</I> should be one of: INSERT, UPDATE and DELETE.
	*/
	@:overload public function new(source : javax.swing.table.TableModel, firstRow : Int, lastRow : Int, column : Int, type : Int) : Void;
	
	/** Returns the first row that changed.  HEADER_ROW means the meta data,
	* ie. names, types and order of the columns.
	*/
	@:overload public function getFirstRow() : Int;
	
	/** Returns the last row that changed. */
	@:overload public function getLastRow() : Int;
	
	/**
	*  Returns the column for the event.  If the return
	*  value is ALL_COLUMNS; it means every column in the specified
	*  rows changed.
	*/
	@:overload public function getColumn() : Int;
	
	/**
	*  Returns the type of event - one of: INSERT, UPDATE and DELETE.
	*/
	@:overload public function getType() : Int;
	
	
}
