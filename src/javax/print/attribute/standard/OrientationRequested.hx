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
extern class OrientationRequested extends javax.print.attribute.EnumSyntax implements javax.print.attribute.DocAttribute implements javax.print.attribute.PrintRequestAttribute implements javax.print.attribute.PrintJobAttribute
{
	/**
	* The content will be imaged across the short edge of the medium.
	*/
	@:public @:static @:final public static var PORTRAIT(default, null) : javax.print.attribute.standard.OrientationRequested;
	
	/**
	* The content will be imaged across the long edge of the medium.
	* Landscape is defined to be a rotation of the print-stream page to be
	* imaged by +90 degrees with respect to the medium
	* (i.e. anti-clockwise) from the
	* portrait orientation. <I>Note:</I> The +90 direction was chosen because
	* simple finishing on the long edge is the same edge whether portrait or
	* landscape.
	*/
	@:public @:static @:final public static var LANDSCAPE(default, null) : javax.print.attribute.standard.OrientationRequested;
	
	/**
	* The content will be imaged across the long edge of the medium, but in
	* the opposite manner from landscape. Reverse-landscape is defined to be
	* a rotation of the print-stream page to be imaged by -90 degrees with
	* respect to the medium (i.e. clockwise) from the portrait orientation.
	* <I>Note:</I> The REVERSE_LANDSCAPE value was added because some
	* applications rotate landscape -90 degrees from portrait, rather than
	* +90 degrees.
	*/
	@:public @:static @:final public static var REVERSE_LANDSCAPE(default, null) : javax.print.attribute.standard.OrientationRequested;
	
	/**
	* The content will be imaged across the short edge of the medium, but in
	* the opposite manner from portrait. Reverse-portrait is defined to be a
	* rotation of the print-stream page to be imaged by 180 degrees with
	* respect to the medium from the portrait orientation. <I>Note:</I> The
	* REVERSE_PORTRAIT value was added for use with the {@link
	* Finishings Finishings} attribute in cases where the
	* opposite edge is desired for finishing a portrait document on simple
	* finishing devices that have only one finishing position. Thus a
	* <CODE>"text/plain"</CODE> portrait document can be stapled "on the
	* right" by a simple finishing device as is common use with some
	* Middle Eastern languages such as Hebrew.
	*/
	@:public @:static @:final public static var REVERSE_PORTRAIT(default, null) : javax.print.attribute.standard.OrientationRequested;
	
	/**
	* Construct a new orientation requested enumeration value with the given
	* integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload @:protected private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class OrientationRequested.
	*/
	@:overload @:protected override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class OrientationRequested.
	*/
	@:overload @:protected override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Returns the lowest integer value used by class OrientationRequested.
	*/
	@:overload @:protected override private function getOffset() : Int;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class OrientationRequested, the
	* category is class OrientationRequested itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:public @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class OrientationRequested, the
	* category name is <CODE>"orientation-requested"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:public @:final public function getName() : String;
	
	
}
