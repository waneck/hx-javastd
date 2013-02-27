package com.sun.org.apache.xerces.internal.jaxp.datatype;
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
extern class XMLGregorianCalendarImpl extends javax.xml.datatype.XMLGregorianCalendar implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* <p>Use as a template for default field values when
	* converting to a {@link GregorianCalendar}, set to a leap
	* year date of January 1, 0400 at midnight.</p>
	*
	* <p>Fields that are optional for an <code>xsd:dateTime</code> instances are defaulted to not being set to any value.
	* <code>XMLGregorianCalendar</code> fields millisecond, fractional second and timezone return the value indicating
	* that the field is not set, {@link DatatypeConstants#FIELD_UNDEFINED} for millisecond and timezone
	* and <code>null</code> for fractional second.</p>
	*
	* @see #toGregorianCalendar(TimeZone, Locale, XMLGregorianCalendar)
	*/
	public static var LEAP_YEAR_DEFAULT(default, null) : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* Constructs a new XMLGregorianCalendar object.
	*
	* String parsing documented by {@link #parse(String)}.
	*
	* Returns a non-null valid XMLGregorianCalendar object that holds the
	* value indicated by the lexicalRepresentation parameter.
	*
	* @param lexicalRepresentation
	*      Lexical representation of one the eight
	*      XML Schema date/time datatypes.
	* @throws IllegalArgumentException
	*      If the given string does not conform as documented in
	*      {@link #parse(String)}.
	* @throws NullPointerException
	*      If the given string is null.
	*/
	@:overload private function new(lexicalRepresentation : String) : Void;
	
	/**
	* <p>Create an instance with all date/time datatype fields set to
	* {@link DatatypeConstants#FIELD_UNDEFINED} or null respectively.</p>
	*/
	@:overload public function new() : Void;
	
	/**
	* <p>Private constructor allowing for complete value spaces allowed by
	* W3C XML Schema 1.0 recommendation for xsd:dateTime and related
	* builtin datatypes. Note that <code>year</code> parameter supports
	* arbitrarily large numbers and fractionalSecond has infinite
	* precision.</p>
	*
	* @param year of <code>XMLGregorianCalendar</code> to be created.
	* @param month of <code>XMLGregorianCalendar</code> to be created.
	* @param day of <code>XMLGregorianCalendar</code> to be created.
	* @param hour of <code>XMLGregorianCalendar</code> to be created.
	* @param minute of <code>XMLGregorianCalendar</code> to be created.
	* @param second of <code>XMLGregorianCalendar</code> to be created.
	* @param fractionalSecond of <code>XMLGregorianCalendar</code> to be created.
	* @param timezone of <code>XMLGregorianCalendar</code> to be created.
	*
	*/
	@:overload private function new(year : java.math.BigInteger, month : Int, day : Int, hour : Int, minute : Int, second : Int, fractionalSecond : java.math.BigDecimal, timezone : Int) : Void;
	
	/**
	* <p>Convert a <code>java.util.GregorianCalendar</code> to XML Schema 1.0
	* representation.</p>
	*
	* <table border="2" rules="all" cellpadding="2">
	*   <thead>
	*     <tr>
	*       <th align="center" colspan="2">
	*          Field by Field Conversion from
	*          <code>java.util.GregorianCalendar</code> to this class
	*       </th>
	*     </tr>
	*   </thead>
	*   <tbody>
	*     <tr>
	*        <th><code>javax.xml.datatype.XMLGregorianCalendar</code> field</th>
	*        <th><code>java.util.GregorianCalendar</code> field</th>
	*     </tr>
	*     <tr>
	*       <th>{@link #setYear(int)}</th>
	*       <th><code>ERA == GregorianCalendar.BC ? -YEAR : YEAR</code></th>
	*     </tr>
	*     <tr>
	*       <th>{@link #setMonth(int)}</th>
	*       <th><code>MONTH + 1</code></th>
	*     </tr>
	*     <tr>
	*       <th>{@link #setDay(int)}</th>
	*       <th><code>DAY_OF_MONTH</code></th>
	*     </tr>
	*     <tr>
	*       <th>{@link #setTime(int,int,int, BigDecimal)}</th>
	*       <th><code>HOUR_OF_DAY, MINUTE, SECOND, MILLISECOND</code></th>
	*     </tr>
	*     <tr>
	*       <th>{@link #setTimezone(int)}<i>*</i></th>
	*       <th><code>(ZONE_OFFSET + DST_OFFSET) / (60*1000)</code><br/>
	*       <i>(in minutes)</i>
	*       </th>
	*     </tr>
	*   </tbody>
	* </table>
	* <p><i>*</i>conversion loss of information. It is not possible to represent
	* a <code>java.util.GregorianCalendar</code> daylight savings timezone id in the
	* XML Schema 1.0 date/time datatype representation.</p>
	*
	* <p>To compute the return value's <code>TimeZone</code> field,
	* <ul>
	* <li>when <code>this.getTimezone() != DatatypeConstants.FIELD_UNDEFINED</code>,
	* create a <code>java.util.TimeZone</code> with a custom timezone id
	* using the <code>this.getTimezone()</code>.</li>
	* <li>else use the <code>GregorianCalendar</code> default timezone value
	* for the host is defined as specified by
	* <code>java.util.TimeZone.getDefault()</code>.</li></p>
	*
	* @param cal <code>java.util.GregorianCalendar</code> used to create <code>XMLGregorianCalendar</code>
	*/
	@:overload public function new(cal : java.util.GregorianCalendar) : Void;
	
	/**
	* <p>Create a Java representation of XML Schema builtin datatype <code>dateTime</code>.
	* All possible fields are specified for this factory method.</p>
	*
	* @param year represents both high-order eons and low-order year.
	* @param month of <code>dateTime</code>
	* @param day of <code>dateTime</code>
	* @param hours of <code>dateTime</code>
	* @param minutes of <code>dateTime</code>
	* @param seconds of <code>dateTime</code>
	* @param fractionalSecond value of null indicates optional field is absent.
	* @param timezone offset in minutes. {@link DatatypeConstants#FIELD_UNDEFINED} indicates optional field is not set.
	*
	* @return <code>XMLGregorianCalendar</code> created from parameter values.
	*
	* @see DatatypeConstants#FIELD_UNDEFINED
	*
	* @throws IllegalArgumentException if any parameter is outside value
	* constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public static function createDateTime(year : java.math.BigInteger, month : Int, day : Int, hours : Int, minutes : Int, seconds : Int, fractionalSecond : java.math.BigDecimal, timezone : Int) : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* <p>Create a Java instance of XML Schema builtin datatype dateTime.</p>
	*
	* @param year represents both high-order eons and low-order year.
	* @param month of <code>dateTime</code>
	* @param day of <code>dateTime</code>
	* @param hour of <code>dateTime</code>
	* @param minute of <code>dateTime</code>
	* @param second of <code>dateTime</code>
	*
	* @return <code>XMLGregorianCalendar</code> created from parameter values.
	*
	* @throws IllegalArgumentException if any parameter is outside value constraints for the field as specified in
	*   <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*
	* @see DatatypeConstants#FIELD_UNDEFINED
	*/
	@:overload public static function createDateTime(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int) : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* <p>Create a Java representation of XML Schema builtin datatype <code>dateTime</code>.
	* All possible fields are specified for this factory method.</p>
	*
	* @param year represents low-order year.
	* @param month of <code>dateTime</code>
	* @param day of <code>dateTime</code>
	* @param hours of <code>dateTime</code>
	* @param minutes of <code>dateTime</code>
	* @param seconds of <code>dateTime</code>
	* @param milliseconds of <code>dateTime</code>. {@link DatatypeConstants#FIELD_UNDEFINED} indicates optional field is not set.
	* @param timezone offset in minutes. {@link DatatypeConstants#FIELD_UNDEFINED} indicates optional field is not set.
	*
	* @return <code>XMLGregorianCalendar</code> created from parameter values.
	*
	* @throws IllegalArgumentException if any parameter is outside value constraints for the field as specified in
	*   <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*
	* @see DatatypeConstants#FIELD_UNDEFINED
	*/
	@:overload public static function createDateTime(year : Int, month : Int, day : Int, hours : Int, minutes : Int, seconds : Int, milliseconds : Int, timezone : Int) : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* <p>Create a Java representation of XML Schema builtin datatype <code>date</code> or <code>g*</code>.</p>
	*
	* <p>For example, an instance of <code>gYear</code> can be created invoking this factory
	* with <code>month</code> and <code>day</code> parameters set to
	* {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* @param year of <code>XMLGregorianCalendar</code> to be created.
	* @param month of <code>XMLGregorianCalendar</code> to be created.
	* @param day of <code>XMLGregorianCalendar</code> to be created.
	* @param timezone offset in minutes. {@link DatatypeConstants#FIELD_UNDEFINED} indicates optional field is not set.
	*
	* @return <code>XMLGregorianCalendar</code> created from parameter values.
	*
	* @see DatatypeConstants#FIELD_UNDEFINED
	*
	* @throws IllegalArgumentException if any parameter is outside value
	* constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public static function createDate(year : Int, month : Int, day : Int, timezone : Int) : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* Create a Java instance of XML Schema builtin datatype <code>time</code>.
	* @param hours number of hours
	* @param minutes number of minutes
	* @param seconds number of seconds
	* @param timezone offset in minutes. {@link DatatypeConstants#FIELD_UNDEFINED} indicates optional field is not set.
	*
	* @return <code>XMLGregorianCalendar</code> created from parameter values.
	*
	* @see DatatypeConstants#FIELD_UNDEFINED
	*
	* @throws IllegalArgumentException if any parameter is outside value
	* constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public static function createTime(hours : Int, minutes : Int, seconds : Int, timezone : Int) : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* <p>Create a Java instance of XML Schema builtin datatype time.</p>
	*
	* @param hours number of hours
	* @param minutes number of minutes
	* @param seconds number of seconds
	* @param fractionalSecond value of <code>null</code> indicates that this optional field is not set.
	* @param timezone offset in minutes. {@link DatatypeConstants#FIELD_UNDEFINED} indicates optional field is not set.
	*
	* @return <code>XMLGregorianCalendar</code> created from parameter values.
	*
	* @see DatatypeConstants#FIELD_UNDEFINED
	*
	* @throws IllegalArgumentException if any parameter is outside value
	* constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public static function createTime(hours : Int, minutes : Int, seconds : Int, fractionalSecond : java.math.BigDecimal, timezone : Int) : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* <p>Create a Java instance of XML Schema builtin datatype time.</p>
	*
	* @param hours number of hours
	* @param minutes number of minutes
	* @param seconds number of seconds
	* @param milliseconds number of milliseconds
	* @param timezone offset in minutes. {@link DatatypeConstants#FIELD_UNDEFINED} indicates optional field is not set.
	*
	* @return <code>XMLGregorianCalendar</code> created from parameter values.
	*
	* @see DatatypeConstants#FIELD_UNDEFINED
	*
	* @throws IllegalArgumentException if any parameter is outside value
	* constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload public static function createTime(hours : Int, minutes : Int, seconds : Int, milliseconds : Int, timezone : Int) : javax.xml.datatype.XMLGregorianCalendar;
	
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
	@:overload override public function getEon() : java.math.BigInteger;
	
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
	@:overload override public function getYear() : Int;
	
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
	@:overload override public function getEonAndYear() : java.math.BigInteger;
	
	/**
	* <p>Return number of month or {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-month">month field of date/time field mapping table</a>.</p>
	*
	* @return year  of this <code>XMLGregorianCalendar</code>.
	*
	*/
	@:overload override public function getMonth() : Int;
	
	/**
	* Return day in month or {@link DatatypeConstants#FIELD_UNDEFINED}.</p>
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-day">day field of date/time field mapping table</a>.</p>
	*
	* @see #setDay(int)
	*/
	@:overload override public function getDay() : Int;
	
	/**
	* Return timezone offset in minutes or
	* {@link DatatypeConstants#FIELD_UNDEFINED} if this optional field is not defined.
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-timezone">timezone field of date/time field mapping table</a>.</p>
	*
	* @see #setTimezone(int)
	*/
	@:overload override public function getTimezone() : Int;
	
	/**
	* Return hours or {@link DatatypeConstants#FIELD_UNDEFINED}.
	* Returns {@link DatatypeConstants#FIELD_UNDEFINED} if this field is not defined.
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-hour">hour field of date/time field mapping table</a>.</p>
	* @see #setTime(int, int, int)
	*/
	@:overload override public function getHour() : Int;
	
	/**
	* Return minutes or {@link DatatypeConstants#FIELD_UNDEFINED}.<\p>
	* Returns {@link DatatypeConstants#FIELD_UNDEFINED} if this field is not defined.
	*
	* <p>Value constraints for this value are summarized in
	* <a href="#datetimefield-minute">minute field of date/time field mapping table</a>.</p>
	* @see #setTime(int, int, int)
	*/
	@:overload override public function getMinute() : Int;
	
	/**
	* <p>Return seconds or {@link DatatypeConstants#FIELD_UNDEFINED}.<\p>
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
	@:overload override public function getSecond() : Int;
	
	/**
	* <p>Return millisecond precision of {@link #getFractionalSecond()}.<\p>
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
	@:overload override public function getMillisecond() : Int;
	
	/**
	* <p>Return fractional seconds.</p>
	*
	* <p><code>null</code> is returned when this optional field is not defined.</p>
	*
	* <p>Value constraints are detailed in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.</p>
	*
	* <p>This optional field can only have a defined value when the
	* xs:dateTime second field, represented by ({@link #getSecond()},
	* does not return {@link DatatypeConstants#FIELD_UNDEFINED}).</p>
	*
	* @return fractional seconds  of this <code>XMLGregorianCalendar</code>.
	*
	* @see #getSecond()
	* @see #setTime(int, int, int, BigDecimal)
	*/
	@:overload override public function getFractionalSecond() : java.math.BigDecimal;
	
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
	@:overload override public function setYear(year : java.math.BigInteger) : Void;
	
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
	@:overload override public function setYear(year : Int) : Void;
	
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
	@:overload override public function setMonth(month : Int) : Void;
	
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
	@:overload override public function setDay(day : Int) : Void;
	
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
	@:overload override public function setTimezone(offset : Int) : Void;
	
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
	@:overload override public function setTime(hour : Int, minute : Int, second : Int) : Void;
	
	@:overload override public function setHour(hour : Int) : Void;
	
	@:overload override public function setMinute(minute : Int) : Void;
	
	@:overload override public function setSecond(second : Int) : Void;
	
	/**
	* <p>Set time as one unit, including the optional infinite precison
	* fractional seconds.</p>
	*
	* @param hour value constraints are summarized in
	* <a href="#datetimefield-hour">hour field of date/time field mapping table</a>.
	* @param minute value constraints are summarized in
	* <a href="#datetimefield-minute">minute field of date/time field mapping table</a>.
	* @param second value constraints are summarized in
	* <a href="#datetimefield-second">second field of date/time field mapping table</a>.
	* @param fractional value of <code>null</code> indicates this optional
	*                   field is not set.
	*
	* @throws IllegalArgumentException if any parameter is
	* outside value constraints for the field as specified in
	* <a href="#datetimefieldmapping">date/time field mapping table</a>.
	*/
	@:overload override public function setTime(hour : Int, minute : Int, second : Int, fractional : java.math.BigDecimal) : Void;
	
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
	@:overload override public function setTime(hour : Int, minute : Int, second : Int, millisecond : Int) : Void;
	
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
	* @param rhs instance of <code>XMLGregorianCalendar</code> to compare
	*
	* @return the relationship between <code>lhs</code> and <code>rhs</code> as
	*   {@link DatatypeConstants#LESSER},
	*   {@link DatatypeConstants#EQUAL},
	*   {@link DatatypeConstants#GREATER} or
	*   {@link DatatypeConstants#INDETERMINATE}.
	*
	* @throws NullPointerException if <code>lhs</code> or <code>rhs</code>
	* parameters are null.
	*/
	@:overload public function compare(rhs : javax.xml.datatype.XMLGregorianCalendar) : Int;
	
	/**
	* <p>Normalize this instance to UTC.</p>
	*
	* <p>2000-03-04T23:00:00+03:00 normalizes to 2000-03-04T20:00:00Z</p>
	* <p>Implements W3C XML Schema Part 2, Section 3.2.7.3 (A).</p>
	*/
	@:overload override public function normalize() : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* <p>Indicates whether parameter <code>obj</code> is "equal to" this one.</p>
	*
	* @param obj to compare.
	*
	* @return <code>true</code> when <code>compare(this,(XMLGregorianCalendar)obj) == EQUAL.</code>.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* <p>Returns a hash code consistent with the definition of the equals method.</p>
	*
	* @return hash code of this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* <p>Constructs a new XMLGregorianCalendar object by
	* parsing its lexical string representation as defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/#dateTime-order">XML Schema 1.0 Part 2, Section 3.2.[7-14].1,
	* <i>Lexical Representation</i>.</a></p>
	*
	* <p>The string representation may not have any leading and trailing whitespaces.</p>
	*
	* <p>The parsing is done field by field so that
	* the following holds for any lexically correct string x:</p>
	* <pre>
	* new XMLGregorianCalendar(x).toXMLFormat().equals(x)
	* </pre>
	* Except for the noted lexical/canonical representation mismatches
	* listed in <a href="http://www.w3.org/2001/05/xmlschema-errata#e2-45">
	* XML Schema 1.0 errata, Section 3.2.7.2</a>.
	*
	* <p>Returns a non-null valid XMLGregorianCalendar object that holds the value
	* indicated by the lexicalRepresentation parameter.</p>
	*
	* @param lexicalRepresentation Lexical representation of one the 8 XML Schema calendar datatypes.
	*
	* @return <code>XMLGregorianCalendar</code> created from parsing <code>lexicalRepresentation</code> parameter.
	*
	* @throws IllegalArgumentException
	*      If the given string does not conform to the aforementioned
	*      specification.
	* @throws NullPointerException
	*      If the given string is null.
	*/
	@:overload public static function parse(lexicalRepresentation : String) : javax.xml.datatype.XMLGregorianCalendar;
	
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
	* @throws java.lang.IllegalStateException if the combination of set fields
	*    does not match one of the eight defined XML Schema builtin date/time datatypes.
	*/
	@:overload override public function toXMLFormat() : String;
	
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
	@:overload override public function getXMLSchemaType() : javax.xml.namespace.QName;
	
	/**
	* Validate instance by <code>getXMLSchemaType()</code> constraints.
	* @return true if data values are valid.
	*/
	@:overload override public function isValid() : Bool;
	
	/**
	* <p>Add <code>duration</code> to this instance.<\p>
	*
	* <p>The computation is specified in
	* <a href="http://www.w3.org/TR/xmlschema-2/#adding-durations-to-dateTimes">XML Schema 1.0 Part 2, Appendix E,
	* <i>Adding durations to dateTimes</i>></a>.
	* <a href="#datetimefieldsmapping">date/time field mapping table</a>
	* defines the mapping from XML Schema 1.0 <code>dateTime</code> fields
	* to this class' representation of those fields.</p>
	*
	* @param duration Duration to add to this <code>XMLGregorianCalendar</code>.
	*
	* @throws NullPointerException  when <code>duration</code> parameter is <code>null</code>.
	*/
	@:overload override public function add(duration : javax.xml.datatype.Duration) : Void;
	
	/**
	* <p>Convert <code>this</code> to <code>java.util.GregorianCalendar</code>.</p>
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
	*        <th><code>java.util.GregorianCalendar</code> field</th>
	*        <th><code>javax.xml.datatype.XMLGregorianCalendar</code> field</th>
	*     </tr>
	*     <tr>
	*       <th><code>ERA</code></th>
	*       <th>{@link #getEonAndYear()}<code>.signum() < 0 ? GregorianCalendar.BC : GregorianCalendar.AD</code></th>
	*     </tr>
	*     <tr>
	*       <th><code>YEAR</code></th>
	*       <th>{@link #getEonAndYear()}<code>.abs().intValue()</code><i>*</i></th>
	*     </tr>
	*     <tr>
	*       <th><code>MONTH</code></th>
	*       <th>{@link #getMonth()}<code> - 1</code></th>
	*     </tr>
	*     <tr>
	*       <th><code>DAY_OF_MONTH</code></th>
	*       <th>{@link #getDay()}</th>
	*     </tr>
	*     <tr>
	*       <th><code>AM_PM</code></th>
	*       <th>{@link #getHour()} < 12 : Calendar.AM : Calendar.PM</th>
	*     </tr>
	*     <tr>
	*       <th><code>HOUR_OF_DAY</code></th>
	*       <th>{@link #getHour()}</th>
	*     </tr>
	*     <tr>
	*       <th><code>MINUTE</code></th>
	*       <th>{@link #getMinute()}</th>
	*     </tr>
	*     <tr>
	*       <th><code>SECOND</code></th>
	*       <th>{@link #getSecond()}</th>
	*     </tr>
	*     <tr>
	*       <th><code>MILLISECOND</code></th>
	*       <th>get millisecond order from {@link #getFractionalSecond()}<i>*</i> </th>
	*     </tr>
	*     <tr>
	*       <th><code>GregorianCalendar.setTimeZone(TimeZone)</code></th>
	*       <th>{@link #getTimezone()} formatted into Custom timezone id</th>
	*     </tr>
	*   </tbody>
	* </table>
	* <i>*</i> designates possible loss of precision during the conversion due
	* to source datatype having higer precison than target datatype.
	*
	* <p>To ensure consistency in conversion implementations, the new
	* <code>GregorianCalendar</code> should be instantiated in following
	* manner.
	* <ul>
	*   <li>Using <code>timeZone</code> value as defined above, create a new
	* <code>java.util.GregorianCalendar(timeZone,Locale.getDefault())</code>.
	*   </li>
	*   <li>Initialize all GregorianCalendar fields by calling {(@link GegorianCalendar#clear()}.</li>
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
	@:overload override public function toGregorianCalendar() : java.util.GregorianCalendar;
	
	/**
	* <p>Convert <code>this</code> along with provided parameters
	* to <code>java.util.GregorianCalendar</code> instance.</p>
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
	* <li>else when <code>this.getTimezone() != DatatypeConstants.FIELD_UNDEFINED</code>,
	* create a <code>java.util.TimeZone</code> with a custom timezone id
	* using the <code>this.getTimezone()</code>.</li>
	* <li>else when <code>defaults.getTimezone() != DatatypeConstants.FIELD_UNDEFINED</code>,
	* create a <code>java.util.TimeZone</code> with a custom timezone id
	* using <code>defaults.getTimezone()</code>.</li>
	* <li>else use the <code>GregorianCalendar</code> default timezone value
	* for the host is definedas specified by
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
	*   <li>Initialize all GregorianCalendar fields by calling {(@link GegorianCalendar#clear()}.</li>
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
	*                 field for this instance is DatatypeConstants.FIELD_UNDEFINED or null.
	*                 If <code>defaults</code>is <code>null</code> or a field
	*                 within the specified <code>defaults</code> is undefined,
	*                 just use <code>java.util.GregorianCalendar</code> defaults.
	* @return a java.util.GregorianCalendar conversion of this instance.
	*
	* @see #LEAP_YEAR_DEFAULT
	*/
	@:overload public function toGregorianCalendar(timezone : java.util.TimeZone, aLocale : java.util.Locale, defaults : javax.xml.datatype.XMLGregorianCalendar) : java.util.GregorianCalendar;
	
	/**
	* <p>Returns a <code>java.util.TimeZone</code> for this class.</p>
	*
	* <p>If timezone field is defined for this instance,
	* returns TimeZone initialized with custom timezone id
	* of zoneoffset. If timezone field is undefined,
	* try the defaultZoneoffset that was passed in.
	* If defaultZoneoffset is DatatypeConstants.FIELD_UNDEFINED, return
	* default timezone for this host.
	* (Same default as java.util.GregorianCalendar).</p>
	*
	* @param defaultZoneoffset default zoneoffset if this zoneoffset is
	* {@link DatatypeConstants#FIELD_UNDEFINED}.
	*
	* @return TimeZone for this.
	*/
	@:overload override public function getTimeZone(defaultZoneoffset : Int) : java.util.TimeZone;
	
	/**
	* <p>Creates and returns a copy of this object.</p>
	*
	* @return copy of this <code>Object</code>
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* <p>Unset all fields to undefined.</p>
	*
	* <p>Set all int fields to {@link DatatypeConstants#FIELD_UNDEFINED} and reference fields
	* to null.</p>
	*/
	@:overload override public function clear() : Void;
	
	@:overload override public function setMillisecond(millisecond : Int) : Void;
	
	@:overload override public function setFractionalSecond(fractional : java.math.BigDecimal) : Void;
	
	/** <p><code>reset()</code> is designed to allow the reuse of existing
	* <code>XMLGregorianCalendar</code>s thus saving resources associated
	*  with the creation of new <code>XMLGregorianCalendar</code>s.</p>
	*/
	@:overload override public function reset() : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$jaxp$datatype$XMLGregorianCalendarImpl$Parser') @:internal extern class XMLGregorianCalendarImpl_Parser
{
	/**
	* <p>Parse a formated <code>String</code> into an <code>XMLGregorianCalendar</code>.</p>
	*
	* <p>If <code>String</code> is not formated as a legal <code>XMLGregorianCalendar</code> value,
	* an <code>IllegalArgumentException</code> is thrown.</p>
	*
	* @throws IllegalArgumentException If <code>String</code> is not formated as a legal <code>XMLGregorianCalendar</code> value.
	*/
	@:overload public function parse() : Void;
	
	
}
