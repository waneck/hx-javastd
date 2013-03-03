package sun.swing.text;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* Printable to merge multiple printables into one.
*
* @author Igor Kushnirskiy
*
* @since 1.6
*/
@:require(java6) @:internal extern class CompoundPrintable implements sun.swing.text.CountingPrintable
{
	@:overload @:public public function new(printables : java.util.List<sun.swing.text.CountingPrintable>) : Void;
	
	@:overload @:public public function print(graphics : java.awt.Graphics, pf : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	/**
	* Returns the number of pages in this printable.
	* <p>
	* This number is defined only after {@code print} returns NO_SUCH_PAGE.
	*
	* @return the number of pages.
	*/
	@:overload @:public public function getNumberOfPages() : Int;
	
	
}
