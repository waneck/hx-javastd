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
extern class ColorSupported extends javax.print.attribute.EnumSyntax implements javax.print.attribute.PrintServiceAttribute
{
	/**
	* The printer is not capable of any type of color printing.
	*/
	@:public @:static @:final public static var NOT_SUPPORTED(default, null) : javax.print.attribute.standard.ColorSupported;
	
	/**
	* The printer is capable of some type of color printing, such as
	* highlight color or full process color.
	*/
	@:public @:static @:final public static var SUPPORTED(default, null) : javax.print.attribute.standard.ColorSupported;
	
	/**
	* Construct a new color supported enumeration value with the given
	* integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload @:protected private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class ColorSupported.
	*/
	@:overload @:protected override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class ColorSupported.
	*/
	@:overload @:protected override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class ColorSupported, the category is class ColorSupported itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:public @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class ColorSupported, the category name is <CODE>"color-supported"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:public @:final public function getName() : String;
	
	
}
