package javax.print.attribute.standard;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class PresentationDirection extends javax.print.attribute.EnumSyntax implements javax.print.attribute.PrintJobAttribute implements javax.print.attribute.PrintRequestAttribute
{
	/**
	* Pages are laid out in columns starting at the top left,
	* proceeeding towards the bottom & right.
	*/
	public static var TOBOTTOM_TORIGHT(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Pages are laid out in columns starting at the top right,
	* proceeeding towards the bottom & left.
	*/
	public static var TOBOTTOM_TOLEFT(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Pages are laid out in columns starting at the bottom left,
	* proceeeding towards the top & right.
	*/
	public static var TOTOP_TORIGHT(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Pages are laid out in columns starting at the bottom right,
	* proceeeding towards the top & left.
	*/
	public static var TOTOP_TOLEFT(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Pages are laid out in rows starting at the top left,
	* proceeeding towards the right & bottom.
	*/
	public static var TORIGHT_TOBOTTOM(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Pages are laid out in rows starting at the bottom left,
	* proceeeding towards the right & top.
	*/
	public static var TORIGHT_TOTOP(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Pages are laid out in rows starting at the top right,
	* proceeeding towards the left & bottom.
	*/
	public static var TOLEFT_TOBOTTOM(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Pages are laid out in rows starting at the bottom right,
	* proceeeding towards the left & top.
	*/
	public static var TOLEFT_TOTOP(default, null) : javax.print.attribute.standard.PresentationDirection;
	
	/**
	* Returns the string table for class PresentationDirection.
	*/
	@:overload private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class PresentationDirection.
	*/
	@:overload private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class PresentationDirection
	* the category is class PresentationDirection itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class PresentationDirection
	* the category name is <CODE>"presentation-direction"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
