package javax.sql.rowset.spi;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface SyncResolver extends javax.sql.RowSet
{
	/**
	* Retrieves the conflict status of the current row of this <code>SyncResolver</code>,
	* which indicates the operation
	* the <code>RowSet</code> object was attempting when the conflict occurred.
	*
	* @return one of the following constants:
	*         <code>SyncResolver.UPDATE_ROW_CONFLICT</code>,
	*         <code>SyncResolver.DELETE_ROW_CONFLICT</code>,
	*         <code>SyncResolver.INSERT_ROW_CONFLICT</code>, or
	*         <code>SyncResolver.NO_ROW_CONFLICT</code>
	*/
	@:overload @:public public function getStatus() : Int;
	
	/**
	* Retrieves the value in the designated column in the current row of this
	* <code>SyncResolver</code> object, which is the value in the data source
	* that caused a conflict.
	*
	* @param index an <code>int</code> designating the column in this row of this
	*        <code>SyncResolver</code> object from which to retrieve the value
	*        causing a conflict
	* @return the value of the designated column in the current row of this
	*         <code>SyncResolver</code> object
	* @throws SQLException if a database access error occurs
	*/
	@:overload @:public public function getConflictValue(index : Int) : Dynamic;
	
	/**
	* Retrieves the value in the designated column in the current row of this
	* <code>SyncResolver</code> object, which is the value in the data source
	* that caused a conflict.
	*
	* @param columnName a <code>String</code> object designating the column in this row of this
	*        <code>SyncResolver</code> object from which to retrieve the value
	*        causing a conflict
	* @return the value of the designated column in the current row of this
	*         <code>SyncResolver</code> object
	* @throws SQLException if a database access error occurs
	*/
	@:overload @:public public function getConflictValue(columnName : String) : Dynamic;
	
	/**
	* Sets <i>obj</i> as the value in column <i>index</i> in the current row of the
	* <code>RowSet</code> object that is being synchronized. <i>obj</i>
	* is set as the value in the data source internally.
	*
	* @param index an <code>int</code> giving the number of the column into which to
	*        set the value to be persisted
	* @param obj an <code>Object</code> that is the value to be set in the
	*        <code>RowSet</code> object and persisted in the data source
	* @throws SQLException if a database access error occurs
	*/
	@:overload @:public public function setResolvedValue(index : Int, obj : Dynamic) : Void;
	
	/**
	* Sets <i>obj</i> as the value in column <i>columnName</i> in the current row of the
	* <code>RowSet</code> object that is being synchronized. <i>obj</i>
	* is set as the value in the data source internally.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*        into which to set the value to be persisted
	* @param obj an <code>Object</code> that is the value to be set in the
	*        <code>RowSet</code> object and persisted in the data source
	* @throws SQLException if a database access error occurs
	*/
	@:overload @:public public function setResolvedValue(columnName : String, obj : Dynamic) : Void;
	
	/**
	* Moves the cursor down from its current position to the next row that contains
	* a conflict value. A <code>SyncResolver</code> object's
	* cursor is initially positioned before the first conflict row; the first call to the
	* method <code>nextConflict</code> makes the first conflict row the current row;
	* the second call makes the second conflict row the current row, and so on.
	* <p>
	* A call to the method <code>nextConflict</code> will implicitly close
	* an input stream if one is open and will clear the <code>SyncResolver</code>
	* object's warning chain.
	*
	* @return <code>true</code> if the new current row is valid; <code>false</code>
	*         if there are no more rows
	* @throws SQLException if a database access error occurs or the result set type
	*     is <code>TYPE_FORWARD_ONLY</code>
	*
	*/
	@:overload @:public public function nextConflict() : Bool;
	
	/**
	* Moves the cursor up from its current position to the previous conflict
	* row in this <code>SyncResolver</code> object.
	* <p>
	* A call to the method <code>previousConflict</code> will implicitly close
	* an input stream if one is open and will clear the <code>SyncResolver</code>
	* object's warning chain.
	*
	* @return <code>true</code> if the cursor is on a valid row; <code>false</code>
	*     if it is off the result set
	* @throws SQLException if a database access error occurs or the result set type
	*     is <code>TYPE_FORWARD_ONLY</code>
	*/
	@:overload @:public public function previousConflict() : Bool;
	
	
}
