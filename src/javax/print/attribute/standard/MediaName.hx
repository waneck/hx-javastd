package javax.print.attribute.standard;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MediaName extends javax.print.attribute.standard.Media implements javax.print.attribute.Attribute
{
	/**
	*  white letter paper.
	*/
	@:public @:static @:final public static var NA_LETTER_WHITE(default, null) : javax.print.attribute.standard.MediaName;
	
	/**
	*  letter transparency.
	*/
	@:public @:static @:final public static var NA_LETTER_TRANSPARENT(default, null) : javax.print.attribute.standard.MediaName;
	
	/**
	* white A4 paper.
	*/
	@:public @:static @:final public static var ISO_A4_WHITE(default, null) : javax.print.attribute.standard.MediaName;
	
	/**
	*  A4 transparency.
	*/
	@:public @:static @:final public static var ISO_A4_TRANSPARENT(default, null) : javax.print.attribute.standard.MediaName;
	
	/**
	* Constructs a new media name enumeration value with the given integer
	* value.
	*
	* @param  value  Integer value.
	*/
	@:overload @:protected private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class MediaTray.
	* @return the String table.
	*/
	@:overload @:protected override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class MediaTray.
	* @return the enumeration value table.
	*/
	@:overload @:protected override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	
}
