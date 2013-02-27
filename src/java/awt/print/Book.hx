package java.awt.print;
/*
* Copyright (c) 1997, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class Book implements java.awt.print.Pageable
{
	/**
	*  Creates a new, empty <code>Book</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the number of pages in this <code>Book</code>.
	* @return the number of pages this <code>Book</code> contains.
	*/
	@:overload public function getNumberOfPages() : Int;
	
	/**
	* Returns the {@link PageFormat} of the page specified by
	* <code>pageIndex</code>.
	* @param pageIndex the zero based index of the page whose
	*            <code>PageFormat</code> is being requested
	* @return the <code>PageFormat</code> describing the size and
	*          orientation of the page.
	* @throws IndexOutOfBoundsException if the <code>Pageable</code>
	*          does not contain the requested page
	*/
	@:overload public function getPageFormat(pageIndex : Int) : java.awt.print.PageFormat;
	
	/**
	* Returns the {@link Printable} instance responsible for rendering
	* the page specified by <code>pageIndex</code>.
	* @param pageIndex the zero based index of the page whose
	*                  <code>Printable</code> is being requested
	* @return the <code>Printable</code> that renders the page.
	* @throws IndexOutOfBoundsException if the <code>Pageable</code>
	*            does not contain the requested page
	*/
	@:overload public function getPrintable(pageIndex : Int) : java.awt.print.Printable;
	
	/**
	* Sets the <code>PageFormat</code> and the <code>Painter</code> for a
	* specified page number.
	* @param pageIndex the zero based index of the page whose
	*                  painter and format is altered
	* @param painter   the <code>Printable</code> instance that
	*                  renders the page
	* @param page      the size and orientation of the page
	* @throws IndexOutOfBoundsException if the specified
	*          page is not already in this <code>Book</code>
	* @throws NullPointerException if the <code>painter</code> or
	*          <code>page</code> argument is <code>null</code>
	*/
	@:overload public function setPage(pageIndex : Int, painter : java.awt.print.Printable, page : java.awt.print.PageFormat) : Void;
	
	/**
	* Appends a single page to the end of this <code>Book</code>.
	* @param painter   the <code>Printable</code> instance that
	*                  renders the page
	* @param page      the size and orientation of the page
	* @throws <code>NullPointerException</code>
	*          If the <code>painter</code> or <code>page</code>
	*          argument is <code>null</code>
	*/
	@:overload public function append(painter : java.awt.print.Printable, page : java.awt.print.PageFormat) : Void;
	
	/**
	* Appends <code>numPages</code> pages to the end of this
	* <code>Book</code>.  Each of the pages is associated with
	* <code>page</code>.
	* @param painter   the <code>Printable</code> instance that renders
	*                  the page
	* @param page      the size and orientation of the page
	* @param numPages  the number of pages to be added to the
	*                  this <code>Book</code>.
	* @throws <code>NullPointerException</code>
	*          If the <code>painter</code> or <code>page</code>
	*          argument is <code>null</code>
	*/
	@:overload public function append(painter : java.awt.print.Printable, page : java.awt.print.PageFormat, numPages : Int) : Void;
	
	
}
/**
* The BookPage inner class describes an individual
* page in a Book through a PageFormat-Printable pair.
*/
@:native('java$awt$print$Book$BookPage') @:internal extern class Book_BookPage
{
	
}
