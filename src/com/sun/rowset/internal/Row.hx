package com.sun.rowset.internal;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A class that keeps track of a row's values. A <code>Row</code> object
* maintains an array of current column values and an array of original
* column values, and it provides methods for getting and setting the
* value of a column.  It also keeps track of which columns have
* changed and whether the change was a delete, insert, or update.
* <P>
* Note that column numbers for rowsets start at <code>1</code>,
* whereas the first element of an array or bitset is <code>0</code>.
* The argument for the method <code>getColumnUpdated</code> refers to
* the column number in the rowset (the first column is <code>1</code>);
* the argument for <code>setColumnUpdated</code> refers to the index
* into the rowset's internal bitset (the first bit is <code>0</code>).
*/
extern class Row extends com.sun.rowset.internal.BaseRow implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Creates a new <code>Row</code> object with the given number of columns.
	* The newly-created row includes an array of original values,
	* an array for storing its current values, and a <code>BitSet</code>
	* object for keeping track of which column values have been changed.
	*/
	@:overload @:public public function new(numCols : Int) : Void;
	
	/**
	* Creates a new <code>Row</code> object with the given number of columns
	* and with its array of original values initialized to the given array.
	* The new <code>Row</code> object also has an array for storing its
	* current values and a <code>BitSet</code> object for keeping track
	* of which column values have been changed.
	*/
	@:overload @:public public function new(numCols : Int, vals : java.NativeArray<Dynamic>) : Void;
	
	/**
	*
	* This method is called internally by the <code>CachedRowSet.populate</code>
	* methods.
	*
	* @param idx the number of the column in this <code>Row</code> object
	*            that is to be set; the index of the first column is
	*            <code>1</code>
	* @param val the new value to be set
	*/
	@:overload @:public public function initColumnObject(idx : Int, val : Dynamic) : Void;
	
	/**
	*
	* This method is called internally by the <code>CachedRowSet.updateXXX</code>
	* methods.
	*
	* @param idx the number of the column in this <code>Row</code> object
	*            that is to be set; the index of the first column is
	*            <code>1</code>
	* @param val the new value to be set
	*/
	@:overload @:public override public function setColumnObject(idx : Int, val : Dynamic) : Void;
	
	/**
	* Retrieves the column value stored in the designated column of this
	* <code>Row</code> object.
	*
	* @param columnIndex the index of the column value to be retrieved;
	*                    the index of the first column is <code>1</code>
	* @return an <code>Object</code> in the Java programming language that
	*         represents the value stored in the designated column
	* @throws SQLException if there is a database access error
	*/
	@:overload @:public override public function getColumnObject(columnIndex : Int) : Dynamic;
	
	/**
	* Indicates whether the designated column of this <code>Row</code> object
	* has been changed.
	* @param idx the index into the <code>BitSet</code> object maintained by
	*            this <code>Row</code> object to keep track of which column
	*            values have been modified; the index of the first bit is
	*            <code>0</code>
	* @return <code>true</code> if the designated column value has been changed;
	*         <code>false</code> otherwise
	*
	*/
	@:overload @:public public function getColUpdated(idx : Int) : Bool;
	
	/**
	* Sets this <code>Row</code> object's <code>deleted</code> field
	* to <code>true</code>.
	*
	* @see #getDeleted
	*/
	@:overload @:public public function setDeleted() : Void;
	
	/**
	* Retrieves the value of this <code>Row</code> object's <code>deleted</code> field,
	* which will be <code>true</code> if one or more of its columns has been
	* deleted.
	* @return <code>true</code> if a column value has been deleted; <code>false</code>
	*         otherwise
	*
	* @see #setDeleted
	*/
	@:overload @:public public function getDeleted() : Bool;
	
	/**
	* Sets the <code>deleted</code> field for this <code>Row</code> object to
	* <code>false</code>.
	*/
	@:overload @:public public function clearDeleted() : Void;
	
	/**
	* Sets the value of this <code>Row</code> object's <code>inserted</code> field
	* to <code>true</code>.
	*
	* @see #getInserted
	*/
	@:overload @:public public function setInserted() : Void;
	
	/**
	* Retrieves the value of this <code>Row</code> object's <code>inserted</code> field,
	* which will be <code>true</code> if this row has been inserted.
	* @return <code>true</code> if this row has been inserted; <code>false</code>
	*         otherwise
	*
	* @see #setInserted
	*/
	@:overload @:public public function getInserted() : Bool;
	
	/**
	* Sets the <code>inserted</code> field for this <code>Row</code> object to
	* <code>false</code>.
	*/
	@:overload @:public public function clearInserted() : Void;
	
	/**
	* Retrieves the value of this <code>Row</code> object's
	* <code>updated</code> field.
	* @return <code>true</code> if this <code>Row</code> object has been
	*         updated; <code>false</code> if it has not
	*
	* @see #setUpdated
	*/
	@:overload @:public public function getUpdated() : Bool;
	
	/**
	* Sets the <code>updated</code> field for this <code>Row</code> object to
	* <code>true</code> if one or more of its column values has been changed.
	*
	* @see #getUpdated
	*/
	@:overload @:public public function setUpdated() : Void;
	
	/**
	* Sets the <code>updated</code> field for this <code>Row</code> object to
	* <code>false</code>, sets all the column values in this <code>Row</code>
	* object's internal array of current values to <code>null</code>, and clears
	* all of the bits in the <code>BitSet</code> object maintained by this
	* <code>Row</code> object.
	*/
	@:overload @:public public function clearUpdated() : Void;
	
	/**
	* Sets the column values in this <code>Row</code> object's internal
	* array of original values with the values in its internal array of
	* current values, sets all the values in this <code>Row</code>
	* object's internal array of current values to <code>null</code>,
	* clears all the bits in this <code>Row</code> object's internal bitset,
	* and sets its <code>updated</code> field to <code>false</code>.
	* <P>
	* This method is called internally by the <code>CachedRowSet</code>
	* method <code>makeRowOriginal</code>.
	*/
	@:overload @:public public function moveCurrentToOrig() : Void;
	
	/**
	* Returns the row on which the cursor is positioned.
	*
	* @return the <code>Row</code> object on which the <code>CachedRowSet</code>
	*           implementation objects's cursor is positioned
	*/
	@:overload @:public public function getCurrentRow() : com.sun.rowset.internal.BaseRow;
	
	
}
