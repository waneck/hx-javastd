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
extern class Finishings extends javax.print.attribute.EnumSyntax implements javax.print.attribute.DocAttribute implements javax.print.attribute.PrintRequestAttribute implements javax.print.attribute.PrintJobAttribute
{
	/**
	* Perform no binding.
	*/
	public static var NONE(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples. The exact number and
	* placement of the staples is site-defined.
	*/
	public static var STAPLE(default, null) : Finishings;
	
	/**
	* This value is specified when it is desired to select a non-printed (or
	* pre-printed) cover for the document. This does not supplant the
	* specification of a printed cover (on cover stock medium) by the
	* document  itself.
	*/
	public static var COVER(default, null) : Finishings;
	
	/**
	* This value indicates that a binding is to be applied to the document;
	* the type and placement of the binding is site-defined.
	*/
	public static var BIND(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples (wire stitches) along the
	* middle fold. The exact number and placement of the staples and the
	* middle fold is implementation- and/or site-defined.
	*/
	public static var SADDLE_STITCH(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples (wire stitches) along one
	* edge. The exact number and placement of the staples is implementation-
	* and/or site- defined.
	*/
	public static var EDGE_STITCH(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples in the top left corner.
	*/
	public static var STAPLE_TOP_LEFT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples in the bottom left
	* corner.
	*/
	public static var STAPLE_BOTTOM_LEFT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples in the top right corner.
	*/
	public static var STAPLE_TOP_RIGHT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples in the bottom right
	* corner.
	*/
	public static var STAPLE_BOTTOM_RIGHT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples (wire stitches) along the
	* left edge. The exact number and placement of the staples is
	* implementation- and/or site-defined.
	*/
	public static var EDGE_STITCH_LEFT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples (wire stitches) along the
	* top edge. The exact number and placement of the staples is
	* implementation- and/or site-defined.
	*/
	public static var EDGE_STITCH_TOP(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples (wire stitches) along the
	* right edge. The exact number and placement of the staples is
	* implementation- and/or site-defined.
	*/
	public static var EDGE_STITCH_RIGHT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with one or more staples (wire stitches) along the
	* bottom edge. The exact number and placement of the staples is
	* implementation- and/or site-defined.
	*/
	public static var EDGE_STITCH_BOTTOM(default, null) : Finishings;
	
	/**
	* Bind the document(s) with two staples (wire stitches) along the left
	* edge assuming a portrait document (see above).
	*/
	public static var STAPLE_DUAL_LEFT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with two staples (wire stitches) along the top
	* edge assuming a portrait document (see above).
	*/
	public static var STAPLE_DUAL_TOP(default, null) : Finishings;
	
	/**
	* Bind the document(s) with two staples (wire stitches) along the right
	* edge assuming a portrait document (see above).
	*/
	public static var STAPLE_DUAL_RIGHT(default, null) : Finishings;
	
	/**
	* Bind the document(s) with two staples (wire stitches) along the bottom
	* edge assuming a portrait document (see above).
	*/
	public static var STAPLE_DUAL_BOTTOM(default, null) : Finishings;
	
	/**
	* Construct a new finishings binding enumeration value with the given
	* integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class Finishings.
	*/
	@:overload override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class Finishings.
	*/
	@:overload override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Returns the lowest integer value used by class Finishings.
	*/
	@:overload override private function getOffset() : Int;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class Finishings and any vendor-defined subclasses, the
	* category is class Finishings itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class Finishings and any vendor-defined subclasses, the
	* category name is <CODE>"finishings"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
