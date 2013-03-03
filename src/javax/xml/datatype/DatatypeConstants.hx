package javax.xml.datatype;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DatatypeConstants
{
	/**
	* Value for first month of year.
	*/
	@:public @:static @:final public static var JANUARY(default, null) : Int;
	
	/**
	* Value for second month of year.
	*/
	@:public @:static @:final public static var FEBRUARY(default, null) : Int;
	
	/**
	* Value for third month of year.
	*/
	@:public @:static @:final public static var MARCH(default, null) : Int;
	
	/**
	* Value for fourth month of year.
	*/
	@:public @:static @:final public static var APRIL(default, null) : Int;
	
	/**
	* Value for fifth month of year.
	*/
	@:public @:static @:final public static var MAY(default, null) : Int;
	
	/**
	* Value for sixth month of year.
	*/
	@:public @:static @:final public static var JUNE(default, null) : Int;
	
	/**
	* Value for seventh month of year.
	*/
	@:public @:static @:final public static var JULY(default, null) : Int;
	
	/**
	* Value for eighth month of year.
	*/
	@:public @:static @:final public static var AUGUST(default, null) : Int;
	
	/**
	* Value for ninth month of year.
	*/
	@:public @:static @:final public static var SEPTEMBER(default, null) : Int;
	
	/**
	* Value for tenth month of year.
	*/
	@:public @:static @:final public static var OCTOBER(default, null) : Int;
	
	/**
	* Value for eleven month of year.
	*/
	@:public @:static @:final public static var NOVEMBER(default, null) : Int;
	
	/**
	* Value for twelve month of year.
	*/
	@:public @:static @:final public static var DECEMBER(default, null) : Int;
	
	/**
	* <p>Comparison result.</p>
	*/
	@:public @:static @:final public static var LESSER(default, null) : Int;
	
	/**
	* <p>Comparison result.</p>
	*/
	@:public @:static @:final public static var EQUAL(default, null) : Int;
	
	/**
	* <p>Comparison result.</p>
	*/
	@:public @:static @:final public static var GREATER(default, null) : Int;
	
	/**
	* <p>Comparison result.</p>
	*/
	@:public @:static @:final public static var INDETERMINATE(default, null) : Int;
	
	/**
	* Designation that an "int" field is not set.
	*/
	@:public @:static @:final public static var FIELD_UNDEFINED(default, null) : Int;
	
	/**
	* <p>A constant that represents the years field.</p>
	*/
	@:public @:static @:final public static var YEARS(default, null) : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field;
	
	/**
	* <p>A constant that represents the months field.</p>
	*/
	@:public @:static @:final public static var MONTHS(default, null) : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field;
	
	/**
	* <p>A constant that represents the days field.</p>
	*/
	@:public @:static @:final public static var DAYS(default, null) : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field;
	
	/**
	* <p>A constant that represents the hours field.</p>
	*/
	@:public @:static @:final public static var HOURS(default, null) : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field;
	
	/**
	* <p>A constant that represents the minutes field.</p>
	*/
	@:public @:static @:final public static var MINUTES(default, null) : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field;
	
	/**
	* <p>A constant that represents the seconds field.</p>
	*/
	@:public @:static @:final public static var SECONDS(default, null) : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>dateTime</code>.</p>
	*/
	@:public @:static @:final public static var DATETIME(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>time</code>.</p>
	*/
	@:public @:static @:final public static var TIME(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>date</code>.</p>
	*/
	@:public @:static @:final public static var DATE(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>gYearMonth</code>.</p>
	*/
	@:public @:static @:final public static var GYEARMONTH(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>gMonthDay</code>.</p>
	*/
	@:public @:static @:final public static var GMONTHDAY(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>gYear</code>.</p>
	*/
	@:public @:static @:final public static var GYEAR(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>gMonth</code>.</p>
	*/
	@:public @:static @:final public static var GMONTH(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema 1.0 datatype <code>gDay</code>.</p>
	*/
	@:public @:static @:final public static var GDAY(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for W3C XML Schema datatype <code>duration</code>.</p>
	*/
	@:public @:static @:final public static var DURATION(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for XQuery 1.0 and XPath 2.0 datatype <code>dayTimeDuration</code>.</p>
	*/
	@:public @:static @:final public static var DURATION_DAYTIME(default, null) : javax.xml.namespace.QName;
	
	/**
	* <p>Fully qualified name for XQuery 1.0 and XPath 2.0 datatype <code>yearMonthDuration</code>.</p>
	*/
	@:public @:static @:final public static var DURATION_YEARMONTH(default, null) : javax.xml.namespace.QName;
	
	/**
	* W3C XML Schema max timezone offset is -14:00. Zone offset is in minutes.
	*/
	@:public @:static @:final public static var MAX_TIMEZONE_OFFSET(default, null) : Int;
	
	/**
	* W3C XML Schema min timezone offset is +14:00. Zone offset is in minutes.
	*/
	@:public @:static @:final public static var MIN_TIMEZONE_OFFSET(default, null) : Int;
	
	
}
/**
* Type-safe enum class that represents six fields
* of the {@link Duration} class.
* @since 1.5
*/
@:require(java5) @:native('javax$xml$datatype$DatatypeConstants$Field') extern class DatatypeConstants_Field
{
	/**
	* Returns a field name in English. This method
	* is intended to be used for debugging/diagnosis
	* and not for display to end-users.
	*
	* @return
	*      a non-null valid String constant.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* <p>Get id of this Field.</p>
	*
	* @return Id of field.
	*/
	@:overload @:public public function getId() : Int;
	
	
}
