package javax.accessibility;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Class AccessibleTable describes a user-interface component that
* presents data in a two-dimensional table format.
*
* @author      Lynn Monsanto
* @since 1.3
*/
@:require(java3) extern interface AccessibleTable
{
	/**
	* Returns the caption for the table.
	*
	* @return the caption for the table
	*/
	@:overload public function getAccessibleCaption() : javax.accessibility.Accessible;
	
	/**
	* Sets the caption for the table.
	*
	* @param a the caption for the table
	*/
	@:overload public function setAccessibleCaption(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the summary description of the table.
	*
	* @return the summary description of the table
	*/
	@:overload public function getAccessibleSummary() : javax.accessibility.Accessible;
	
	/**
	* Sets the summary description of the table
	*
	* @param a the summary description of the table
	*/
	@:overload public function setAccessibleSummary(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the number of rows in the table.
	*
	* @return the number of rows in the table
	*/
	@:overload public function getAccessibleRowCount() : Int;
	
	/**
	* Returns the number of columns in the table.
	*
	* @return the number of columns in the table
	*/
	@:overload public function getAccessibleColumnCount() : Int;
	
	/**
	* Returns the Accessible at a specified row and column
	* in the table.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the Accessible at the specified row and column
	*/
	@:overload public function getAccessibleAt(r : Int, c : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of rows occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of rows occupied by the Accessible at a
	* given specified (row, column)
	*/
	@:overload public function getAccessibleRowExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the number of columns occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of columns occupied by the Accessible at a
	* given specified row and column
	*/
	@:overload public function getAccessibleColumnExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the row headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the row
	* headers
	*/
	@:overload public function getAccessibleRowHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the row headers.
	*
	* @param table an AccessibleTable representing the
	* row headers
	*/
	@:overload public function setAccessibleRowHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the column headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the column
	* headers
	*/
	@:overload public function getAccessibleColumnHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the column headers.
	*
	* @param table an AccessibleTable representing the
	* column headers
	*/
	@:overload public function setAccessibleColumnHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the description of the specified row in the table.
	*
	* @param r zero-based row of the table
	* @return the description of the row
	*/
	@:overload public function getAccessibleRowDescription(r : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified row of the table.
	*
	* @param r zero-based row of the table
	* @param a the description of the row
	*/
	@:overload public function setAccessibleRowDescription(r : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @return the text description of the column
	*/
	@:overload public function getAccessibleColumnDescription(c : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @param a the text description of the column
	*/
	@:overload public function setAccessibleColumnDescription(c : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns a boolean value indicating whether the accessible at
	* a specified row and column is selected.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the boolean value true if the accessible at the
	* row and column is selected. Otherwise, the boolean value
	* false
	*/
	@:overload public function isAccessibleSelected(r : Int, c : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified row
	* is selected.
	*
	* @param r zero-based row of the table
	* @return the boolean value true if the specified row is selected.
	* Otherwise, false.
	*/
	@:overload public function isAccessibleRowSelected(r : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified column
	* is selected.
	*
	* @param c zero-based column of the table
	* @return the boolean value true if the specified column is selected.
	* Otherwise, false.
	*/
	@:overload public function isAccessibleColumnSelected(c : Int) : Bool;
	
	/**
	* Returns the selected rows in a table.
	*
	* @return an array of selected rows where each element is a
	* zero-based row of the table
	*/
	@:overload public function getSelectedAccessibleRows() : java.NativeArray<Int>;
	
	/**
	* Returns the selected columns in a table.
	*
	* @return an array of selected columns where each element is a
	* zero-based column of the table
	*/
	@:overload public function getSelectedAccessibleColumns() : java.NativeArray<Int>;
	
	
}
