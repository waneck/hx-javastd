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
/**
*  The object used to represent the <code>TH</code> and <code>TD</code>
* elements. See the  TD element definition in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLTableCellElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  The index of this cell in the row, starting from 0. This index is in
	* document tree order and not display order.
	*/
	@:overload public function getCellIndex() : Int;
	
	/**
	*  Abbreviation for header cells. See the  abbr attribute definition in
	* HTML 4.0.
	*/
	@:overload public function getAbbr() : String;
	
	@:overload public function setAbbr(abbr : String) : Void;
	
	/**
	*  Horizontal alignment of data in cell. See the  align attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getAlign() : String;
	
	@:overload public function setAlign(align : String) : Void;
	
	/**
	*  Names group of related headers. See the  axis attribute definition in
	* HTML 4.0.
	*/
	@:overload public function getAxis() : String;
	
	@:overload public function setAxis(axis : String) : Void;
	
	/**
	*  Cell background color. See the  bgcolor attribute definition in HTML
	* 4.0. This attribute is deprecated in HTML 4.0.
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
	*  Number of columns spanned by cell. See the  colspan attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getColSpan() : Int;
	
	@:overload public function setColSpan(colSpan : Int) : Void;
	
	/**
	*  List of <code>id</code> attribute values for header cells. See the
	* headers attribute definition in HTML 4.0.
	*/
	@:overload public function getHeaders() : String;
	
	@:overload public function setHeaders(headers : String) : Void;
	
	/**
	*  Cell height. See the  height attribute definition in HTML 4.0. This
	* attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getHeight() : String;
	
	@:overload public function setHeight(height : String) : Void;
	
	/**
	*  Suppress word wrapping. See the  nowrap attribute definition in HTML
	* 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getNoWrap() : Bool;
	
	@:overload public function setNoWrap(noWrap : Bool) : Void;
	
	/**
	*  Number of rows spanned by cell. See the  rowspan attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getRowSpan() : Int;
	
	@:overload public function setRowSpan(rowSpan : Int) : Void;
	
	/**
	*  Scope covered by header cells. See the  scope attribute definition in
	* HTML 4.0.
	*/
	@:overload public function getScope() : String;
	
	@:overload public function setScope(scope : String) : Void;
	
	/**
	*  Vertical alignment of data in cell. See the  valign attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getVAlign() : String;
	
	@:overload public function setVAlign(vAlign : String) : Void;
	
	/**
	*  Cell width. See the  width attribute definition in HTML 4.0. This
	* attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getWidth() : String;
	
	@:overload public function setWidth(width : String) : Void;
	
	
}
