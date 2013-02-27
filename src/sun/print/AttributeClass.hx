package sun.print;
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
extern class AttributeClass
{
	public static var TAG_UNSUPPORTED_VALUE(default, null) : Int;
	
	public static var TAG_INT(default, null) : Int;
	
	public static var TAG_BOOL(default, null) : Int;
	
	public static var TAG_ENUM(default, null) : Int;
	
	public static var TAG_OCTET(default, null) : Int;
	
	public static var TAG_DATE(default, null) : Int;
	
	public static var TAG_RESOLUTION(default, null) : Int;
	
	public static var TAG_RANGE_INTEGER(default, null) : Int;
	
	public static var TAG_TEXT_LANGUAGE(default, null) : Int;
	
	public static var TAG_NAME_LANGUAGE(default, null) : Int;
	
	public static var TAG_TEXT_WO_LANGUAGE(default, null) : Int;
	
	public static var TAG_NAME_WO_LANGUAGE(default, null) : Int;
	
	public static var TAG_KEYWORD(default, null) : Int;
	
	public static var TAG_URI(default, null) : Int;
	
	public static var TAG_CHARSET(default, null) : Int;
	
	public static var TAG_NATURALLANGUAGE(default, null) : Int;
	
	public static var TAG_MIME_MEDIATYPE(default, null) : Int;
	
	public static var TAG_MEMBER_ATTRNAME(default, null) : Int;
	
	public static var ATTRIBUTES_CHARSET(default, null) : AttributeClass;
	
	public static var ATTRIBUTES_NATURAL_LANGUAGE(default, null) : AttributeClass;
	
	/*
	* value passed in by IPPPrintService.readIPPResponse is a sequence
	* of bytes with this format
	* | length1 | byte1 | byte 2 | ... byten | length2 | byte1 ... byten |
	*      :
	* | lengthN | byte1 ... byten | total number of values|
	*/
	@:overload private function new(name : String, type : Int, value : Dynamic) : Void;
	
	@:overload public function getType() : java.StdTypes.Int8;
	
	@:overload public function getLenChars() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Returns raw data.
	*/
	@:overload public function getObjectValue() : Dynamic;
	
	/**
	* Returns single int value.
	*/
	@:overload public function getIntValue() : Int;
	
	/**
	* Returns array of int values.
	*/
	@:overload public function getArrayOfIntValues() : java.NativeArray<Int>;
	
	/**
	* Returns 2 int values.
	*/
	@:overload public function getIntRangeValue() : java.NativeArray<Int>;
	
	/**
	* Returns String value.
	*/
	@:overload public function getStringValue() : String;
	
	/**
	* Returns array of String values.
	*/
	@:overload public function getArrayOfStringValues() : java.NativeArray<String>;
	
	/**
	* Returns single byte value.
	*/
	@:overload public function getByteValue() : java.StdTypes.Int8;
	
	/**
	* Returns attribute name.
	*/
	@:overload public function getName() : String;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function toString() : String;
	
	
}
