package java.awt.print;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface Printable
{
	/**
	* Returned from {@link #print(Graphics, PageFormat, int)}
	* to signify that the requested page was rendered.
	*/
	public var PAGE_EXISTS : Int;
	
	/**
	* Returned from <code>print</code> to signify that the
	* <code>pageIndex</code> is too large and that the requested page
	* does not exist.
	*/
	public var NO_SUCH_PAGE : Int;
	
	/**
	* Prints the page at the specified index into the specified
	* {@link Graphics} context in the specified
	* format.  A <code>PrinterJob</code> calls the
	* <code>Printable</code> interface to request that a page be
	* rendered into the context specified by
	* <code>graphics</code>.  The format of the page to be drawn is
	* specified by <code>pageFormat</code>.  The zero based index
	* of the requested page is specified by <code>pageIndex</code>.
	* If the requested page does not exist then this method returns
	* NO_SUCH_PAGE; otherwise PAGE_EXISTS is returned.
	* The <code>Graphics</code> class or subclass implements the
	* {@link PrinterGraphics} interface to provide additional
	* information.  If the <code>Printable</code> object
	* aborts the print job then it throws a {@link PrinterException}.
	* @param graphics the context into which the page is drawn
	* @param pageFormat the size and orientation of the page being drawn
	* @param pageIndex the zero based index of the page to be drawn
	* @return PAGE_EXISTS if the page is rendered successfully
	*         or NO_SUCH_PAGE if <code>pageIndex</code> specifies a
	*         non-existent page.
	* @exception java.awt.print.PrinterException
	*         thrown when the print job is terminated.
	*/
	@:overload public function print(graphics : java.awt.Graphics, pageFormat : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	
}
