package javax.xml.bind;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DatatypeConverter
{
	/**
	* This method is for JAXB provider use only.
	* <p>
	* JAXB Providers are required to call this method at some point before
	* allowing any of the JAXB client marshal or unmarshal operations to
	* occur.  This is necessary to configure the datatype converter that
	* should be used to perform the print and parse conversions.
	*
	* <p>
	* Calling this api repeatedly will have no effect - the
	* DatatypeConverterInterface instance passed into the first invocation is
	* the one that will be used from then on.
	*
	* @param converter an instance of a class that implements the
	* DatatypeConverterInterface class - this parameter must not be null.
	* @throws IllegalArgumentException if the parameter is null
	* @throws SecurityException
	*      If the {@link SecurityManager} in charge denies the access to
	*      set the datatype converter.
	* @see JAXBPermission
	*/
	@:overload @:public @:static public static function setDatatypeConverter(converter : javax.xml.bind.DatatypeConverterInterface) : Void;
	
	/**
	* <p>
	* Convert the lexical XSD string argument into a String value.
	* @param lexicalXSDString
	*     A string containing a lexical representation of
	*     xsd:string.
	* @return
	*     A String value represented by the string argument.
	*/
	@:overload @:public @:static public static function parseString(lexicalXSDString : String) : String;
	
	/**
	* <p>
	* Convert the string argument into a BigInteger value.
	* @param lexicalXSDInteger
	*     A string containing a lexical representation of
	*     xsd:integer.
	* @return
	*     A BigInteger value represented by the string argument.
	* @throws NumberFormatException <code>lexicalXSDInteger</code> is not a valid string representation of a {@link java.math.BigInteger} value.
	*/
	@:overload @:public @:static public static function parseInteger(lexicalXSDInteger : String) : java.math.BigInteger;
	
	/**
	* <p>
	* Convert the string argument into an int value.
	* @param lexicalXSDInt
	*     A string containing a lexical representation of
	*     xsd:int.
	* @return
	*     A int value represented by the string argument.
	* @throws NumberFormatException <code>lexicalXSDInt</code> is not a valid string representation of an <code>int</code> value.
	*/
	@:overload @:public @:static public static function parseInt(lexicalXSDInt : String) : Int;
	
	/**
	* <p>
	* Converts the string argument into a long value.
	* @param lexicalXSDLong
	*     A string containing lexical representation of
	*     xsd:long.
	* @return
	*     A long value represented by the string argument.
	* @throws NumberFormatException <code>lexicalXSDLong</code> is not a valid string representation of a <code>long</code> value.
	*/
	@:overload @:public @:static public static function parseLong(lexicalXSDLong : String) : haxe.Int64;
	
	/**
	* <p>
	* Converts the string argument into a short value.
	* @param lexicalXSDShort
	*     A string containing lexical representation of
	*     xsd:short.
	* @return
	*     A short value represented by the string argument.
	* @throws NumberFormatException <code>lexicalXSDShort</code> is not a valid string representation of a <code>short</code> value.
	*/
	@:overload @:public @:static public static function parseShort(lexicalXSDShort : String) : java.StdTypes.Int16;
	
	/**
	* <p>
	* Converts the string argument into a BigDecimal value.
	* @param lexicalXSDDecimal
	*     A string containing lexical representation of
	*     xsd:decimal.
	* @return
	*     A BigDecimal value represented by the string argument.
	* @throws NumberFormatException <code>lexicalXSDDecimal</code> is not a valid string representation of {@link java.math.BigDecimal}.
	*/
	@:overload @:public @:static public static function parseDecimal(lexicalXSDDecimal : String) : java.math.BigDecimal;
	
	/**
	* <p>
	* Converts the string argument into a float value.
	* @param lexicalXSDFloat
	*     A string containing lexical representation of
	*     xsd:float.
	* @return
	*     A float value represented by the string argument.
	* @throws NumberFormatException <code>lexicalXSDFloat</code> is not a valid string representation of a <code>float</code> value.
	*/
	@:overload @:public @:static public static function parseFloat(lexicalXSDFloat : String) : Single;
	
	/**
	* <p>
	* Converts the string argument into a double value.
	* @param lexicalXSDDouble
	*     A string containing lexical representation of
	*     xsd:double.
	* @return
	*     A double value represented by the string argument.
	* @throws NumberFormatException <code>lexicalXSDDouble</code> is not a valid string representation of a <code>double</code> value.
	*/
	@:overload @:public @:static public static function parseDouble(lexicalXSDDouble : String) : Float;
	
	/**
	* <p>
	* Converts the string argument into a boolean value.
	* @param lexicalXSDBoolean
	*     A string containing lexical representation of
	*     xsd:boolean.
	* @return
	*     A boolean value represented by the string argument.
	* @throws IllegalArgumentException if string parameter does not conform to lexical value space defined in XML Schema Part 2: Datatypes for xsd:boolean.
	*/
	@:overload @:public @:static public static function parseBoolean(lexicalXSDBoolean : String) : Bool;
	
	/**
	* <p>
	* Converts the string argument into a byte value.
	* @param lexicalXSDByte
	*     A string containing lexical representation of
	*     xsd:byte.
	* @return
	*     A byte value represented by the string argument.
	* @throws IllegalArgumentException if string parameter does not conform to lexical value space defined in XML Schema Part 2: Datatypes for xsd:byte.
	*/
	@:overload @:public @:static public static function parseByte(lexicalXSDByte : String) : java.StdTypes.Int8;
	
	/**
	* <p>
	* Converts the string argument into a byte value.
	*
	* <p>
	* String parameter <tt>lexicalXSDQname</tt> must conform to lexical value space specifed at
	* <a href="http://www.w3.org/TR/xmlschema-2/#QName">XML Schema Part 2:Datatypes specification:QNames</a>
	*
	* @param lexicalXSDQName
	*     A string containing lexical representation of xsd:QName.
	* @param nsc
	*     A namespace context for interpreting a prefix within a QName.
	* @return
	*     A QName value represented by the string argument.
	* @throws IllegalArgumentException  if string parameter does not conform to XML Schema Part 2 specification or
	*      if namespace prefix of <tt>lexicalXSDQname</tt> is not bound to a URI in NamespaceContext <tt>nsc</tt>.
	*/
	@:overload @:public @:static public static function parseQName(lexicalXSDQName : String, nsc : javax.xml.namespace.NamespaceContext) : javax.xml.namespace.QName;
	
	/**
	* <p>
	* Converts the string argument into a Calendar value.
	* @param lexicalXSDDateTime
	*     A string containing lexical representation of
	*     xsd:datetime.
	* @return
	*     A Calendar object represented by the string argument.
	* @throws IllegalArgumentException if string parameter does not conform to lexical value space defined in XML Schema Part 2: Datatypes for xsd:dateTime.
	*/
	@:overload @:public @:static public static function parseDateTime(lexicalXSDDateTime : String) : java.util.Calendar;
	
	/**
	* <p>
	* Converts the string argument into an array of bytes.
	* @param lexicalXSDBase64Binary
	*     A string containing lexical representation
	*     of xsd:base64Binary.
	* @return
	*     An array of bytes represented by the string argument.
	* @throws IllegalArgumentException if string parameter does not conform to lexical value space defined in XML Schema Part 2: Datatypes for xsd:base64Binary
	*/
	@:overload @:public @:static public static function parseBase64Binary(lexicalXSDBase64Binary : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <p>
	* Converts the string argument into an array of bytes.
	* @param lexicalXSDHexBinary
	*     A string containing lexical representation of
	*     xsd:hexBinary.
	* @return
	*     An array of bytes represented by the string argument.
	* @throws IllegalArgumentException if string parameter does not conform to lexical value space defined in XML Schema Part 2: Datatypes for xsd:hexBinary.
	*/
	@:overload @:public @:static public static function parseHexBinary(lexicalXSDHexBinary : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <p>
	* Converts the string argument into a long value.
	* @param lexicalXSDUnsignedInt
	*     A string containing lexical representation
	*     of xsd:unsignedInt.
	* @return
	*     A long value represented by the string argument.
	* @throws NumberFormatException if string parameter can not be parsed into a <tt>long</tt> value.
	*/
	@:overload @:public @:static public static function parseUnsignedInt(lexicalXSDUnsignedInt : String) : haxe.Int64;
	
	/**
	* <p>
	* Converts the string argument into an int value.
	* @param lexicalXSDUnsignedShort
	*     A string containing lexical
	*     representation of xsd:unsignedShort.
	* @return
	*     An int value represented by the string argument.
	* @throws NumberFormatException if string parameter can not be parsed into an <tt>int</tt> value.
	*/
	@:overload @:public @:static public static function parseUnsignedShort(lexicalXSDUnsignedShort : String) : Int;
	
	/**
	* <p>
	* Converts the string argument into a Calendar value.
	* @param lexicalXSDTime
	*     A string containing lexical representation of
	*     xsd:time.
	* @return
	*     A Calendar value represented by the string argument.
	* @throws IllegalArgumentException if string parameter does not conform to lexical value space defined in XML Schema Part 2: Datatypes for xsd:Time.
	*/
	@:overload @:public @:static public static function parseTime(lexicalXSDTime : String) : java.util.Calendar;
	
	/**
	* <p>
	* Converts the string argument into a Calendar value.
	* @param lexicalXSDDate
	*      A string containing lexical representation of
	*     xsd:Date.
	* @return
	*     A Calendar value represented by the string argument.
	* @throws IllegalArgumentException if string parameter does not conform to lexical value space defined in XML Schema Part 2: Datatypes for xsd:Date.
	*/
	@:overload @:public @:static public static function parseDate(lexicalXSDDate : String) : java.util.Calendar;
	
	/**
	* <p>
	* Return a string containing the lexical representation of the
	* simple type.
	* @param lexicalXSDAnySimpleType
	*     A string containing lexical
	*     representation of the simple type.
	* @return
	*     A string containing the lexical representation of the
	*     simple type.
	*/
	@:overload @:public @:static public static function parseAnySimpleType(lexicalXSDAnySimpleType : String) : String;
	
	/**
	* <p>
	* Converts the string argument into a string.
	* @param val
	*     A string value.
	* @return
	*     A string containing a lexical representation of xsd:string.
	*/
	@:overload @:public @:static public static function printString(val : String) : String;
	
	/**
	* <p>
	* Converts a BigInteger value into a string.
	* @param val
	*     A BigInteger value
	* @return
	*     A string containing a lexical representation of xsd:integer
	* @throws IllegalArgumentException <tt>val</tt> is null.
	*/
	@:overload @:public @:static public static function printInteger(val : java.math.BigInteger) : String;
	
	/**
	* <p>
	* Converts an int value into a string.
	* @param val
	*     An int value
	* @return
	*     A string containing a lexical representation of xsd:int
	*/
	@:overload @:public @:static public static function printInt(val : Int) : String;
	
	/**
	* <p>
	* Converts A long value into a string.
	* @param val
	*     A long value
	* @return
	*     A string containing a lexical representation of xsd:long
	*/
	@:overload @:public @:static public static function printLong(val : haxe.Int64) : String;
	
	/**
	* <p>
	* Converts a short value into a string.
	* @param val
	*     A short value
	* @return
	*     A string containing a lexical representation of xsd:short
	*/
	@:overload @:public @:static public static function printShort(val : java.StdTypes.Int16) : String;
	
	/**
	* <p>
	* Converts a BigDecimal value into a string.
	* @param val
	*     A BigDecimal value
	* @return
	*     A string containing a lexical representation of xsd:decimal
	* @throws IllegalArgumentException <tt>val</tt> is null.
	*/
	@:overload @:public @:static public static function printDecimal(val : java.math.BigDecimal) : String;
	
	/**
	* <p>
	* Converts a float value into a string.
	* @param val
	*     A float value
	* @return
	*     A string containing a lexical representation of xsd:float
	*/
	@:overload @:public @:static public static function printFloat(val : Single) : String;
	
	/**
	* <p>
	* Converts a double value into a string.
	* @param val
	*     A double value
	* @return
	*     A string containing a lexical representation of xsd:double
	*/
	@:overload @:public @:static public static function printDouble(val : Float) : String;
	
	/**
	* <p>
	* Converts a boolean value into a string.
	* @param val
	*     A boolean value
	* @return
	*     A string containing a lexical representation of xsd:boolean
	*/
	@:overload @:public @:static public static function printBoolean(val : Bool) : String;
	
	/**
	* <p>
	* Converts a byte value into a string.
	* @param val
	*     A byte value
	* @return
	*     A string containing a lexical representation of xsd:byte
	*/
	@:overload @:public @:static public static function printByte(val : java.StdTypes.Int8) : String;
	
	/**
	* <p>
	* Converts a QName instance into a string.
	* @param val
	*     A QName value
	* @param nsc
	*     A namespace context for interpreting a prefix within a QName.
	* @return
	*     A string containing a lexical representation of QName
	* @throws IllegalArgumentException if <tt>val</tt> is null or
	* if <tt>nsc</tt> is non-null or <tt>nsc.getPrefix(nsprefixFromVal)</tt> is null.
	*/
	@:overload @:public @:static public static function printQName(val : javax.xml.namespace.QName, nsc : javax.xml.namespace.NamespaceContext) : String;
	
	/**
	* <p>
	* Converts a Calendar value into a string.
	* @param val
	*     A Calendar value
	* @return
	*     A string containing a lexical representation of xsd:dateTime
	* @throws IllegalArgumentException if <tt>val</tt> is null.
	*/
	@:overload @:public @:static public static function printDateTime(val : java.util.Calendar) : String;
	
	/**
	* <p>
	* Converts an array of bytes into a string.
	* @param val
	*     An array of bytes
	* @return
	*     A string containing a lexical representation of xsd:base64Binary
	* @throws IllegalArgumentException if <tt>val</tt> is null.
	*/
	@:overload @:public @:static public static function printBase64Binary(val : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* <p>
	* Converts an array of bytes into a string.
	* @param val
	*     An array of bytes
	* @return
	*     A string containing a lexical representation of xsd:hexBinary
	* @throws IllegalArgumentException if <tt>val</tt> is null.
	*/
	@:overload @:public @:static public static function printHexBinary(val : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* <p>
	* Converts a long value into a string.
	* @param val
	*     A long value
	* @return
	*     A string containing a lexical representation of xsd:unsignedInt
	*/
	@:overload @:public @:static public static function printUnsignedInt(val : haxe.Int64) : String;
	
	/**
	* <p>
	* Converts an int value into a string.
	* @param val
	*     An int value
	* @return
	*     A string containing a lexical representation of xsd:unsignedShort
	*/
	@:overload @:public @:static public static function printUnsignedShort(val : Int) : String;
	
	/**
	* <p>
	* Converts a Calendar value into a string.
	* @param val
	*     A Calendar value
	* @return
	*     A string containing a lexical representation of xsd:time
	* @throws IllegalArgumentException if <tt>val</tt> is null.
	*/
	@:overload @:public @:static public static function printTime(val : java.util.Calendar) : String;
	
	/**
	* <p>
	* Converts a Calendar value into a string.
	* @param val
	*     A Calendar value
	* @return
	*     A string containing a lexical representation of xsd:date
	* @throws IllegalArgumentException if <tt>val</tt> is null.
	*/
	@:overload @:public @:static public static function printDate(val : java.util.Calendar) : String;
	
	/**
	* <p>
	* Converts a string value into a string.
	* @param val
	*     A string value
	* @return
	*     A string containing a lexical representation of xsd:AnySimpleType
	*/
	@:overload @:public @:static public static function printAnySimpleType(val : String) : String;
	
	
}
