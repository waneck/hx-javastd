package javax.xml.datatype;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLGregorianCalendar implements java.lang.Cloneable
{
	/**
	* Default no-arg constructor.
	*
	* <p>Note: Always use the {@link DatatypeFactory} to
	* construct an instance of <code>XMLGregorianCalendar</code>.
	* The constructor on this class cannot be guaranteed to
	* produce an object with a consistent state and may be
	* removed in the future.</p>
	*/
	@:overload public function new() : Void;
	
	/**
	* <p>Unset all fields to undefined.</p>
	*
	* <p>Set all int fields to {@link DatatypeConstants#FIELD_UNDEFINED} and reference fields
	* to null.</p>
	*/
	@:overload @:abstract public function clear() : Void;
	
	/**
	* <p>Reset this <code>XMLGregorianCalendar</code> to its original values.</p>
	*
	* <p><code>XMLGregorianCalendar</code> is reset to the same values as when it was created with
	* {@link DatatypeFactory#newXMLGregorianCalendar()},
	* {@link DatatypeFactory#newXMLGregorianCalendar(String lexicalRepresentation)},
	* {@link DatatypeFactory#newXMLGregorianCalendar(
	*   BigInteger year,
	*   int month,
	*   int day,
	*   int hour,
	*   int minute,
	*   int second,
	*   BigDecimal fractionalSecond,
	*   int timezone)},
	* {@link DatatypeFactory#newXMLGregorianCalendar(
	*   int year,
	*   int month,
	*   int day,
	*   int hour,
	*   int minute,
	*   int second,
	*   int millisecond,
	*   int timezone)},
	* {@link DatatypeFactory#newXMLGregorianCalendar(GregorianCalendar cal)},
	* {@link DatatypeFactory#newXMLGregorianCalendarDate(
	*   int year,
	*   int month,
	*   int day,
	*   int timezone)},
	* {@link DatatypeFactory#newXMLGregorianCalendarTime(
	*   int hours,
	*   int minutes,
	*   int seconds,
	*   int timezone)},
	* {@link DatatypeFactory#newXMLGregorianCalendarTime(
	*   int hours,
	*   int minutes,
	*   int seconds,
	*   BigDecimal fractionalSecond,
	*   int timezone)} or
	* {@link DatatypeFactory#newXMLGregorianCalendarTime(
	*   int hours,
	*   int minutes,
	*   int seconds,
	*   int milliseconds,
	*   int timezone)}.
	* </p>
	*
	* <p><code>reset()</code> is designed to allow the reuse of existing <code>XMLGregorianCalendar</code>s
	* thus saving resources associated with the creation of new <code>XMLGregorianCalendar</code>s.</p>
	*/
	@:overload @:abstract public function reset() : Void;
	
	/**
	* <p>Set low and high order component of XSD <code>dateTime</code> year field.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of <code>null</code>.</p>
	*
	* @param year value constraints summarized in <a href="#datetimefield-year">year field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>year</code> parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setYear(year : java.math.BigInteger) : Void;
	
	/**
	* <p>Set year of XSD <code>dateTime</code> year field.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of
	* {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Note: if the absolute value of the <code>year</code> parameter
	* is less than 10^9, the eon component of the XSD year field is set to
	* <code>null</code> by this method.</p>
	*
	* @param year value constraints are summarized in <a href="#datetimefield-year">year field of date/time field mapping table</a>.
	*   If year is {@link DatatypeConstants#FIELD_UNDEFINED}, then eon is set to <code>null</code>.
	*/
	@:overload @:abstract public function setYear(year : Int) : Void;
	
	/**
	* <p>Set month.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param month value constraints summarized in <a href="#datetimefield-month">month field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>month</code> parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setMonth(month : Int) : Void;
	
	/**
	* <p>Set days in month.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param day value constraints summarized in <a href="#datetimefield-day">day field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>day</code> parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setDay(day : Int) : Void;
	
	/**
	* <p>Set the number of minutes in the timezone offset.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param offset value constraints summarized in <a href="#datetimefield-timezone">
	*   timezone field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>offset</code> parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setTimezone(offset : Int) : Void;
	
	/**
	* <p>Set time as one unit.</p>
	*
	* @param hour value constraints are summarized in
	* <a href="#datetimefield-hour">hour field of date/time field mapping table</a>.
	* @param minute value constraints are summarized in
	* <a href="#datetimefield-minute">minute field of date/time field mapping table</a>.
	* @param second value constraints are summarized in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.
	*
	* @see #setTime(int, int, int, BigDecimal)
	*
	* @throws IllegalArgumentException if any parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public function setTime(hour : Int, minute : Int, second : Int) : Void;
	
	/**
	* <p>Set hours.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param hour value constraints summarized in <a href="#datetimefield-hour">hour field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>hour</code> parameter is outside value constraints for the field as specified in
	*   <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setHour(hour : Int) : Void;
	
	/**
	* <p>Set minutes.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param minute value constraints summarized in <a href="#datetimefield-minute">minute field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>minute</code> parameter is outside value constraints for the field as specified in
	*   <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setMinute(minute : Int) : Void;
	
	/**
	* <p>Set seconds.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param second value constraints summarized in <a href="#datetimefield-second">second field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>second</code> parameter is outside value constraints for the field as specified in
	*   <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setSecond(second : Int) : Void;
	
	/**
	* <p>Set milliseconds.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param millisecond value constraints summarized in
	*   <a href="#datetimefield-second">second field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>millisecond</code> parameter is outside value constraints for the field as specified
	*   in <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setMillisecond(millisecond : Int) : Void;
	
	/**
	* <p>Set fractional seconds.</p>
	*
	* <p>Unset this field by invoking the setter with a parameter value of <code>null</code>.</p>
	*
	* @param fractional value constraints summarized in
	*   <a href="#datetimefield-second">second field of date/time field mapping table</a>.
	*
	* @throws IllegalArgumentException if <code>fractional</code> parameter is outside value constraints for the field as specified
	*   in <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload @:abstract public function setFractionalSecond(fractional : java.math.BigDecimal) : Void;
	
	/**
	* <p>Set time as one unit, including the optional infinite precision
	* fractional seconds.</p>
	*
	* @param hour value constraints are summarized in
	* <a href="#datetimefield-hour">hour field of date/time field mapping table</a>.
	* @param minute value constraints are summarized in
	* <a href="#datetimefield-minute">minute field of date/time field mapping table</a>.
	* @param second value constraints are summarized in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.
	* @param fractional value of <code>null</code> indicates this optional
	*   field is not set.
	*
	* @throws IllegalArgumentException if any parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public function setTime(hour : Int, minute : Int, second : Int, fractional : java.math.BigDecimal) : Void;
	
	/**
	* <p>Set time as one unit, including optional milliseconds.</p>
	*
	* @param hour value constraints are summarized in
	* <a href="#datetimefield-hour">hour field of date/time field mapping table</a>.
	* @param minute value constraints are summarized in
	* <a href="#datetimefield-minute">minute field of date/time field mapping table</a>.
	* @param second value constraints are summarized in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.
	* @param millisecond value of {@link DatatypeConstants#FIELD_UNDEFINED} indicates this
	*                    optional field is not set.
	*
	* @throws IllegalArgumentException if any parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public function setTime(hour : Int, minute : Int, second : Int, millisecond : Int) : Void;
	
	/**
	* <p>Return high order component for XML Schema 1.0 dateTime datatype field for
	* <code>year</code>.
	* <code>null</code> if this optional part of the year field is not defined.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-year">year field of date/time field mapping table</a>.</p>
	* @return eon of this <code>XMLGregorianCalendar</code>. The value
	* returned is an integer multiple of 10^9.
	*
	* @see #getYear()
	* @see #getEonAndYear()
	*/
	@:overload @:abstract public function getEon() : java.math.BigInteger;
	
	/**
	* <p>Return low order component for XML Schema 1.0 dateTime datatype field for
	* <code>year</code> or {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-year">year field of date/time field mapping table</a>.</p>
	*
	* @return year  of this <code>XMLGregorianCalendar</code>.
	*
	* @see #getEon()
	* @see #getEonAndYear()
	*/
	@:overload @:abstract public function getYear() : Int;
	
	/**
	* <p>Return XML Schema 1.0 dateTime datatype field for
	* <code>year</code>.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-year">year field of date/time field mapping table</a>.</p>
	*
	* @return sum of <code>eon</code> and <code>BigInteger.valueOf(year)</code>
	* when both fields are defined. When only <code>year</code> is defined,
	* return it. When both <code>eon</code> and <code>year</code> are not
	* defined, return <code>null</code>.
	*
	* @see #getEon()
	* @see #getYear()
	*/
	@:overload @:abstract public function getEonAndYear() : java.math.BigInteger;
	
	/**
	* <p>Return number of month or {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-month">month field of date/time field mapping table</a>.</p>
	*
	* @return year  of this <code>XMLGregorianCalendar</code>.
	*
	*/
	@:overload @:abstract public function getMonth() : Int;
	
	/**
	* Return day in month or {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-day">day field of date/time field mapping table</a>.</p>
	*
	* @see #setDay(int)
	*/
	@:overload @:abstract public function getDay() : Int;
	
	/**
	* Return timezone offset in minutes or
	* {@link DatatypeConstants#FIELD_UNDEFINED} if this optional field is not defined.
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-timezone">timezone field of date/time field mapping table</a>.</p>
	*
	* @see #setTimezone(int)
	*/
	@:overload @:abstract public function getTimezone() : Int;
	
	/**
	* Return hours or {@link DatatypeConstants#FIELD_UNDEFINED}.
	* Returns {@link DatatypeConstants#FIELD_UNDEFINED} if this field is not defined.
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-hour">hour field of date/time field mapping table</a>.</p>
	* @see #setTime(int, int, int)
	*/
	@:overload @:abstract public function getHour() : Int;
	
	/**
	* Return minutes or {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	* Returns {@link DatatypeConstants#FIELD_UNDEFINED} if this field is not defined.
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-minute">minute field of date/time field mapping table</a>.</p>
	* @see #setTime(int, int, int)
	*/
	@:overload @:abstract public function getMinute() : Int;
	
	/**
	* <p>Return seconds or {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Returns {@link DatatypeConstants#FIELD_UNDEFINED} if this field is not defined.
	* When this field is not defined, the optional xs:dateTime
	* fractional seconds field, represented by
	* {@link #getFractionalSecond()} and {@link #getMillisecond()},
	* must not be defined.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.</p>
	*
	* @return Second  of this <code>XMLGregorianCalendar</code>.
	*
	* @see #getFractionalSecond()
	* @see #getMillisecond()
	* @see #setTime(int, int, int)
	*/
	@:overload @:abstract public function getSecond() : Int;
	
	/**
	* <p>Return millisecond precision of {@link #getFractionalSecond()}.</p>
	*
	* <p>This method represents a convenience accessor to infinite
	* precision fractional second value returned by
	* {@link #getFractionalSecond()}. The returned value is the rounded
	* down to milliseconds value of
	* {@link #getFractionalSecond()}. When {@link #getFractionalSecond()}
	* returns <code>null</code>, this method must return
	* {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.</p>
	*
	* @return Millisecond  of this <code>XMLGregorianCalendar</code>.
	*
	* @see #getFractionalSecond()
	* @see #setTime(int, int, int)
	*/
	@:overload public function getMillisecond() : Int;
	
	/**
	* <p>Return fractional seconds.</p>
	*
	* <p><code>null</code> is returned when this optional field is not defined.</p>
	*
	* <p>Value constraints are detailed in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.</p>
	*
	* <p>This optional field can only have a defined value when the
	* xs:dateTime second field, represented by {@link #getSecond()},
	* does not return {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @return fractional seconds  of this <code>XMLGregorianCalendar</code>.
	*
	* @see #getSecond()
	* @see #setTime(int, int, int, BigDecimal)
	*/
	@:overload @:abstract public function getFractionalSecond() : java.math.BigDecimal;
	
	/**
	* <p>Compare two instances of W3C XML Schema 1.0 date/time datatypes
	* according to partial order relation defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/#dateTime-order">W3C XML Schema 1.0 Part 2, Section 3.2.7.3,
	* <i>Order relation on dateTime</i></a>.</p>
	*
	* <p><code>xsd:dateTime</code> datatype field mapping to accessors of
	* this class are defined in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.</p>
	*
	* @param xmlGregorianCalendar Instance of <code>XMLGregorianCalendar</code> to compare
	*
	* @return The relationship between <code>this</code> <code>XMLGregorianCalendar</code> and
	*   the specified <code>xmlGregorianCalendar</code> as
	*   {@link DatatypeConstants#LESSER},
	*   {@link DatatypeConstants#EQUAL},
	*   {@link DatatypeConstants#GREATER} or
	*   {@link DatatypeConstants#INDETERMINATE}.
	*
	* @throws NullPointerException if <code>xmlGregorianCalendar</code> is null.
	*/
	@:overload @:abstract public function compare(xmlGregorianCalendar : javax.xml.datatype.XMLGregorianCalendar) : Int;
	
	/**
	* <p>Normalize this instance to UTC.</p>
	*
	* <p>2000-03-04T23:00:00+03:00 normalizes to 2000-03-04T20:00:00Z</p>
	* <p>Implements W3C XML Schema Part 2, Section 3.2.7.3 (A).</p>
	*
	* @return <code>this</code> <code>XMLGregorianCalendar</code> normalized to UTC.
	*/
	@:overload @:abstract public function normalize() : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* <p>Compares this calendar to the specified object. The result is
	* <code>true</code> if and only if the argument is not null and is an
	* <code>XMLGregorianCalendar</code> object that represents the same
	* instant in time as this object.</p>
	*
	* @param obj to compare.
	*
	* @return <code>true</code> when <code>obj</code> is an instance of
	* <code>XMLGregorianCalendar</code> and
	* {@link #compare(XMLGregorianCalendar obj)}
	* returns {@link DatatypeConstants#EQUAL},
	* otherwise <code>false</code>.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* <p>Returns a hash code consistent with the definition of the equals method.</p>
	*
	* @return hash code of this object.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* <p>Return the lexical representation of <code>this</code> instance.
	* The format is specified in
	* <a href="http://www.w3.org/TR/xmlschema-2/#dateTime-order">XML Schema 1.0 Part 2, Section 3.2.[7-14].1,
	* <i>Lexical Representation</i>".</a></p>
	*
	* <p>Specific target lexical representation format is determined by
	* {@link #getXMLSchemaType()}.</p>
	*
	* @return XML, as <code>String</code>, representation of this <code>XMLGregorianCalendar</code>
	*
	* @throws IllegalStateException if the combination of set fields
	*    does not match one of the eight defined XML Schema builtin date/time datatypes.
	*/
	@:overload @:abstract public function toXMLFormat() : String;
	
	/**
	* <p>Return the name of the XML Schema date/time type that this instance
	* maps to. Type is computed based on fields that are set.</p>
	*
	* <table border="2" rules="all" cellpadding="2">
	*   <thead>
	*     <tr>
	*       <th align="center" colspan="7">
	*         Required fields for XML Schema 1.0 Date/Time Datatypes.<br/>
	*         <i>(timezone is optional for all date/time datatypes)</i>
	*       </th>
	*     </tr>
	*   </thead>
	*   <tbody>
	*     <tr>
	*       <td>Datatype</td>
	*       <td>year</td>
	*       <td>month</td>
	*       <td>day</td>
	*       <td>hour</td>
	*       <td>minute</td>
	*       <td>second</td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#DATETIME}</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#DATE}</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#TIME}</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#GYEARMONTH}</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#GMONTHDAY}</td>
	*       <td></td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#GYEAR}</td>
	*       <td>X</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#GMONTH}</td>
	*       <td></td>
	*       <td>X</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#GDAY}</td>
	*       <td></td>
	*       <td></td>
	*       <td>X</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*     </tr>
	*   </tbody>
	* </table>
	*
	* @throws java.lang.IllegalStateException if the combination of set fields
	*    does not match one of the eight defined XML Schema builtin
	*    date/time datatypes.
	* @return One of the following class constants:
	*   {@link DatatypeConstants#DATETIME},
	*   {@link DatatypeConstants#TIME},
	*   {@link DatatypeConstants#DATE},
	*   {@link DatatypeConstants#GYEARMONTH},
	*   {@link DatatypeConstants#GMONTHDAY},
	*   {@link DatatypeConstants#GYEAR},
	*   {@link DatatypeConstants#GMONTH} or
	*   {@link DatatypeConstants#GDAY}.
	*/
	@:overload @:abstract public function getXMLSchemaType() : javax.xml.namespace.QName;
	
	/**
	* <p>Returns a <code>String</code> representation of this <code>XMLGregorianCalendar</code> <code>Object</code>.</p>
	*
	* <p>The result is a lexical representation generated by {@link #toXMLFormat()}.</p>
	*
	* @return A non-<code>null</code> valid <code>String</code> representation of this <code>XMLGregorianCalendar</code>.
	*
	* @throws IllegalStateException if the combination of set fields
	*    does not match one of the eight defined XML Schema builtin date/time datatypes.
	*
	* @see #toXMLFormat()
	*/
	@:overload public function toString() : String;
	
	/**
	* Validate instance by <code>getXMLSchemaType()</code> constraints.
	* @return true if data values are valid.
	*/
	@:overload @:abstract public function isValid() : Bool;
	
	/**
	* <p>Add <code>duration</code> to this instance.</p>
	*
	* <p>The computation is specified in
	* <a href="http://www.w3.org/TR/xmlschema-2/#adding-durations-to-dateTimes">XML Schema 1.0 Part 2, Appendix E,
	* <i>Adding durations to dateTimes</i>></a>.
	* <a href="#datetimefieldmapping">date/time field mapping table</a>
	* defines the mapping from XML Schema 1.0 <code>dateTime</code> fields
	* to this class' representation of those fields.</p>
	*
	* @param duration Duration to add to this <code>XMLGregorianCalendar</code>.
	*
	* @throws NullPointerException  when <code>duration</code> parameter is <code>null</code>.
	*/
	@:overload @:abstract public function add(duration : javax.xml.datatype.Duration) : Void;
	
	/**
	* <p>Convert this <code>XMLGregorianCalendar</code> to a {@link GregorianCalendar}.</p>
	*
	* <p>When <code>this</code> instance has an undefined field, this
	* conversion relies on the <code>java.util.GregorianCalendar</code> default
	* for its corresponding field. A notable difference between
	* XML Schema 1.0 date/time datatypes and <code>java.util.GregorianCalendar</code>
	* is that Timezone value is optional for date/time datatypes and it is
	* a required field for <code>java.util.GregorianCalendar</code>. See javadoc
	* for <code>java.util.TimeZone.getDefault()</code> on how the default
	* is determined. To explicitly specify the <code>TimeZone</code>
	* instance, see
	* {@link #toGregorianCalendar(TimeZone, Locale, XMLGregorianCalendar)}.</p>
	*
	* <table border="2" rules="all" cellpadding="2">
	*   <thead>
	*     <tr>
	*       <th align="center" colspan="2">
	*          Field by Field Conversion from this class to
	*          <code>java.util.GregorianCalendar</code>
	*       </th>
	*     </tr>
	*   </thead>
	*   <tbody>
	*     <tr>
	*        <td><code>java.util.GregorianCalendar</code> field</td>
	*        <td><code>javax.xml.datatype.XMLGregorianCalendar</code> field</td>
	*     </tr>
	*     <tr>
	*       <td><code>ERA</code></td>
	*       <td>{@link #getEonAndYear()}<code>.signum() < 0 ? GregorianCalendar.BC : GregorianCalendar.AD</code></td>
	*     </tr>
	*     <tr>
	*       <td><code>YEAR</code></td>
	*       <td>{@link #getEonAndYear()}<code>.abs().intValue()</code><i>*</i></td>
	*     </tr>
	*     <tr>
	*       <td><code>MONTH</code></td>
	*       <td>{@link #getMonth()} - {@link DatatypeConstants#JANUARY} + {@link GregorianCalendar#JANUARY}</td>
	*     </tr>
	*     <tr>
	*       <td><code>DAY_OF_MONTH</code></td>
	*       <td>{@link #getDay()}</td>
	*     </tr>
	*     <tr>
	*       <td><code>HOUR_OF_DAY</code></td>
	*       <td>{@link #getHour()}</td>
	*     </tr>
	*     <tr>
	*       <td><code>MINUTE</code></td>
	*       <td>{@link #getMinute()}</td>
	*     </tr>
	*     <tr>
	*       <td><code>SECOND</code></td>
	*       <td>{@link #getSecond()}</td>
	*     </tr>
	*     <tr>
	*       <td><code>MILLISECOND</code></td>
	*       <td>get millisecond order from {@link #getFractionalSecond()}<i>*</i> </td>
	*     </tr>
	*     <tr>
	*       <td><code>GregorianCalendar.setTimeZone(TimeZone)</code></td>
	*       <td>{@link #getTimezone()} formatted into Custom timezone id</td>
	*     </tr>
	*   </tbody>
	* </table>
	* <i>*</i> designates possible loss of precision during the conversion due
	* to source datatype having higher precision than target datatype.
	*
	* <p>To ensure consistency in conversion implementations, the new
	* <code>GregorianCalendar</code> should be instantiated in following
	* manner.
	* <ul>
	*   <li>Using <code>timeZone</code> value as defined above, create a new
	* <code>java.util.GregorianCalendar(timeZone,Locale.getDefault())</code>.
	*   </li>
	*   <li>Initialize all GregorianCalendar fields by calling {@link java.util.GregorianCalendar#clear()}.</li>
	*   <li>Obtain a pure Gregorian Calendar by invoking
	*   <code>GregorianCalendar.setGregorianChange(
	*   new Date(Long.MIN_VALUE))</code>.</li>
	*   <li>Its fields ERA, YEAR, MONTH, DAY_OF_MONTH, HOUR_OF_DAY,
	*       MINUTE, SECOND and MILLISECOND are set using the method
	*       <code>Calendar.set(int,int)</code></li>
	* </ul>
	* </p>
	*
	* @see #toGregorianCalendar(java.util.TimeZone, java.util.Locale, XMLGregorianCalendar)
	*/
	@:overload @:abstract public function toGregorianCalendar() : java.util.GregorianCalendar;
	
	/**
	* <p>Convert this <code>XMLGregorianCalendar</code> along with provided parameters
	* to a {@link GregorianCalendar} instance.</p>
	*
	* <p> Since XML Schema 1.0 date/time datetypes has no concept of
	* timezone ids or daylight savings timezone ids, this conversion operation
	* allows the user to explicitly specify one with
	* <code>timezone</code> parameter.</p>
	*
	* <p>To compute the return value's <code>TimeZone</code> field,
	* <ul>
	* <li>when parameter <code>timeZone</code> is non-null,
	* it is the timezone field.</li>
	* <li>else when <code>this.getTimezone() != FIELD_UNDEFINED</code>,
	* create a <code>java.util.TimeZone</code> with a custom timezone id
	* using the <code>this.getTimezone()</code>.</li>
	* <li>else when <code>defaults.getTimezone() != FIELD_UNDEFINED</code>,
	* create a <code>java.util.TimeZone</code> with a custom timezone id
	* using <code>defaults.getTimezone()</code>.</li>
	* <li>else use the <code>GregorianCalendar</code> default timezone value
	* for the host is defined as specified by
	* <code>java.util.TimeZone.getDefault()</code>.</li></p>
	*
	* <p>To ensure consistency in conversion implementations, the new
	* <code>GregorianCalendar</code> should be instantiated in following
	* manner.
	* <ul>
	*   <li>Create a new <code>java.util.GregorianCalendar(TimeZone,
	*       Locale)</code> with TimeZone set as specified above and the
	*       <code>Locale</code> parameter.
	*   </li>
	*   <li>Initialize all GregorianCalendar fields by calling {@link GregorianCalendar#clear()}</li>
	*   <li>Obtain a pure Gregorian Calendar by invoking
	*   <code>GregorianCalendar.setGregorianChange(
	*   new Date(Long.MIN_VALUE))</code>.</li>
	*   <li>Its fields ERA, YEAR, MONTH, DAY_OF_MONTH, HOUR_OF_DAY,
	*       MINUTE, SECOND and MILLISECOND are set using the method
	*       <code>Calendar.set(int,int)</code></li>
	* </ul>
	*
	* @param timezone provide Timezone. <code>null</code> is a legal value.
	* @param aLocale  provide explicit Locale. Use default GregorianCalendar locale if
	*                 value is <code>null</code>.
	* @param defaults provide default field values to use when corresponding
	*                 field for this instance is FIELD_UNDEFINED or null.
	*                 If <code>defaults</code>is <code>null</code> or a field
	*                 within the specified <code>defaults</code> is undefined,
	*                 just use <code>java.util.GregorianCalendar</code> defaults.
	* @return a java.util.GregorianCalendar conversion of this instance.
	*/
	@:overload @:abstract public function toGregorianCalendar(timezone : java.util.TimeZone, aLocale : java.util.Locale, defaults : javax.xml.datatype.XMLGregorianCalendar) : java.util.GregorianCalendar;
	
	/**
	* <p>Returns a <code>java.util.TimeZone</code> for this class.</p>
	*
	* <p>If timezone field is defined for this instance,
	* returns TimeZone initialized with custom timezone id
	* of zoneoffset. If timezone field is undefined,
	* try the defaultZoneoffset that was passed in.
	* If defaultZoneoffset is FIELD_UNDEFINED, return
	* default timezone for this host.
	* (Same default as java.util.GregorianCalendar).</p>
	*
	* @param defaultZoneoffset default zoneoffset if this zoneoffset is
	* {@link DatatypeConstants#FIELD_UNDEFINED}.
	*
	* @return TimeZone for this.
	*/
	@:overload @:abstract public function getTimeZone(defaultZoneoffset : Int) : java.util.TimeZone;
	
	/**
	* <p>Creates and returns a copy of this object.</p>
	*
	* @return copy of this <code>Object</code>
	*/
	@:overload @:abstract public function clone() : Dynamic;
	
	
}
