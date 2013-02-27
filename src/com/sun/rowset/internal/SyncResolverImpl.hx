package com.sun.rowset.internal;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SyncResolverImpl extends com.sun.rowset.CachedRowSetImpl implements javax.sql.rowset.spi.SyncResolver
{
	/**
	* Public constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* Retrieves the conflict status of the current row of this
	* <code>SyncResolver</code>, which indicates the operationthe <code>RowSet</code>
	* object was attempting when the conflict occurred.
	*
	* @return one of the following constants:
	*         <code>SyncResolver.UPDATE_ROW_CONFLICT</code>,
	*         <code>SyncResolver.DELETE_ROW_CONFLICT</code>, or
	*         <code>SyncResolver.INSERT_ROW_CONFLICT</code>
	*/
	@:overload public function getStatus() : Int;
	
	/**
	* Retrieves the value in the designated column in the current row of this
	* <code>SyncResolver</code> object, which is the value that caused a conflict.
	*
	* @param index <code>int</code> designating the column in this row of this
	*        <code>SyncResolver</code> object from which to retrieve the value
	*        causing a conflict
	*/
	@:overload public function getConflictValue(index : Int) : Dynamic;
	
	/**
	* Retrieves the value in the designated column in the current row of this
	* <code>SyncResolver</code> object, which is the value that caused a conflict.
	*
	* @param columnName a <code>String</code> object designating the column in this row of this
	*        <code>SyncResolver</code> object from which to retrieve the value
	*        causing a conflict
	*/
	@:overload public function getConflictValue(columnName : String) : Dynamic;
	
	/**
	* Sets <i>obj</i> as the value in column <i>index</i> in the current row of the
	* <code>RowSet</code> object. This value is the resolved value that is to be
	* persisted in the data source.
	*
	* @param index an <code>int</code> giving the number of the column into which to
	*        set the value to be persisted
	* @param obj an <code>Object</code> that is the value to be set in the data source
	*/
	@:overload public function setResolvedValue(index : Int, obj : Dynamic) : Void;
	
	/**
	* Sets <i>obj</i> as the value in column <i>columnName</i> in the current row of the
	* <code>RowSet</code> object. This value is the resolved value that is to be
	* persisted in the data source.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*        into which to set the value to be persisted
	* @param obj an <code>Object</code> that is the value to be set in the data source
	*/
	@:overload public function setResolvedValue(columnName : String, obj : Dynamic) : Void;
	
	/**
	* Moves the cursor down one row from its current position. A <code>SyncResolver</code>
	* cursor is initially positioned before the first conflict row; the first call to the
	* method <code>nextConflict()</code> makes the first conflict row the current row;
	* the second call makes the second conflict row the current row, and so on.
	* <p>
	* If an input stream is open for the current row, a call to the method next will
	* implicitly close it. A <code>SyncResolver</code> object's warning chain is cleared
	* when a new row
	*
	* @return true if the new current row is valid; false if there are no more rows
	* @throws SQLException if a database access occurs
	*
	*/
	@:overload public function nextConflict() : Bool;
	
	/**
	* Moves the cursor to the previous conflict row in this <code>SyncResolver</code> object.
	*
	* @return <code>true</code> if the cursor is on a valid row; <code>false</code>
	*     if it is off the result set
	* @throws SQLException if a database access error occurs or the result set type
	*     is TYPE_FORWARD_ONLY
	*/
	@:overload public function previousConflict() : Bool;
	
	/**
	* Sets this <code>CachedRowSetImpl</code> object's command property
	* to the given <code>String</code> object and clears the parameters,
	* if any, that were set for the previous command.
	* <P>
	* The command property may not be needed
	* if the rowset is produced by a data source, such as a spreadsheet,
	* that does not support commands. Thus, this property is optional
	* and may be <code>null</code>.
	*
	* @param cmd a <code>String</code> object containing an SQL query
	*            that will be set as the command; may be <code>null</code>
	* @throws SQLException if an error occurs
	*/
	@:overload override public function setCommand(cmd : String) : Void;
	
	/**
	* Populates this <code>CachedRowSetImpl</code> object with data from
	* the given <code>ResultSet</code> object.  This
	* method is an alternative to the method <code>execute</code>
	* for filling the rowset with data.  The method <code>populate</code>
	* does not require that the properties needed by the method
	* <code>execute</code>, such as the <code>command</code> property,
	* be set. This is true because the method <code>populate</code>
	* is given the <code>ResultSet</code> object from
	* which to get data and thus does not need to use the properties
	* required for setting up a connection and executing this
	* <code>CachedRowSetImpl</code> object's command.
	* <P>
	* After populating this rowset with data, the method
	* <code>populate</code> sets the rowset's metadata and
	* then sends a <code>RowSetChangedEvent</code> object
	* to all registered listeners prior to returning.
	*
	* @param data the <code>ResultSet</code> object containing the data
	*             to be read into this <code>CachedRowSetImpl</code> object
	* @throws SQLException if an error occurs; or the max row setting is
	*          violated while populating the RowSet
	* @see #execute
	*/
	@:overload override public function populate(data : java.sql.ResultSet) : Void;
	
	/**
	* Populates this <code>CachedRowSetImpl</code> object with data,
	* using the given connection to produce the result set from
	* which data will be read.  A second form of this method,
	* which takes no arguments, uses the values from this rowset's
	* user, password, and either url or data source properties to
	* create a new database connection. The form of <code>execute</code>
	* that is given a connection ignores these properties.
	*
	* @param conn A standard JDBC <code>Connection</code> object that this
	* <code>CachedRowSet</code> object can pass to a synchronization provider
	* to establish a connection to the data source
	* @throws SQLException if an invalid <code>Connection</code> is supplied
	*           or an error occurs in establishing the connection to the
	*           data source
	* @see #populate
	* @see java.sql.Connection
	*/
	@:overload override public function execute(conn : java.sql.Connection) : Void;
	
	/**
	* Propagates all row update, insert, and delete changes to the
	* underlying data source backing this <code>CachedRowSetImpl</code>
	* object.
	* <P>
	* <b>Note</b>In the reference implementation an optimistic concurrency implementation
	* is provided as a sample implementation of a the <code>SyncProvider</code>
	* abstract class.
	* <P>
	* This method fails if any of the updates cannot be propagated back
	* to the data source.  When it fails, the caller can assume that
	* none of the updates are reflected in the data source.
	* When an exception is thrown, the current row
	* is set to the first "updated" row that resulted in an exception
	* unless the row that caused the exception is a "deleted" row.
	* In that case, when deleted rows are not shown, which is usually true,
	* the current row is not affected.
	* <P>
	* If no <code>SyncProvider</code> is configured, the reference implementation
	* leverages the <code>RIOptimisticProvider</code> available which provides the
	* default and reference synchronization capabilities for disconnected
	* <code>RowSets</code>.
	*
	* @throws SQLException if the cursor is on the insert row or the underlying
	*          reference synchronization provider fails to commit the updates
	*          to the datasource
	* @throws SyncProviderException if an internal error occurs within the
	*          <code>SyncProvider</code> instance during either during the
	*          process or at any time when the <code>SyncProvider</code>
	*          instance touches the data source.
	* @see #acceptChanges(java.sql.Connection)
	* @see javax.sql.RowSetWriter
	* @see javax.sql.rowset.spi.SyncProvider
	*/
	@:overload override public function acceptChanges() : Void;
	
	/**
	* Propagates all row update, insert, and delete changes to the
	* data source backing this <code>CachedRowSetImpl</code> object
	* using the given <code>Connection</code> object.
	* <P>
	* The reference implementation <code>RIOptimisticProvider</code>
	* modifies its synchronization to a write back function given
	* the updated connection
	* The reference implementation modifies its synchronization behaviour
	* via the <code>SyncProvider</code> to ensure the synchronization
	* occurs according to the updated JDBC <code>Connection</code>
	* properties.
	*
	* @param con a standard JDBC <code>Connection</code> object
	* @throws SQLException if the cursor is on the insert row or the underlying
	*                   synchronization provider fails to commit the updates
	*                   back to the data source
	* @see #acceptChanges
	* @see javax.sql.RowSetWriter
	* @see javax.sql.rowset.spi.SyncFactory
	* @see javax.sql.rowset.spi.SyncProvider
	*/
	@:overload override public function acceptChanges(con : java.sql.Connection) : Void;
	
	/**
	* Restores this <code>CachedRowSetImpl</code> object to its original state,
	* that is, its state before the last set of changes.
	* <P>
	* Before returning, this method moves the cursor before the first row
	* and sends a <code>rowSetChanged</code> event to all registered
	* listeners.
	* @throws SQLException if an error is occurs rolling back the RowSet
	*           state to the definied original value.
	* @see javax.sql.RowSetListener#rowSetChanged
	*/
	@:overload override public function restoreOriginal() : Void;
	
	/**
	* Releases the current contents of this <code>CachedRowSetImpl</code>
	* object and sends a <code>rowSetChanged</code> event object to all
	* registered listeners.
	*
	* @throws SQLException if an error occurs flushing the contents of
	*           RowSet.
	* @see javax.sql.RowSetListener#rowSetChanged
	*/
	@:overload override public function release() : Void;
	
	/**
	* Cancels deletion of the current row and notifies listeners that
	* a row has changed.
	* <P>
	* Note:  This method can be ignored if deleted rows are not being shown,
	* which is the normal case.
	*
	* @throws SQLException if the cursor is not on a valid row
	*/
	@:overload override public function undoDelete() : Void;
	
	/**
	* Immediately removes the current row from this
	* <code>CachedRowSetImpl</code> object if the row has been inserted, and
	* also notifies listeners the a row has changed.  An exception is thrown
	* if the row is not a row that has been inserted or the cursor is before
	* the first row, after the last row, or on the insert row.
	* <P>
	* This operation cannot be undone.
	*
	* @throws SQLException if an error occurs,
	*                         the cursor is not on a valid row,
	*                         or the row has not been inserted
	*/
	@:overload override public function undoInsert() : Void;
	
	/**
	* Immediately reverses the last update operation if the
	* row has been modified. This method can be
	* called to reverse updates on a all columns until all updates in a row have
	* been rolled back to their originating state since the last synchronization
	* (<code>acceptChanges</code>) or population. This method may also be called
	* while performing updates to the insert row.
	* <P>
	* <code>undoUpdate</code may be called at any time during the life-time of a
	* rowset, however after a synchronization has occurs this method has no
	* affect until further modification to the RowSet data occurs.
	*
	* @throws SQLException if cursor is before the first row, after the last
	*     row in rowset.
	* @see #undoDelete
	* @see #undoInsert
	* @see java.sql.ResultSet#cancelRowUpdates
	*/
	@:overload override public function undoUpdate() : Void;
	
	/**
	* Returns a new <code>RowSet</code> object backed by the same data as
	* that of this <code>CachedRowSetImpl</code> object and sharing a set of cursors
	* with it. This allows cursors to interate over a shared set of rows, providing
	* multiple views of the underlying data.
	*
	* @return a <code>RowSet</code> object that is a copy of this <code>CachedRowSetImpl</code>
	* object and shares a set of cursors with it
	* @throws SQLException if an error occurs or cloning is
	*                         not supported
	* @see javax.sql.RowSetEvent
	* @see javax.sql.RowSetListener
	*/
	@:overload override public function createShared() : javax.sql.RowSet;
	
	/**
	* Returns a new <code>RowSet</code> object containing by the same data
	* as this <code>CachedRowSetImpl</code> object.  This method
	* differs from the method <code>createCopy</code> in that it throws a
	* <code>CloneNotSupportedException</code> object instead of an
	* <code>SQLException</code> object, as the method <code>createShared</code>
	* does.  This <code>clone</code>
	* method is called internally by the method <code>createShared</code>,
	* which catches the <code>CloneNotSupportedException</code> object
	* and in turn throws a new <code>SQLException</code> object.
	*
	* @return a copy of this <code>CachedRowSetImpl</code> object
	* @throws CloneNotSupportedException if an error occurs when
	* attempting to clone this <code>CachedRowSetImpl</code> object
	* @see #createShared
	*/
	@:overload override private function clone() : Dynamic;
	
	/**
	* Creates a <code>RowSet</code> object that is a deep copy of
	* this <code>CachedRowSetImpl</code> object's data, including
	* constraints.  Updates made
	* on a copy are not visible to the original rowset;
	* a copy of a rowset is completely independent from the original.
	* <P>
	* Making a copy saves the cost of creating an identical rowset
	* from first principles, which can be quite expensive.
	* For example, it can eliminate the need to query a
	* remote database server.
	* @return a new <code>CachedRowSet</code> object that is a deep copy
	*           of this <code>CachedRowSet</code> object and is
	*           completely independent from this <code>CachedRowSetImpl</code>
	*           object.
	* @throws SQLException if an error occurs in generating the copy of this
	*           of the <code>CachedRowSetImpl</code>
	* @see #createShared
	* @see javax.sql.RowSetEvent
	* @see javax.sql.RowSetListener
	*/
	@:overload override public function createCopy() : javax.sql.rowset.CachedRowSet;
	
	/**
	* Creates a <code>RowSet</code> object that is a copy of
	* this <code>CachedRowSetImpl</code> object's table structure
	* and the constraints only.
	* There will be no data in the object being returned.
	* Updates made on a copy are not visible to the original rowset.
	* <P>
	* This helps in getting the underlying XML schema which can
	* be used as the basis for populating a <code>WebRowSet</code>.
	*
	* @return a new <code>CachedRowSet</code> object that is a copy
	* of this <code>CachedRowSetImpl</code> object's schema and
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
	@:overload override public function createCopySchema() : javax.sql.rowset.CachedRowSet;
	
	/**
	* Creates a <code>CachedRowSet</code> object that is a copy of
	* this <code>CachedRowSetImpl</code> object's data only.
	* All constraints set in this object will not be there
	* in the returning object.  Updates made
	* on a copy are not visible to the original rowset.
	*
	* @return a new <code>CachedRowSet</code> object that is a deep copy
	* of this <code>CachedRowSetImpl</code> object and is
	* completely independent from this <code>CachedRowSetImpl</code> object
	* @throws SQLException if an error occurs in generating the copy of the
	* of the <code>CachedRowSet</code>
	* @see #createShared
	* @see #createCopy
	* @see #createCopySchema
	* @see javax.sql.RowSetEvent
	* @see javax.sql.RowSetListener
	*/
	@:overload override public function createCopyNoConstraints() : javax.sql.rowset.CachedRowSet;
	
	/**
	* Converts this <code>CachedRowSetImpl</code> object to a collection
	* of tables. The sample implementation utilitizes the <code>TreeMap</code>
	* collection type.
	* This class guarantees that the map will be in ascending key order,
	* sorted according to the natural order for the key's class.
	*
	* @return a <code>Collection</code> object consisting of tables,
	*         each of which is a copy of a row in this
	*         <code>CachedRowSetImpl</code> object
	* @throws SQLException if an error occurs in generating the collection
	* @see #toCollection(int)
	* @see #toCollection(String)
	* @see java.util.TreeMap
	*/
	@:overload override public function toCollection() : java.util.Collection<Dynamic>;
	
	/**
	* Returns the specified column of this <code>CachedRowSetImpl</code> object
	* as a <code>Collection</code> object.  This method makes a copy of the
	* column's data and utilitizes the <code>Vector</code> to establish the
	* collection. The <code>Vector</code> class implements a growable array
	* objects allowing the individual components to be accessed using an
	* an integer index similar to that of an array.
	*
	* @return a <code>Collection</code> object that contains the value(s)
	*         stored in the specified column of this
	*         <code>CachedRowSetImpl</code>
	*         object
	* @throws SQLException if an error occurs generated the collection; or
	*          an invalid column is provided.
	* @see #toCollection()
	* @see #toCollection(String)
	* @see java.util.Vector
	*/
	@:overload override public function toCollection(column : Int) : java.util.Collection<Dynamic>;
	
	/**
	* Returns the specified column of this <code>CachedRowSetImpl</code> object
	* as a <code>Collection</code> object.  This method makes a copy of the
	* column's data and utilitizes the <code>Vector</code> to establish the
	* collection. The <code>Vector</code> class implements a growable array
	* objects allowing the individual components to be accessed using an
	* an integer index similar to that of an array.
	*
	* @return a <code>Collection</code> object that contains the value(s)
	*         stored in the specified column of this
	*         <code>CachedRowSetImpl</code>
	*         object
	* @throws SQLException if an error occurs generated the collection; or
	*          an invalid column is provided.
	* @see #toCollection()
	* @see #toCollection(int)
	* @see java.util.Vector
	*/
	@:overload override public function toCollection(column : String) : java.util.Collection<Dynamic>;
	
	/**
	* Returns the <code>SyncProvider</code> implementation being used
	* with this <code>CachedRowSetImpl</code> implementation rowset.
	*
	* @return the SyncProvider used by the rowset. If not provider was
	*          set when the rowset was instantiated, the reference
	*          implementation (default) provider is returned.
	* @throws SQLException if error occurs while return the
	*          <code>SyncProvider</code> instance.
	*/
	@:overload override public function getSyncProvider() : javax.sql.rowset.spi.SyncProvider;
	
	/**
	* Sets the active <code>SyncProvider</code> and attempts to load
	* load the new provider using the <code>SyncFactory</code> SPI.
	*
	* @throws SQLException if an error occurs while resetting the
	*          <code>SyncProvider</code>.
	*/
	@:overload override public function setSyncProvider(providerStr : String) : Void;
	
	/**
	* Populates this <code>CachedRowSetImpl</code> object with data.
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
	@:overload override public function execute() : Void;
	
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
	@:overload override public function next() : Bool;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the next
	* row and returns <code>true</code> if the cursor is still in the rowset;
	* returns <code>false</code> if the cursor has moved to the position after
	* the last row.
	* <P>
	* This method handles the cases where the cursor moves to a row that
	* has been deleted.
	* If this rowset shows deleted rows and the cursor moves to a row
	* that has been deleted, this method moves the cursor to the next
	* row until the cursor is on a row that has not been deleted.
	* <P>
	* The method <code>internalNext</code> is called by methods such as
	* <code>next</code>, <code>absolute</code>, and <code>relative</code>,
	* and, as its name implies, is only called internally.
	* <p>
	* This is a implementation only method and is not required as a standard
	* implementation of the <code>CachedRowSet</code> interface.
	*
	* @return <code>true</code> if the cursor is on a valid row in this
	*         rowset; <code>false</code> if it is after the last row
	* @throws SQLException if an error occurs
	*/
	@:overload override private function internalNext() : Bool;
	
	/**
	* Closes this <code>CachedRowSetImpl</code> objecy and releases any resources
	* it was using.
	*
	* @throws SQLException if an error occurs when releasing any resources in use
	* by this <code>CachedRowSetImpl</code> object
	*/
	@:overload override public function close() : Void;
	
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
	@:overload override public function wasNull() : Bool;
	
	/**
	* Returns the insert row or the current row of this
	* <code>CachedRowSetImpl</code>object.
	*
	* @return the <code>Row</code> object on which this <code>CachedRowSetImpl</code>
	* objects's cursor is positioned
	*/
	@:overload override private function getCurrentRow() : com.sun.rowset.internal.BaseRow;
	
	/**
	* Removes the row on which the cursor is positioned.
	* <p>
	* This is a implementation only method and is not required as a standard
	* implementation of the <code>CachedRowSet</code> interface.
	*
	* @throws SQLException if the cursor is positioned on the insert
	*            row
	*/
	@:overload override private function removeCurrentRow() : Void;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>String</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, SMALLINT, INTEGER, BIGINT, REAL,
	* FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, <b>CHAR</b>, <b>VARCHAR</b></code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return type.
	*/
	@:overload override public function getString(columnIndex : Int) : String;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>boolean</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value as a <code>boolean</code> in the Java progamming language;
	*        if the value is SQL <code>NULL</code>, the result is <code>false</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>BOOLEAN</code> value
	* @see #getBoolean(String)
	*/
	@:overload override public function getBoolean(columnIndex : Int) : Bool;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>byte</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value as a <code>byte</code> in the Java programming
	* language; if the value is SQL <code>NULL</code>, the result is <code>0</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code><b>TINYINT</b>, SMALLINT, INTEGER, BIGINT, REAL,
	*            FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR, VARCHAR</code>
	*            or <code>LONGVARCHAR</code> value. The bold SQL type
	*            designates the recommended return type.
	* @see #getByte(String)
	*/
	@:overload override public function getByte(columnIndex : Int) : java.StdTypes.Int8;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>short</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, <b>SMALLINT</b>, INTEGER, BIGINT, REAL
	* FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR, VARCHAR</code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return type.
	* @see #getShort(String)
	*/
	@:overload override public function getShort(columnIndex : Int) : java.StdTypes.Int16;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as an
	* <code>int</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, SMALLINT, <b>INTEGER</b>, BIGINT, REAL
	* FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR, VARCHAR</code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return type.
	*/
	@:overload override public function getInt(columnIndex : Int) : Int;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>long</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, SMALLINT, INTEGER, <b>BIGINT</b>, REAL
	* FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR, VARCHAR</code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return type.
	* @see #getLong(String)
	*/
	@:overload override public function getLong(columnIndex : Int) : haxe.Int64;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>float</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, SMALLINT, INTEGER, BIGINT, <b>REAL</b>,
	* FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR, VARCHAR</code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return type.
	* @see #getFloat(String)
	*/
	@:overload override public function getFloat(columnIndex : Int) : Single;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>double</code> value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>0</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, SMALLINT, INTEGER, BIGINT, REAL,
	* <b>FLOAT</b>, <b>DOUBLE</b>, DECIMAL, NUMERIC, BIT, CHAR, VARCHAR</code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return type.
	* @see #getDouble(String)
	*
	*/
	@:overload override public function getDouble(columnIndex : Int) : Float;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
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
	@:overload override public function getBigDecimal(columnIndex : Int, scale : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>byte</code> array value.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value as a <code>byte</code> array in the Java programming
	* language; if the value is SQL <code>NULL</code>, the
	* result is <code>null</code>
	*
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code><b>BINARY</b>, <b>VARBINARY</b> or
	* LONGVARBINARY</code> value.
	* The bold SQL type designates the recommended return type.
	* @see #getBytes(String)
	*/
	@:overload override public function getBytes(columnIndex : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>java.sql.Date</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value as a <code>java.sql.Data</code> object; if
	*        the value is SQL <code>NULL</code>, the
	*        result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*            the cursor is not on a valid row, or this method fails
	*/
	@:overload override public function getDate(columnIndex : Int) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>java.sql.Time</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return the column value; if the value is SQL <code>NULL</code>, the
	*         result is <code>null</code>
	* @throws SQLException if the given column index is out of bounds,
	*         the cursor is not on a valid row, or this method fails
	*/
	@:overload override public function getTime(columnIndex : Int) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
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
	@:overload override public function getTimestamp(columnIndex : Int) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>CachedRowSetImpl</code> object as a <code>java.io.InputStream</code>
	* object.
	*
	* A column value can be retrieved as a stream of ASCII characters
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.  The JDBC
	* driver will do any necessary conversion from the database format into ASCII.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a get method implicitly closes the stream. . Also, a
	* stream may return <code>0</code> for <code>CachedRowSetImpl.available()</code>
	* whether there is data available or not.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a Java input stream that delivers the database column value
	*         as a stream of one-byte ASCII characters.  If the value is SQL
	*         <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>CHAR, VARCHAR</code>, <code><b>LONGVARCHAR</b></code>
	* <code>BINARY, VARBINARY</code> or <code>LONGVARBINARY</code> value. The
	* bold SQL type designates the recommended return types that this method is
	* used to retrieve.
	* @see #getAsciiStream(String)
	*/
	@:overload override public function getAsciiStream(columnIndex : Int) : java.io.InputStream;
	
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
	@:overload override public function getUnicodeStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>CachedRowSetImpl</code> object as a <code>java.io.InputStream</code>
	* object.
	* <P>
	* A column value can be retrieved as a stream of uninterpreted bytes
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large <code>LONGVARBINARY</code> values.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a get method implicitly closes the stream. Also, a
	* stream may return <code>0</code> for
	* <code>CachedRowSetImpl.available()</code> whether there is data
	* available or not.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	* is <code>2</code>, and so on; must be <code>1</code> or larger
	* and equal to or less than the number of columns in the rowset
	* @return a Java input stream that delivers the database column value
	* as a stream of uninterpreted bytes.  If the value is SQL <code>NULL</code>
	* then the result is <code>null</code>.
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>BINARY, VARBINARY</code> or <code><b>LONGVARBINARY</b></code>
	* The bold type indicates the SQL type that this method is recommened
	* to retrieve.
	* @see #getBinaryStream(String)
	*/
	@:overload override public function getBinaryStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>String</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>TINYINT, SMALLINT, INTEGER
	* BIGINT, REAL, FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, <b>CHAR</b>,
	* <b>VARCHAR</b></code> or <code>LONGVARCHAR<</code> value. The bold SQL type
	* designates the recommended return type.
	*/
	@:overload override public function getString(columnName : String) : String;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>boolean</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value as a <code>boolean</code> in the Java programming
	*        language; if the value is SQL <code>NULL</code>,
	*        the result is <code>false</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>BOOLEAN</code> value
	* @see #getBoolean(int)
	*/
	@:overload override public function getBoolean(columnName : String) : Bool;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>byte</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value as a <code>byte</code> in the Java programming
	* language; if the value is SQL <code>NULL</code>, the result is <code>0</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code><B>TINYINT</B>, SMALLINT, INTEGER,
	* BIGINT, REAL, FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR,
	* VARCHAR</code> or <code>LONGVARCHAR</code> value. The
	* bold type designates the recommended return type
	*/
	@:overload override public function getByte(columnName : String) : java.StdTypes.Int8;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>short</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>TINYINT, <b>SMALLINT</b>, INTEGER
	* BIGINT, REAL, FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR,
	* VARCHAR</code> or <code>LONGVARCHAR</code> value. The bold SQL type
	* designates the recommended return type.
	* @see #getShort(int)
	*/
	@:overload override public function getShort(columnName : String) : java.StdTypes.Int16;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as an <code>int</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if (1) the given column name is not the name
	* of a column in this rowset,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, SMALLINT, <b>INTEGER</b>, BIGINT, REAL
	* FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR, VARCHAR</code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return type.
	*/
	@:overload override public function getInt(columnName : String) : Int;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>long</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>TINYINT, SMALLINT, INTEGER
	* <b>BIGINT</b>, REAL, FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR,
	* VARCHAR</code> or <code>LONGVARCHAR</code> value. The bold SQL type
	* designates the recommended return type.
	* @see #getLong(int)
	*/
	@:overload override public function getLong(columnName : String) : haxe.Int64;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>float</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>TINYINT, SMALLINT, INTEGER
	* BIGINT, <b>REAL</b>, FLOAT, DOUBLE, DECIMAL, NUMERIC, BIT, CHAR,
	* VARCHAR</code> or <code>LONGVARCHAR</code> value. The bold SQL type
	* designates the recommended return type.
	* @see #getFloat(String)
	*/
	@:overload override public function getFloat(columnName : String) : Single;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row of this <code>CachedRowSetImpl</code> object
	* as a <code>double</code> value.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>0</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>TINYINT, SMALLINT, INTEGER
	* BIGINT, REAL, <b>FLOAT</b>, <b>DOUBLE</b>, DECIMAL, NUMERIC, BIT, CHAR,
	* VARCHAR</code> or <code>LONGVARCHAR</code> value. The bold SQL type
	* designates the recommended return types.
	* @see #getDouble(int)
	*/
	@:overload override public function getDouble(columnName : String) : Float;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.math.BigDecimal</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @param scale the number of digits to the right of the decimal point
	* @return a java.math.BugDecimal object with <code><i>scale</i></code>
	* number of digits to the right of the decimal point.
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>TINYINT, SMALLINT, INTEGER
	* BIGINT, REAL, FLOAT, DOUBLE, <b>DECIMAL</b>, <b>NUMERIC</b>, BIT CHAR,
	* VARCHAR</code> or <code>LONGVARCHAR</code> value. The bold SQL type
	* designates the recommended return type that this method is used to
	* retrieve.
	* @deprecated Use the <code>getBigDecimal(String columnName)</code>
	*             method instead
	*/
	@:overload override public function getBigDecimal(columnName : String, scale : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>byte</code> array.
	* The bytes represent the raw values returned by the driver.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value as a <code>byte</code> array in the Java programming
	* language; if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code><b>BINARY</b>, <b>VARBINARY</b>
	* </code> or <code>LONGVARBINARY</code> values
	* The bold SQL type designates the recommended return type.
	* @see #getBytes(int)
	*/
	@:overload override public function getBytes(columnName : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.sql.Date</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>DATE</code> or
	*            <code>TIMESTAMP</code> value
	*/
	@:overload override public function getDate(columnName : String) : java.sql.Date;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.sql.Time</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload override public function getTime(columnName : String) : java.sql.Time;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.sql.Timestamp</code> object.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return the column value; if the value is SQL <code>NULL</code>,
	*         the result is <code>null</code>
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	*/
	@:overload override public function getTimestamp(columnName : String) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>CachedRowSetImpl</code> object as a <code>java.io.InputStream</code>
	* object.
	*
	* A column value can be retrieved as a stream of ASCII characters
	* and then read in chunks from the stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values. The
	* <code>SyncProvider</code> will rely on the JDBC driver to do any necessary
	* conversion from the database format into ASCII format.
	*
	* <P><B>Note:</B> All the data in the returned stream must
	* be read prior to getting the value of any other column. The
	* next call to a <code>getXXX</code> method implicitly closes the stream.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of one-byte ASCII characters.  If the value is SQL
	*         <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>CHAR, VARCHAR</code>, <code><b>LONGVARCHAR</b></code>
	* <code>BINARY, VARBINARY</code> or <code>LONGVARBINARY</code> value. The
	* bold SQL type designates the recommended return types that this method is
	* used to retrieve.
	* @see #getAsciiStream(int)
	*/
	@:overload override public function getAsciiStream(columnName : String) : java.io.InputStream;
	
	/**
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
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of two-byte Unicode characters.  If the value is
	*         SQL <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if the given column name does not match one of
	*            this rowset's column names or the cursor is not on one of
	*            this rowset's rows or its insert row
	* @deprecated use the method <code>getCharacterStream</code> instead
	*/
	@:overload override public function getUnicodeStream(columnName : String) : java.io.InputStream;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>CachedRowSetImpl</code> object as a <code>java.io.InputStream</code>
	* object.
	* <P>
	* A column value can be retrieved as a stream of uninterpreted bytes
	* and then read in chunks from the stream.  This method is particularly
	* suitable for retrieving large <code>LONGVARBINARY</code> values.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a get method implicitly closes the stream. Also, a
	* stream may return <code>0</code> for <code>CachedRowSetImpl.available()</code>
	* whether there is data available or not.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of uninterpreted bytes.  If the value is SQL
	*         <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if (1) the given column name is unknown,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>BINARY, VARBINARY</code> or <code><b>LONGVARBINARY</b></code>
	* The bold type indicates the SQL type that this method is recommened
	* to retrieve.
	* @see #getBinaryStream(int)
	*
	*/
	@:overload override public function getBinaryStream(columnName : String) : java.io.InputStream;
	
	/**
	* The first warning reported by calls on this <code>CachedRowSetImpl</code>
	* object is returned. Subsequent <code>CachedRowSetImpl</code> warnings will
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
	*/
	@:overload override public function getWarnings() : java.sql.SQLWarning;
	
	/**
	* Clears all the warnings reporeted for the <code>CachedRowSetImpl</code>
	* object. After a call to this method, the <code>getWarnings</code> method
	* returns <code>null</code> until a new warning is reported for this
	* <code>CachedRowSetImpl</code> object.
	*/
	@:overload override public function clearWarnings() : Void;
	
	/**
	* Retrieves the name of the SQL cursor used by this
	* <code>CachedRowSetImpl</code> object.
	*
	* <P>In SQL, a result table is retrieved through a cursor that is
	* named. The current row of a <code>ResultSet</code> can be updated or deleted
	* using a positioned update/delete statement that references the
	* cursor name. To ensure that the cursor has the proper isolation
	* level to support an update operation, the cursor's <code>SELECT</code>
	* statement should be of the form <code>select for update</code>.
	* If the <code>for update</code> clause
	* is omitted, positioned updates may fail.
	*
	* <P>JDBC supports this SQL feature by providing the name of the
	* SQL cursor used by a <code>ResultSet</code> object. The current row
	* of a result set is also the current row of this SQL cursor.
	*
	* <P><B>Note:</B> If positioned updates are not supported, an
	* <code>SQLException</code> is thrown.
	*
	* @return the SQL cursor name for this <code>CachedRowSetImpl</code> object's
	*         cursor
	* @throws SQLException if an error occurs
	*/
	@:overload override public function getCursorName() : String;
	
	/**
	* Retrieves a <code>ResultSetMetaData</code> object instance that
	* contains information about the <code>CachedRowSet</code> object.
	* However, applications should cast the returned object to a
	* <code>RowSetMetaData</code> interface implementation. In the
	* reference implementation, this cast can be done on the
	* <code>RowSetMetaDataImpl</code> class.
	* <P>
	* For example:
	* <pre>
	* CachedRowSet crs = new CachedRowSetImpl();
	* RowSetMetaDataImpl metaData =
	*     (RowSetMetaDataImpl)crs.getMetaData();
	* // Set the number of columns in the RowSet object for
	* // which this RowSetMetaDataImpl object was created to the
	* // given number.
	* metaData.setColumnCount(3);
	* crs.setMetaData(metaData);
	* </pre>
	*
	* @return the <code>ResultSetMetaData</code> object that describes this
	*         <code>CachedRowSetImpl</code> object's columns
	* @throws SQLException if an error occurs in generating the RowSet
	* meta data; or if the <code>CachedRowSetImpl</code> is empty.
	* @see javax.sql.RowSetMetaData
	*/
	@:overload override public function getMetaData() : java.sql.ResultSetMetaData;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as an
	* <code>Object</code> value.
	* <P>
	* The type of the <code>Object</code> will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC 3.0
	* specification.
	* <P>
	* This method may also be used to read datatabase-specific
	* abstract data types.
	* <P>
	* This implementation of the method <code>getObject</code> extends its
	* behavior so that it gets the attributes of an SQL structured type
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
	* @see #getObject(String)
	*/
	@:overload override public function getObject(columnIndex : Int) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as an
	* <code>Object</code> value.
	* <P>
	* The type of the <code>Object</code> will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC 3.0
	* specification.
	* <P>
	* This method may also be used to read datatabase-specific
	* abstract data types.
	* <P>
	* This implementation of the method <code>getObject</code> extends its
	* behavior so that it gets the attributes of an SQL structured type
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
	*         if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if (1) the given column name does not match one of
	*            this rowset's column names, (2) the cursor is not
	*            on a valid row, or (3) there is a problem getting
	*            the <code>Class</code> object for a custom mapping
	* @see #getObject(int)
	*/
	@:overload override public function getObject(columnName : String) : Dynamic;
	
	/**
	* Maps the given column name for one of this <code>CachedRowSetImpl</code>
	* object's columns to its column number.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return the column index of the given column name
	* @throws SQLException if the given column name does not match one
	*            of this rowset's column names
	*/
	@:overload override public function findColumn(columnName : String) : Int;
	
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
	* as a stream of two-byte unicode characters in a
	* <code>java.io.Reader</code> object.  If the value is
	* SQL <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>CHAR, VARCHAR, <b>LONGVARCHAR</b>, BINARY, VARBINARY</code> or
	* <code>LONGVARBINARY</code> value.
	* The bold SQL type designates the recommended return type.
	* @see #getCharacterStream(String)
	*/
	@:overload override public function getCharacterStream(columnIndex : Int) : java.io.Reader;
	
	/**
	* Retrieves the value stored in the designated column
	* of the current row as a <code>java.io.Reader</code> object.
	*
	* <P><B>Note:</B> All the data in the returned stream must
	* be read prior to getting the value of any other column. The
	* next call to a <code>getXXX</code> method implicitly closes the stream.
	*
	* @param columnName a <code>String</code> object giving the SQL name of
	*        a column in this <code>CachedRowSetImpl</code> object
	* @return a Java input stream that delivers the database column value
	*         as a stream of two-byte Unicode characters.  If the value is
	*         SQL <code>NULL</code>, the result is <code>null</code>.
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>CHAR, VARCHAR, <b>LONGVARCHAR</b>,
	* BINARY, VARYBINARY</code> or <code>LONGVARBINARY</code> value.
	* The bold SQL type designates the recommended return type.
	*/
	@:overload override public function getCharacterStream(columnName : String) : java.io.Reader;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>java.math.BigDecimal</code> object.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in the rowset
	* @return a <code>java.math.BigDecimal</code> value with full precision;
	*         if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>TINYINT, SMALLINT, INTEGER, BIGINT, REAL,
	* FLOAT, DOUBLE, <b>DECIMAL</b>, <b>NUMERIC</b>, BIT, CHAR, VARCHAR</code>
	* or <code>LONGVARCHAR</code> value. The bold SQL type designates the
	* recommended return types that this method is used to retrieve.
	* @see #getBigDecimal(String)
	*/
	@:overload override public function getBigDecimal(columnIndex : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
	* <code>java.math.BigDecimal</code> object.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>java.math.BigDecimal</code> value with full precision;
	*         if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if (1) the given column name is not the name of
	* a column in this rowset, (2) the cursor is not on one of
	* this rowset's rows or its insert row, or (3) the designated
	* column does not store an SQL <code>TINYINT, SMALLINT, INTEGER
	* BIGINT, REAL, FLOAT, DOUBLE, <b>DECIMAL</b>, <b>NUMERIC</b>, BIT CHAR,
	* VARCHAR</code> or <code>LONGVARCHAR</code> value. The bold SQL type
	* designates the recommended return type that this method is used to
	* retrieve
	* @see #getBigDecimal(int)
	*/
	@:overload override public function getBigDecimal(columnName : String) : java.math.BigDecimal;
	
	/**
	* Returns the number of rows in this <code>CachedRowSetImpl</code> object.
	*
	* @return number of rows in the rowset
	*/
	@:overload override public function size() : Int;
	
	/**
	* Indicates whether the cursor is before the first row in this
	* <code>CachedRowSetImpl</code> object.
	*
	* @return <code>true</code> if the cursor is before the first row;
	*         <code>false</code> otherwise or if the rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload override public function isBeforeFirst() : Bool;
	
	/**
	* Indicates whether the cursor is after the last row in this
	* <code>CachedRowSetImpl</code> object.
	*
	* @return <code>true</code> if the cursor is after the last row;
	*         <code>false</code> otherwise or if the rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload override public function isAfterLast() : Bool;
	
	/**
	* Indicates whether the cursor is on the first row in this
	* <code>CachedRowSetImpl</code> object.
	*
	* @return <code>true</code> if the cursor is on the first row;
	*         <code>false</code> otherwise or if the rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload override public function isFirst() : Bool;
	
	/**
	* Indicates whether the cursor is on the last row in this
	* <code>CachedRowSetImpl</code> object.
	* <P>
	* Note: Calling the method <code>isLast</code> may be expensive
	* because the JDBC driver might need to fetch ahead one row in order
	* to determine whether the current row is the last row in this rowset.
	*
	* @return <code>true</code> if the cursor is on the last row;
	*         <code>false</code> otherwise or if this rowset contains no rows
	* @throws SQLException if an error occurs
	*/
	@:overload override public function isLast() : Bool;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the front of
	* the rowset, just before the first row. This method has no effect if
	* this rowset contains no rows.
	*
	* @throws SQLException if an error occurs or the type of this rowset
	*            is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload override public function beforeFirst() : Void;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the end of
	* the rowset, just after the last row. This method has no effect if
	* this rowset contains no rows.
	*
	* @throws SQLException if an error occurs
	*/
	@:overload override public function afterLast() : Void;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the first row
	* and returns <code>true</code> if the operation was successful.  This
	* method also notifies registered listeners that the cursor has moved.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	*         <code>false</code> otherwise or if there are no rows in this
	*         <code>CachedRowSetImpl</code> object
	* @throws SQLException if the type of this rowset
	*            is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload override public function first() : Bool;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the first
	* row and returns <code>true</code> if the operation is successful.
	* <P>
	* This method is called internally by the methods <code>first</code>,
	* <code>isFirst</code>, and <code>absolute</code>.
	* It in turn calls the method <code>internalNext</code> in order to
	* handle the case where the first row is a deleted row that is not visible.
	* <p>
	* This is a implementation only method and is not required as a standard
	* implementation of the <code>CachedRowSet</code> interface.
	*
	* @return <code>true</code> if the cursor moved to the first row;
	*         <code>false</code> otherwise
	* @throws SQLException if an error occurs
	*/
	@:overload override private function internalFirst() : Bool;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the last row
	* and returns <code>true</code> if the operation was successful.  This
	* method also notifies registered listeners that the cursor has moved.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	*         <code>false</code> otherwise or if there are no rows in this
	*         <code>CachedRowSetImpl</code> object
	* @throws SQLException if the type of this rowset
	*            is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload override public function last() : Bool;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the last
	* row and returns <code>true</code> if the operation is successful.
	* <P>
	* This method is called internally by the method <code>last</code>
	* when rows have been deleted and the deletions are not visible.
	* The method <code>internalLast</code> handles the case where the
	* last row is a deleted row that is not visible by in turn calling
	* the method <code>internalPrevious</code>.
	* <p>
	* This is a implementation only method and is not required as a standard
	* implementation of the <code>CachedRowSet</code> interface.
	*
	* @return <code>true</code> if the cursor moved to the last row;
	*         <code>false</code> otherwise
	* @throws SQLException if an error occurs
	*/
	@:overload override private function internalLast() : Bool;
	
	/**
	* Returns the number of the current row in this <code>CachedRowSetImpl</code>
	* object. The first row is number 1, the second number 2, and so on.
	*
	* @return the number of the current row;  <code>0</code> if there is no
	*         current row
	* @throws SQLException if an error occurs; or if the <code>CacheRowSetImpl</code>
	*         is empty
	*/
	@:overload override public function getRow() : Int;
	
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
	* @param row a positive number to indicate the row, starting row numbering from
	*        the first row, which is <code>1</code>; a negative number to indicate
	*        the row, starting row numbering from the last row, which is
	*        <code>-1</code>; it must not be <code>0</code>
	* @return <code>true</code> if the cursor is on the rowset; <code>false</code>
	*         otherwise
	* @throws SQLException if the given cursor position is <code>0</code> or the
	*            type of this rowset is <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload override public function absolute(row : Int) : Bool;
	
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
	* @throws SQLException if there are no rows in this rowset, the cursor is
	*         positioned either before the first row or after the last row, or
	*         the rowset is type <code>ResultSet.TYPE_FORWARD_ONLY</code>
	*/
	@:overload override public function relative(rows : Int) : Bool;
	
	/**
	* Moves this <code>CachedRowSetImpl</code> object's cursor to the
	* previous row and returns <code>true</code> if the cursor is on
	* a valid row or <code>false</code> if it is not.
	* This method also notifies all listeners registered with this
	* <code>CachedRowSetImpl</code> object that its cursor has moved.
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
	* the <code>CachedRowSetImpl</code> object <code>crs</code>, which has
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
	@:overload override public function previous() : Bool;
	
	/**
	* Moves the cursor to the previous row in this <code>CachedRowSetImpl</code>
	* object, skipping past deleted rows that are not visible; returns
	* <code>true</code> if the cursor is on a row in this rowset and
	* <code>false</code> when the cursor goes before the first row.
	* <P>
	* This method is called internally by the method <code>previous</code>.
	* <P>
	* This is a implementation only method and is not required as a standard
	* implementation of the <code>CachedRowSet</code> interface.
	*
	* @return <code>true</code> if the cursor is on a row in this rowset;
	*         <code>false</code> when the cursor reaches the position before
	*         the first row
	* @throws SQLException if an error occurs
	*/
	@:overload override private function internalPrevious() : Bool;
	
	/**
	* Indicates whether the current row of this <code>CachedRowSetImpl</code>
	* object has been updated.  The value returned
	* depends on whether this rowset can detect updates: <code>false</code>
	* will always be returned if it does not detect updates.
	*
	* @return <code>true</code> if the row has been visibly updated
	*         by the owner or another and updates are detected;
	*         <code>false</code> otherwise
	* @throws SQLException if the cursor is on the insert row or not
	*            not on a valid row
	*
	* @see DatabaseMetaData#updatesAreDetected
	*/
	@:overload override public function rowUpdated() : Bool;
	
	/**
	* Indicates whether the designated column of the current row of
	* this <code>CachedRowSetImpl</code> object has been updated. The
	* value returned depends on whether this rowset can detcted updates:
	* <code>false</code> will always be returned if it does not detect updates.
	*
	* @param idx the index identifier of the column that may be have been updated.
	* @return <code>true</code> is the designated column has been updated
	* and the rowset detects updates; <code>false</code> if the rowset has not
	* been updated or the rowset does not detect updates
	* @throws SQLException if the cursor is on the insert row or not
	*          on a valid row
	* @see DatabaseMetaData#updatesAreDetected
	*/
	@:overload override public function columnUpdated(idx : Int) : Bool;
	
	/**
	* Indicates whether the designated column of the current row of
	* this <code>CachedRowSetImpl</code> object has been updated. The
	* value returned depends on whether this rowset can detcted updates:
	* <code>false</code> will always be returned if it does not detect updates.
	*
	* @param columnName the <code>String</code> column name column that may be have
	* been updated.
	* @return <code>true</code> is the designated column has been updated
	* and the rowset detects updates; <code>false</code> if the rowset has not
	* been updated or the rowset does not detect updates
	* @throws SQLException if the cursor is on the insert row or not
	*          on a valid row
	* @see DatabaseMetaData#updatesAreDetected
	*/
	@:overload override public function columnUpdated(columnName : String) : Bool;
	
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
	@:overload override public function rowInserted() : Bool;
	
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
	@:overload override public function rowDeleted() : Bool;
	
	/**
	* Sets the designated nullable column in the current row or the
	* insert row of this <code>CachedRowSetImpl</code> object with
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
	* data source, an application must call the method {@link #acceptChanges}
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
	@:overload override public function updateNull(columnIndex : Int) : Void;
	
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
	* Sets the designated nullable column in the current row or the
	* insert row of this <code>CachedRowSetImpl</code> object with
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
	@:overload override public function updateNull(columnName : String) : Void;
	
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
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param x the new column value
	* @param length the number of one-byte ASCII characters in the stream
	*/
	@:overload override public function updateAsciiStream(columnName : String, x : java.io.InputStream, length : Int) : Void;
	
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
	
	/**
	* Marks the current row of this <code>CachedRowSetImpl</code> object as
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
	@:overload override public function updateRow() : Void;
	
	/**
	* Deletes the current row from this <code>CachedRowSetImpl</code> object and
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
	@:overload override public function deleteRow() : Void;
	
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
	@:overload override public function refreshRow() : Void;
	
	/**
	* Rolls back any updates made to the current row of this
	* <code>CachedRowSetImpl</code> object and notifies listeners that
	* a row has changed.  To have an effect, this method
	* must be called after an <code>updateXXX</code> method has been
	* called and before the method <code>updateRow</code> has been called.
	* If no updates have been made or the method <code>updateRow</code>
	* has already been called, this method has no effect.
	*
	* @throws SQLException if the cursor is on the insert row, before the
	*            first row, or after the last row
	*/
	@:overload override public function cancelRowUpdates() : Void;
	
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
	* Moves the cursor for this <code>CachedRowSetImpl</code> object to
	* the current row.  The current row is the row the cursor was on
	* when the method <code>moveToInsertRow</code> was called.
	* <P>
	* Calling this method has no effect unless it is called while the
	* cursor is on the insert row.
	*
	* @throws SQLException if an error occurs
	*/
	@:overload override public function moveToCurrentRow() : Void;
	
	/**
	* Returns <code>null</code>.
	*
	* @return <code>null</code>
	* @throws SQLException if an error occurs
	*/
	@:overload override public function getStatement() : java.sql.Statement;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as an <code>Object</code> in
	* the Java programming language, using the given
	* <code>java.util.Map</code> object to custom map the value if
	* appropriate.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param map a <code>java.util.Map</code> object showing the mapping
	*            from SQL type names to classes in the Java programming
	*            language
	* @return an <code>Object</code> representing the SQL value
	* @throws SQLException if the given column index is out of bounds or
	*            the cursor is not on one of this rowset's rows or its
	*            insert row
	*/
	@:overload override public function getObject(columnIndex : Int, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>Ref</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a <code>Ref</code> object representing an SQL<code> REF</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>REF</code> value
	* @see #getRef(String)
	*/
	@:overload override public function getRef(columnIndex : Int) : java.sql.Ref;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>Blob</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a <code>Blob</code> object representing an SQL <code>BLOB</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>BLOB</code> value
	* @see #getBlob(String)
	*/
	@:overload override public function getBlob(columnIndex : Int) : java.sql.Blob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>Clob</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @return a <code>Clob</code> object representing an SQL <code>CLOB</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) the designated column does not store an
	*            SQL <code>CLOB</code> value
	* @see #getClob(String)
	*/
	@:overload override public function getClob(columnIndex : Int) : java.sql.Clob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as an <code>Array</code> object
	* in the Java programming language.
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
	* @see #getArray(String)
	*/
	@:overload override public function getArray(columnIndex : Int) : java.sql.Array;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as an <code>Object</code> in
	* the Java programming language, using the given
	* <code>java.util.Map</code> object to custom map the value if
	* appropriate.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param map a <code>java.util.Map</code> object showing the mapping
	*        from SQL type names to classes in the Java programming
	*        language
	* @return an <code>Object</code> representing the SQL value
	* @throws SQLException if the given column name is not the name of
	*         a column in this rowset or the cursor is not on one of
	*         this rowset's rows or its insert row
	*/
	@:overload override public function getObject(columnName : String, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>Ref</code> object
	* in the Java programming language.
	*
	* @param colName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>Ref</code> object representing an SQL<code> REF</code> value
	* @throws SQLException  if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the column value
	*            is not an SQL <code>REF</code> value
	* @see #getRef(int)
	*/
	@:overload override public function getRef(colName : String) : java.sql.Ref;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>Blob</code> object
	* in the Java programming language.
	*
	* @param colName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>Blob</code> object representing an SQL <code>BLOB</code> value
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>BLOB</code> value
	* @see #getBlob(int)
	*/
	@:overload override public function getBlob(colName : String) : java.sql.Blob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>Clob</code> object
	* in the Java programming language.
	*
	* @param colName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return a <code>Clob</code> object representing an SQL
	*         <code>CLOB</code> value
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>CLOB</code> value
	* @see #getClob(int)
	*/
	@:overload override public function getClob(colName : String) : java.sql.Clob;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as an <code>Array</code> object
	* in the Java programming langugage.
	*
	* @param colName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @return an <code>Array</code> object representing an SQL
	*         <code>ARRAY</code> value
	* @throws SQLException if (1) the given column name is not the name of
	*            a column in this rowset, (2) the cursor is not on one of
	*            this rowset's rows or its insert row, or (3) the designated
	*            column does not store an SQL <code>ARRAY</code> value
	* @see #getArray(int)
	*/
	@:overload override public function getArray(colName : String) : java.sql.Array;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a <code>java.sql.Date</code>
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
	@:overload override public function getDate(columnIndex : Int, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a <code>java.sql.Date</code>
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
	@:overload override public function getDate(columnName : String, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a <code>java.sql.Time</code>
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
	@:overload override public function getTime(columnIndex : Int, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a <code>java.sql.Time</code>
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
	@:overload override public function getTime(columnName : String, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a <code>java.sql.Timestamp</code>
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
	@:overload override public function getTimestamp(columnIndex : Int, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>CachedRowSetImpl</code> object as a
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
	@:overload override public function getTimestamp(columnName : String, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* Retrieves the <code>Connection</code> object passed to this
	* <code>CachedRowSetImpl</code> object.  This connection may be
	* used to populate this rowset with data or to write data back
	* to its underlying data source.
	*
	* @return the <code>Connection</code> object passed to this rowset;
	*         may be <code>null</code> if there is no connection
	* @throws SQLException if an error occurs
	*/
	@:overload override public function getConnection() : java.sql.Connection;
	
	/**
	* Sets the metadata for this <code>CachedRowSetImpl</code> object
	* with the given <code>RowSetMetaData</code> object.
	*
	* @param md a <code>RowSetMetaData</code> object instance containing
	*            metadata about the columsn in the rowset
	* @throws SQLException if invalid meta data is supplied to the
	*            rowset
	*/
	@:overload override public function setMetaData(md : javax.sql.RowSetMetaData) : Void;
	
	/**
	* Returns a result set containing the original value of the rowset. The
	* original value is the state of the <code>CachedRowSetImpl</code> after the
	* last population or synchronization (whichever occured most recently) with
	* the data source.
	* <p>
	* The cursor is positioned before the first row in the result set.
	* Only rows contained in the result set returned by <code>getOriginal()</code>
	* are said to have an original value.
	*
	* @return the original result set of the rowset
	* @throws SQLException if an error occurs produce the
	*           <code>ResultSet</code> object
	*/
	@:overload override public function getOriginal() : java.sql.ResultSet;
	
	/**
	* Returns a result set containing the original value of the current
	* row only.
	* The original value is the state of the <code>CachedRowSetImpl</code> after
	* the last population or synchronization (whichever occured most recently)
	* with the data source.
	*
	* @return the original result set of the row
	* @throws SQLException if there is no current row
	* @see #setOriginalRow
	*/
	@:overload override public function getOriginalRow() : java.sql.ResultSet;
	
	/**
	* Marks the current row in this rowset as being an original row.
	*
	* @throws SQLException if there is no current row
	* @see #getOriginalRow
	*/
	@:overload override public function setOriginalRow() : Void;
	
	/**
	* Marks all rows in this rowset as being original rows. Any updates
	* made to the rows become the original values for the rowset.
	* Calls to the method <code>setOriginal</code> connot be reversed.
	*
	* @throws SQLException if an error occurs
	*/
	@:overload override public function setOriginal() : Void;
	
	/**
	* Returns an identifier for the object (table) that was used to create this
	* rowset.
	*
	* @return a <code>String</code> object that identifies the table from
	*         which this <code>CachedRowSetImpl</code> object was derived
	* @throws SQLException if an error occurs
	*/
	@:overload override public function getTableName() : String;
	
	/**
	* Sets the identifier for the table from which this rowset was derived
	* to the given table name.
	*
	* @param tabName a <code>String</code> object that identifies the
	*          table from which this <code>CachedRowSetImpl</code> object
	*          was derived
	* @throws SQLException if an error occurs
	*/
	@:overload override public function setTableName(tabName : String) : Void;
	
	/**
	* Returns the columns that make a key to uniquely identify a
	* row in this <code>CachedRowSetImpl</code> object.
	*
	* @return an array of column numbers that constitutes a primary
	*           key for this rowset. This array should be empty
	*           if no column is representitive of a primary key
	* @throws SQLException if the rowset is empty or no columns
	*           are designated as primary keys
	* @see #setKeyColumns
	*/
	@:overload override public function getKeyColumns() : java.NativeArray<Int>;
	
	/**
	* Sets this <code>CachedRowSetImpl</code> object's
	* <code>keyCols</code> field with the given array of column
	* numbers, which forms a key for uniquely identifying a row
	* in this rowset.
	*
	* @param keys an array of <code>int</code> indicating the
	*        columns that form a primary key for this
	*        <code>CachedRowSetImpl</code> object; every
	*        element in the array must be greater than
	*        <code>0</code> and less than or equal to the number
	*        of columns in this rowset
	* @throws SQLException if any of the numbers in the
	*            given array is not valid for this rowset
	* @see #getKeyColumns
	*/
	@:overload override public function setKeyColumns(keys : java.NativeArray<Int>) : Void;
	
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
	* @param ref the new column <code>java.sql.Ref</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*        (2) the cursor is not on one of this rowset's rows or its
	*        insert row, or (3) this rowset is
	*        <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateRef(columnIndex : Int, ref : java.sql.Ref) : Void;
	
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
	* @param ref the new column <code>java.sql.Ref</code> value
	* @throws SQLException if (1) the given column name does not match the
	*        name of a column in this rowset, (2) the cursor is not on
	*        one of this rowset's rows or its insert row, or (3) this
	*        rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateRef(columnName : String, ref : java.sql.Ref) : Void;
	
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
	* @param c the new column <code>Clob value
	* @throws SQLException if (1) the given column index is out of bounds,
	*        (2) the cursor is not on one of this rowset's rows or its
	*        insert row, or (3) this rowset is
	*        <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateClob(columnIndex : Int, c : java.sql.Clob) : Void;
	
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
	* @param c the new column <code>Clob</code>value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateClob(columnName : String, c : java.sql.Clob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.sql.Blob</code> value.
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
	* @param b the new column <code>Blob</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBlob(columnIndex : Int, b : java.sql.Blob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.sql.Blob </code> value.
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
	* @param b the new column <code>Blob</code> value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateBlob(columnName : String, b : java.sql.Blob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.sql.Array</code> values.
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
	* @param a the new column <code>Array</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateArray(columnIndex : Int, a : java.sql.Array) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>CachedRowSetImpl</code> object with the given
	* <code>java.sql.Array</code> value.
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
	* @param a the new column <code>Array</code> value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload override public function updateArray(columnName : String, a : java.sql.Array) : Void;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>java.net.URL</code> object
	* in the Java programming language.
	*
	* @return a java.net.URL object containing the resource reference described by
	* the URL
	* @throws SQLException if (1) the given column index is out of bounds,
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>DATALINK</code> value.
	* @see #getURL(String)
	*/
	@:overload override public function getURL(columnIndex : Int) : java.net.URL;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>CachedRowSetImpl</code> object as a <code>java.net.URL</code> object
	* in the Java programming language.
	*
	* @return a java.net.URL object containing the resource reference described by
	* the URL
	* @throws SQLException if (1) the given column name not the name of a column
	* in this rowset, or
	* (2) the cursor is not on one of this rowset's rows or its
	* insert row, or (3) the designated column does not store an
	* SQL <code>DATALINK</code> value.
	* @see #getURL(int)
	*/
	@:overload override public function getURL(columnName : String) : java.net.URL;
	
	/**
	* The first warning reported by calls on this <code>CachedRowSetImpl</code>
	* object is returned. Subsequent <code>CachedRowSetImpl</code> warnings will
	* be chained to this <code>SQLWarning</code>. All <code>RowSetWarnings</code>
	* warnings are generated in the disconnected environment and remain a
	* seperate warning chain to that provided by the <code>getWarnings</code>
	* method.
	*
	* <P>The warning chain is automatically cleared each time a new
	* row is read.
	*
	* <P><B>Note:</B> This warning chain only covers warnings caused
	* by <code>CachedRowSet</code> (and their child interface)
	* methods. All <code>SQLWarnings</code> can be obtained using the
	* <code>getWarnings</code> method which tracks warnings generated
	* by the underlying JDBC driver.
	* @return the first SQLWarning or null
	*
	*/
	@:overload override public function getRowSetWarnings() : javax.sql.rowset.RowSetWarning;
	
	/**
	* Commits all changes performed by the <code>acceptChanges()</code>
	* methods
	*
	* @see java.sql.Connection#commit
	*/
	@:overload override public function commit() : Void;
	
	/**
	* Rolls back all changes performed by the <code>acceptChanges()</code>
	* methods
	*
	* @see java.sql.Connection#rollback
	*/
	@:overload override public function rollback() : Void;
	
	/**
	* Rolls back all changes performed by the <code>acceptChanges()</code>
	* to the last <code>Savepoint</code> transaction marker.
	*
	* @see java.sql.Connection#rollback(Savepoint)
	*/
	@:overload override public function rollback(s : java.sql.Savepoint) : Void;
	
	/**
	* Unsets the designated parameter to the given int array.
	* This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnIdxes the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnIdx is
	*  not the same as set using <code>setMatchColumn(int [])</code>
	*/
	@:overload override public function unsetMatchColumn(columnIdxes : java.NativeArray<Int>) : Void;
	
	/**
	* Unsets the designated parameter to the given String array.
	* This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnIdxes the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnName is
	*  not the same as set using <code>setMatchColumn(String [])</code>
	*/
	@:overload override public function unsetMatchColumn(columnIdxes : java.NativeArray<String>) : Void;
	
	/**
	* Retrieves the column name as <code>String</code> array
	* that was set using <code>setMatchColumn(String [])</code>
	* for this rowset.
	*
	* @return a <code>String</code> array object that contains the column names
	*         for the rowset which has this the match columns
	*
	* @throws SQLException if an error occurs or column name is not set
	*/
	@:overload override public function getMatchColumnNames() : java.NativeArray<String>;
	
	/**
	* Retrieves the column id as <code>int</code> array that was set using
	* <code>setMatchColumn(int [])</code> for this rowset.
	*
	* @return a <code>int</code> array object that contains the column ids
	*         for the rowset which has this as the match columns.
	*
	* @throws SQLException if an error occurs or column index is not set
	*/
	@:overload override public function getMatchColumnIndexes() : java.NativeArray<Int>;
	
	/**
	* Sets the designated parameter to the given int array.
	* This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumnIndexes</code> is called.
	*
	* @param columnIdxes the indexes into this rowset
	*        object's internal representation of parameter values; the
	*        first parameter is 0, the second is 1, and so on; must be
	*        <code>0</code> or greater
	* @throws SQLException if an error occurs or the
	*                         parameter index is out of bounds
	*/
	@:overload override public function setMatchColumn(columnIdxes : java.NativeArray<Int>) : Void;
	
	/**
	* Sets the designated parameter to the given String array.
	*  This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumn</code> is called.
	*
	* @param columnNames the name of the column into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds
	*/
	@:overload override public function setMatchColumn(columnNames : java.NativeArray<String>) : Void;
	
	/**
	* Sets the designated parameter to the given <code>int</code>
	* object.  This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumn</code> is called.
	*
	* @param columnIdx the index into this rowset
	*        object's internal representation of parameter values; the
	*        first parameter is 0, the second is 1, and so on; must be
	*        <code>0</code> or greater
	* @throws SQLException if an error occurs or the
	*                         parameter index is out of bounds
	*/
	@:overload override public function setMatchColumn(columnIdx : Int) : Void;
	
	/**
	* Sets the designated parameter to the given <code>String</code>
	* object.  This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumn</code> is called.
	*
	* @param columnName the name of the column into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds
	*/
	@:overload override public function setMatchColumn(columnName : String) : Void;
	
	/**
	* Unsets the designated parameter to the given <code>int</code>
	* object.  This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnIdx the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnIdx is
	*  not the same as set using <code>setMatchColumn(int)</code>
	*/
	@:overload override public function unsetMatchColumn(columnIdx : Int) : Void;
	
	/**
	* Unsets the designated parameter to the given <code>String</code>
	* object.  This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnName the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnName is
	*  not the same as set using <code>setMatchColumn(String)</code>
	*/
	@:overload override public function unsetMatchColumn(columnName : String) : Void;
	
	/**
	* Notifies registered listeners that a RowSet object in the given RowSetEvent
	* object has populated a number of additional rows. The <code>numRows</code> parameter
	* ensures that this event will only be fired every <code>numRow</code>.
	* <p>
	* The source of the event can be retrieved with the method event.getSource.
	*
	* @param event a <code>RowSetEvent</code> object that contains the
	*     <code>RowSet</code> object that is the source of the events
	* @param numRows when populating, the number of rows interval on which the
	*     <code>CachedRowSet</code> populated should fire; the default value
	*     is zero; cannot be less than <code>fetchSize</code> or zero
	*/
	@:overload override public function rowSetPopulated(event : javax.sql.RowSetEvent, numRows : Int) : Void;
	
	/**
	* Populates this <code>CachedRowSet</code> object with data from
	* the given <code>ResultSet</code> object. While related to the <code>populate(ResultSet)</code>
	* method, an additional parameter is provided to allow starting position within
	* the <code>ResultSet</code> from where to populate the CachedRowSet
	* instance.
	*
	* This method is an alternative to the method <code>execute</code>
	* for filling the rowset with data.  The method <code>populate</code>
	* does not require that the properties needed by the method
	* <code>execute</code>, such as the <code>command</code> property,
	* be set. This is true because the method <code>populate</code>
	* is given the <code>ResultSet</code> object from
	* which to get data and thus does not need to use the properties
	* required for setting up a connection and executing this
	* <code>CachedRowSetImpl</code> object's command.
	* <P>
	* After populating this rowset with data, the method
	* <code>populate</code> sets the rowset's metadata and
	* then sends a <code>RowSetChangedEvent</code> object
	* to all registered listeners prior to returning.
	*
	* @param data the <code>ResultSet</code> object containing the data
	*             to be read into this <code>CachedRowSetImpl</code> object
	* @param start the integer specifing the position in the
	*        <code>ResultSet</code> object to popultate the
	*        <code>CachedRowSetImpl</code> object.
	* @throws SQLException if an error occurs; or the max row setting is
	*          violated while populating the RowSet.Also id the start position
	*          is negative.
	* @see #execute
	*/
	@:overload override public function populate(data : java.sql.ResultSet, start : Int) : Void;
	
	/**
	* The nextPage gets the next page, that is a <code>CachedRowSetImpl</code> object
	* containing the number of rows specified by page size.
	* @return boolean value true indicating whether there are more pages to come and
	*         false indicating that this is the last page.
	* @throws SQLException if an error occurs or this called before calling populate.
	*/
	@:overload override public function nextPage() : Bool;
	
	/**
	* This is the setter function for setting the size of the page, which specifies
	* how many rows have to be retrived at a time.
	*
	* @param size which is the page size
	* @throws SQLException if size is less than zero or greater than max rows.
	*/
	@:overload override public function setPageSize(size : Int) : Void;
	
	/**
	* This is the getter function for the size of the page.
	*
	* @return an integer that is the page size.
	*/
	@:overload override public function getPageSize() : Int;
	
	/**
	* Retrieves the data present in the page prior to the page from where it is
	* called.
	* @return boolean value true if it retrieves the previous page, flase if it
	*         is on the first page.
	* @throws SQLException if it is called before populate is called or ResultSet
	*         is of type <code>ResultSet.TYPE_FORWARD_ONLY</code> or if an error
	*         occurs.
	*/
	@:overload override public function previousPage() : Bool;
	
	/**
	* Updates the designated column with a character stream value, which will
	* have the specified number of bytes. The driver does the necessary conversion
	* from Java character format to the national character set in the database.
	* It is intended for use when updating NCHAR,NVARCHAR and LONGNVARCHAR columns.
	* The updater methods are used to update column values in the current row or
	* the insert row. The updater methods do not update the underlying database;
	* instead the updateRow or insertRow methods are called to update the database.
	*
	* @param columnIndex - the first column is 1, the second is 2, ...
	* @param x - the new column value
	* @param length - the length of the stream
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnIndex : Int, x : java.io.Reader, length : Int) : Void;
	
	/**
	* Updates the designated column with a character stream value, which will
	* have the specified number of bytes. The driver does the necessary conversion
	* from Java character format to the national character set in the database.
	* It is intended for use when updating NCHAR,NVARCHAR and LONGNVARCHAR columns.
	* The updater methods are used to update column values in the current row or
	* the insert row. The updater methods do not update the underlying database;
	* instead the updateRow or insertRow methods are called to update the database.
	*
	* @param columnName - name of the Column
	* @param x - the new column value
	* @param length - the length of the stream
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnName : String, x : java.io.Reader, length : Int) : Void;
	
	
}
