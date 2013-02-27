package com.sun.rowset.internal;
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
* A class used internally to manage a <code>CachedRowSet</code> object's
* insert row.  This class keeps track of the number of columns in the
* insert row and which columns have had a value inserted.  It provides
* methods for retrieving a column value, setting a column value, and finding
* out whether the insert row is complete.
*/
extern class InsertRow extends com.sun.rowset.internal.BaseRow implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Creates an <code>InsertRow</code> object initialized with the
	* given number of columns, an array for keeping track of the
	* original values in this insert row, and a
	* <code>BitSet</code> object with the same number of bits as
	* there are columns.
	*
	* @param numCols an <code>int</code> indicating the number of columns
	*                in this <code>InsertRow</code> object
	*/
	@:overload public function new(numCols : Int) : Void;
	
	/**
	* Sets the bit in this <code>InsertRow</code> object's internal
	* <code>BitSet</code> object that corresponds to the specified column
	* in this <code>InsertRow</code> object. Setting a bit indicates
	* that a value has been set.
	*
	* @param col the number of the column to be marked as inserted;
	*            the first column is <code>1</code>
	*/
	@:overload private function markColInserted(col : Int) : Void;
	
	/**
	* Indicates whether this <code>InsertRow</code> object has a value
	* for every column that cannot be null.
	* @param RowSetMD the <code>RowSetMetaData</code> object for the
	*                 <code>CachedRowSet</code> object that maintains this
	*                 <code>InsertRow</code> object
	* @return <code>true</code> if this <code>InsertRow</code> object is
	*         complete; <code>false</code> otherwise
	* @throws SQLException if there is an error accessing data
	*/
	@:overload public function isCompleteRow(RowSetMD : javax.sql.RowSetMetaData) : Bool;
	
	/**
	* Clears all the bits in the internal <code>BitSet</code> object
	* maintained by this <code>InsertRow</code> object.  Clearing all the bits
	* indicates that none of the columns have had a value inserted.
	*/
	@:overload public function initInsertRow() : Void;
	
	/**
	* Retrieves the value of the designated column in this
	* <code>InsertRow</code> object.  If no value has been inserted
	* into the designated column, this method throws an
	* <code>SQLException</code>.
	*
	* @param idx the column number of the value to be retrieved;
	*            the first column is <code>1</code>
	* @throws SQLException if no value has been inserted into
	*                                   the designated column
	*/
	@:overload override public function getColumnObject(idx : Int) : Dynamic;
	
	/**
	* Sets the element in this <code>InsertRow</code> object's
	* internal array of original values that corresponds to the
	* designated column with the given value.  If the third
	* argument is <code>true</code>,
	* which means that the cursor is on the insert row, this
	* <code>InsertRow</code> object's internal <code>BitSet</code> object
	* is set so that the bit corresponding to the column being set is
	* turned on.
	*
	* @param idx the number of the column in the insert row to be set;
	*              the first column is <code>1</code>
	* @param val the value to be set
	*/
	@:overload override public function setColumnObject(idx : Int, val : Dynamic) : Void;
	
	
}
