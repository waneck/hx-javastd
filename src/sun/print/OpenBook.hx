package sun.print;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class OpenBook implements java.awt.print.Pageable
{
	/**
	* This object does not know the number of pages.
	*/
	@:overload public function getNumberOfPages() : Int;
	
	/**
	* Return the PageFormat of the page specified by 'pageIndex'.
	* @param int The zero based index of the page whose
	*            PageFormat is being requested.
	* @return The PageFormat describing the size and orientation
	*/
	@:overload public function getPageFormat(pageIndex : Int) : java.awt.print.PageFormat;
	
	/**
	* Return the Printable instance responsible for rendering
	* the page specified by 'pageIndex'.
	* @param int The zero based index of the page whose
	*            Printable is being requested.
	* @return The Printable that will draw the page.
	*/
	@:overload public function getPrintable(pageIndex : Int) : java.awt.print.Printable;
	
	
}
