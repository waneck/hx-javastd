package com.sun.rowset;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JoinRowSetImpl extends com.sun.rowset.WebRowSetImpl implements javax.sql.rowset.JoinRowSet
{
	/**
	* Constructor for <code>JoinRowSetImpl</code> class. Configures various internal data
	* structures to provide mechanisms required for <code>JoinRowSet</code> interface
	* implementation.
	*
	* @throws SQLException if an error occurs in instantiating an instance of
	* <code>JoinRowSetImpl</code>
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds the given <code>RowSet</code> object to this
	* <code>JoinRowSet</code> object.  If this
	* rowset is the first to be added to the <code>JoinRowSet</code>
	* object, it forms the basis for the <code>JOIN</code>
	* relationships to be formed.
	* <p>
	* This method should be used when the given <code>RowSet</code> object
	* already has a match column set.
	*
	* @param rowset the <code>RowSet</code> object that implements the
	*         <code>Joinable</code> interface and is to be added
	*         to this <code>JoinRowSet</code> object
	* @throws SQLException if an empty <code>RowSet</code> is added to the to the
	*         <code>JoinRowSet</code>; if a match column is not set; or if an
	*         additional <code>RowSet</code> violates the active <code>JOIN</code>
	* @see CachedRowSet#setMatchColumn
	*/
	@:overload public function addRowSet(rowset : javax.sql.rowset.Joinable) : Void;
	
	/**
	* Adds the given <code>RowSet</code> object to the <code>JOIN</code> relation
	* and sets the designated column as the match column.
	* If the given <code>RowSet</code>
	* object is the first to be added to this <code>JoinRowSet</code>
	* object, it forms the basis of the <code>JOIN</code> relationship to be formed
	* when other <code>RowSet</code> objects are added .
	* <P>
	* This method should be used when the given <code>RowSet</code> object
	* does not already have a match column set.
	*
	* @param rowset a <code>RowSet</code> object to be added to
	*         the <code>JOIN</code> relation; must implement the <code>Joinable</code>
	*         interface
	* @param columnIdx an <code>int</code> giving the index of the column to be set as
	*         the match column
	* @throws SQLException if (1) an empty <code>RowSet</code> object is added to this
	*         <code>JoinRowSet</code> object, (2) a match column has not been set,
	*         or (3) the <code>RowSet</code> object being added violates the active
	*         <code>JOIN</code>
	* @see CachedRowSet#unsetMatchColumn
	*/
	@:overload public function addRowSet(rowset : javax.sql.RowSet, columnIdx : Int) : Void;
	
	/**
	* Adds the given <code>RowSet</code> object to the <code>JOIN</code> relationship
	* and sets the designated column as the match column. If the given
	* <code>RowSet</code>
	* object is the first to be added to this <code>JoinRowSet</code>
	* object, it forms the basis of the <code>JOIN</code> relationship to be formed
	* when other <code>RowSet</code> objects are added .
	* <P>
	* This method should be used when the given <code>RowSet</code> object
	* does not already have a match column set.
	*
	* @param rowset a <code>RowSet</code> object to be added to
	*         the <code>JOIN</code> relation
	* @param columnName a <code>String</code> object giving the name of the column
	*        to be set as the match column; must implement the <code>Joinable</code>
	*        interface
	* @throws SQLException if (1) an empty <code>RowSet</code> object is added to this
	*         <code>JoinRowSet</code> object, (2) a match column has not been set,
	*         or (3) the <code>RowSet</code> object being added violates the active
	*         <code>JOIN</code>
	*/
	@:overload public function addRowSet(rowset : javax.sql.RowSet, columnName : String) : Void;
	
	/**
	* Adds the given <code>RowSet</code> objects to the <code>JOIN</code> relationship
	* and sets the designated columns as the match columns. If the first
	* <code>RowSet</code> object in the array of <code>RowSet</code> objects
	* is the first to be added to this <code>JoinRowSet</code>
	* object, it forms the basis of the <code>JOIN</code> relationship to be formed
	* when other <code>RowSet</code> objects are added.
	* <P>
	* The first <code>int</code>
	* in <i>columnIdx</i> is used to set the match column for the first
	* <code>RowSet</code> object in <i>rowset</i>, the second <code>int</code>
	* in <i>columnIdx</i> is used to set the match column for the second
	* <code>RowSet</code> object in <i>rowset</i>, and so on.
	* <P>
	* This method should be used when the given <code>RowSet</code> objects
	* do not already have match columns set.
	*
	* @param rowset an array of <code>RowSet</code> objects to be added to
	*         the <code>JOIN</code> relation; each <code>RowSet</code> object must
	*         implement the <code>Joinable</code> interface
	* @param columnIdx an array of <code>int</code> values designating the columns
	*        to be set as the
	*        match columns for the <code>RowSet</code> objects in <i>rowset</i>
	* @throws SQLException if the number of <code>RowSet</code> objects in
	*         <i>rowset</i> is not equal to the number of <code>int</code> values
	*         in <i>columnIdx</i>
	*/
	@:overload public function addRowSet(rowset : java.NativeArray<javax.sql.RowSet>, columnIdx : java.NativeArray<Int>) : Void;
	
	/**
	* Adds the given <code>RowSet</code> objects to the <code>JOIN</code> relationship
	* and sets the designated columns as the match columns. If the first
	* <code>RowSet</code> object in the array of <code>RowSet</code> objects
	* is the first to be added to this <code>JoinRowSet</code>
	* object, it forms the basis of the <code>JOIN</code> relationship to be formed
	* when other <code>RowSet</code> objects are added.
	* <P>
	* The first <code>String</code> object
	* in <i>columnName</i> is used to set the match column for the first
	* <code>RowSet</code> object in <i>rowset</i>, the second <code>String</code>
	* object in <i>columnName</i> is used to set the match column for the second
	* <code>RowSet</code> object in <i>rowset</i>, and so on.
	* <P>
	* This method should be used when the given <code>RowSet</code> objects
	* do not already have match columns set.
	*
	* @param rowset an array of <code>RowSet</code> objects to be added to
	*         the <code>JOIN</code> relation; each <code>RowSet</code> object must
	*         implement the <code>Joinable</code> interface
	* @param columnName an array of <code>String</code> objects designating the columns
	*        to be set as the
	*        match columns for the <code>RowSet</code> objects in <i>rowset</i>
	* @throws SQLException if the number of <code>RowSet</code> objects in
	*         <i>rowset</i> is not equal to the number of <code>String</code> objects
	*         in <i>columnName</i>, an empty <code>JdbcRowSet</code> is added to the
	*         <code>JoinRowSet</code>, if a match column is not set,
	*         or one or the <code>RowSet</code> objects in <i>rowset</i> violates the
	*         active <code>JOIN</code>
	*/
	@:overload public function addRowSet(rowset : java.NativeArray<javax.sql.RowSet>, columnName : java.NativeArray<String>) : Void;
	
	/**
	* Returns a Collection of the <code>RowSet</code> object instances
	* currently residing with the instance of the <code>JoinRowSet</code>
	* object instance. This should return the 'n' number of RowSet contained
	* within the JOIN and maintain any updates that have occoured while in
	* this union.
	*
	* @return A <code>Collection</code> of the added <code>RowSet</code>
	* object instances
	* @throws SQLException if an error occours generating a collection
	* of the originating RowSets contained within the JOIN.
	*/
	@:overload public function getRowSets() : java.util.Collection<Dynamic>;
	
	/**
	* Returns a string array of the RowSet names currently residing
	* with the <code>JoinRowSet</code> object instance.
	*
	* @return a string array of the RowSet names
	* @throws SQLException if an error occours retrieving the RowSet names
	* @see CachedRowSet#setTableName
	*/
	@:overload public function getRowSetNames() : java.NativeArray<String>;
	
	/**
	* Creates a separate <code>CachedRowSet</code> object that contains the data
	* in this <code>JoinRowSet</code> object.
	* <P>
	* If any updates or modifications have been applied to this <code>JoinRowSet</code>
	* object, the <code>CachedRowSet</code> object returned by this method will
	* not be able to persist
	* the changes back to the originating rows and tables in the
	* data source because the data may be from different tables. The
	* <code>CachedRowSet</code> instance returned should not
	* contain modification data, such as whether a row has been updated or what the
	* original values are.  Also, the <code>CachedRowSet</code> object should clear
	* its  properties pertaining to
	* its originating SQL statement. An application should reset the
	* SQL statement using the <code>RowSet.setCommand</code> method.
	* <p>
	* To persist changes back to the data source, the <code>JoinRowSet</code> object
	* calls the method <code>acceptChanges</code>. Implementations
	* can leverage the internal data and update tracking in their
	* implementations to interact with the <code>SyncProvider</code> to persist any
	* changes.
	*
	* @return a <code>CachedRowSet</code> object containing the contents of this
	*         <code>JoinRowSet</code> object
	* @throws SQLException if an error occurs assembling the <code>CachedRowSet</code>
	*         object
	* @see javax.sql.RowSet
	* @see javax.sql.rowset.CachedRowSet
	* @see javax.sql.rowset.spi.SyncProvider
	*/
	@:overload public function toCachedRowSet() : javax.sql.rowset.CachedRowSet;
	
	/**
	* Returns <code>true</code> if this <code>JoinRowSet</code> object supports
	* an SQL <code>CROSS_JOIN</code> and <code>false</code> if it does not.
	*
	* @return <code>true</code> if the CROSS_JOIN is supported; <code>false</code>
	*         otherwise
	*/
	@:overload public function supportsCrossJoin() : Bool;
	
	/**
	* Returns <code>true</code> if this <code>JoinRowSet</code> object supports
	* an SQL <code>INNER_JOIN</code> and <code>false</code> if it does not.
	*
	* @return true is the INNER_JOIN is supported; false otherwise
	*/
	@:overload public function supportsInnerJoin() : Bool;
	
	/**
	* Returns <code>true</code> if this <code>JoinRowSet</code> object supports
	* an SQL <code>LEFT_OUTER_JOIN</code> and <code>false</code> if it does not.
	*
	* @return true is the LEFT_OUTER_JOIN is supported; false otherwise
	*/
	@:overload public function supportsLeftOuterJoin() : Bool;
	
	/**
	* Returns <code>true</code> if this <code>JoinRowSet</code> object supports
	* an SQL <code>RIGHT_OUTER_JOIN</code> and <code>false</code> if it does not.
	*
	* @return true is the RIGHT_OUTER_JOIN is supported; false otherwise
	*/
	@:overload public function supportsRightOuterJoin() : Bool;
	
	/**
	* Returns <code>true</code> if this <code>JoinRowSet</code> object supports
	* an SQL <code>FULL_JOIN</code> and <code>false</code> if it does not.
	*
	* @return true is the FULL_JOIN is supported; false otherwise
	*/
	@:overload public function supportsFullJoin() : Bool;
	
	/**
	* Sets the type of SQL <code>JOIN</code> that this <code>JoinRowSet</code>
	* object will use. This method
	* allows an application to adjust the type of <code>JOIN</code> imposed
	* on tables contained within this <code>JoinRowSet</code> object and to do it
	* on the fly. The last <code>JOIN</code> type set determines the type of
	* <code>JOIN</code> to be performed.
	* <P>
	* Implementations should throw an <code>SQLException</code> if they do
	* not support the given <code>JOIN</code> type.
	*
	* @param type one of the standard <code>JoinRowSet</code> constants
	*        indicating the type of <code>JOIN</code>.  Must be one of the
	*        following:
	*            <code>JoinRowSet.CROSS_JOIN</code>
	*            <code>JoinRowSet.INNER_JOIN</code>
	*            <code>JoinRowSet.LEFT_OUTER_JOIN</code>
	*            <code>JoinRowSet.RIGHT_OUTER_JOIN</code>, or
	*            <code>JoinRowSet.FULL_JOIN</code>
	* @throws SQLException if an unsupported <code>JOIN</code> type is set
	*/
	@:overload public function setJoinType(type : Int) : Void;
	
	/**
	* Return a SQL-like description of the <code>WHERE</code> clause being used
	* in a <code>JoinRowSet</code> object instance. An implementation can describe
	* the <code>WHERE</code> clause of the SQL <code>JOIN</code> by supplying a <code>SQL</code>
	* strings description of <code>JOIN</code> or provide a textual description to assist
	* applications using a <code>JoinRowSet</code>.
	*
	* @return whereClause a textual or SQL descripition of the logical
	* <code>WHERE</code> cluase used in the <code>JoinRowSet</code> instance
	* @throws SQLException if an error occurs in generating a representation
	* of the <code>WHERE</code> clause.
	*/
	@:overload public function getWhereClause() : String;
	
	/**
	* Moves the cursor down one row from its current position and
	* returns <code>true</code> if the new cursor position is a
	* valid row.
	* The cursor for a new <code>ResultSet</code> object is initially
	* positioned before the first row. The first call to the method
	* <code>next</code> moves the cursor to the first row, making it
	* the current row; the second call makes the second row the
	* current row, and so on.
	*
	* <P>If an input stream from the previous row is open, it is
	* implicitly closed. The <code>ResultSet</code> object's warning
	* chain is cleared when a new row is read.
	*
	* @return <code>true</code> if the new current row is valid;
	*         <code>false</code> if there are no more rows
	* @throws SQLException if an error occurs or
	*            the cursor is not positioned in the rowset, before
	*            the first row, or after the last row
	*/
	@:overload public function next() : Bool;
	
	/**
	* Releases the current contents of this rowset, discarding  outstanding
	* updates.  The rowset contains no rows after the method
	* <code>release</code> is called. This method sends a
	* <code>RowSetChangedEvent</code> object to all registered listeners prior
	* to returning.
	*
	* @throws SQLException if an error occurs
	*/
	@:overload public function close() : Void;
	
	/**
	* Reports whether the last column read was SQL <code>NULL</code>.
	* Note that you must first call the method <code>getXXX</code>
	* on a column to try to read its value and then call the method
	* <code>wasNull</code> to determine whether the value was
	* SQL <code>NULL</code>.
	*
	* @return <code>true</code> if the value in the last column read
	*         was SQL <code>NULL</code>; <code>false</code> otherwise
	* @throws SQLException if an error occurs
	*/
	@:overload public function wasNull() : Bool;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>String</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds or
	*            the cursor is not on a valid row
	*/
	@:overload public function getString(columnIndex : Int) : String;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>boolean</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>false</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getBoolean(columnIndex : Int) : Bool;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>byte</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getByte(columnIndex : Int) : java.StdTypes.Int8;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>short</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getShort(columnIndex : Int) : java.StdTypes.Int16;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>short</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getInt(columnIndex : Int) : Int;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>long</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getLong(columnIndex : Int) : haxe.Int64;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>float</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getFloat(columnIndex : Int) : Single;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>double</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getDouble(columnIndex : Int) : Float;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.math.BigDecimal</code> object.
	* <P>
	* This method is deprecated; use the version of <code>getBigDecimal</code>
	* that does not take a scale parameter and returns a value with full
	* precision.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @param scale the number of digits to the right of the decimal point in the
	*        value returned
	* @return the column value with the specified number of digits to the right
	*         of the decimal point; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	* @deprecated
	*/
	@:overload public function getBigDecimal(columnIndex : Int, scale : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>byte array</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or the the value to be
	*            retrieved is not binary
	*/
	@:overload public function getBytes(columnIndex : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.sql.Date</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getDate(columnIndex : Int) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.sql.Time</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getTime(columnIndex : Int) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.sql.Timestamp</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getTimestamp(columnIndex : Int) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.sql.Timestamp</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getAsciiStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* A column value can be retrieved as a stream of Unicode characters
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large LONGVARCHAR values.  The JDBC driver will
	* do any necessary conversion from the database format into Unicode.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a get method implicitly closes the stream. . Also, a
	* stream may return 0 for available() whether there is data
	* available or not.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a Java input stream that delivers the database column value
	* as a stream of two byte Unicode characters.  If the value is SQL NULL
	* then the result is null.
	* @throws SQLException if an error occurs
	* @deprecated
	*/
	@:overload public function getUnicodeStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* A column value can be retrieved as a stream of uninterpreted bytes
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large LONGVARBINARY values.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a get method implicitly closes the stream. Also, a
	* stream may return 0 for available() whether there is data
	* available or not.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return a Java input stream that delivers the database column value
	* as a stream of uninterpreted bytes.  If the value is SQL NULL
	* then the result is null.
	* @throws SQLException if an error occurs
	*/
	@:overload public function getBinaryStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>String</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getString(columnName : String) : String;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>boolean</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>false</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getBoolean(columnName : String) : Bool;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>byte</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getByte(columnName : String) : java.StdTypes.Int8;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>short</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getShort(columnName : String) : java.StdTypes.Int16;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as an <code>int</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getInt(columnName : String) : Int;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>long</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getLong(columnName : String) : haxe.Int64;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>float</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getFloat(columnName : String) : Single;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>double</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getDouble(columnName : String) : Float;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.math.BigDecimal</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @param scale the number of digits to the right of the decimal point
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	* @deprecated use the method <code>getBigDecimal(String columnName)</code>
	*             instead
	*/
	@:overload public function getBigDecimal(columnName : String, scale : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a byte array.
	* The bytes represent the raw values returned by the driver.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getBytes(columnName : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.sql.Date</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getDate(columnName : String) : java.sql.Date;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.sql.Time</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getTime(columnName : String) : java.sql.Time;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.sql.Timestamp</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getTimestamp(columnName : String) : java.sql.Timestamp;
	
	/**
	* This method is not supported, and it will throw an
	* <code>UnsupportedOperationException</code> if it is called.
	* <P>
	* A column value can be retrieved as a stream of ASCII characters
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large LONGVARCHAR values.  The JDBC driver will
	* do any necessary conversion from the database format into ASCII format.
	*
	* <P><B>Note:</B> All the data in the returned stream must
	* be read prior to getting the value of any other column. The
	* next call to a <code>getXXX</code> method implicitly closes the stream.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of one-byte ASCII characters.  If the value is SQL
	*         <code>NULL</code>, the result is <code>null</code>.
	* @throws UnsupportedOperationException if this method is called
	*/
	@:overload public function getAsciiStream(columnName : String) : java.io.InputStream;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.io.InputStream</code> object.
	* A column value can be retrieved as a stream of Unicode characters
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.
	* The JDBC driver will do any necessary conversion from the database
	* format into Unicode.
	*
	* <P><B>Note:</B> All the data in the returned stream must
	* be read prior to getting the value of any other column. The
	* next call to a <code>getXXX</code> method implicitly closes the stream.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of two-byte Unicode characters.  If the value is
	*         SQL <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	* @deprecated use the method <code>getCharacterStream</code> instead
	*/
	@:overload public function getUnicodeStream(columnName : String) : java.io.InputStream;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.io.InputStream</code> object.
	* A column value can be retrieved as a stream of uninterpreted bytes
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large <code>LONGVARBINARY</code> values.
	*
	* <P><B>Note:</B> All the data in the returned stream must
	* be read prior to getting the value of any other column. The
	* next call to a get method implicitly closes the stream.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of uninterpreted bytes.  If the value is SQL
	*         <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload public function getBinaryStream(columnName : String) : java.io.InputStream;
	
	/* The first warning reported by calls on this <code>JoinRowSetImpl</code>
	* object is returned. Subsequent <code>JoinRowSetImpl</code> warnings will
	* be chained to this <code>SQLWarning</code>.
	*
	* <P>The warning chain is automatically cleared each time a new
	* row is read.
	*
	* <P><B>Note:</B> This warning chain only covers warnings caused
	* by <code>ResultSet</code> methods.  Any warning caused by statement
	* methods (such as reading OUT parameters) will be chained on the
	* <code>Statement</code> object.
	*
	* @return the first SQLWarning or null
	* @throws UnsupportedOperationException if this method is called
	*/
	@:overload public function getWarnings() : java.sql.SQLWarning;
	
	/**
	* Throws an <code>UnsupportedOperationException</code> if called.
	* <P>
	* After a call to this method, the <code>getWarnings</code> method
	* returns <code>null</code> until a new warning is reported for this
	* <code>JoinRowSetImpl</code> object.
	*
	* @throws UnsupportedOperationException if this method is called
	*/
	@:overload public function clearWarnings() : Void;
	
	/**
	* Retrieves the name of the SQL cursor used by this
	* <code>JoinRowSetImpl</code> object.
	*
	* <P>In SQL, a result table is retrieved through a cursor that is
	* named. The current row of a result can be updated or deleted
	* using a positioned update/delete statement that references the
	* cursor name. To insure that the cursor has the proper isolation
	* level to support an update operation, the cursor's <code>SELECT</code>
	* statement should be of the form 'select for update'. If the 'for update'
	* clause is omitted, positioned updates may fail.
	*
	* <P>JDBC supports this SQL feature by providing the name of the
	* SQL cursor used by a <code>ResultSet</code> object. The current row
	* of a result set is also the current row of this SQL cursor.
	*
	* <P><B>Note:</B> If positioned updates are not supported, an
	* <code>SQLException</code> is thrown.
	*
	* @return the SQL cursor name for this <code>JoinRowSetImpl</code> object's
	*         cursor
	* @throws SQLException if an error occurs
	*/
	@:overload public function getCursorName() : String;
	
	/**
	* Retrieves the <code>ResultSetMetaData</code> object that contains
	* information about this <code>CachedRowsSet</code> object. The
	* information includes the number of columns, the data type for each
	* column, and other properties for each column.
	*
	* @return the <code>ResultSetMetaData</code> object that describes this
	*         <code>JoinRowSetImpl</code> object's columns
	* @throws SQLException if an error occurs
	*/
	@:overload public function getMetaData() : java.sql.ResultSetMetaData;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as an
	* <code>Object</code> value.
	* <P>
	* The type of the <code>Object</code> will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC
	* specification.
	* <P>
	* This method may also be used to read datatabase-specific
	* abstract data types.
	* <P>
	* This implementation of the method <code>getObject</code> extends its
	* behavior so that it gets the attributes of an SQL structured type as
	* as an array of <code>Object</code> values.  This method also custom
	* maps SQL user-defined types to classes in the Java programming language.
	* When the specified column contains
	* a structured or distinct value, the behavior of this method is as
	* if it were a call to the method <code>getObject(columnIndex,
	* this.getStatement().getConnection().getTypeMap())</code>.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return a <code>java.lang.Object</code> holding the column value;
	*         if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or there is a problem getting
	*            the <code>Class</code> object for a custom mapping
	* @since 1.2
	*/
	@:require(java2) @:overload public function getObject(columnIndex : Int) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as an
	* <code>Object</code> value.
	* <P>
	* The type of the <code>Object</code> will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC
	* specification.
	* <P>
	* This method may also be used to read datatabase-specific
	* abstract data types.
	* <P>
	* This implementation of the method <code>getObject</code> extends its
	* behavior so that it gets the attributes of an SQL structured type as
	* as an array of <code>Object</code> values.  This method also custom
	* maps SQL user-defined types to classes
	* in the Java programming language. When the specified column contains
	* a structured or distinct value, the behavior of this method is as
	* if it were a call to the method <code>getObject(columnIndex,
	* this.getStatement().getConnection().getTypeMap())</code>.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*         is <code>2</code>, and so on; must be <code>1</code> or larger
	*         and equal to or less than the number of columns in the rowset
	* @param map a <code>java.util.Map</code> object showing the mapping
	*         from SQL type names to classes in the Java programming
	*         language
	* @return a <code>java.lang.Object</code> holding the column value;
	*         if the value is SQL <code>NULL</code>, the result is
	*         <code>null</code>
	* @throws SQLException if (1) the given column name does not match
	*         one of this rowset's column names, (2) the cursor is not
	*         on a valid row, or (3) there is a problem getting
	*         the <code>Class</code> object for a custom mapping
	*/
	@:overload public function getObject(columnIndex : Int, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as an
	* <code>Object</code> value.
	* <P>
	* The type of the <code>Object</code> will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC
	* specification.
	* <P>
	* This method may also be used to read datatabase-specific
	* abstract data types.
	* <P>
	* This implementation of the method <code>getObject</code> extends its
	* behavior so that it gets the attributes of an SQL structured type as
	* as an array of <code>Object</code> values.  This method also custom
	* maps SQL user-defined types to classes
	* in the Java programming language. When the specified column contains
	* a structured or distinct value, the behavior of this method is as
	* if it were a call to the method <code>getObject(columnIndex,
	* this.getStatement().getConnection().getTypeMap())</code>.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>java.lang.Object</code> holding the column value;
	*        if the value is SQL <code>NULL</code>, the result is
	*        <code>null</code>
	* @throws SQLException if (1) the given column name does not match
	*        one of this rowset's column names, (2) the cursor is not
	*        on a valid row, or (3) there is a problem getting
	*        the <code>Class</code> object for a custom mapping
	*/
	@:overload public function getObject(columnName : String) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as an <code>Object</code> in
	* the Java programming lanugage, using the given
	* <code>java.util.Map</code> object to custom map the value if
	* appropriate.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param map a <code>java.util.Map</code> object showing the mapping
	*            from SQL type names to classes in the Java programming
	*            language
	* @return an <code>Object</code> representing the SQL value
	* @throws SQLException if the given column index is out of bounds or
	*            the cursor is not on one of this rowset's rows or its
	*            insert row
	*/
	@:overload public function getObject(columnName : String, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.io.Reader</code> object.
	*
	* <P><B>Note:</B> All the data in the returned stream must
	* be read prior to getting the value of any other column. The
	* next call to a <code>getXXX</code> method implicitly closes the stream.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return a Java character stream that delivers the database column value
	*         as a <code>java.io.Reader</code> object.  If the value is
	*         SQL <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or there is a type mismatch
	*/
	@:overload public function getCharacterStream(columnIndex : Int) : java.io.Reader;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.io.Reader</code> object.
	*
	* <P><B>Note:</B> All the data in the returned stream must
	* be read prior to getting the value of any other column. The
	* next call to a <code>getXXX</code> method implicitly closes the stream.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>JoinRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of two-byte Unicode characters.  If the value is
	*         SQL <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or there is a type mismatch
	*/
	@:overload public function getCharacterStream(columnName : String) : java.io.Reader;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.math.BigDecimal</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return a <code>java.math.BigDecimal</code> value with full precision;
	*         if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getBigDecimal(columnIndex : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.math.BigDecimal</code> object.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>java.math.BigDecimal</code> value with full precision;
	*         if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload public function getBigDecimal(columnName : String) : java.math.BigDecimal;
	
	/**
	* Returns the number of rows in this <code>JoinRowSetImpl</code> object.
	*
	* @return number of rows in the rowset
	*/
	@:overload public function size() : Int;
	
	/**
	* Indicates whether the cursor is before the first row in this
	* <code>JoinRowSetImpl</code> object.
	*
	* @return <code>true</code> if the cursor is before the first row;
	*         <code>false</code> otherwise or if the rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload public function isBeforeFirst() : Bool;
	
	/**
	* Indicates whether the cursor is after the last row in this
	* <code>JoinRowSetImpl</code> object.
	*
	* @return <code>true</code> if the cursor is after the last row;
	*         <code>false</code> otherwise or if the rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload public function isAfterLast() : Bool;
	
	/**
	* Indicates whether the cursor is on the first row in this
	* <code>JoinRowSetImpl</code> object.
	*
	* @return <code>true</code> if the cursor is on the first row;
	*         <code>false</code> otherwise or if the rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload public function isFirst() : Bool;
	
	/**
	* Indicates whether the cursor is on the last row in this
	* <code>JoinRowSetImpl</code> object.
	* <P>
	* Note: Calling the method <code>isLast</code> may be expensive
	* because the JDBC driver might need to fetch ahead one row in order
	* to determine whether the current row is the last row in this rowset.
	*
	* @return <code>true</code> if the cursor is on the last row;
	*         <code>false</code> otherwise or if this rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload public function isLast() : Bool;
	
	/**
	* Moves this <code>JoinRowSetImpl</code> object's cursor to the front of
	* the rowset, just before the first row. This method has no effect if
	* this rowset contains no rows.
	*
	* @throws SQLException if an error occurs or the type of this rowset
	*            is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload public function beforeFirst() : Void;
	
	/**
	* Moves this <code>JoinRowSetImpl</code> object's cursor to the end of
	* the rowset, just after the last row. This method has no effect if
	* this rowset contains no rows.
	*
	* @throws SQLException if an error occurs
	*/
	@:overload public function afterLast() : Void;
	
	/**
	* Moves this <code>JoinRowSetImpl</code> object's cursor to the first row
	* and returns <code>true</code> if the operation was successful.  This
	* method also notifies registered listeners that the cursor has moved.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	*         <code>false</code> otherwise or if there are no rows in this
	*         <code>JoinRowSetImpl</code> object
	* @throws SQLException if the type of this rowset
	*            is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload public function first() : Bool;
	
	/**
	* Moves this <code>JoinRowSetImpl</code> object's cursor to the last row
	* and returns <code>true</code> if the operation was successful.  This
	* method also notifies registered listeners that the cursor has moved.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	*         <code>false</code> otherwise or if there are no rows in this
	*         <code>JoinRowSetImpl</code> object
	* @throws SQLException if the type of this rowset
	*            is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload public function last() : Bool;
	
	/**
	* Returns the number of the current row in this <code>JoinRowSetImpl</code>
	* object. The first row is number 1, the second number 2, and so on.
	*
	* @return the number of the current row;  <code>0</code> if there is no
	*         current row
	* @throws SQLException if an error occurs
	*/
	@:overload public function getRow() : Int;
	
	/**
	* Moves this <code>JoinRowSetImpl</code> object's cursor to the row number
	* specified.
	*
	* <p>If the number is positive, the cursor moves to an absolute row with
	* respect to the beginning of the rowset.  The first row is row 1, the second
	* is row 2, and so on.  For example, the following command, in which
	* <code>crs</code> is a <code>JoinRowSetImpl</code> object, moves the cursor
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
	* If the <code>JoinRowSetImpl</code> object <code>crs</code> has five rows,
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
	* @param row a positive number to indicate the row, starting row numbering from
	*        the first row, which is <code>1</code>; a negative number to indicate
	*        the row, starting row numbering from the last row, which is
	*        <code>-1</code>; must not be <code>0</code>
	* @return <code>true</code> if the cursor is on the rowset; <code>false</code>
	*         otherwise
	* @throws SQLException if the given cursor position is <code>0</code> or the
	*            type of this rowset is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload public function absolute(row : Int) : Bool;
	
	/**
	* Moves the cursor the specified number of rows from the current
	* position, with a positive number moving it forward and a
	* negative number moving it backward.
	* <P>
	* If the number is positive, the cursor moves the specified number of
	* rows toward the end of the rowset, starting at the current row.
	* For example, the following command, in which
	* <code>crs</code> is a <code>JoinRowSetImpl</code> object with 100 rows,
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
	* If the <code>JoinRowSetImpl</code> object <code>crs</code> has five rows,
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
	*         <code>JoinRowSetImpl</code> object; <code>false</code>
	*         otherwise
	* @throws SQLException if there are no rows in this rowset, the cursor is
	*         positioned either before the first row or after the last row, or
	*         the rowset is type <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload public function relative(rows : Int) : Bool;
	
	/**
	* Moves this <code>JoinRowSetImpl</code> object's cursor to the
	* previous row and returns <code>true</code> if the cursor is on
	* a valid row or <code>false</code> if it is not.
	* This method also notifies all listeners registered with this
	* <code>JoinRowSetImpl</code> object that its cursor has moved.
	* <P>
	* Note: calling the method <code>previous()</code> is not the same
	* as calling the method <code>relative(-1)</code>.  This is true
	* because it is possible to call <code>previous()</code> from the insert
	* row, from after the last row, or from the current row, whereas
	* <code>relative</code> may only be called from the current row.
	* <P>
	* The method <code>previous</code> may used in a <code>while</code>
	* loop to iterate through a rowset starting after the last row
	* and moving toward the beginning. The loop ends when <code>previous</code>
	* returns <code>false</code>, meaning that there are no more rows.
	* For example, the following code fragment retrieves all the data in
	* the <code>JoinRowSetImpl</code> object <code>crs</code>, which has
	* three columns.  Note that the cursor must initially be positioned
	* after the last row so that the first call to the method
	* <code>previous</code> places the cursor on the last line.
	* <PRE> <code>
	*
	*     crs.afterLast();
	*     while (previous()) {
	*         String name = crs.getString(1);
	*         int age = crs.getInt(2);
	*         short ssn = crs.getShort(3);
	*         System.out.println(name + "   " + age + "   " + ssn);
	*     }
	*
	* </code> </PRE>
	* This method throws an <code>SQLException</code> if the cursor is not
	* on a row in the rowset, before the first row, or after the last row.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	*         <code>false</code> if it is before the first row or after the
	*         last row
	* @throws SQLException if the cursor is not on a valid position or the
	*           type of this rowset is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload public function previous() : Bool;
	
	/**
	* Returns the index of the column whose name is <i>columnName</i>.
	*
	* @param columnName a <code>String</code> object giving the name of the
	*        column for which the index will be returned; the name must
	*        match the SQL name of a column in this <code>JoinRowSet</code>
	*        object, ignoring case
	* @throws SQLException if the given column name does not match one of the
	*         column names for this <code>JoinRowSet</code> object
	*/
	@:overload public function findColumn(columnName : String) : Int;
	
	/**
	* Indicates whether the current row of this <code>JoinRowSetImpl</code>
	* object has been updated.  The value returned
	* depends on whether this rowset can detect updates: <code>false</code>
	* will always be returned if it does not detect updates.
	*
	* @return <code>true</code> if the row has been visibly updated
	*         by the owner or another and updates are detected;
	*         <code>false</code> otherwise
	* @throws SQLException if the cursor is on the insert row or not
	*            on a valid row
	*
	* @see DatabaseMetaData#updatesAreDetected
	*/
	@:overload public function rowUpdated() : Bool;
	
	/**
	* Indicates whether the designated column of the current row of
	* this <code>JoinRowSetImpl</code> object has been updated. The
	* value returned depends on whether this rowset can detcted updates:
	* <code>false</code> will always be returned if it does not detect updates.
	*
	* @return <code>true</code> if the column updated
	*          <code>false</code> otherwse
	* @throws SQLException if the cursor is on the insert row or not
	*          on a valid row
	* @see DatabaseMetaData#updatesAreDetected
	*/
	@:overload public function columnUpdated(indexColumn : Int) : Bool;
	
	/**
	* Indicates whether the current row has been inserted.  The value returned
	* depends on whether or not the rowset can detect visible inserts.
	*
	* @return <code>true</code> if a row has been inserted and inserts are detected;
	*         <code>false</code> otherwise
	* @throws SQLException if the cursor is on the insert row or not
	*            not on a valid row
	*
	* @see DatabaseMetaData#insertsAreDetected
	*/
	@:overload public function rowInserted() : Bool;
	
	/**
	* Indicates whether the current row has been deleted.  A deleted row
	* may leave a visible "hole" in a rowset.  This method can be used to
	* detect such holes if the rowset can detect deletions. This method
	* will always return <code>false</code> if this rowset cannot detect
	* deletions.
	*
	* @return <code>true</code> if (1)the current row is blank, indicating that
	*         the row has been deleted, and (2)deletions are detected;
	*         <code>false</code> otherwise
	* @throws SQLException if the cursor is on a valid row in this rowset
	* @see DatabaseMetaData#deletesAreDetected
	*/
	@:overload public function rowDeleted() : Bool;
	
	/**
	* Sets the designated nullable column in the current row or the
	* insert row of this <code>JoinRowSetImpl</code> object with
	* <code>null</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset; however, another method must be called to complete
	* the update process. If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to mark the row as updated
	* and to notify listeners that the row has changed.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called to insert the new row into this rowset and to notify
	* listeners that a row has changed.
	* <P>
	* In order to propagate updates in this rowset to the underlying
	* data source, an application must call the method acceptChanges
	* after it calls either <code>updateRow</code> or <code>insertRow</code>.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateNull(columnIndex : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBoolean(columnIndex : Int, x : Bool) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateByte(columnIndex : Int, x : java.StdTypes.Int8) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateShort(columnIndex : Int, x : java.StdTypes.Int16) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateInt(columnIndex : Int, x : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateLong(columnIndex : Int, x : haxe.Int64) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateFloat(columnIndex : Int, x : Single) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateDouble(columnIndex : Int, x : Float) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBigDecimal(columnIndex : Int, x : java.math.BigDecimal) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateString(columnIndex : Int, x : String) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBytes(columnIndex : Int, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateDate(columnIndex : Int, x : java.sql.Date) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateTime(columnIndex : Int, x : java.sql.Time) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateTimestamp(columnIndex : Int, x : java.sql.Timestamp) : Void;
	
	/*
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	* @throws UnsupportedOperationException if this method is invoked
	*/
	@:overload public function updateAsciiStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBinaryStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateCharacterStream(columnIndex : Int, x : java.io.Reader, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateObject(columnIndex : Int, x : Dynamic, scale : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateObject(columnIndex : Int, x : Dynamic) : Void;
	
	/**
	* Sets the designated nullable column in the current row or the
	* insert row of this <code>JoinRowSetImpl</code> object with
	* <code>null</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateNull(columnName : String) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBoolean(columnName : String, x : Bool) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateByte(columnName : String, x : java.StdTypes.Int8) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateShort(columnName : String, x : java.StdTypes.Int16) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateInt(columnName : String, x : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateLong(columnName : String, x : haxe.Int64) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateFloat(columnName : String, x : Single) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateDouble(columnName : String, x : Float) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBigDecimal(columnName : String, x : java.math.BigDecimal) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateString(columnName : String, x : String) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBytes(columnName : String, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateDate(columnName : String, x : java.sql.Date) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateTime(columnName : String, x : java.sql.Time) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateTimestamp(columnName : String, x : java.sql.Timestamp) : Void;
	
	/**
	* Unsupported; throws an <code>UnsupportedOperationException</code>
	* if called.
	* <P>
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	* @throws UnsupportedOperationException if this method is invoked
	*/
	@:overload public function updateAsciiStream(columnName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateBinaryStream(columnName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	* @param x the new column value; must be a <code>java.io.Reader</code>
	*          containing <code>BINARY</code>, <code>VARBINARY</code>,
	*          <code>LONGVARBINARY</code>, <code>CHAR</code>, <code>VARCHAR</code>,
	*          or <code>LONGVARCHAR</code> data
	* @param length the length of the stream in characters
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, (3) the data
	*            in the stream is not a binary or character type, or (4) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateCharacterStream(columnName : String, x : java.io.Reader, length : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	* @throws SQLException if the given column index is out of bounds or
	*            the cursor is not on one of this rowset's rows or its
	*            insert row
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateObject(columnName : String, x : Dynamic, scale : Int) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
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
	@:overload public function updateObject(columnName : String, x : Dynamic) : Void;
	
	/**
	* Inserts the contents of this <code>JoinRowSetImpl</code> object's insert
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
	@:overload public function insertRow() : Void;
	
	/**
	* Marks the current row of this <code>JoinRowSetImpl</code> object as
	* updated and notifies listeners registered with this rowset that the
	* row has changed.
	* <P>
	* This method  cannot be called when the cursor is on the insert row, and
	* it should be called before the cursor moves to another row.  If it is
	* called after the cursor moves to another row, this method has no effect,
	* and the updates made before the cursor moved will be lost.
	*
	* @throws SQLException if the cursor is on the insert row or this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateRow() : Void;
	
	/**
	* Deletes the current row from this <code>JoinRowSetImpl</code> object and
	* notifies listeners registered with this rowset that a row has changed.
	* This method cannot be called when the cursor is on the insert row.
	* <P>
	* This method marks the current row as deleted, but it does not delete
	* the row from the underlying data source.  The method
	* <code>acceptChanges</code> must be called to delete the row in
	* the data source.
	*
	* @throws SQLException if (1) this method is called when the cursor
	*            is on the insert row, before the first row, or after the
	*            last row or (2) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function deleteRow() : Void;
	
	/**
	* Sets the current row with its original value and marks the row as
	* not updated, thus undoing any changes made to the row since the
	* last call to the methods <code>updateRow</code> or <code>deleteRow</code>.
	* This method should be called only when the cursor is on a row in
	* this rowset.
	*
	* @throws SQLException if the cursor is on the insert row, before the
	*            first row, or after the last row
	*/
	@:overload public function refreshRow() : Void;
	
	/**
	* Rolls back any updates made to the current row of this
	* <code>JoinRowSetImpl</code> object and notifies listeners that
	* a row has changed.  To have an effect, this method
	* must be called after an <code>updateXXX</code> method has been
	* called and before the method <code>updateRow</code> has been called.
	* If no updates have been made or the method <code>updateRow</code>
	* has already been called, this method has no effect.
	* <P>
	* After <code>updateRow</code> is called it is the
	* <code>cancelRowUpdates</code> has no affect on the newly
	* inserted values. The method <code>cancelRowInsert</code> can
	* be used to remove any rows inserted into the RowSet.
	*
	* @throws SQLException if the cursor is on the insert row, before the
	*            first row, or after the last row
	*/
	@:overload public function cancelRowUpdates() : Void;
	
	/**
	* Moves the cursor for this <code>JoinRowSetImpl</code> object
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
	* @throws SQLException if this <code>JoinRowSetImpl</code> object is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function moveToInsertRow() : Void;
	
	/**
	* Moves the cursor for this <code>JoinRowSetImpl</code> object to
	* the current row.  The current row is the row the cursor was on
	* when the method <code>moveToInsertRow</code> was called.
	* <P>
	* Calling this method has no effect unless it is called while the
	* cursor is on the insert row.
	*
	* @throws SQLException if an error occurs
	*/
	@:overload public function moveToCurrentRow() : Void;
	
	/**
	* Returns <code>null</code>.
	*
	* @return <code>null</code>
	* @throws SQLException if an error occurs
	*/
	@:overload public function getStatement() : java.sql.Statement;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as a <code>Ref</code> object
	* in the Java programming lanugage.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a <code>Ref</code> object representing an SQL<code> REF</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>REF</code> value
	*/
	@:overload public function getRef(columnIndex : Int) : java.sql.Ref;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as a <code>Blob</code> object
	* in the Java programming lanugage.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a <code>Blob</code> object representing an SQL <code>BLOB</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>BLOB</code> value
	*/
	@:overload public function getBlob(columnIndex : Int) : java.sql.Blob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as a <code>Clob</code> object
	* in the Java programming lanugage.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a <code>Clob</code> object representing an SQL <code>CLOB</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>CLOB</code> value
	*/
	@:overload public function getClob(columnIndex : Int) : java.sql.Clob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as an <code>Array</code> object
	* in the Java programming lanugage.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return an <code>Array</code> object representing an SQL
	*         <code>ARRAY</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>ARRAY</code> value
	*/
	@:overload public function getArray(columnIndex : Int) : java.sql.Array;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as a <code>Ref</code> object
	* in the Java programming lanugage.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>Ref</code> object representing an SQL<code> REF</code> value
	* @throws SQLException  if (1) the given column name is not the name
	*         of a column in this rowset, (2) the cursor is not on one of
	*         this rowset's rows or its insert row, or (3) the column value
	*         is not an SQL <code>REF</code> value
	*/
	@:overload public function getRef(columnName : String) : java.sql.Ref;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as a <code>Blob</code> object
	* in the Java programming lanugage.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>Blob</code> object representing an SQL
	*        <code>BLOB</code> value
	* @throws SQLException if (1) the given column name is not the name of
	*        a column in this rowset, (2) the cursor is not on one of
	*        this rowset's rows or its insert row, or (3) the designated
	*        column does not store an SQL <code>BLOB</code> value
	*/
	@:overload public function getBlob(columnName : String) : java.sql.Blob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as a <code>Clob</code> object
	* in the Java programming lanugage.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>Clob</code> object representing an SQL
	*         <code>CLOB</code> value
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>CLOB</code> value
	*/
	@:overload public function getClob(columnName : String) : java.sql.Clob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>JoinRowSetImpl</code> object as an <code>Array</code> object
	* in the Java programming lanugage.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return an <code>Array</code> object representing an SQL
	*        <code>ARRAY</code> value
	* @throws SQLException if (1) the given column name is not the name of
	*        a column in this rowset, (2) the cursor is not on one of
	*        this rowset's rows or its insert row, or (3) the designated
	*        column does not store an SQL <code>ARRAY</code> value
	*/
	@:overload public function getArray(columnName : String) : java.sql.Array;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a <code>java.sql.Date</code>
	* object, using the given <code>Calendar</code> object to construct an
	* appropriate millisecond value for the date.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @param cal the <code>java.util.Calendar</code> object to use in
	*            constructing the date
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>DATE</code> or
	*            <code>TIMESTAMP</code> value
	*/
	@:overload public function getDate(columnIndex : Int, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a <code>java.sql.Date</code>
	* object, using the given <code>Calendar</code> object to construct an
	* appropriate millisecond value for the date.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param cal the <code>java.util.Calendar</code> object to use in
	*            constructing the date
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>DATE</code> or
	*            <code>TIMESTAMP</code> value
	*/
	@:overload public function getDate(columnName : String, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a <code>java.sql.Time</code>
	* object, using the given <code>Calendar</code> object to construct an
	* appropriate millisecond value for the date.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @param cal the <code>java.util.Calendar</code> object to use in
	*            constructing the date
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>TIME</code> or
	*            <code>TIMESTAMP</code> value
	*/
	@:overload public function getTime(columnIndex : Int, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a <code>java.sql.Time</code>
	* object, using the given <code>Calendar</code> object to construct an
	* appropriate millisecond value for the date.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param cal the <code>java.util.Calendar</code> object to use in
	*            constructing the date
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>TIME</code> or
	*            <code>TIMESTAMP</code> value
	*/
	@:overload public function getTime(columnName : String, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a <code>java.sql.Timestamp</code>
	* object, using the given <code>Calendar</code> object to construct an
	* appropriate millisecond value for the date.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @param cal the <code>java.util.Calendar</code> object to use in
	*            constructing the date
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>TIME</code> or
	*            <code>TIMESTAMP</code> value
	*/
	@:overload public function getTimestamp(columnIndex : Int, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>JoinRowSetImpl</code> object as a
	* <code>java.sql.Timestamp</code> object, using the given
	* <code>Calendar</code> object to construct an appropriate
	* millisecond value for the date.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param cal the <code>java.util.Calendar</code> object to use in
	*            constructing the date
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>DATE</code>,
	*            <code>TIME</code>, or <code>TIMESTAMP</code> value
	*/
	@:overload public function getTimestamp(columnName : String, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* Sets the metadata for this <code>JoinRowSetImpl</code> object
	* with the given <code>RowSetMetaData</code> object.
	*
	* @param md a <code>RowSetMetaData</code> object instance containing
	*            metadata about the columsn in the rowset
	* @throws SQLException if invalid meta data is supplied to the
	*            rowset
	*/
	@:overload public function setMetaData(md : javax.sql.RowSetMetaData) : Void;
	
	@:overload public function getOriginal() : java.sql.ResultSet;
	
	/**
	* Returns a result set containing the original value of the rowset.
	* The cursor is positioned before the first row in the result set.
	* Only rows contained in the result set returned by getOriginal()
	* are said to have an original value.
	*
	* @return the original result set of the rowset
	* @throws SQLException if an error occurs produce the
	*           <code>ResultSet</code> object
	*/
	@:overload public function getOriginalRow() : java.sql.ResultSet;
	
	/**
	* Returns a result set containing the original value of the current
	* row only.
	*
	* @throws SQLException if there is no current row
	* @see #setOriginalRow
	*/
	@:overload public function setOriginalRow() : Void;
	
	/**
	* Returns the columns that make a key to uniquely identify a
	* row in this <code>JoinRowSetImpl</code> object.
	*
	* @return an array of column number that constites a primary
	*           key for this rowset. This array should be empty
	*           if no columns is representitive of a primary key
	* @throws SQLException if the rowset is empty or no columns
	*           are designated as primary keys
	* @see #setKeyColumns
	*/
	@:overload public function getKeyColumns() : java.NativeArray<Int>;
	
	/**
	* Sets this <code>JoinRowSetImpl</code> object's
	* <code>keyCols</code> field with the given array of column
	* numbers, which forms a key for uniquely identifying a row
	* in this rowset.
	*
	* @param cols an array of <code>int</code> indicating the
	*        columns that form a primary key for this
	*        <code>JoinRowSetImpl</code> object; every
	*        element in the array must be greater than
	*        <code>0</code> and less than or equal to the number
	*        of columns in this rowset
	* @throws SQLException if any of the numbers in the
	*            given array is not valid for this rowset
	* @see #getKeyColumns
	*/
	@:overload public function setKeyColumns(cols : java.NativeArray<Int>) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Ref</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param ref the <code>java.sql.Ref</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateRef(columnIndex : Int, ref : java.sql.Ref) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Ref</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*        to be updated; must match one of the column names in this
	*        <code>JoinRowSetImpl</code> object
	* @param ref the <code>java.sql.Ref</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column name is not valid,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateRef(columnName : String, ref : java.sql.Ref) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Clob</code> object.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param c the <code>java.sql.Clob</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateClob(columnIndex : Int, c : java.sql.Clob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Clob</code> object.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*        to be updated; must match one of the column names in this
	*        <code>JoinRowSetImpl</code> object
	* @param c the <code>java.sql.Clob</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column name is not valid,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateClob(columnName : String, c : java.sql.Clob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Blob</code> value.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param b the <code>java.sql.Blob</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateBlob(columnIndex : Int, b : java.sql.Blob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Blob</code> object.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*        to be updated; must match one of the column names in this
	*        <code>JoinRowSetImpl</code> object
	* @param b the <code>java.sql.Blob</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column name is not valid,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateBlob(columnName : String, b : java.sql.Blob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Array</code> object.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param a the <code>java.sql.Array</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateArray(columnIndex : Int, a : java.sql.Array) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JoinRowSetImpl</code> object with the given
	* <code>Array</code> object.
	* <P>
	* This method updates a column value in the current row or the insert
	* row of this rowset, but it does not update the database.
	* If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Either of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*        to be updated; must match one of the column names in this
	*        <code>JoinRowSetImpl</code> object
	* @param a the <code>java.sql.Array</code> object that will be set as
	*         the new column value
	* @throws SQLException if (1) the given column name is not valid,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateArray(columnName : String, a : java.sql.Array) : Void;
	
	/**
	* Populates this <code>JoinRowSetImpl</code> object with data.
	* This form of the method uses the rowset's user, password, and url or
	* data source name properties to create a database
	* connection.  If properties that are needed
	* have not been set, this method will throw an exception.
	* <P>
	* Another form of this method uses an existing JDBC <code>Connection</code>
	* object instead of creating a new one; therefore, it ignores the
	* properties used for establishing a new connection.
	* <P>
	* The query specified by the command property is executed to create a
	* <code>ResultSet</code> object from which to retrieve data.
	* The current contents of the rowset are discarded, and the
	* rowset's metadata is also (re)set.  If there are outstanding updates,
	* they are also ignored.
	* <P>
	* The method <code>execute</code> closes any database connections that it
	* creates.
	*
	* @throws SQLException if an error occurs or the
	*                         necessary properties have not been set
	*/
	@:overload public function execute() : Void;
	
	/**
	* Populates this <code>JoinRowSetImpl</code> object with data,
	* using the given connection to produce the result set from
	* which data will be read.  A second form of this method,
	* which takes no arguments, uses the values from this rowset's
	* user, password, and either url or data source properties to
	* create a new database connection. The form of <code>execute</code>
	* that is given a connection ignores these properties.
	*
	*  @param conn A standard JDBC <code>Connection</code> object with valid
	*           properties that the <code>JoinRowSet</code> implementation
	*           can pass to a synchronization provider to establish a
	*           connection to the datasource
	* @throws SQLException if an invalid <code>Connection</code> is supplied
	*           or an error occurs in establishing the connection to the
	*           data soure
	* @see java.sql.Connection
	*/
	@:overload public function execute(conn : java.sql.Connection) : Void;
	
	/**
	* Provide interface coverage for getURL(int) in ResultSet->RowSet
	*/
	@:overload public function getURL(columnIndex : Int) : java.net.URL;
	
	/**
	* Provide interface coverage for getURL(String) in ResultSet->RowSet
	*/
	@:overload public function getURL(columnName : String) : java.net.URL;
	
	/**
	* Creates a new <code>WebRowSet</code> object, populates it with the
	* data in the given <code>ResultSet</code> object, and writes it
	* to the given <code>java.io.Writer</code> object in XML format.
	*
	* @throws SQLException if an error occurs writing out the rowset
	*          contents to XML
	*/
	@:overload override public function writeXml(rs : java.sql.ResultSet, writer : java.io.Writer) : Void;
	
	/**
	* Writes this <code>JoinRowSet</code> object to the given
	* <code>java.io.Writer</code> object in XML format. In
	* addition to the rowset's data, its properties and metadata
	* are also included.
	*
	* @throws SQLException if an error occurs writing out the rowset
	*          contents to XML
	*/
	@:overload override public function writeXml(writer : java.io.Writer) : Void;
	
	/**
	* Reads this <code>JoinRowSet</code> object in its XML format.
	*
	* @throws SQLException if a database access error occurs
	*/
	@:overload override public function readXml(reader : java.io.Reader) : Void;
	
	/**
	* Reads a stream based XML input to populate an <code>WebRowSet</code>
	*
	* @throws SQLException if a data source access occurs
	* @throws IOException if a IO exception occurs
	*/
	@:overload override public function readXml(iStream : java.io.InputStream) : Void;
	
	/**
	* Creates an an output stream of the internal state and contents of a
	* <code>WebRowSet</code> for XML proceessing
	*
	* @throws SQLException if a datasource access occurs
	* @throws IOException if an IO exception occurs
	*/
	@:overload override public function writeXml(oStream : java.io.OutputStream) : Void;
	
	/**
	* Creates a new <code>WebRowSet</code> object, populates it with
	* the contents of the <code>ResultSet</code> and creates an output
	* streams the internal state and contents of the rowset for XML processing.
	*
	* @throws SQLException if a datasource access occurs
	* @throws IOException if an IO exception occurs
	*/
	@:overload override public function writeXml(rs : java.sql.ResultSet, oStream : java.io.OutputStream) : Void;
	
	/**
	* Returns the last set SQL <code>JOIN</code> type in this JoinRowSetImpl
	* object
	*
	* @return joinType One of the standard JoinRowSet static field JOIN types
	* @throws SQLException if an error occurs determining the current join type
	*/
	@:overload public function getJoinType() : Int;
	
	/**
	* The listener will be notified whenever an event occurs on this <code>JoinRowSet</code>
	* object.
	* <P>
	* A listener might, for example, be a table or graph that needs to
	* be updated in order to accurately reflect the current state of
	* the <code>RowSet</code> object.
	* <p>
	* <b>Note</b>: if the <code>RowSetListener</code> object is
	* <code>null</code>, this method silently discards the <code>null</code>
	* value and does not add a null reference to the set of listeners.
	* <p>
	* <b>Note</b>: if the listener is already set, and the new <code>RowSetListerner</code>
	* instance is added to the set of listeners already registered to receive
	* event notifications from this <code>RowSet</code>.
	*
	* @param listener an object that has implemented the
	*     <code>javax.sql.RowSetListener</code> interface and wants to be notified
	*     of any events that occur on this <code>JoinRowSet</code> object; May be
	*     null.
	* @see #removeRowSetListener
	*/
	@:overload public function addRowSetListener(listener : javax.sql.RowSetListener) : Void;
	
	/**
	* Removes the designated object from this <code>JoinRowSet</code> object's list of listeners.
	* If the given argument is not a registered listener, this method
	* does nothing.
	*
	*  <b>Note</b>: if the <code>RowSetListener</code> object is
	* <code>null</code>, this method silently discards the <code>null</code>
	* value.
	*
	* @param listener a <code>RowSetListener</code> object that is on the list
	*        of listeners for this <code>JoinRowSet</code> object
	* @see #addRowSetListener
	*/
	@:overload public function removeRowSetListener(listener : javax.sql.RowSetListener) : Void;
	
	/**
	* Converts this <code>JoinRowSetImpl</code> object to a collection
	* of tables. The sample implementation utilitizes the <code>TreeMap</code>
	* collection type.
	* This class guarantees that the map will be in ascending key order,
	* sorted according to the natural order for the key's class.
	*
	* @return a <code>Collection</code> object consisting of tables,
	*         each of which is a copy of a row in this
	*         <code>JoinRowSetImpl</code> object
	* @throws SQLException if an error occurs in generating the collection
	* @see #toCollection(int)
	* @see #toCollection(String)
	* @see java.util.TreeMap
	*/
	@:overload public function toCollection() : java.util.Collection<Dynamic>;
	
	/**
	* Returns the specified column of this <code>JoinRowSetImpl</code> object
	* as a <code>Collection</code> object.  This method makes a copy of the
	* column's data and utilitizes the <code>Vector</code> to establish the
	* collection. The <code>Vector</code> class implements a growable array
	* objects allowing the individual components to be accessed using an
	* an integer index similar to that of an array.
	*
	* @return a <code>Collection</code> object that contains the value(s)
	*         stored in the specified column of this
	*         <code>JoinRowSetImpl</code>
	*         object
	* @throws SQLException if an error occurs generated the collection; or
	*          an invalid column is provided.
	* @see #toCollection()
	* @see #toCollection(String)
	* @see java.util.Vector
	*/
	@:overload public function toCollection(column : Int) : java.util.Collection<Dynamic>;
	
	/**
	* Returns the specified column of this <code>JoinRowSetImpl</code> object
	* as a <code>Collection</code> object.  This method makes a copy of the
	* column's data and utilitizes the <code>Vector</code> to establish the
	* collection. The <code>Vector</code> class implements a growable array
	* objects allowing the individual components to be accessed using an
	* an integer index similar to that of an array.
	*
	* @return a <code>Collection</code> object that contains the value(s)
	*         stored in the specified column of this
	*         <code>JoinRowSetImpl</code>
	*         object
	* @throws SQLException if an error occurs generated the collection; or
	*          an invalid column is provided.
	* @see #toCollection()
	* @see #toCollection(int)
	* @see java.util.Vector
	*/
	@:overload public function toCollection(column : String) : java.util.Collection<Dynamic>;
	
	/**
	* Creates a <code>RowSet</code> object that is a copy of
	* this <code>JoinRowSetImpl</code> object's table structure
	* and the constraints only.
	* There will be no data in the object being returned.
	* Updates made on a copy are not visible to the original rowset.
	* <P>
	* This helps in getting the underlying XML schema which can
	* be used as the basis for populating a <code>WebRowSet</code>.
	*
	* @return a new <code>CachedRowSet</code> object that is a copy
	* of this <code>JoinRowSetImpl</code> object's schema and
	* retains all the constraints on the original rowset but contains
	* no data
	* @throws SQLException if an error occurs in generating the copy
	* of the <code>CachedRowSet</code> object
	* @see #createShared
	* @see #createCopy
	* @see #createCopyNoConstraints
	* @see javax.sql.RowSetEvent
	* @see javax.sql.RowSetListener
	*/
	@:overload public function createCopySchema() : javax.sql.rowset.CachedRowSet;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setSyncProvider(providerStr : String) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function acceptChanges() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getSyncProvider() : javax.sql.rowset.spi.SyncProvider;
	
	
}
