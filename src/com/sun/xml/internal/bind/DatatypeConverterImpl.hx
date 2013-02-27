package com.sun.xml.internal.bind;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DatatypeConverterImpl
{
	/**
	* This class is the JAXB RI's default implementation of the
	* {@link DatatypeConverterInterface}.
	*
	* <p>
	* When client applications specify the use of the static print/parse
	* methods in {@link DatatypeConverter}, it will delegate
	* to this class.
	*
	* <p>
	* This class is responsible for whitespace normalization.
	*
	* @author <ul><li>Ryan Shoemaker, Martin Grebac</li></ul>
	* @since JAXB1.0
	* @deprecated in JAXB 2.2.4 - use javax.xml.bind.DatatypeConverterImpl instead
	* or let us know why you can't
	*/
	@:require(java0) @:overload private function new() : Void;
	
	@:overload public static function _parseInteger(s : java.lang.CharSequence) : java.math.BigInteger;
	
	@:overload public static function _printInteger(val : java.math.BigInteger) : String;
	
	/**
	* Faster but less robust String->int conversion.
	*
	* Note that:
	* <ol>
	*  <li>XML Schema allows '+', but {@link Integer#valueOf(String)} is not.
	*  <li>XML Schema allows leading and trailing (but not in-between) whitespaces.
	*      {@link Integer#valueOf(String)} doesn't allow any.
	* </ol>
	*/
	@:overload public static function _parseInt(s : java.lang.CharSequence) : Int;
	
	@:overload public static function _parseLong(s : java.lang.CharSequence) : haxe.Int64;
	
	@:overload public static function _parseShort(s : java.lang.CharSequence) : java.StdTypes.Int16;
	
	@:overload public static function _printShort(val : java.StdTypes.Int16) : String;
	
	@:overload public static function _parseDecimal(content : java.lang.CharSequence) : java.math.BigDecimal;
	
	@:overload public static function _parseFloat(_val : java.lang.CharSequence) : Single;
	
	@:overload public static function _printFloat(v : Single) : String;
	
	@:overload public static function _parseDouble(_val : java.lang.CharSequence) : Float;
	
	@:overload public static function _parseBoolean(literal : java.lang.CharSequence) : Null<Bool>;
	
	@:overload public static function _printBoolean(val : Bool) : String;
	
	@:overload public static function _parseByte(literal : java.lang.CharSequence) : java.StdTypes.Int8;
	
	@:overload public static function _printByte(val : java.StdTypes.Int8) : String;
	
	/**
	* @return null if fails to convert.
	*/
	@:overload public static function _parseQName(text : java.lang.CharSequence, nsc : javax.xml.namespace.NamespaceContext) : javax.xml.namespace.QName;
	
	@:overload public static function _parseDateTime(s : java.lang.CharSequence) : java.util.GregorianCalendar;
	
	@:overload public static function _printDateTime(val : java.util.Calendar) : String;
	
	@:overload public static function _printDate(val : java.util.Calendar) : String;
	
	@:overload public static function _printInt(val : Int) : String;
	
	@:overload public static function _printLong(val : haxe.Int64) : String;
	
	@:overload public static function _printDecimal(val : java.math.BigDecimal) : String;
	
	@:overload public static function _printDouble(v : Float) : String;
	
	@:overload public static function _printQName(val : javax.xml.namespace.QName, nsc : javax.xml.namespace.NamespaceContext) : String;
	
	/**
	* @param text
	*      base64Binary data is likely to be long, and decoding requires
	*      each character to be accessed twice (once for counting length, another
	*      for decoding.)
	*
	*      A benchmark showed that taking {@link String} is faster, presumably
	*      because JIT can inline a lot of string access (with data of 1K chars, it was twice as fast)
	*/
	@:overload public static function _parseBase64Binary(text : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function encode(i : Int) : java.StdTypes.Char16;
	
	@:overload public static function encodeByte(i : Int) : java.StdTypes.Int8;
	
	@:overload public static function _printBase64Binary(input : java.NativeArray<java.StdTypes.Int8>) : String;
	
	@:overload public static function _printBase64Binary(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : String;
	
	/**
	* Encodes a byte array into a char array by doing base64 encoding.
	*
	* The caller must supply a big enough buffer.
	*
	* @return
	*      the value of {@code ptr+((len+2)/3)*4}, which is the new offset
	*      in the output buffer where the further bytes should be placed.
	*/
	@:overload public static function _printBase64Binary(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, buf : java.NativeArray<java.StdTypes.Char16>, ptr : Int) : Int;
	
	@:overload public static function _printBase64Binary(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, output : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Encodes a byte array into another byte array by first doing base64 encoding
	* then encoding the result in ASCII.
	*
	* The caller must supply a big enough buffer.
	*
	* @return
	*      the value of {@code ptr+((len+2)/3)*4}, which is the new offset
	*      in the output buffer where the further bytes should be placed.
	*/
	@:overload public static function _printBase64Binary(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, out : java.NativeArray<java.StdTypes.Int8>, ptr : Int) : Int;
	
	
}
@:native('com$sun$xml$internal$bind$DatatypeConverterImpl$CalendarFormatter') @:internal extern class DatatypeConverterImpl_CalendarFormatter
{
	@:overload public static function doFormat(format : String, cal : java.util.Calendar) : String;
	
	
}
