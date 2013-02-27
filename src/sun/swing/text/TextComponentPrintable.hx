package sun.swing.text;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class TextComponentPrintable implements sun.swing.text.CountingPrintable
{
	/**
	* Returns {@code TextComponentPrintable} to print {@code textComponent}.
	*
	* @param textComponent {@code JTextComponent} to print
	* @param headerFormat the page header, or {@code null} for none
	* @param footerFormat the page footer, or {@code null} for none
	* @return {@code TextComponentPrintable} to print {@code textComponent}
	*/
	@:overload public static function getPrintable(textComponent : javax.swing.text.JTextComponent, headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat) : java.awt.print.Printable;
	
	/**
	* Returns the number of pages in this printable.
	* <p>
	* This number is defined only after {@code print} returns NO_SUCH_PAGE.
	*
	* @return the number of pages.
	*/
	@:overload public function getNumberOfPages() : Int;
	
	/**
	* See Printable.print for the API description.
	*
	* There are two parts in the implementation.
	* First part (print) is to be called on the printing thread.
	* Second part (printOnEDT) is to be called on the EDT only.
	*
	* print triggers printOnEDT
	*/
	@:overload public function print(graphics : java.awt.Graphics, pf : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	
}
/**
*  Class to represent segment of integers.
*  we do not call it Segment to avoid confusion with
*  javax.swing.text.Segment
*/
@:native('sun$swing$text$TextComponentPrintable$IntegerSegment') @:internal extern class TextComponentPrintable_IntegerSegment implements java.lang.Comparable<TextComponentPrintable_IntegerSegment>
{
	@:overload public function compareTo(object : TextComponentPrintable_IntegerSegment) : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
