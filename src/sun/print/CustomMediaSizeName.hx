package sun.print;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CustomMediaSizeName extends javax.print.attribute.standard.MediaSizeName
{
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public public function new(name : String, choice : String, width : Single, length : Single) : Void;
	
	/**
	* Returns the command string for this media.
	*/
	@:overload @:public public function getChoiceName() : String;
	
	/**
	* Returns matching standard MediaSizeName.
	*/
	@:overload @:public public function getStandardMedia() : javax.print.attribute.standard.MediaSizeName;
	
	/**
	* Returns closest matching MediaSizeName among given array of Media
	*/
	@:overload @:public @:static public static function findMedia(media : java.NativeArray<javax.print.attribute.standard.Media>, x : Single, y : Single, units : Int) : javax.print.attribute.standard.MediaSizeName;
	
	/**
	* Returns the string table for super class MediaSizeName.
	*/
	@:overload @:public public function getSuperEnumTable() : java.NativeArray<javax.print.attribute.standard.Media>;
	
	/**
	* Returns the string table for class CustomMediaSizeName.
	*/
	@:overload @:protected override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class CustomMediaSizeName.
	*/
	@:overload @:protected override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	
}
