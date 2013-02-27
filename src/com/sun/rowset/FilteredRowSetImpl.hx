package com.sun.rowset;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The standard implementation of the <code>FilteredRowSet</code> interface. See the interface
* defintion for full behaviour and implementation requirements.
*
* @see javax.sql.rowset.Predicate
* @author Jonathan Bruce, Amit Handa
*/
extern class FilteredRowSetImpl extends com.sun.rowset.WebRowSetImpl implements java.io.Serializable implements java.lang.Cloneable implements javax.sql.rowset.FilteredRowSet
{
	/**
	* Construct a <code>FilteredRowSet</code>
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a <code>FilteredRowSet</code> with a specified synchronization
	* provider.
	*
	* @param env a Hashtable containing a desired synchconizatation provider
	* name-value pair.
	*/
	@:overload public function new(env : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Apply the predicate for this filter
	*
	* @param p an implementation of the predicate interface
	*/
	@:overload public function setFilter(p : javax.sql.rowset.Predicate) : Void;
	
	/**
	* Retrieve the filter active for this <code>FilteredRowSet</code>
	*
	* @return a <code>Predicate</code> object instance
	*/
	@:overload public function getFilter() : javax.sql.rowset.Predicate;
	
	/**
	* Over-riding <code>internalNext()</code> implementation. This method
	* applies the filter on the <code>RowSet</code> each time the cursor is advanced or
	* manipulated. It moves the cursor to the next row according to the set
	* predicate and returns <code>true</code> if the cursor is still within the rowset or
	* <code>false</code> if the cursor position is over the last row
	*
	* @return true if over the valid row in the rowset; false if over the last
	* row
	*/
	@:overload override private function internalNext() : Bool;
	
	/**
	* Over-riding <code>internalPrevious()</code> implementation. This method
	* applies the filter on the <code>RowSet</code> each time the cursor is moved backward or
	* manipulated. It moves the cursor to the previous row according to the set
	* predicate and returns <code>true</code> if the cursor is still within the rowset or
	* <code>false</code> if the cursor position is over the last row
	*
	* @return true if over the valid row in the rowset; false if over the last
	* row
	*/
	@:overload override private function internalPrevious() : Bool;
	
	/**
	* Over-riding <code>internalFirst()</code> implementation. This method
	* applies the filter on the <code>RowSet</code> each time the cursor is moved to first
	* row. It moves the cursor to the first row according to the set
	* predicate and returns <code>true</code> if the cursor is still within the rowset or
	* <code>false</code> if the cursor position is over the last row
	*
	* @return true if over the valid row in the rowset; false if over the last
	* row
	*/
	@:overload override private function internalFirst() : Bool;
	
	/**
	* Over-riding <code>internalLast()</code> implementation. This method
	* applies the filter on the <code>RowSet</code> each time the cursor is moved to
	* last row. It moves the cursor to the last row according to the set
	* predicate and returns <code>true</code> if the cursor is still within the rowset or
	* <code>false</code> if the cursor position is over the last row
	*
	* @return true if over the valid row in the rowset; false if over the last
	* row
	*/
	@:overload override private function internalLast() : Bool;
	
	/**
	* Moves the cursor the specified number of rows from the current
	* position, with a positive number moving it forward and a
	* negative number moving it backward.
	* <P>
	* If the number is positive, the cursor moves the specified number of
	* rows toward the end of the rowset, starting at the current row.
	* For example, the following command, in which
	* <code>crs</code> is a <code>CachedRowSetImpl</code> object with 100 rows,
	* moves the cursor forward four rows from the current row.  If the
	* current row is 50, the cursor would move to row 54.
	* <PRE><code>
	*
	*    crs.relative(4);
	*
	* </code> </PRE>
	* <P>
	* If the number is negative, the cursor moves back toward the beginning
	* the specified number of rows, starting at the current row.
	* For example, calling the method
	* <code>absolute(-1)</code> positions the cursor on the last row,
	* <code>absolute(-2)</code> moves it on the next-to-last row, and so on.
	* If the <code>CachedRowSetImpl</code> object <code>crs</code> has five rows,
	* the following command moves the cursor to the fourth-to-last row, which
	* in the case of a  rowset with five rows, is also the second row
	* from the beginning.
	* <PRE><code>
	*
	*    crs.absolute(-4);
	*
	* </code> </PRE>
	*
	* If the number specified is larger than the number of rows, the cursor
	* will move to the position after the last row. If the number specified
	* would move the cursor one or more rows before the first row, the cursor
	* moves to the position before the first row. In both cases, this method
	* throws an <code>SQLException</code>.
	* <P>
	* Note: Calling <code>absolute(1)</code> is the same as calling the
	* method <code>first()</code>.  Calling <code>absolute(-1)</code> is the
	* same as calling <code>last()</code>.  Calling <code>relative(0)</code>
	* is valid, but it does not change the cursor position.
	*
	* @param rows an <code>int</code> indicating the number of rows to move
	*             the cursor, starting at the current row; a positive number
	*             moves the cursor forward; a negative number moves the cursor
	*             backward; must not move the cursor past the valid
	*             rows
	* @return <code>true</code> if the cursor is on a row in this
	*         <code>CachedRowSetImpl</code> object; <code>false</code>
	*         otherwise
	* @throws SQLException if the rowset is type <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload override public function relative(rows : Int) : Bool;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the row number
	* specified.
	*
	* <p>If the number is positive, the cursor moves to an absolute row with
	* respect to the beginning of the rowset.  The first row is row 1, the second
	* is row 2, and so on.  For example, the following command, in which
	* <code>crs</code> is a <code>CachedRowSetImpl</code> object, moves the cursor
	* to the fourth row, starting from the beginning of the rowset.
	* <PRE><code>
	*
	*    crs.absolute(4);
	*
	* </code> </PRE>
	* <P>
	* If the number is negative, the cursor moves to an absolute row position
	* with respect to the end of the rowset.  For example, calling
	* <code>absolute(-1)</code> positions the cursor on the last row,
	* <code>absolute(-2)</code> moves it on the next-to-last row, and so on.
	* If the <code>CachedRowSetImpl</code> object <code>crs</code> has five rows,
	* the following command moves the cursor to the fourth-to-last row, which
	* in the case of a  rowset with five rows, is also the second row, counting
	* from the beginning.
	* <PRE><code>
	*
	*    crs.absolute(-4);
	*
	* </code> </PRE>
	*
	* If the number specified is larger than the number of rows, the cursor
	* will move to the position after the last row. If the number specified
	* would move the cursor one or more rows before the first row, the cursor
	* moves to the position before the first row.
	* <P>
	* Note: Calling <code>absolute(1)</code> is the same as calling the
	* method <code>first()</code>.  Calling <code>absolute(-1)</code> is the
	* same as calling <code>last()</code>.
	*
	* @param rows a positive number to indicate the row, starting row numbering from
	*        the first row, which is <code>1</code>; a negative number to indicate
	*        the row, starting row numbering from the last row, which is
	*        <code>-1</code>; it must not be <code>0</code>
	* @return <code>true</code> if the cursor is on the rowset; <code>false</code>
	*         otherwise
	* @throws SQLException if the given cursor position is <code>0</code> or the
	*            type of this rowset is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload override public function absolute(rows : Int) : Bool;
	
	/**
	* Moves the cursor for this <code>CachedRowSetImpl</code> object
	* to the insert row.  The current row in the rowset is remembered
	* while the cursor is on the insert row.
	* <P>
	* The insert row is a special row associated with an updatable
	* rowset.  It is essentially a buffer where a new row may
	* be constructed by calling the appropriate <code>updateXXX</code>
	* methods to assign a value to each column in the row.  A complete
	* row must be constructed; that is, every column that is not nullable
	* must be assigned a value.  In order for the new row to become part
	* of this rowset, the method <code>insertRow</code> must be called
	* before the cursor is moved back to the rowset.
	* <P>
	* Only certain methods may be invoked while the cursor is on the insert
	* row; many methods throw an exception if they are called while the
	* cursor is there.  In addition to the <code>updateXXX</code>
	* and <code>insertRow</code> methods, only the <code>getXXX</code> methods
	* may be called when the cursor is on the insert row.  A <code>getXXX</code>
	* method should be called on a column only after an <code>updateXXX</code>
	* method has been called on that column; otherwise, the value returned is
	* undetermined.
	*
	* @throws SQLException if this <code>CachedRowSetImpl</code> object is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function moveToInsertRow() : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>int</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateInt(columnIndex : Int, x : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>int</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateInt(columnName : String, x : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>boolean</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBoolean(columnIndex : Int, x : Bool) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>boolean</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBoolean(columnName : String, x : Bool) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>byte</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateByte(columnIndex : Int, x : java.StdTypes.Int8) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>byte</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateByte(columnName : String, x : java.StdTypes.Int8) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>short</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateShort(columnIndex : Int, x : java.StdTypes.Int16) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>short</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateShort(columnName : String, x : java.StdTypes.Int16) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>long</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateLong(columnIndex : Int, x : haxe.Int64) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>long</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateLong(columnName : String, x : haxe.Int64) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>float</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateFloat(columnIndex : Int, x : Single) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>float</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateFloat(columnName : String, x : Single) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>double</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateDouble(columnIndex : Int, x : Float) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>double</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateDouble(columnName : String, x : Float) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.math.BigDecimal</code> object.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBigDecimal(columnIndex : Int, x : java.math.BigDecimal) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.math.BigDecimal</code> object.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBigDecimal(columnName : String, x : java.math.BigDecimal) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>String</code> object.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to mark the row as updated.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called to insert the new row into this rowset and mark it
	* as inserted. Both of these methods must be called before the
	* cursor moves to another row.
	* <P>
	* The method <code>acceptChanges</code> must be called if the
	* updated values are to be written back to the underlying database.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateString(columnIndex : Int, x : String) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>String</code> object.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateString(columnName : String, x : String) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>byte</code> array.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBytes(columnIndex : Int, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>byte</code> array.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBytes(columnName : String, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Date</code> object.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, (3) the type of the designated column is not
	*            an SQL <code>DATE</code> or <code>TIMESTAMP</code>, or
	*            (4) this rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateDate(columnIndex : Int, x : java.sql.Date) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Date</code> object.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, (3) the type
	*            of the designated column is not an SQL <code>DATE</code> or
	*            <code>TIMESTAMP</code>, or (4) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateDate(columnName : String, x : java.sql.Date) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Time</code> object.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, (3) the type of the designated column is not
	*            an SQL <code>TIME</code> or <code>TIMESTAMP</code>, or
	*            (4) this rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateTime(columnIndex : Int, x : java.sql.Time) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Time</code> object.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, (3) the type
	*            of the designated column is not an SQL <code>TIME</code> or
	*            <code>TIMESTAMP</code>, or (4) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateTime(columnName : String, x : java.sql.Time) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Timestamp</code> object.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, (3) the type of the designated column is not
	*            an SQL <code>DATE</code>, <code>TIME</code>, or
	*            <code>TIMESTAMP</code>, or (4) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateTimestamp(columnIndex : Int, x : java.sql.Timestamp) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Timestamp</code> object.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if the given column index is out of bounds or
	*            the cursor is not on one of this rowset's rows or its
	*            insert row
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, (3) the type
	*            of the designated column is not an SQL <code>DATE</code>,
	*            <code>TIME</code>, or <code>TIMESTAMP</code>, or (4) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateTimestamp(columnName : String, x : java.sql.Timestamp) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* ASCII stream value.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @param length the number of one-byte ASCII characters in the stream
	* @throws SQLException if this method is invoked
	*/
	@:overload override public function updateAsciiStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* ASCII stream value.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @param length the number of one-byte ASCII characters in the stream
	*/
	@:overload override public function updateAsciiStream(columnName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.io.Reader</code> object.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value; must be a <code>java.io.Reader</code>
	*          containing <code>BINARY</code>, <code>VARBINARY</code>,
	*          <code>LONGVARBINARY</code>, <code>CHAR</code>, <code>VARCHAR</code>,
	*          or <code>LONGVARCHAR</code> data
	* @param length the length of the stream in characters
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, (3) the data in the stream is not a binary or
	*            character type, or (4) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateCharacterStream(columnIndex : Int, x : java.io.Reader, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.io.Reader</code> object.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param reader the new column value; must be a
	* <code>java.io.Reader</code> containing <code>BINARY</code>,
	* <code>VARBINARY</code>, <code>LONGVARBINARY</code>, <code>CHAR</code>,
	* <code>VARCHAR</code>, or <code>LONGVARCHAR</code> data
	* @param length the length of the stream in characters
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, (3) the data
	*            in the stream is not a binary or character type, or (4) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateCharacterStream(columnName : String, reader : java.io.Reader, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.io.InputStream</code> object.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value; must be a <code>java.io.InputStream</code>
	*          containing <code>BINARY</code>, <code>VARBINARY</code>, or
	*          <code>LONGVARBINARY</code> data
	* @param length the length of the stream in bytes
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, (3) the data in the stream is not binary, or
	*            (4) this rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBinaryStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.io.InputStream</code> object.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value; must be a <code>java.io.InputStream</code>
	*          containing <code>BINARY</code>, <code>VARBINARY</code>, or
	*          <code>LONGVARBINARY</code> data
	* @param length the length of the stream in bytes
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, (3) the data
	*            in the stream is not binary, or (4) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBinaryStream(columnName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Object</code> value.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateObject(columnIndex : Int, x : Dynamic) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Object</code> value.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateObject(columnName : String, x : Dynamic) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Object</code> value.  The <code>scale</code> parameter indicates
	* the number of digits to the right of the decimal point and is ignored
	* if the new column value is not a type that will be mapped to an SQL
	* <code>DECIMAL</code> or <code>NUMERIC</code> value.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param x the new column value
	* @param scale the number of digits to the right of the decimal point (for
	*              <code>DECIMAL</code> and <code>NUMERIC</code> types only)
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateObject(columnIndex : Int, x : Dynamic, scale : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>Object</code> value.  The <code>scale</code> parameter
	* indicates the number of digits to the right of the decimal point
	* and is ignored if the new column value is not a type that will be
	*  mapped to an SQL <code>DECIMAL</code> or <code>NUMERIC</code> value.
	* <P>
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @param scale the number of digits to the right of the decimal point (for
	*              <code>DECIMAL</code> and <code>NUMERIC</code> types only)
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateObject(columnName : String, x : Dynamic, scale : Int) : Void;
	
	/**
	* Inserts the contents of this <code>CachedRowSetImpl</code> object's insert
	* row into this rowset immediately following the current row.
	* If the current row is the
	* position after the last row or before the first row, the new row will
	* be inserted at the end of the rowset.  This method also notifies
	* listeners registered with this rowset that the row has changed.
	* <P>
	* The cursor must be on the insert row when this method is called.
	*
	* @throws SQLException if (1) the cursor is not on the insert row,
	*            (2) one or more of the non-nullable columns in the insert
	*            row has not been given a value, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function insertRow() : Void;
	
	
}
