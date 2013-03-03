package javax.swing;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class TablePrintable implements java.awt.print.Printable
{
	/**
	* Create a new <code>TablePrintable</code> for the given
	* <code>JTable</code>. Header and footer text can be specified using the
	* two <code>MessageFormat</code> parameters. When called upon to provide
	* a String, each format is given the current page number.
	*
	* @param  table         the table to print
	* @param  printMode     the printing mode for this printable
	* @param  headerFormat  a <code>MessageFormat</code> specifying the text to
	*                       be used in printing a header, or null for none
	* @param  footerFormat  a <code>MessageFormat</code> specifying the text to
	*                       be used in printing a footer, or null for none
	* @throws IllegalArgumentException if passed an invalid print mode
	*/
	@:overload @:public public function new(table : javax.swing.JTable, printMode : javax.swing.JTable.JTable_PrintMode, headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat) : Void;
	
	/**
	* Prints the specified page of the table into the given {@link Graphics}
	* context, in the specified format.
	*
	* @param   graphics    the context into which the page is drawn
	* @param   pageFormat  the size and orientation of the page being drawn
	* @param   pageIndex   the zero based index of the page to be drawn
	* @return  PAGE_EXISTS if the page is rendered successfully, or
	*          NO_SUCH_PAGE if a non-existent page index is specified
	* @throws  PrinterException if an error causes printing to be aborted
	*/
	@:overload @:public public function print(graphics : java.awt.Graphics, pageFormat : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	
}
