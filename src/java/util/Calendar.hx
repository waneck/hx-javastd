package java.util;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996-1998 - All Rights Reserved
* (C) Copyright IBM Corp. 1996-1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class Calendar implements java.io.Serializable implements java.lang.Cloneable implements java.lang.Comparable<java.util.Calendar>
{
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* era, e.g., AD or BC in the Julian calendar. This is a calendar-specific
	* value; see subclass documentation.
	*
	* @see GregorianCalendar#AD
	* @see GregorianCalendar#BC
	*/
	public static var ERA(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* year. This is a calendar-specific value; see subclass documentation.
	*/
	public static var YEAR(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* month. This is a calendar-specific value. The first month of
	* the year in the Gregorian and Julian calendars is
	* <code>JANUARY</code> which is 0; the last depends on the number
	* of months in a year.
	*
	* @see #JANUARY
	* @see #FEBRUARY
	* @see #MARCH
	* @see #APRIL
	* @see #MAY
	* @see #JUNE
	* @see #JULY
	* @see #AUGUST
	* @see #SEPTEMBER
	* @see #OCTOBER
	* @see #NOVEMBER
	* @see #DECEMBER
	* @see #UNDECIMBER
	*/
	public static var MONTH(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* week number within the current year.  The first week of the year, as
	* defined by <code>getFirstDayOfWeek()</code> and
	* <code>getMinimalDaysInFirstWeek()</code>, has value 1.  Subclasses define
	* the value of <code>WEEK_OF_YEAR</code> for days before the first week of
	* the year.
	*
	* @see #getFirstDayOfWeek
	* @see #getMinimalDaysInFirstWeek
	*/
	public static var WEEK_OF_YEAR(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* week number within the current month.  The first week of the month, as
	* defined by <code>getFirstDayOfWeek()</code> and
	* <code>getMinimalDaysInFirstWeek()</code>, has value 1.  Subclasses define
	* the value of <code>WEEK_OF_MONTH</code> for days before the first week of
	* the month.
	*
	* @see #getFirstDayOfWeek
	* @see #getMinimalDaysInFirstWeek
	*/
	public static var WEEK_OF_MONTH(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* day of the month. This is a synonym for <code>DAY_OF_MONTH</code>.
	* The first day of the month has value 1.
	*
	* @see #DAY_OF_MONTH
	*/
	public static var DATE(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* day of the month. This is a synonym for <code>DATE</code>.
	* The first day of the month has value 1.
	*
	* @see #DATE
	*/
	public static var DAY_OF_MONTH(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the day
	* number within the current year.  The first day of the year has value 1.
	*/
	public static var DAY_OF_YEAR(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the day
	* of the week.  This field takes values <code>SUNDAY</code>,
	* <code>MONDAY</code>, <code>TUESDAY</code>, <code>WEDNESDAY</code>,
	* <code>THURSDAY</code>, <code>FRIDAY</code>, and <code>SATURDAY</code>.
	*
	* @see #SUNDAY
	* @see #MONDAY
	* @see #TUESDAY
	* @see #WEDNESDAY
	* @see #THURSDAY
	* @see #FRIDAY
	* @see #SATURDAY
	*/
	public static var DAY_OF_WEEK(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* ordinal number of the day of the week within the current month. Together
	* with the <code>DAY_OF_WEEK</code> field, this uniquely specifies a day
	* within a month.  Unlike <code>WEEK_OF_MONTH</code> and
	* <code>WEEK_OF_YEAR</code>, this field's value does <em>not</em> depend on
	* <code>getFirstDayOfWeek()</code> or
	* <code>getMinimalDaysInFirstWeek()</code>.  <code>DAY_OF_MONTH 1</code>
	* through <code>7</code> always correspond to <code>DAY_OF_WEEK_IN_MONTH
	* 1</code>; <code>8</code> through <code>14</code> correspond to
	* <code>DAY_OF_WEEK_IN_MONTH 2</code>, and so on.
	* <code>DAY_OF_WEEK_IN_MONTH 0</code> indicates the week before
	* <code>DAY_OF_WEEK_IN_MONTH 1</code>.  Negative values count back from the
	* end of the month, so the last Sunday of a month is specified as
	* <code>DAY_OF_WEEK = SUNDAY, DAY_OF_WEEK_IN_MONTH = -1</code>.  Because
	* negative values count backward they will usually be aligned differently
	* within the month than positive values.  For example, if a month has 31
	* days, <code>DAY_OF_WEEK_IN_MONTH -1</code> will overlap
	* <code>DAY_OF_WEEK_IN_MONTH 5</code> and the end of <code>4</code>.
	*
	* @see #DAY_OF_WEEK
	* @see #WEEK_OF_MONTH
	*/
	public static var DAY_OF_WEEK_IN_MONTH(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating
	* whether the <code>HOUR</code> is before or after noon.
	* E.g., at 10:04:15.250 PM the <code>AM_PM</code> is <code>PM</code>.
	*
	* @see #AM
	* @see #PM
	* @see #HOUR
	*/
	public static var AM_PM(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* hour of the morning or afternoon. <code>HOUR</code> is used for the
	* 12-hour clock (0 - 11). Noon and midnight are represented by 0, not by 12.
	* E.g., at 10:04:15.250 PM the <code>HOUR</code> is 10.
	*
	* @see #AM_PM
	* @see #HOUR_OF_DAY
	*/
	public static var HOUR(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* hour of the day. <code>HOUR_OF_DAY</code> is used for the 24-hour clock.
	* E.g., at 10:04:15.250 PM the <code>HOUR_OF_DAY</code> is 22.
	*
	* @see #HOUR
	*/
	public static var HOUR_OF_DAY(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* minute within the hour.
	* E.g., at 10:04:15.250 PM the <code>MINUTE</code> is 4.
	*/
	public static var MINUTE(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* second within the minute.
	* E.g., at 10:04:15.250 PM the <code>SECOND</code> is 15.
	*/
	public static var SECOND(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* millisecond within the second.
	* E.g., at 10:04:15.250 PM the <code>MILLISECOND</code> is 250.
	*/
	public static var MILLISECOND(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code>
	* indicating the raw offset from GMT in milliseconds.
	* <p>
	* This field reflects the correct GMT offset value of the time
	* zone of this <code>Calendar</code> if the
	* <code>TimeZone</code> implementation subclass supports
	* historical GMT offset changes.
	*/
	public static var ZONE_OFFSET(default, null) : Int;
	
	/**
	* Field number for <code>get</code> and <code>set</code> indicating the
	* daylight saving offset in milliseconds.
	* <p>
	* This field reflects the correct daylight saving offset value of
	* the time zone of this <code>Calendar</code> if the
	* <code>TimeZone</code> implementation subclass supports
	* historical Daylight Saving Time schedule changes.
	*/
	public static var DST_OFFSET(default, null) : Int;
	
	/**
	* The number of distinct fields recognized by <code>get</code> and <code>set</code>.
	* Field numbers range from <code>0..FIELD_COUNT-1</code>.
	*/
	public static var FIELD_COUNT(default, null) : Int;
	
	/**
	* Value of the {@link #DAY_OF_WEEK} field indicating
	* Sunday.
	*/
	public static var SUNDAY(default, null) : Int;
	
	/**
	* Value of the {@link #DAY_OF_WEEK} field indicating
	* Monday.
	*/
	public static var MONDAY(default, null) : Int;
	
	/**
	* Value of the {@link #DAY_OF_WEEK} field indicating
	* Tuesday.
	*/
	public static var TUESDAY(default, null) : Int;
	
	/**
	* Value of the {@link #DAY_OF_WEEK} field indicating
	* Wednesday.
	*/
	public static var WEDNESDAY(default, null) : Int;
	
	/**
	* Value of the {@link #DAY_OF_WEEK} field indicating
	* Thursday.
	*/
	public static var THURSDAY(default, null) : Int;
	
	/**
	* Value of the {@link #DAY_OF_WEEK} field indicating
	* Friday.
	*/
	public static var FRIDAY(default, null) : Int;
	
	/**
	* Value of the {@link #DAY_OF_WEEK} field indicating
	* Saturday.
	*/
	public static var SATURDAY(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* first month of the year in the Gregorian and Julian calendars.
	*/
	public static var JANUARY(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* second month of the year in the Gregorian and Julian calendars.
	*/
	public static var FEBRUARY(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* third month of the year in the Gregorian and Julian calendars.
	*/
	public static var MARCH(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* fourth month of the year in the Gregorian and Julian calendars.
	*/
	public static var APRIL(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* fifth month of the year in the Gregorian and Julian calendars.
	*/
	public static var MAY(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* sixth month of the year in the Gregorian and Julian calendars.
	*/
	public static var JUNE(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* seventh month of the year in the Gregorian and Julian calendars.
	*/
	public static var JULY(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* eighth month of the year in the Gregorian and Julian calendars.
	*/
	public static var AUGUST(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* ninth month of the year in the Gregorian and Julian calendars.
	*/
	public static var SEPTEMBER(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* tenth month of the year in the Gregorian and Julian calendars.
	*/
	public static var OCTOBER(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* eleventh month of the year in the Gregorian and Julian calendars.
	*/
	public static var NOVEMBER(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* twelfth month of the year in the Gregorian and Julian calendars.
	*/
	public static var DECEMBER(default, null) : Int;
	
	/**
	* Value of the {@link #MONTH} field indicating the
	* thirteenth month of the year. Although <code>GregorianCalendar</code>
	* does not use this value, lunar calendars do.
	*/
	public static var UNDECIMBER(default, null) : Int;
	
	/**
	* Value of the {@link #AM_PM} field indicating the
	* period of the day from midnight to just before noon.
	*/
	public static var AM(default, null) : Int;
	
	/**
	* Value of the {@link #AM_PM} field indicating the
	* period of the day from noon to just before midnight.
	*/
	public static var PM(default, null) : Int;
	
	/**
	* A style specifier for {@link #getDisplayNames(int, int, Locale)
	* getDisplayNames} indicating names in all styles, such as
	* "January" and "Jan".
	*
	* @see #SHORT
	* @see #LONG
	* @since 1.6
	*/
	@:require(java6) public static var ALL_STYLES(default, null) : Int;
	
	/**
	* A style specifier for {@link #getDisplayName(int, int, Locale)
	* getDisplayName} and {@link #getDisplayNames(int, int, Locale)
	* getDisplayNames} indicating a short name, such as "Jan".
	*
	* @see #LONG
	* @since 1.6
	*/
	@:require(java6) public static var SHORT(default, null) : Int;
	
	/**
	* A style specifier for {@link #getDisplayName(int, int, Locale)
	* getDisplayName} and {@link #getDisplayNames(int, int, Locale)
	* getDisplayNames} indicating a long name, such as "January".
	*
	* @see #SHORT
	* @since 1.6
	*/
	@:require(java6) public static var LONG(default, null) : Int;
	
	/**
	* The calendar field values for the currently set time for this calendar.
	* This is an array of <code>FIELD_COUNT</code> integers, with index values
	* <code>ERA</code> through <code>DST_OFFSET</code>.
	* @serial
	*/
	private var fields : java.NativeArray<Int>;
	
	/**
	* The currently set time for this calendar, expressed in milliseconds after
	* January 1, 1970, 0:00:00 GMT.
	* @see #isTimeSet
	* @serial
	*/
	private var time : haxe.Int64;
	
	/**
	* True if then the value of <code>time</code> is valid.
	* The time is made invalid by a change to an item of <code>field[]</code>.
	* @see #time
	* @serial
	*/
	private var isTimeSet : Bool;
	
	/**
	* True if <code>fields[]</code> are in sync with the currently set time.
	* If false, then the next attempt to get the value of a field will
	* force a recomputation of all fields from the current value of
	* <code>time</code>.
	* @serial
	*/
	private var areFieldsSet : Bool;
	
	/**
	* Constructs a Calendar with the default time zone
	* and locale.
	* @see     TimeZone#getDefault
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructs a calendar with the specified time zone and locale.
	*
	* @param zone the time zone to use
	* @param aLocale the locale for the week data
	*/
	@:overload private function new(zone : java.util.TimeZone, aLocale : java.util.Locale) : Void;
	
	/**
	* Gets a calendar using the default time zone and locale. The
	* <code>Calendar</code> returned is based on the current time
	* in the default time zone with the default locale.
	*
	* @return a Calendar.
	*/
	@:overload public static function getInstance() : java.util.Calendar;
	
	/**
	* Gets a calendar using the specified time zone and default locale.
	* The <code>Calendar</code> returned is based on the current time
	* in the given time zone with the default locale.
	*
	* @param zone the time zone to use
	* @return a Calendar.
	*/
	@:overload public static function getInstance(zone : java.util.TimeZone) : java.util.Calendar;
	
	/**
	* Gets a calendar using the default time zone and specified locale.
	* The <code>Calendar</code> returned is based on the current time
	* in the default time zone with the given locale.
	*
	* @param aLocale the locale for the week data
	* @return a Calendar.
	*/
	@:overload public static function getInstance(aLocale : java.util.Locale) : java.util.Calendar;
	
	/**
	* Gets a calendar with the specified time zone and locale.
	* The <code>Calendar</code> returned is based on the current time
	* in the given time zone with the given locale.
	*
	* @param zone the time zone to use
	* @param aLocale the locale for the week data
	* @return a Calendar.
	*/
	@:overload public static function getInstance(zone : java.util.TimeZone, aLocale : java.util.Locale) : java.util.Calendar;
	
	/**
	* Returns an array of all locales for which the <code>getInstance</code>
	* methods of this class can return localized instances.
	* The array returned must contain at least a <code>Locale</code>
	* instance equal to {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of locales for which localized
	*         <code>Calendar</code> instances are available.
	*/
	@:overload @:synchronized public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Converts the current calendar field values in {@link #fields fields[]}
	* to the millisecond time value
	* {@link #time}.
	*
	* @see #complete()
	* @see #computeFields()
	*/
	@:overload @:abstract private function computeTime() : Void;
	
	/**
	* Converts the current millisecond time value {@link #time}
	* to calendar field values in {@link #fields fields[]}.
	* This allows you to sync up the calendar field values with
	* a new time that is set for the calendar.  The time is <em>not</em>
	* recomputed first; to recompute the time, then the fields, call the
	* {@link #complete()} method.
	*
	* @see #computeTime()
	*/
	@:overload @:abstract private function computeFields() : Void;
	
	/**
	* Returns a <code>Date</code> object representing this
	* <code>Calendar</code>'s time value (millisecond offset from the <a
	* href="#Epoch">Epoch</a>").
	*
	* @return a <code>Date</code> representing the time value.
	* @see #setTime(Date)
	* @see #getTimeInMillis()
	*/
	@:overload @:final public function getTime() : java.util.Date;
	
	/**
	* Sets this Calendar's time with the given <code>Date</code>.
	* <p>
	* Note: Calling <code>setTime()</code> with
	* <code>Date(Long.MAX_VALUE)</code> or <code>Date(Long.MIN_VALUE)</code>
	* may yield incorrect field values from <code>get()</code>.
	*
	* @param date the given Date.
	* @see #getTime()
	* @see #setTimeInMillis(long)
	*/
	@:overload @:final public function setTime(date : java.util.Date) : Void;
	
	/**
	* Returns this Calendar's time value in milliseconds.
	*
	* @return the current time as UTC milliseconds from the epoch.
	* @see #getTime()
	* @see #setTimeInMillis(long)
	*/
	@:overload public function getTimeInMillis() : haxe.Int64;
	
	/**
	* Sets this Calendar's current time from the given long value.
	*
	* @param millis the new time in UTC milliseconds from the epoch.
	* @see #setTime(Date)
	* @see #getTimeInMillis()
	*/
	@:overload public function setTimeInMillis(millis : haxe.Int64) : Void;
	
	/**
	* Returns the value of the given calendar field. In lenient mode,
	* all calendar fields are normalized. In non-lenient mode, all
	* calendar fields are validated and this method throws an
	* exception if any calendar fields have out-of-range values. The
	* normalization and validation are handled by the
	* {@link #complete()} method, which process is calendar
	* system dependent.
	*
	* @param field the given calendar field.
	* @return the value for the given calendar field.
	* @throws ArrayIndexOutOfBoundsException if the specified field is out of range
	*             (<code>field &lt; 0 || field &gt;= FIELD_COUNT</code>).
	* @see #set(int,int)
	* @see #complete()
	*/
	@:overload public function get(field : Int) : Int;
	
	/**
	* Returns the value of the given calendar field. This method does
	* not involve normalization or validation of the field value.
	*
	* @param field the given calendar field.
	* @return the value for the given calendar field.
	* @see #get(int)
	*/
	@:overload @:final private function internalGet(field : Int) : Int;
	
	/**
	* Sets the given calendar field to the given value. The value is not
	* interpreted by this method regardless of the leniency mode.
	*
	* @param field the given calendar field.
	* @param value the value to be set for the given calendar field.
	* @throws ArrayIndexOutOfBoundsException if the specified field is out of range
	*             (<code>field &lt; 0 || field &gt;= FIELD_COUNT</code>).
	* in non-lenient mode.
	* @see #set(int,int,int)
	* @see #set(int,int,int,int,int)
	* @see #set(int,int,int,int,int,int)
	* @see #get(int)
	*/
	@:overload public function set(field : Int, value : Int) : Void;
	
	/**
	* Sets the values for the calendar fields <code>YEAR</code>,
	* <code>MONTH</code>, and <code>DAY_OF_MONTH</code>.
	* Previous values of other calendar fields are retained.  If this is not desired,
	* call {@link #clear()} first.
	*
	* @param year the value used to set the <code>YEAR</code> calendar field.
	* @param month the value used to set the <code>MONTH</code> calendar field.
	* Month value is 0-based. e.g., 0 for January.
	* @param date the value used to set the <code>DAY_OF_MONTH</code> calendar field.
	* @see #set(int,int)
	* @see #set(int,int,int,int,int)
	* @see #set(int,int,int,int,int,int)
	*/
	@:overload @:final public function set(year : Int, month : Int, date : Int) : Void;
	
	/**
	* Sets the values for the calendar fields <code>YEAR</code>,
	* <code>MONTH</code>, <code>DAY_OF_MONTH</code>,
	* <code>HOUR_OF_DAY</code>, and <code>MINUTE</code>.
	* Previous values of other fields are retained.  If this is not desired,
	* call {@link #clear()} first.
	*
	* @param year the value used to set the <code>YEAR</code> calendar field.
	* @param month the value used to set the <code>MONTH</code> calendar field.
	* Month value is 0-based. e.g., 0 for January.
	* @param date the value used to set the <code>DAY_OF_MONTH</code> calendar field.
	* @param hourOfDay the value used to set the <code>HOUR_OF_DAY</code> calendar field.
	* @param minute the value used to set the <code>MINUTE</code> calendar field.
	* @see #set(int,int)
	* @see #set(int,int,int)
	* @see #set(int,int,int,int,int,int)
	*/
	@:overload @:final public function set(year : Int, month : Int, date : Int, hourOfDay : Int, minute : Int) : Void;
	
	/**
	* Sets the values for the fields <code>YEAR</code>, <code>MONTH</code>,
	* <code>DAY_OF_MONTH</code>, <code>HOUR</code>, <code>MINUTE</code>, and
	* <code>SECOND</code>.
	* Previous values of other fields are retained.  If this is not desired,
	* call {@link #clear()} first.
	*
	* @param year the value used to set the <code>YEAR</code> calendar field.
	* @param month the value used to set the <code>MONTH</code> calendar field.
	* Month value is 0-based. e.g., 0 for January.
	* @param date the value used to set the <code>DAY_OF_MONTH</code> calendar field.
	* @param hourOfDay the value used to set the <code>HOUR_OF_DAY</code> calendar field.
	* @param minute the value used to set the <code>MINUTE</code> calendar field.
	* @param second the value used to set the <code>SECOND</code> calendar field.
	* @see #set(int,int)
	* @see #set(int,int,int)
	* @see #set(int,int,int,int,int)
	*/
	@:overload @:final public function set(year : Int, month : Int, date : Int, hourOfDay : Int, minute : Int, second : Int) : Void;
	
	/**
	* Sets all the calendar field values and the time value
	* (millisecond offset from the <a href="#Epoch">Epoch</a>) of
	* this <code>Calendar</code> undefined. This means that {@link
	* #isSet(int) isSet()} will return <code>false</code> for all the
	* calendar fields, and the date and time calculations will treat
	* the fields as if they had never been set. A
	* <code>Calendar</code> implementation class may use its specific
	* default field values for date/time calculations. For example,
	* <code>GregorianCalendar</code> uses 1970 if the
	* <code>YEAR</code> field value is undefined.
	*
	* @see #clear(int)
	*/
	@:overload @:final public function clear() : Void;
	
	/**
	* Sets the given calendar field value and the time value
	* (millisecond offset from the <a href="#Epoch">Epoch</a>) of
	* this <code>Calendar</code> undefined. This means that {@link
	* #isSet(int) isSet(field)} will return <code>false</code>, and
	* the date and time calculations will treat the field as if it
	* had never been set. A <code>Calendar</code> implementation
	* class may use the field's specific default value for date and
	* time calculations.
	*
	* <p>The {@link #HOUR_OF_DAY}, {@link #HOUR} and {@link #AM_PM}
	* fields are handled independently and the <a
	* href="#time_resolution">the resolution rule for the time of
	* day</a> is applied. Clearing one of the fields doesn't reset
	* the hour of day value of this <code>Calendar</code>. Use {@link
	* #set(int,int) set(Calendar.HOUR_OF_DAY, 0)} to reset the hour
	* value.
	*
	* @param field the calendar field to be cleared.
	* @see #clear()
	*/
	@:overload @:final public function clear(field : Int) : Void;
	
	/**
	* Determines if the given calendar field has a value set,
	* including cases that the value has been set by internal fields
	* calculations triggered by a <code>get</code> method call.
	*
	* @return <code>true</code> if the given calendar field has a value set;
	* <code>false</code> otherwise.
	*/
	@:overload @:final public function isSet(field : Int) : Bool;
	
	/**
	* Returns the string representation of the calendar
	* <code>field</code> value in the given <code>style</code> and
	* <code>locale</code>.  If no string representation is
	* applicable, <code>null</code> is returned. This method calls
	* {@link Calendar#get(int) get(field)} to get the calendar
	* <code>field</code> value if the string representation is
	* applicable to the given calendar <code>field</code>.
	*
	* <p>For example, if this <code>Calendar</code> is a
	* <code>GregorianCalendar</code> and its date is 2005-01-01, then
	* the string representation of the {@link #MONTH} field would be
	* "January" in the long style in an English locale or "Jan" in
	* the short style. However, no string representation would be
	* available for the {@link #DAY_OF_MONTH} field, and this method
	* would return <code>null</code>.
	*
	* <p>The default implementation supports the calendar fields for
	* which a {@link DateFormatSymbols} has names in the given
	* <code>locale</code>.
	*
	* @param field
	*        the calendar field for which the string representation
	*        is returned
	* @param style
	*        the style applied to the string representation; one of
	*        {@link #SHORT} or {@link #LONG}.
	* @param locale
	*        the locale for the string representation
	* @return the string representation of the given
	*        <code>field</code> in the given <code>style</code>, or
	*        <code>null</code> if no string representation is
	*        applicable.
	* @exception IllegalArgumentException
	*        if <code>field</code> or <code>style</code> is invalid,
	*        or if this <code>Calendar</code> is non-lenient and any
	*        of the calendar fields have invalid values
	* @exception NullPointerException
	*        if <code>locale</code> is null
	* @since 1.6
	*/
	@:require(java6) @:overload public function getDisplayName(field : Int, style : Int, locale : java.util.Locale) : String;
	
	/**
	* Returns a <code>Map</code> containing all names of the calendar
	* <code>field</code> in the given <code>style</code> and
	* <code>locale</code> and their corresponding field values. For
	* example, if this <code>Calendar</code> is a {@link
	* GregorianCalendar}, the returned map would contain "Jan" to
	* {@link #JANUARY}, "Feb" to {@link #FEBRUARY}, and so on, in the
	* {@linkplain #SHORT short} style in an English locale.
	*
	* <p>The values of other calendar fields may be taken into
	* account to determine a set of display names. For example, if
	* this <code>Calendar</code> is a lunisolar calendar system and
	* the year value given by the {@link #YEAR} field has a leap
	* month, this method would return month names containing the leap
	* month name, and month names are mapped to their values specific
	* for the year.
	*
	* <p>The default implementation supports display names contained in
	* a {@link DateFormatSymbols}. For example, if <code>field</code>
	* is {@link #MONTH} and <code>style</code> is {@link
	* #ALL_STYLES}, this method returns a <code>Map</code> containing
	* all strings returned by {@link DateFormatSymbols#getShortMonths()}
	* and {@link DateFormatSymbols#getMonths()}.
	*
	* @param field
	*        the calendar field for which the display names are returned
	* @param style
	*        the style applied to the display names; one of {@link
	*        #SHORT}, {@link #LONG}, or {@link #ALL_STYLES}.
	* @param locale
	*        the locale for the display names
	* @return a <code>Map</code> containing all display names in
	*        <code>style</code> and <code>locale</code> and their
	*        field values, or <code>null</code> if no display names
	*        are defined for <code>field</code>
	* @exception IllegalArgumentException
	*        if <code>field</code> or <code>style</code> is invalid,
	*        or if this <code>Calendar</code> is non-lenient and any
	*        of the calendar fields have invalid values
	* @exception NullPointerException
	*        if <code>locale</code> is null
	* @since 1.6
	*/
	@:require(java6) @:overload public function getDisplayNames(field : Int, style : Int, locale : java.util.Locale) : java.util.Map<String, Null<Int>>;
	
	/**
	* Fills in any unset fields in the calendar fields. First, the {@link
	* #computeTime()} method is called if the time value (millisecond offset
	* from the <a href="#Epoch">Epoch</a>) has not been calculated from
	* calendar field values. Then, the {@link #computeFields()} method is
	* called to calculate all calendar field values.
	*/
	@:overload private function complete() : Void;
	
	/**
	* Compares this <code>Calendar</code> to the specified
	* <code>Object</code>.  The result is <code>true</code> if and only if
	* the argument is a <code>Calendar</code> object of the same calendar
	* system that represents the same time value (millisecond offset from the
	* <a href="#Epoch">Epoch</a>) under the same
	* <code>Calendar</code> parameters as this object.
	*
	* <p>The <code>Calendar</code> parameters are the values represented
	* by the <code>isLenient</code>, <code>getFirstDayOfWeek</code>,
	* <code>getMinimalDaysInFirstWeek</code> and <code>getTimeZone</code>
	* methods. If there is any difference in those parameters
	* between the two <code>Calendar</code>s, this method returns
	* <code>false</code>.
	*
	* <p>Use the {@link #compareTo(Calendar) compareTo} method to
	* compare only the time values.
	*
	* @param obj the object to compare with.
	* @return <code>true</code> if this object is equal to <code>obj</code>;
	* <code>false</code> otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code for this calendar.
	*
	* @return a hash code value for this object.
	* @since 1.2
	*/
	@:require(java2) @:overload public function hashCode() : Int;
	
	/**
	* Returns whether this <code>Calendar</code> represents a time
	* before the time represented by the specified
	* <code>Object</code>. This method is equivalent to:
	* <pre><blockquote>
	*         compareTo(when) < 0
	* </blockquote></pre>
	* if and only if <code>when</code> is a <code>Calendar</code>
	* instance. Otherwise, the method returns <code>false</code>.
	*
	* @param when the <code>Object</code> to be compared
	* @return <code>true</code> if the time of this
	* <code>Calendar</code> is before the time represented by
	* <code>when</code>; <code>false</code> otherwise.
	* @see     #compareTo(Calendar)
	*/
	@:overload public function before(when : Dynamic) : Bool;
	
	/**
	* Returns whether this <code>Calendar</code> represents a time
	* after the time represented by the specified
	* <code>Object</code>. This method is equivalent to:
	* <pre><blockquote>
	*         compareTo(when) > 0
	* </blockquote></pre>
	* if and only if <code>when</code> is a <code>Calendar</code>
	* instance. Otherwise, the method returns <code>false</code>.
	*
	* @param when the <code>Object</code> to be compared
	* @return <code>true</code> if the time of this <code>Calendar</code> is
	* after the time represented by <code>when</code>; <code>false</code>
	* otherwise.
	* @see     #compareTo(Calendar)
	*/
	@:overload public function after(when : Dynamic) : Bool;
	
	/**
	* Compares the time values (millisecond offsets from the <a
	* href="#Epoch">Epoch</a>) represented by two
	* <code>Calendar</code> objects.
	*
	* @param anotherCalendar the <code>Calendar</code> to be compared.
	* @return the value <code>0</code> if the time represented by the argument
	* is equal to the time represented by this <code>Calendar</code>; a value
	* less than <code>0</code> if the time of this <code>Calendar</code> is
	* before the time represented by the argument; and a value greater than
	* <code>0</code> if the time of this <code>Calendar</code> is after the
	* time represented by the argument.
	* @exception NullPointerException if the specified <code>Calendar</code> is
	*            <code>null</code>.
	* @exception IllegalArgumentException if the time value of the
	* specified <code>Calendar</code> object can't be obtained due to
	* any invalid calendar values.
	* @since   1.5
	*/
	@:require(java5) @:overload public function compareTo(anotherCalendar : java.util.Calendar) : Int;
	
	/**
	* Adds or subtracts the specified amount of time to the given calendar field,
	* based on the calendar's rules. For example, to subtract 5 days from
	* the current time of the calendar, you can achieve it by calling:
	* <p><code>add(Calendar.DAY_OF_MONTH, -5)</code>.
	*
	* @param field the calendar field.
	* @param amount the amount of date or time to be added to the field.
	* @see #roll(int,int)
	* @see #set(int,int)
	*/
	@:overload @:abstract public function add(field : Int, amount : Int) : Void;
	
	/**
	* Adds or subtracts (up/down) a single unit of time on the given time
	* field without changing larger fields. For example, to roll the current
	* date up by one day, you can achieve it by calling:
	* <p>roll(Calendar.DATE, true).
	* When rolling on the year or Calendar.YEAR field, it will roll the year
	* value in the range between 1 and the value returned by calling
	* <code>getMaximum(Calendar.YEAR)</code>.
	* When rolling on the month or Calendar.MONTH field, other fields like
	* date might conflict and, need to be changed. For instance,
	* rolling the month on the date 01/31/96 will result in 02/29/96.
	* When rolling on the hour-in-day or Calendar.HOUR_OF_DAY field, it will
	* roll the hour value in the range between 0 and 23, which is zero-based.
	*
	* @param field the time field.
	* @param up indicates if the value of the specified time field is to be
	* rolled up or rolled down. Use true if rolling up, false otherwise.
	* @see Calendar#add(int,int)
	* @see Calendar#set(int,int)
	*/
	@:overload @:abstract public function roll(field : Int, up : Bool) : Void;
	
	/**
	* Adds the specified (signed) amount to the specified calendar field
	* without changing larger fields.  A negative amount means to roll
	* down.
	*
	* <p>NOTE:  This default implementation on <code>Calendar</code> just repeatedly calls the
	* version of {@link #roll(int,boolean) roll()} that rolls by one unit.  This may not
	* always do the right thing.  For example, if the <code>DAY_OF_MONTH</code> field is 31,
	* rolling through February will leave it set to 28.  The <code>GregorianCalendar</code>
	* version of this function takes care of this problem.  Other subclasses
	* should also provide overrides of this function that do the right thing.
	*
	* @param field the calendar field.
	* @param amount the signed amount to add to the calendar <code>field</code>.
	* @since 1.2
	* @see #roll(int,boolean)
	* @see #add(int,int)
	* @see #set(int,int)
	*/
	@:require(java2) @:overload public function roll(field : Int, amount : Int) : Void;
	
	/**
	* Sets the time zone with the given time zone value.
	*
	* @param value the given time zone.
	*/
	@:overload public function setTimeZone(value : java.util.TimeZone) : Void;
	
	/**
	* Gets the time zone.
	*
	* @return the time zone object associated with this calendar.
	*/
	@:overload public function getTimeZone() : java.util.TimeZone;
	
	/**
	* Specifies whether or not date/time interpretation is to be lenient.  With
	* lenient interpretation, a date such as "February 942, 1996" will be
	* treated as being equivalent to the 941st day after February 1, 1996.
	* With strict (non-lenient) interpretation, such dates will cause an exception to be
	* thrown. The default is lenient.
	*
	* @param lenient <code>true</code> if the lenient mode is to be turned
	* on; <code>false</code> if it is to be turned off.
	* @see #isLenient()
	* @see java.text.DateFormat#setLenient
	*/
	@:overload public function setLenient(lenient : Bool) : Void;
	
	/**
	* Tells whether date/time interpretation is to be lenient.
	*
	* @return <code>true</code> if the interpretation mode of this calendar is lenient;
	* <code>false</code> otherwise.
	* @see #setLenient(boolean)
	*/
	@:overload public function isLenient() : Bool;
	
	/**
	* Sets what the first day of the week is; e.g., <code>SUNDAY</code> in the U.S.,
	* <code>MONDAY</code> in France.
	*
	* @param value the given first day of the week.
	* @see #getFirstDayOfWeek()
	* @see #getMinimalDaysInFirstWeek()
	*/
	@:overload public function setFirstDayOfWeek(value : Int) : Void;
	
	/**
	* Gets what the first day of the week is; e.g., <code>SUNDAY</code> in the U.S.,
	* <code>MONDAY</code> in France.
	*
	* @return the first day of the week.
	* @see #setFirstDayOfWeek(int)
	* @see #getMinimalDaysInFirstWeek()
	*/
	@:overload public function getFirstDayOfWeek() : Int;
	
	/**
	* Sets what the minimal days required in the first week of the year are;
	* For example, if the first week is defined as one that contains the first
	* day of the first month of a year, call this method with value 1. If it
	* must be a full week, use value 7.
	*
	* @param value the given minimal days required in the first week
	* of the year.
	* @see #getMinimalDaysInFirstWeek()
	*/
	@:overload public function setMinimalDaysInFirstWeek(value : Int) : Void;
	
	/**
	* Gets what the minimal days required in the first week of the year are;
	* e.g., if the first week is defined as one that contains the first day
	* of the first month of a year, this method returns 1. If
	* the minimal days required must be a full week, this method
	* returns 7.
	*
	* @return the minimal days required in the first week of the year.
	* @see #setMinimalDaysInFirstWeek(int)
	*/
	@:overload public function getMinimalDaysInFirstWeek() : Int;
	
	/**
	* Returns whether this {@code Calendar} supports week dates.
	*
	* <p>The default implementation of this method returns {@code false}.
	*
	* @return {@code true} if this {@code Calendar} supports week dates;
	*         {@code false} otherwise.
	* @see #getWeekYear()
	* @see #setWeekDate(int,int,int)
	* @see #getWeeksInWeekYear()
	* @since 1.7
	*/
	@:require(java7) @:overload public function isWeekDateSupported() : Bool;
	
	/**
	* Returns the week year represented by this {@code Calendar}. The
	* week year is in sync with the week cycle. The {@linkplain
	* #getFirstDayOfWeek() first day of the first week} is the first
	* day of the week year.
	*
	* <p>The default implementation of this method throws an
	* {@link UnsupportedOperationException}.
	*
	* @return the week year of this {@code Calendar}
	* @exception UnsupportedOperationException
	*            if any week year numbering isn't supported
	*            in this {@code Calendar}.
	* @see #isWeekDateSupported()
	* @see #getFirstDayOfWeek()
	* @see #getMinimalDaysInFirstWeek()
	* @since 1.7
	*/
	@:require(java7) @:overload public function getWeekYear() : Int;
	
	/**
	* Sets the date of this {@code Calendar} with the the given date
	* specifiers - week year, week of year, and day of week.
	*
	* <p>Unlike the {@code set} method, all of the calendar fields
	* and {@code time} values are calculated upon return.
	*
	* <p>If {@code weekOfYear} is out of the valid week-of-year range
	* in {@code weekYear}, the {@code weekYear} and {@code
	* weekOfYear} values are adjusted in lenient mode, or an {@code
	* IllegalArgumentException} is thrown in non-lenient mode.
	*
	* <p>The default implementation of this method throws an
	* {@code UnsupportedOperationException}.
	*
	* @param weekYear   the week year
	* @param weekOfYear the week number based on {@code weekYear}
	* @param dayOfWeek  the day of week value: one of the constants
	*                   for the {@link #DAY_OF_WEEK} field: {@link
	*                   #SUNDAY}, ..., {@link #SATURDAY}.
	* @exception IllegalArgumentException
	*            if any of the given date specifiers is invalid
	*            or any of the calendar fields are inconsistent
	*            with the given date specifiers in non-lenient mode
	* @exception UnsupportedOperationException
	*            if any week year numbering isn't supported in this
	*            {@code Calendar}.
	* @see #isWeekDateSupported()
	* @see #getFirstDayOfWeek()
	* @see #getMinimalDaysInFirstWeek()
	* @since 1.7
	*/
	@:require(java7) @:overload public function setWeekDate(weekYear : Int, weekOfYear : Int, dayOfWeek : Int) : Void;
	
	/**
	* Returns the number of weeks in the week year represented by this
	* {@code Calendar}.
	*
	* <p>The default implementation of this method throws an
	* {@code UnsupportedOperationException}.
	*
	* @return the number of weeks in the week year.
	* @exception UnsupportedOperationException
	*            if any week year numbering isn't supported in this
	*            {@code Calendar}.
	* @see #WEEK_OF_YEAR
	* @see #isWeekDateSupported()
	* @see #getWeekYear()
	* @see #getActualMaximum(int)
	* @since 1.7
	*/
	@:require(java7) @:overload public function getWeeksInWeekYear() : Int;
	
	/**
	* Returns the minimum value for the given calendar field of this
	* <code>Calendar</code> instance. The minimum value is defined as
	* the smallest value returned by the {@link #get(int) get} method
	* for any possible time value.  The minimum value depends on
	* calendar system specific parameters of the instance.
	*
	* @param field the calendar field.
	* @return the minimum value for the given calendar field.
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:abstract public function getMinimum(field : Int) : Int;
	
	/**
	* Returns the maximum value for the given calendar field of this
	* <code>Calendar</code> instance. The maximum value is defined as
	* the largest value returned by the {@link #get(int) get} method
	* for any possible time value. The maximum value depends on
	* calendar system specific parameters of the instance.
	*
	* @param field the calendar field.
	* @return the maximum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:abstract public function getMaximum(field : Int) : Int;
	
	/**
	* Returns the highest minimum value for the given calendar field
	* of this <code>Calendar</code> instance. The highest minimum
	* value is defined as the largest value returned by {@link
	* #getActualMinimum(int)} for any possible time value. The
	* greatest minimum value depends on calendar system specific
	* parameters of the instance.
	*
	* @param field the calendar field.
	* @return the highest minimum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:abstract public function getGreatestMinimum(field : Int) : Int;
	
	/**
	* Returns the lowest maximum value for the given calendar field
	* of this <code>Calendar</code> instance. The lowest maximum
	* value is defined as the smallest value returned by {@link
	* #getActualMaximum(int)} for any possible time value. The least
	* maximum value depends on calendar system specific parameters of
	* the instance. For example, a <code>Calendar</code> for the
	* Gregorian calendar system returns 28 for the
	* <code>DAY_OF_MONTH</code> field, because the 28th is the last
	* day of the shortest month of this calendar, February in a
	* common year.
	*
	* @param field the calendar field.
	* @return the lowest maximum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:abstract public function getLeastMaximum(field : Int) : Int;
	
	/**
	* Returns the minimum value that the specified calendar field
	* could have, given the time value of this <code>Calendar</code>.
	*
	* <p>The default implementation of this method uses an iterative
	* algorithm to determine the actual minimum value for the
	* calendar field. Subclasses should, if possible, override this
	* with a more efficient implementation - in many cases, they can
	* simply return <code>getMinimum()</code>.
	*
	* @param field the calendar field
	* @return the minimum of the given calendar field for the time
	* value of this <code>Calendar</code>
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMaximum(int)
	* @since 1.2
	*/
	@:require(java2) @:overload public function getActualMinimum(field : Int) : Int;
	
	/**
	* Returns the maximum value that the specified calendar field
	* could have, given the time value of this
	* <code>Calendar</code>. For example, the actual maximum value of
	* the <code>MONTH</code> field is 12 in some years, and 13 in
	* other years in the Hebrew calendar system.
	*
	* <p>The default implementation of this method uses an iterative
	* algorithm to determine the actual maximum value for the
	* calendar field. Subclasses should, if possible, override this
	* with a more efficient implementation.
	*
	* @param field the calendar field
	* @return the maximum of the given calendar field for the time
	* value of this <code>Calendar</code>
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @since 1.2
	*/
	@:require(java2) @:overload public function getActualMaximum(field : Int) : Int;
	
	/**
	* Creates and returns a copy of this object.
	*
	* @return a copy of this object.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Return a string representation of this calendar. This method
	* is intended to be used only for debugging purposes, and the
	* format of the returned string may vary between implementations.
	* The returned string may be empty but may not be <code>null</code>.
	*
	* @return  a string representation of this calendar.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public @:public @:public @:public @:public public function compareTo(o : Dynamic) : Int;
	
	
}
@:native('java$util$Calendar$CalendarAccessControlContext') @:internal extern class Calendar_CalendarAccessControlContext
{
	
}
