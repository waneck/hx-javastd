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
extern interface HTMLTableElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  Returns the table's <code>CAPTION</code> , or void if none exists.
	*/
	@:overload @:public public function getCaption() : org.w3c.dom.html.HTMLTableCaptionElement;
	
	@:overload @:public public function setCaption(caption : org.w3c.dom.html.HTMLTableCaptionElement) : Void;
	
	/**
	*  Returns the table's <code>THEAD</code> , or <code>null</code> if none
	* exists.
	*/
	@:overload @:public public function getTHead() : org.w3c.dom.html.HTMLTableSectionElement;
	
	@:overload @:public public function setTHead(tHead : org.w3c.dom.html.HTMLTableSectionElement) : Void;
	
	/**
	*  Returns the table's <code>TFOOT</code> , or <code>null</code> if none
	* exists.
	*/
	@:overload @:public public function getTFoot() : org.w3c.dom.html.HTMLTableSectionElement;
	
	@:overload @:public public function setTFoot(tFoot : org.w3c.dom.html.HTMLTableSectionElement) : Void;
	
	/**
	*  Returns a collection of all the rows in the table, including all in
	* <code>THEAD</code> , <code>TFOOT</code> , all <code>TBODY</code>
	* elements.
	*/
	@:overload @:public public function getRows() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  Returns a collection of the defined table bodies.
	*/
	@:overload @:public public function getTBodies() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  Specifies the table's position with respect to the rest of the
	* document. See the  align attribute definition in HTML 4.0. This
	* attribute is deprecated in HTML 4.0.
	*/
	@:overload @:public public function getAlign() : String;
	
	@:overload @:public public function setAlign(align : String) : Void;
	
	/**
	*  Cell background color. See the  bgcolor attribute definition in HTML
	* 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload @:public public function getBgColor() : String;
	
	@:overload @:public public function setBgColor(bgColor : String) : Void;
	
	/**
	*  The width of the border around the table. See the  border attribute
	* definition in HTML 4.0.
	*/
	@:overload @:public public function getBorder() : String;
	
	@:overload @:public public function setBorder(border : String) : Void;
	
	/**
	*  Specifies the horizontal and vertical space between cell content and
	* cell borders. See the  cellpadding attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getCellPadding() : String;
	
	@:overload @:public public function setCellPadding(cellPadding : String) : Void;
	
	/**
	*  Specifies the horizontal and vertical separation between cells. See
	* the  cellspacing attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getCellSpacing() : String;
	
	@:overload @:public public function setCellSpacing(cellSpacing : String) : Void;
	
	/**
	*  Specifies which external table borders to render. See the  frame
	* attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getFrame() : String;
	
	@:overload @:public public function setFrame(frame : String) : Void;
	
	/**
	*  Specifies which internal table borders to render. See the  rules
	* attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getRules() : String;
	
	@:overload @:public public function setRules(rules : String) : Void;
	
	/**
	*  Description about the purpose or structure of a table. See the
	* summary attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getSummary() : String;
	
	@:overload @:public public function setSummary(summary : String) : Void;
	
	/**
	*  Specifies the desired table width. See the  width attribute definition
	* in HTML 4.0.
	*/
	@:overload @:public public function getWidth() : String;
	
	@:overload @:public public function setWidth(width : String) : Void;
	
	/**
	*  Create a table header row or return an existing one.
	* @return  A new table header element (<code>THEAD</code> ).
	*/
	@:overload @:public public function createTHead() : org.w3c.dom.html.HTMLElement;
	
	/**
	*  Delete the header from the table, if one exists.
	*/
	@:overload @:public public function deleteTHead() : Void;
	
	/**
	*  Create a table footer row or return an existing one.
	* @return  A footer element (<code>TFOOT</code> ).
	*/
	@:overload @:public public function createTFoot() : org.w3c.dom.html.HTMLElement;
	
	/**
	*  Delete the footer from the table, if one exists.
	*/
	@:overload @:public public function deleteTFoot() : Void;
	
	/**
	*  Create a new table caption object or return an existing one.
	* @return  A <code>CAPTION</code> element.
	*/
	@:overload @:public public function createCaption() : org.w3c.dom.html.HTMLElement;
	
	/**
	*  Delete the table caption, if one exists.
	*/
	@:overload @:public public function deleteCaption() : Void;
	
	/**
	*  Insert a new empty row in the table. The new row is inserted
	* immediately before and in the same section as the current
	* <code>index</code> th row in the table. If <code>index</code> is equal
	* to the number of rows, the new row is appended. In addition, when the
	* table is empty the row is inserted into a <code>TBODY</code> which is
	* created and inserted into the table. Note. A table row cannot be empty
	* according to HTML 4.0 Recommendation.
	* @param index  The row number where to insert a new row. This index
	*   starts from 0 and is relative to all the rows contained inside the
	*   table, regardless of section parentage.
	* @return  The newly created row.
	* @exception DOMException
	*    INDEX_SIZE_ERR: Raised if the specified index is greater than the
	*   number of rows or if the index is negative.
	*/
	@:overload @:public public function insertRow(index : Int) : org.w3c.dom.html.HTMLElement;
	
	/**
	*  Delete a table row.
	* @param index  The index of the row to be deleted. This index starts
	*   from 0 and is relative to all the rows contained inside the table,
	*   regardless of section parentage.
	* @exception DOMException
	*    INDEX_SIZE_ERR: Raised if the specified index is greater than or
	*   equal to the number of rows or if the index is negative.
	*/
	@:overload @:public public function deleteRow(index : Int) : Void;
	
	
}
