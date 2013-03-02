package javax.print.attribute.standard;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Sides extends javax.print.attribute.EnumSyntax implements javax.print.attribute.DocAttribute implements javax.print.attribute.PrintRequestAttribute implements javax.print.attribute.PrintJobAttribute
{
	/**
	* Imposes each consecutive print-stream page upon the same side of
	* consecutive media sheets.
	*/
	public static var ONE_SIDED(default, null) : javax.print.attribute.standard.Sides;
	
	/**
	* Imposes each consecutive pair of print-stream pages upon front and back
	* sides of consecutive media sheets, such that the orientation of each
	* pair of print-stream pages on the medium would be correct for the
	* reader as if for binding on the long edge. This imposition is also
	* known as "duplex" (see {@link #DUPLEX <CODE>DUPLEX</CODE>}).
	*/
	public static var TWO_SIDED_LONG_EDGE(default, null) : javax.print.attribute.standard.Sides;
	
	/**
	* Imposes each consecutive pair of print-stream pages upon front and back
	* sides of consecutive media sheets, such that the orientation of each
	* pair of print-stream pages on the medium would be correct for the
	* reader as if for binding on the short edge. This imposition is also
	* known as "tumble" (see {@link #TUMBLE <CODE>TUMBLE</CODE>}).
	*/
	public static var TWO_SIDED_SHORT_EDGE(default, null) : javax.print.attribute.standard.Sides;
	
	/**
	* An alias for "two sided long edge" (see {@link #TWO_SIDED_LONG_EDGE
	* <CODE>TWO_SIDED_LONG_EDGE</CODE>}).
	*/
	public static var DUPLEX(default, null) : javax.print.attribute.standard.Sides;
	
	/**
	* An alias for "two sided short edge" (see {@link #TWO_SIDED_SHORT_EDGE
	* <CODE>TWO_SIDED_SHORT_EDGE</CODE>}).
	*/
	public static var TUMBLE(default, null) : javax.print.attribute.standard.Sides;
	
	/**
	* Construct a new sides enumeration value with the given integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class Sides.
	*/
	@:overload private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class Sides.
	*/
	@:overload private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class Sides, the category is class Sides itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class Sides, the category name is <CODE>"sides"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
