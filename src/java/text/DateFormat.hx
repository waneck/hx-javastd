package java.text;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright Taligent, Inc. 1996 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class DateFormat extends java.text.Format
{
	/**
	* The {@link Calendar} instance used for calculating the date-time fields
	* and the instant of time. This field is used for both formatting and
	* parsing.
	*
	* <p>Subclasses should initialize this field to a {@link Calendar}
	* appropriate for the {@link Locale} associated with this
	* <code>DateFormat</code>.
	* @serial
	*/
	private var calendar : java.util.Calendar;
	
	/**
	* The number formatter that <code>DateFormat</code> uses to format numbers
	* in dates and times.  Subclasses should initialize this to a number format
	* appropriate for the locale associated with this <code>DateFormat</code>.
	* @serial
	*/
	private var numberFormat : java.text.NumberFormat;
	
	/**
	* Useful constant for ERA field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var ERA_FIELD(default, null) : Int;
	
	/**
	* Useful constant for YEAR field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var YEAR_FIELD(default, null) : Int;
	
	/**
	* Useful constant for MONTH field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var MONTH_FIELD(default, null) : Int;
	
	/**
	* Useful constant for DATE field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var DATE_FIELD(default, null) : Int;
	
	/**
	* Useful constant for one-based HOUR_OF_DAY field alignment.
	* Used in FieldPosition of date/time formatting.
	* HOUR_OF_DAY1_FIELD is used for the one-based 24-hour clock.
	* For example, 23:59 + 01:00 results in 24:59.
	*/
	public static var HOUR_OF_DAY1_FIELD(default, null) : Int;
	
	/**
	* Useful constant for zero-based HOUR_OF_DAY field alignment.
	* Used in FieldPosition of date/time formatting.
	* HOUR_OF_DAY0_FIELD is used for the zero-based 24-hour clock.
	* For example, 23:59 + 01:00 results in 00:59.
	*/
	public static var HOUR_OF_DAY0_FIELD(default, null) : Int;
	
	/**
	* Useful constant for MINUTE field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var MINUTE_FIELD(default, null) : Int;
	
	/**
	* Useful constant for SECOND field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var SECOND_FIELD(default, null) : Int;
	
	/**
	* Useful constant for MILLISECOND field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var MILLISECOND_FIELD(default, null) : Int;
	
	/**
	* Useful constant for DAY_OF_WEEK field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var DAY_OF_WEEK_FIELD(default, null) : Int;
	
	/**
	* Useful constant for DAY_OF_YEAR field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var DAY_OF_YEAR_FIELD(default, null) : Int;
	
	/**
	* Useful constant for DAY_OF_WEEK_IN_MONTH field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var DAY_OF_WEEK_IN_MONTH_FIELD(default, null) : Int;
	
	/**
	* Useful constant for WEEK_OF_YEAR field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var WEEK_OF_YEAR_FIELD(default, null) : Int;
	
	/**
	* Useful constant for WEEK_OF_MONTH field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var WEEK_OF_MONTH_FIELD(default, null) : Int;
	
	/**
	* Useful constant for AM_PM field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var AM_PM_FIELD(default, null) : Int;
	
	/**
	* Useful constant for one-based HOUR field alignment.
	* Used in FieldPosition of date/time formatting.
	* HOUR1_FIELD is used for the one-based 12-hour clock.
	* For example, 11:30 PM + 1 hour results in 12:30 AM.
	*/
	public static var HOUR1_FIELD(default, null) : Int;
	
	/**
	* Useful constant for zero-based HOUR field alignment.
	* Used in FieldPosition of date/time formatting.
	* HOUR0_FIELD is used for the zero-based 12-hour clock.
	* For example, 11:30 PM + 1 hour results in 00:30 AM.
	*/
	public static var HOUR0_FIELD(default, null) : Int;
	
	/**
	* Useful constant for TIMEZONE field alignment.
	* Used in FieldPosition of date/time formatting.
	*/
	public static var TIMEZONE_FIELD(default, null) : Int;
	
	/**
	* Overrides Format.
	* Formats a time object into a time string. Examples of time objects
	* are a time value expressed in milliseconds and a Date object.
	* @param obj must be a Number or a Date.
	* @param toAppendTo the string buffer for the returning time string.
	* @return the string buffer passed in as toAppendTo, with formatted text appended.
	* @param fieldPosition keeps track of the position of the field
	* within the returned string.
	* On input: an alignment field,
	* if desired. On output: the offsets of the alignment field. For
	* example, given a time text "1996.07.10 AD at 15:08:56 PDT",
	* if the given fieldPosition is DateFormat.YEAR_FIELD, the
	* begin index and end index of fieldPosition will be set to
	* 0 and 4, respectively.
	* Notice that if the same time field appears
	* more than once in a pattern, the fieldPosition will be set for the first
	* occurrence of that time field. For instance, formatting a Date to
	* the time string "1 PM PDT (Pacific Daylight Time)" using the pattern
	* "h a z (zzzz)" and the alignment field DateFormat.TIMEZONE_FIELD,
	* the begin index and end index of fieldPosition will be set to
	* 5 and 8, respectively, for the first occurrence of the timezone
	* pattern character 'z'.
	* @see java.text.Format
	*/
	@:overload @:final public function format(obj : Dynamic, toAppendTo : java.lang.StringBuffer, fieldPosition : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Formats a Date into a date/time string.
	* @param date a Date to be formatted into a date/time string.
	* @param toAppendTo the string buffer for the returning date/time string.
	* @param fieldPosition keeps track of the position of the field
	* within the returned string.
	* On input: an alignment field,
	* if desired. On output: the offsets of the alignment field. For
	* example, given a time text "1996.07.10 AD at 15:08:56 PDT",
	* if the given fieldPosition is DateFormat.YEAR_FIELD, the
	* begin index and end index of fieldPosition will be set to
	* 0 and 4, respectively.
	* Notice that if the same time field appears
	* more than once in a pattern, the fieldPosition will be set for the first
	* occurrence of that time field. For instance, formatting a Date to
	* the time string "1 PM PDT (Pacific Daylight Time)" using the pattern
	* "h a z (zzzz)" and the alignment field DateFormat.TIMEZONE_FIELD,
	* the begin index and end index of fieldPosition will be set to
	* 5 and 8, respectively, for the first occurrence of the timezone
	* pattern character 'z'.
	* @return the string buffer passed in as toAppendTo, with formatted text appended.
	*/
	@:overload @:abstract public function format(date : java.util.Date, toAppendTo : java.lang.StringBuffer, fieldPosition : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Formats a Date into a date/time string.
	* @param date the time value to be formatted into a time string.
	* @return the formatted time string.
	*/
	@:overload @:final public function format(date : java.util.Date) : String;
	
	/**
	* Parses text from the beginning of the given string to produce a date.
	* The method may not use the entire text of the given string.
	* <p>
	* See the {@link #parse(String, ParsePosition)} method for more information
	* on date parsing.
	*
	* @param source A <code>String</code> whose beginning should be parsed.
	* @return A <code>Date</code> parsed from the string.
	* @exception ParseException if the beginning of the specified string
	*            cannot be parsed.
	*/
	@:overload public function parse(source : String) : java.util.Date;
	
	/**
	* Parse a date/time string according to the given parse position.  For
	* example, a time text {@code "07/10/96 4:5 PM, PDT"} will be parsed into a {@code Date}
	* that is equivalent to {@code Date(837039900000L)}.
	*
	* <p> By default, parsing is lenient: If the input is not in the form used
	* by this object's format method but can still be parsed as a date, then
	* the parse succeeds.  Clients may insist on strict adherence to the
	* format by calling {@link #setLenient(boolean) setLenient(false)}.
	*
	* <p>This parsing operation uses the {@link #calendar} to produce
	* a {@code Date}. As a result, the {@code calendar}'s date-time
	* fields and the {@code TimeZone} value may have been
	* overwritten, depending on subclass implementations. Any {@code
	* TimeZone} value that has previously been set by a call to
	* {@link #setTimeZone(java.util.TimeZone) setTimeZone} may need
	* to be restored for further operations.
	*
	* @param source  The date/time string to be parsed
	*
	* @param pos   On input, the position at which to start parsing; on
	*              output, the position at which parsing terminated, or the
	*              start position if the parse failed.
	*
	* @return      A {@code Date}, or {@code null} if the input could not be parsed
	*/
	@:overload @:abstract public function parse(source : String, pos : java.text.ParsePosition) : java.util.Date;
	
	/**
	* Parses text from a string to produce a <code>Date</code>.
	* <p>
	* The method attempts to parse text starting at the index given by
	* <code>pos</code>.
	* If parsing succeeds, then the index of <code>pos</code> is updated
	* to the index after the last character used (parsing does not necessarily
	* use all characters up to the end of the string), and the parsed
	* date is returned. The updated <code>pos</code> can be used to
	* indicate the starting point for the next call to this method.
	* If an error occurs, then the index of <code>pos</code> is not
	* changed, the error index of <code>pos</code> is set to the index of
	* the character where the error occurred, and null is returned.
	* <p>
	* See the {@link #parse(String, ParsePosition)} method for more information
	* on date parsing.
	*
	* @param source A <code>String</code>, part of which should be parsed.
	* @param pos A <code>ParsePosition</code> object with index and error
	*            index information as described above.
	* @return A <code>Date</code> parsed from the string. In case of
	*         error, returns null.
	* @exception NullPointerException if <code>pos</code> is null.
	*/
	@:overload public function parseObject(source : String, pos : java.text.ParsePosition) : Dynamic;
	
	/**
	* Constant for full style pattern.
	*/
	public static var FULL(default, null) : Int;
	
	/**
	* Constant for long style pattern.
	*/
	public static var LONG(default, null) : Int;
	
	/**
	* Constant for medium style pattern.
	*/
	public static var MEDIUM(default, null) : Int;
	
	/**
	* Constant for short style pattern.
	*/
	public static var SHORT(default, null) : Int;
	
	/**
	* Constant for default style pattern.  Its value is MEDIUM.
	*/
	public static var DEFAULT(default, null) : Int;
	
	/**
	* Gets the time formatter with the default formatting style
	* for the default locale.
	* @return a time formatter.
	*/
	@:overload @:final public static function getTimeInstance() : java.text.DateFormat;
	
	/**
	* Gets the time formatter with the given formatting style
	* for the default locale.
	* @param style the given formatting style. For example,
	* SHORT for "h:mm a" in the US locale.
	* @return a time formatter.
	*/
	@:overload @:final public static function getTimeInstance(style : Int) : java.text.DateFormat;
	
	/**
	* Gets the time formatter with the given formatting style
	* for the given locale.
	* @param style the given formatting style. For example,
	* SHORT for "h:mm a" in the US locale.
	* @param aLocale the given locale.
	* @return a time formatter.
	*/
	@:overload @:final public static function getTimeInstance(style : Int, aLocale : java.util.Locale) : java.text.DateFormat;
	
	/**
	* Gets the date formatter with the default formatting style
	* for the default locale.
	* @return a date formatter.
	*/
	@:overload @:final public static function getDateInstance() : java.text.DateFormat;
	
	/**
	* Gets the date formatter with the given formatting style
	* for the default locale.
	* @param style the given formatting style. For example,
	* SHORT for "M/d/yy" in the US locale.
	* @return a date formatter.
	*/
	@:overload @:final public static function getDateInstance(style : Int) : java.text.DateFormat;
	
	/**
	* Gets the date formatter with the given formatting style
	* for the given locale.
	* @param style the given formatting style. For example,
	* SHORT for "M/d/yy" in the US locale.
	* @param aLocale the given locale.
	* @return a date formatter.
	*/
	@:overload @:final public static function getDateInstance(style : Int, aLocale : java.util.Locale) : java.text.DateFormat;
	
	/**
	* Gets the date/time formatter with the default formatting style
	* for the default locale.
	* @return a date/time formatter.
	*/
	@:overload @:final public static function getDateTimeInstance() : java.text.DateFormat;
	
	/**
	* Gets the date/time formatter with the given date and time
	* formatting styles for the default locale.
	* @param dateStyle the given date formatting style. For example,
	* SHORT for "M/d/yy" in the US locale.
	* @param timeStyle the given time formatting style. For example,
	* SHORT for "h:mm a" in the US locale.
	* @return a date/time formatter.
	*/
	@:overload @:final public static function getDateTimeInstance(dateStyle : Int, timeStyle : Int) : java.text.DateFormat;
	
	/**
	* Gets the date/time formatter with the given formatting styles
	* for the given locale.
	* @param dateStyle the given date formatting style.
	* @param timeStyle the given time formatting style.
	* @param aLocale the given locale.
	* @return a date/time formatter.
	*/
	@:overload @:final public static function getDateTimeInstance(dateStyle : Int, timeStyle : Int, aLocale : java.util.Locale) : java.text.DateFormat;
	
	/**
	* Get a default date/time formatter that uses the SHORT style for both the
	* date and the time.
	*/
	@:overload @:final public static function getInstance() : java.text.DateFormat;
	
	/**
	* Returns an array of all locales for which the
	* <code>get*Instance</code> methods of this class can return
	* localized instances.
	* The returned array represents the union of locales supported by the Java
	* runtime and by installed
	* {@link java.text.spi.DateFormatProvider DateFormatProvider} implementations.
	* It must contain at least a <code>Locale</code> instance equal to
	* {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of locales for which localized
	*         <code>DateFormat</code> instances are available.
	*/
	@:overload public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Set the calendar to be used by this date format.  Initially, the default
	* calendar for the specified or default locale is used.
	*
	* <p>Any {@link java.util.TimeZone TimeZone} and {@linkplain
	* #isLenient() leniency} values that have previously been set are
	* overwritten by {@code newCalendar}'s values.
	*
	* @param newCalendar the new {@code Calendar} to be used by the date format
	*/
	@:overload public function setCalendar(newCalendar : java.util.Calendar) : Void;
	
	/**
	* Gets the calendar associated with this date/time formatter.
	*
	* @return the calendar associated with this date/time formatter.
	*/
	@:overload public function getCalendar() : java.util.Calendar;
	
	/**
	* Allows you to set the number formatter.
	* @param newNumberFormat the given new NumberFormat.
	*/
	@:overload public function setNumberFormat(newNumberFormat : java.text.NumberFormat) : Void;
	
	/**
	* Gets the number formatter which this date/time formatter uses to
	* format and parse a time.
	* @return the number formatter which this date/time formatter uses.
	*/
	@:overload public function getNumberFormat() : java.text.NumberFormat;
	
	/**
	* Sets the time zone for the calendar of this {@code DateFormat} object.
	* This method is equivalent to the following call.
	* <blockquote><pre>
	*  getCalendar().setTimeZone(zone)
	* </pre></blockquote>
	*
	* <p>The {@code TimeZone} set by this method is overwritten by a
	* {@link #setCalendar(java.util.Calendar) setCalendar} call.
	*
	* <p>The {@code TimeZone} set by this method may be overwritten as
	* a result of a call to the parse method.
	*
	* @param zone the given new time zone.
	*/
	@:overload public function setTimeZone(zone : java.util.TimeZone) : Void;
	
	/**
	* Gets the time zone.
	* This method is equivalent to the following call.
	* <blockquote><pre>
	*  getCalendar().getTimeZone()
	* </pre></blockquote>
	*
	* @return the time zone associated with the calendar of DateFormat.
	*/
	@:overload public function getTimeZone() : java.util.TimeZone;
	
	/**
	* Specify whether or not date/time parsing is to be lenient.  With
	* lenient parsing, the parser may use heuristics to interpret inputs that
	* do not precisely match this object's format.  With strict parsing,
	* inputs must match this object's format.
	*
	* <p>This method is equivalent to the following call.
	* <blockquote><pre>
	*  getCalendar().setLenient(lenient)
	* </pre></blockquote>
	*
	* <p>This leniency value is overwritten by a call to {@link
	* #setCalendar(java.util.Calendar) setCalendar()}.
	*
	* @param lenient when {@code true}, parsing is lenient
	* @see java.util.Calendar#setLenient(boolean)
	*/
	@:overload public function setLenient(lenient : Bool) : Void;
	
	/**
	* Tell whether date/time parsing is to be lenient.
	* This method is equivalent to the following call.
	* <blockquote><pre>
	*  getCalendar().isLenient()
	* </pre></blockquote>
	*
	* @return {@code true} if the {@link #calendar} is lenient;
	*         {@code false} otherwise.
	* @see java.util.Calendar#isLenient()
	*/
	@:overload public function isLenient() : Bool;
	
	/**
	* Overrides hashCode
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Overrides equals
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Overrides Cloneable
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Create a new date format.
	*/
	@:overload private function new() : Void;
	
	
}
/**
* Defines constants that are used as attribute keys in the
* <code>AttributedCharacterIterator</code> returned
* from <code>DateFormat.formatToCharacterIterator</code> and as
* field identifiers in <code>FieldPosition</code>.
* <p>
* The class also provides two methods to map
* between its constants and the corresponding Calendar constants.
*
* @since 1.4
* @see java.util.Calendar
*/
@:require(java4) @:native('java$text$DateFormat$Field') extern class DateFormat_Field extends java.text.Format.Format_Field
{
	/**
	* Returns the <code>Field</code> constant that corresponds to
	* the <code>Calendar</code> constant <code>calendarField</code>.
	* If there is no direct mapping between the <code>Calendar</code>
	* constant and a <code>Field</code>, null is returned.
	*
	* @throws IllegalArgumentException if <code>calendarField</code> is
	*         not the value of a <code>Calendar</code> field constant.
	* @param calendarField Calendar field constant
	* @return Field instance representing calendarField.
	* @see java.util.Calendar
	*/
	@:overload public static function ofCalendarField(calendarField : Int) : java.text.Format.Format_Field;
	
	/**
	* Creates a <code>Field</code>.
	*
	* @param name the name of the <code>Field</code>
	* @param calendarField the <code>Calendar</code> constant this
	*        <code>Field</code> corresponds to; any value, even one
	*        outside the range of legal <code>Calendar</code> values may
	*        be used, but <code>-1</code> should be used for values
	*        that don't correspond to legal <code>Calendar</code> values
	*/
	@:overload private function new(name : String, calendarField : Int) : Void;
	
	/**
	* Returns the <code>Calendar</code> field associated with this
	* attribute. For example, if this represents the hours field of
	* a <code>Calendar</code>, this would return
	* <code>Calendar.HOUR</code>. If there is no corresponding
	* <code>Calendar</code> constant, this will return -1.
	*
	* @return Calendar constant for this field
	* @see java.util.Calendar
	*/
	@:overload public function getCalendarField() : Int;
	
	/**
	* Resolves instances being deserialized to the predefined constants.
	*
	* @throws InvalidObjectException if the constant could not be
	*         resolved.
	* @return resolved DateFormat.Field constant
	*/
	@:overload override private function readResolve() : Dynamic;
	
	/**
	* Constant identifying the era field.
	*/
	public static var ERA(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the year field.
	*/
	public static var YEAR(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the month field.
	*/
	public static var MONTH(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the day of month field.
	*/
	public static var DAY_OF_MONTH(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the hour of day field, where the legal values
	* are 1 to 24.
	*/
	public static var HOUR_OF_DAY1(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the hour of day field, where the legal values
	* are 0 to 23.
	*/
	public static var HOUR_OF_DAY0(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the minute field.
	*/
	public static var MINUTE(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the second field.
	*/
	public static var SECOND(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the millisecond field.
	*/
	public static var MILLISECOND(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the day of week field.
	*/
	public static var DAY_OF_WEEK(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the day of year field.
	*/
	public static var DAY_OF_YEAR(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the day of week field.
	*/
	public static var DAY_OF_WEEK_IN_MONTH(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the week of year field.
	*/
	public static var WEEK_OF_YEAR(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the week of month field.
	*/
	public static var WEEK_OF_MONTH(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the time of day indicator
	* (e.g. "a.m." or "p.m.") field.
	*/
	public static var AM_PM(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the hour field, where the legal values are
	* 1 to 12.
	*/
	public static var HOUR1(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the hour field, where the legal values are
	* 0 to 11.
	*/
	public static var HOUR0(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the time zone field.
	*/
	public static var TIME_ZONE(default, null) : java.text.Format.Format_Field;
	
	
}
/**
* Obtains a DateFormat instance from a DateFormatProvider
* implementation.
*/
@:native('java$text$DateFormat$DateFormatGetter') @:internal extern class DateFormat_DateFormatGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.text.spi.DateFormatProvider, java.text.DateFormat>
{
	@:overload public function getObject(dateFormatProvider : java.text.spi.DateFormatProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : java.text.DateFormat;
	
	
}
