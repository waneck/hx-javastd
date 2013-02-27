package org.w3c.dom.html;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2000 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE. See W3C License http://www.w3.org/Consortium/Legal/ for more
* details.
*/
extern interface HTMLTableRowElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  The index of this row, relative to the entire table, starting from 0.
	* This is in document tree order and not display order. The
	* <code>rowIndex</code> does not take into account sections (
	* <code>THEAD</code> , <code>TFOOT</code> , or <code>TBODY</code> )
	* within the table.
	*/
	@:overload public function getRowIndex() : Int;
	
	/**
	*  The index of this row, relative to the current section (
	* <code>THEAD</code> , <code>TFOOT</code> , or <code>TBODY</code> ),
	* starting from 0.
	*/
	@:overload public function getSectionRowIndex() : Int;
	
	/**
	*  The collection of cells in this row.
	*/
	@:overload public function getCells() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  Horizontal alignment of data within cells of this row. See the  align
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getAlign() : String;
	
	@:overload public function setAlign(align : String) : Void;
	
	/**
	*  Background color for rows. See the  bgcolor attribute definition in
	* HTML 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getBgColor() : String;
	
	@:overload public function setBgColor(bgColor : String) : Void;
	
	/**
	*  Alignment character for cells in a column. See the  char attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getCh() : String;
	
	@:overload public function setCh(ch : String) : Void;
	
	/**
	*  Offset of alignment character. See the  charoff attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getChOff() : String;
	
	@:overload public function setChOff(chOff : String) : Void;
	
	/**
	*  Vertical alignment of data within cells of this row. See the  valign
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getVAlign() : String;
	
	@:overload public function setVAlign(vAlign : String) : Void;
	
	/**
	*  Insert an empty <code>TD</code> cell into this row. If
	* <code>index</code> is equal to the number of cells, the new cell is
	* appended
	* @param index  The place to insert the cell, starting from 0.
	* @return  The newly created cell.
	* @exception DOMException
	*    INDEX_SIZE_ERR: Raised if the specified <code>index</code> is
	*   greater than the number of cells or if the index is negative.
	*/
	@:overload public function insertCell(index : Int) : org.w3c.dom.html.HTMLElement;
	
	/**
	*  Delete a cell from the current row.
	* @param index  The index of the cell to delete, starting from 0.
	* @exception DOMException
	*    INDEX_SIZE_ERR: Raised if the specified <code>index</code> is
	*   greater than or equal to the number of cells or if the index is
	*   negative.
	*/
	@:overload public function deleteCell(index : Int) : Void;
	
	
}
