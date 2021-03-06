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
* The AccessibleTableModelChange interface describes a change to
* the table model.  The attributes of the model change can be
* obtained by the following methods:
* <ul>
* <li> public int getType()
* <li> public int getFirstRow();
* <li> public int getLastRow();
* <li> public int getFirstColumn();
* <li> public int getLastColumn();
* </ul>
* The model change type returned by getType() will be one of:
* <ul>
* <li> INSERT - one or more rows and/or columns have been inserted
* <li> UPDATE - some of the table data has changed
* <li> DELETE - one or more rows and/or columns have been deleted
* </ul>
* The affected area of the table can be determined by the other
* four methods which specify ranges of rows and columns
*
* @see Accessible
* @see Accessible#getAccessibleContext
* @see AccessibleContext
* @see AccessibleContext#getAccessibleTable
*
* @author      Lynn Monsanto
* @since 1.3
*/
@:require(java3) extern interface AccessibleTableModelChange
{
	/**
	*  Returns the type of event
	*
	*  @see #INSERT
	*  @see #UPDATE
	*  @see #DELETE
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Returns the first row that changed.
	*/
	@:overload @:public public function getFirstRow() : Int;
	
	/**
	* Returns the last row that changed.
	*/
	@:overload @:public public function getLastRow() : Int;
	
	/**
	* Returns the first column that changed.
	*/
	@:overload @:public public function getFirstColumn() : Int;
	
	/**
	* Returns the last column that changed.
	*/
	@:overload @:public public function getLastColumn() : Int;
	
	
}
