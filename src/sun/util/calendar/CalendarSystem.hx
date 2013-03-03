package sun.util.calendar;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class CalendarSystem
{
	/**
	* Returns the singleton instance of the <code>Gregorian</code>
	* calendar system.
	*
	* @return the <code>Gregorian</code> instance
	*/
	@:overload @:public @:static public static function getGregorianCalendar() : sun.util.calendar.Gregorian;
	
	/**
	* Returns a <code>CalendarSystem</code> specified by the calendar
	* name. The calendar name has to be one of the supported calendar
	* names.
	*
	* @param calendarName the calendar name
	* @return the <code>CalendarSystem</code> specified by
	* <code>calendarName</code>, or null if there is no
	* <code>CalendarSystem</code> associated with the given calendar name.
	*/
	@:overload @:public @:static public static function forName(calendarName : String) : sun.util.calendar.CalendarSystem;
	
	/**
	* Returns the name of this calendar system.
	*/
	@:overload @:public @:abstract public function getName() : String;
	
	@:overload @:public @:abstract public function getCalendarDate() : sun.util.calendar.CalendarDate;
	
	/**
	* Calculates calendar fields from the specified number of
	* milliseconds since the Epoch, January 1, 1970 00:00:00 UTC
	* (Gregorian). This method doesn't check overflow or underflow
	* when adjusting the millisecond value (representing UTC) with
	* the time zone offsets (i.e., the GMT offset and amount of
	* daylight saving).
	*
	* @param millis the offset value in milliseconds from January 1,
	* 1970 00:00:00 UTC (Gregorian).
	* @return a <code>CalendarDate</code> instance that contains the
	* calculated calendar field values.
	*/
	@:overload @:public @:abstract public function getCalendarDate(millis : haxe.Int64) : sun.util.calendar.CalendarDate;
	
	@:overload @:public @:abstract public function getCalendarDate(millis : haxe.Int64, date : sun.util.calendar.CalendarDate) : sun.util.calendar.CalendarDate;
	
	@:overload @:public @:abstract public function getCalendarDate(millis : haxe.Int64, zone : java.util.TimeZone) : sun.util.calendar.CalendarDate;
	
	/**
	* Constructs a <code>CalendarDate</code> that is specific to this
	* calendar system. All calendar fields have their initial
	* values. The {@link TimeZone#getDefault() default time zone} is
	* set to the instance.
	*
	* @return a <code>CalendarDate</code> instance that contains the initial
	* calendar field values.
	*/
	@:overload @:public @:abstract public function newCalendarDate() : sun.util.calendar.CalendarDate;
	
	@:overload @:public @:abstract public function newCalendarDate(zone : java.util.TimeZone) : sun.util.calendar.CalendarDate;
	
	/**
	* Returns the number of milliseconds since the Epoch, January 1,
	* 1970 00:00:00 UTC (Gregorian), represented by the specified
	* <code>CalendarDate</code>.
	*
	* @param date the <code>CalendarDate</code> from which the time
	* value is calculated
	* @return the number of milliseconds since the Epoch.
	*/
	@:overload @:public @:abstract public function getTime(date : sun.util.calendar.CalendarDate) : haxe.Int64;
	
	/**
	* Returns the length in days of the specified year by
	* <code>date</code>. This method does not perform the
	* normalization with the specified <code>CalendarDate</code>. The
	* <code>CalendarDate</code> must be normalized to get a correct
	* value.
	*/
	@:overload @:public @:abstract public function getYearLength(date : sun.util.calendar.CalendarDate) : Int;
	
	/**
	* Returns the number of months of the specified year. This method
	* does not perform the normalization with the specified
	* <code>CalendarDate</code>. The <code>CalendarDate</code> must
	* be normalized to get a correct value.
	*/
	@:overload @:public @:abstract public function getYearLengthInMonths(date : sun.util.calendar.CalendarDate) : Int;
	
	/**
	* Returns the length in days of the month specified by the calendar
	* date. This method does not perform the normalization with the
	* specified calendar date. The <code>CalendarDate</code> must
	* be normalized to get a correct value.
	*
	* @param date the date from which the month value is obtained
	* @return the number of days in the month
	* @exception IllegalArgumentException if the specified calendar date
	* doesn't have a valid month value in this calendar system.
	*/
	@:overload @:public @:abstract public function getMonthLength(date : sun.util.calendar.CalendarDate) : Int;
	
	/**
	* Returns the length in days of a week in this calendar
	* system. If this calendar system has multiple radix weeks, this
	* method returns only one of them.
	*/
	@:overload @:public @:abstract public function getWeekLength() : Int;
	
	/**
	* Returns the <code>Era</code> designated by the era name that
	* has to be known to this calendar system. If no Era is
	* applicable to this calendar system, null is returned.
	*
	* @param eraName the name of the era
	* @return the <code>Era</code> designated by
	* <code>eraName</code>, or <code>null</code> if no Era is
	* applicable to this calendar system or the specified era name is
	* not known to this calendar system.
	*/
	@:overload @:public @:abstract public function getEra(eraName : String) : sun.util.calendar.Era;
	
	/**
	* Returns valid <code>Era</code>s of this calendar system. The
	* return value is sorted in the descendant order. (i.e., the first
	* element of the returned array is the oldest era.) If no era is
	* applicable to this calendar system, <code>null</code> is returned.
	*
	* @return an array of valid <code>Era</code>s, or
	* <code>null</code> if no era is applicable to this calendar
	* system.
	*/
	@:overload @:public @:abstract public function getEras() : java.NativeArray<sun.util.calendar.Era>;
	
	/**
	* @throws IllegalArgumentException if the specified era name is
	* unknown to this calendar system.
	* @see Era
	*/
	@:overload @:public @:abstract public function setEra(date : sun.util.calendar.CalendarDate, eraName : String) : Void;
	
	/**
	* Returns a <code>CalendarDate</code> of the n-th day of week
	* which is on, after or before the specified date. For example, the
	* first Sunday in April 2002 (Gregorian) can be obtained as
	* below:
	*
	* <pre><code>
	* Gregorian cal = CalendarSystem.getGregorianCalendar();
	* CalendarDate date = cal.newCalendarDate();
	* date.setDate(2004, cal.APRIL, 1);
	* CalendarDate firstSun = cal.getNthDayOfWeek(1, cal.SUNDAY, date);
	* // firstSun represents April 4, 2004.
	* </code></pre>
	*
	* This method returns a new <code>CalendarDate</code> instance
	* and doesn't modify the original date.
	*
	* @param nth specifies the n-th one. A positive number specifies
	* <em>on or after</em> the <code>date</code>. A non-positive number
	* specifies <em>on or before</em> the <code>date</code>.
	* @param dayOfWeek the day of week
	* @param date the date
	* @return the date of the nth <code>dayOfWeek</code> after
	* or before the specified <code>CalendarDate</code>
	*/
	@:overload @:public @:abstract public function getNthDayOfWeek(nth : Int, dayOfWeek : Int, date : sun.util.calendar.CalendarDate) : sun.util.calendar.CalendarDate;
	
	@:overload @:public @:abstract public function setTimeOfDay(date : sun.util.calendar.CalendarDate, timeOfDay : Int) : sun.util.calendar.CalendarDate;
	
	/**
	* Checks whether the calendar fields specified by <code>date</code>
	* represents a valid date and time in this calendar system. If the
	* given date is valid, <code>date</code> is marked as <em>normalized</em>.
	*
	* @param date the <code>CalendarDate</code> to be validated
	* @return <code>true</code> if all the calendar fields are consistent,
	* otherwise, <code>false</code> is returned.
	* @exception NullPointerException if the specified
	* <code>date</code> is <code>null</code>
	*/
	@:overload @:public @:abstract public function validate(date : sun.util.calendar.CalendarDate) : Bool;
	
	/**
	* Normalizes calendar fields in the specified
	* <code>date</code>. Also all {@link CalendarDate#FIELD_UNDEFINED
	* undefined} fields are set to correct values. The actual
	* normalization process is calendar system dependent.
	*
	* @param date the calendar date to be validated
	* @return <code>true</code> if all fields have been normalized;
	* <code>false</code> otherwise.
	* @exception NullPointerException if the specified
	* <code>date</code> is <code>null</code>
	*/
	@:overload @:public @:abstract public function normalize(date : sun.util.calendar.CalendarDate) : Bool;
	
	
}
