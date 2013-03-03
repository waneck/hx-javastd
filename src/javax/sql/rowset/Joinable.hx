package javax.sql.rowset;
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
extern interface Joinable
{
	/**
	* Sets the designated column as the match column for this <code>RowSet</code>
	* object. A <code>JoinRowSet</code> object can now add this <code>RowSet</code>
	* object based on the match column.
	* <p>
	* Sub-interfaces such as the <code>CachedRowSet</code><sup><font size=-2>TM</font></sup>
	* interface define the method <code>CachedRowSet.setKeyColumns</code>, which allows
	* primary key semantics to be enforced on specific columns.
	* Implementations of the <code>setMatchColumn(int columnIdx)</code> method
	* should ensure that the constraints on the key columns are maintained when
	* a <code>CachedRowSet</code> object sets a primary key column as a match column.
	*
	* @param columnIdx an <code>int</code> identifying the index of the column to be
	*        set as the match column
	* @throws SQLException if an invalid column index is set
	* @see #setMatchColumn(int[])
	* @see #unsetMatchColumn(int)
	*
	*/
	@:overload @:public public function setMatchColumn(columnIdx : Int) : Void;
	
	/**
	* Sets the designated columns as the match column for this <code>RowSet</code>
	* object. A <code>JoinRowSet</code> object can now add this <code>RowSet</code>
	* object based on the match column.
	*
	* @param columnIdxes an array of <code>int</code> identifying the indexes of the
	*      columns to be set as the match columns
	* @throws SQLException if an invalid column index is set
	* @see #setMatchColumn(int[])
	* @see #unsetMatchColumn(int[])
	*/
	@:overload @:public public function setMatchColumn(columnIdxes : java.NativeArray<Int>) : Void;
	
	/**
	* Sets the designated column as the match column for this <code>RowSet</code>
	* object. A <code>JoinRowSet</code> object can now add this <code>RowSet</code>
	* object based on the match column.
	* <p>
	* Subinterfaces such as the <code>CachedRowSet</code> interface define
	* the method <code>CachedRowSet.setKeyColumns</code>, which allows
	* primary key semantics to be enforced on specific columns.
	* Implementations of the <code>setMatchColumn(String columnIdx)</code> method
	* should ensure that the constraints on the key columns are maintained when
	* a <code>CachedRowSet</code> object sets a primary key column as a match column.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*      to be set as the match column
	* @throws SQLException if an invalid column name is set, the column name
	*      is a null, or the column name is an empty string
	* @see #unsetMatchColumn
	* @see #setMatchColumn(int[])
	*/
	@:overload @:public public function setMatchColumn(columnName : String) : Void;
	
	/**
	* Sets the designated columns as the match column for this <code>RowSet</code>
	* object. A <code>JoinRowSet</code> object can now add this <code>RowSet</code>
	* object based on the match column.
	*
	* @param columnNames an array of <code>String</code> objects giving the names
	*     of the column to be set as the match columns
	* @throws SQLException if an invalid column name is set, the column name
	*      is a null, or the column name is an empty string
	* @see #unsetMatchColumn
	* @see #setMatchColumn(int[])
	*/
	@:overload @:public public function setMatchColumn(columnNames : java.NativeArray<String>) : Void;
	
	/**
	* Retrieves the indexes of the match columns that were set for this
	* <code>RowSet</code> object with the method
	* <code>setMatchColumn(int[] columnIdxes)</code>.
	*
	* @return an <code>int</code> array identifying the indexes of the columns
	*         that were set as the match columns for this <code>RowSet</code> object
	* @throws SQLException if no match column has been set
	* @see #setMatchColumn
	* @see #unsetMatchColumn
	*/
	@:overload @:public public function getMatchColumnIndexes() : java.NativeArray<Int>;
	
	/**
	* Retrieves the names of the match columns that were set for this
	* <code>RowSet</code> object with the method
	* <code>setMatchColumn(String [] columnNames)</code>.
	*
	* @return an array of <code>String</code> objects giving the names of the columns
	*         set as the match columns for this <code>RowSet</code> object
	* @throws SQLException if no match column has been set
	* @see #setMatchColumn
	* @see #unsetMatchColumn
	*
	*/
	@:overload @:public public function getMatchColumnNames() : java.NativeArray<String>;
	
	/**
	* Unsets the designated column as the match column for this <code>RowSet</code>
	* object.
	* <P>
	* <code>RowSet</code> objects that implement the <code>Joinable</code> interface
	* must ensure that a key-like constraint continues to be enforced until the
	* method <code>CachedRowSet.unsetKeyColumns</code> has been called on the
	* designated column.
	*
	* @param columnIdx an <code>int</code> that identifies the index of the column
	*          that is to be unset as a match column
	* @throws SQLException if an invalid column index is designated or if
	*          the designated column was not previously set as a match
	*          column
	* @see #setMatchColumn
	*/
	@:overload @:public public function unsetMatchColumn(columnIdx : Int) : Void;
	
	/**
	* Unsets the designated columns as the match column for this <code>RowSet</code>
	* object.
	*
	* @param columnIdxes an arrary of <code>int</code> that identifies the indexes
	*     of the columns that are to be unset as match columns
	* @throws SQLException if an invalid column index is designated or if
	*          the designated column was not previously set as a match
	*          column
	* @see #setMatchColumn
	*/
	@:overload @:public public function unsetMatchColumn(columnIdxes : java.NativeArray<Int>) : Void;
	
	/**
	* Unsets the designated column as the match column for this <code>RowSet</code>
	* object.
	* <P>
	* <code>RowSet</code> objects that implement the <code>Joinable</code> interface
	* must ensure that a key-like constraint continues to be enforced until the
	* method <code>CachedRowSet.unsetKeyColumns</code> has been called on the
	* designated column.
	*
	* @param columnName a <code>String</code> object giving the name of the column
	*          that is to be unset as a match column
	* @throws SQLException if an invalid column name is designated or
	*          the designated column was not previously set as a match
	*          column
	* @see #setMatchColumn
	*/
	@:overload @:public public function unsetMatchColumn(columnName : String) : Void;
	
	/**
	* Unsets the designated columns as the match columns for this <code>RowSet</code>
	* object.
	*
	* @param columnName an array of <code>String</code> objects giving the names of
	*     the columns that are to be unset as the match columns
	* @throws SQLException if an invalid column name is designated or the
	*     designated column was not previously set as a match column
	* @see #setMatchColumn
	*/
	@:overload @:public public function unsetMatchColumn(columnName : java.NativeArray<String>) : Void;
	
	
}
