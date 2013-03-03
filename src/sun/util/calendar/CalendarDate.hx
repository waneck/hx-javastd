package sun.util.calendar;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class CalendarDate implements java.lang.Cloneable
{
	/**
	* The <code>CalendarDate</code> class represents a specific instant
	* in time by calendar date and time fields that are multiple cycles
	* in different time unites. The semantics of each calendar field is
	* given by a concrete calendar system rather than this
	* <code>CalendarDate</code> class that holds calendar field values
	* without interpreting them. Therefore, this class can be used to
	* represent an amount of time, such as 2 years and 3 months.
	*
	* <p>A <code>CalendarDate</code> instance can be created by calling
	* the <code>newCalendarDate</code> or <code>getCalendarDate</code>
	* methods in <code>CalendarSystem</code>. A
	* <code>CalendarSystem</code> instance is obtained by calling one of
	* the factory methods in <code>CalendarSystem</code>. Manipulations
	* of calendar dates must be handled by the calendar system by which
	* <code>CalendarDate</code> instances have been created.
	*
	* <p>Some calendar fields can be modified through method calls. Any
	* modification of a calendar field brings the state of a
	* <code>CalendarDate</code> to <I>not normalized</I>. The
	* normalization must be performed to make all the calendar fields
	* consistent with a calendar system.
	*
	* <p>The <code>protected</code> methods are intended to be used for
	* implementing a concrete calendar system, not for general use as an
	* API.
	*
	* @see CalendarSystem
	* @author Masayoshi Okutsu
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var FIELD_UNDEFINED(default, null) : Int;
	
	@:public @:static @:final public static var TIME_UNDEFINED(default, null) : haxe.Int64;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:protected private function new(zone : java.util.TimeZone) : Void;
	
	@:overload @:public public function getEra() : sun.util.calendar.Era;
	
	/**
	* Sets the era of the date to the specified era. The default
	* implementation of this method accepts any Era value, including
	* <code>null</code>.
	*
	* @exception NullPointerException if the calendar system for this
	* <code>CalendarDate</code> requires eras and the specified era
	* is null.
	* @exception IllegalArgumentException if the specified
	* <code>era</code> is unknown to the calendar
	* system for this <code>CalendarDate</code>.
	*/
	@:overload @:public public function setEra(era : sun.util.calendar.Era) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function getYear() : Int;
	
	@:overload @:public public function setYear(year : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addYear(n : Int) : sun.util.calendar.CalendarDate;
	
	/**
	* Returns whether the year represented by this
	* <code>CalendarDate</code> is a leap year. If leap years are
	* not applicable to the calendar system, this method always
	* returns <code>false</code>.
	*
	* <p>If this <code>CalendarDate</code> hasn't been normalized,
	* <code>false</code> is returned. The normalization must be
	* performed to retrieve the correct leap year information.
	*
	* @return <code>true</code> if this <code>CalendarDate</code> is
	* normalized and the year of this <code>CalendarDate</code> is a
	* leap year, or <code>false</code> otherwise.
	* @see BaseCalendar#isGregorianLeapYear
	*/
	@:overload @:public public function isLeapYear() : Bool;
	
	@:overload @:public public function getMonth() : Int;
	
	@:overload @:public public function setMonth(month : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addMonth(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function getDayOfMonth() : Int;
	
	@:overload @:public public function setDayOfMonth(date : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addDayOfMonth(n : Int) : sun.util.calendar.CalendarDate;
	
	/**
	* Returns the day of week value. If this CalendarDate is not
	* normalized, {@link #FIELD_UNDEFINED} is returned.
	*
	* @return day of week or {@link #FIELD_UNDEFINED}
	*/
	@:overload @:public public function getDayOfWeek() : Int;
	
	@:overload @:public public function getHours() : Int;
	
	@:overload @:public public function setHours(hours : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addHours(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function getMinutes() : Int;
	
	@:overload @:public public function setMinutes(minutes : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addMinutes(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function getSeconds() : Int;
	
	@:overload @:public public function setSeconds(seconds : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addSeconds(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function getMillis() : Int;
	
	@:overload @:public public function setMillis(millis : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addMillis(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function getTimeOfDay() : haxe.Int64;
	
	@:overload @:public public function setDate(year : Int, month : Int, dayOfMonth : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addDate(year : Int, month : Int, dayOfMonth : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function setTimeOfDay(hours : Int, minutes : Int, seconds : Int, millis : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:public public function addTimeOfDay(hours : Int, minutes : Int, seconds : Int, millis : Int) : sun.util.calendar.CalendarDate;
	
	@:overload @:protected private function setTimeOfDay(fraction : haxe.Int64) : Void;
	
	@:overload @:public public function isNormalized() : Bool;
	
	@:overload @:public public function isStandardTime() : Bool;
	
	@:overload @:public public function setStandardTime(standardTime : Bool) : Void;
	
	@:overload @:public public function isDaylightTime() : Bool;
	
	@:overload @:protected private function setLocale(loc : java.util.Locale) : Void;
	
	@:overload @:public public function getZone() : java.util.TimeZone;
	
	@:overload @:public public function setZone(zoneinfo : java.util.TimeZone) : sun.util.calendar.CalendarDate;
	
	/**
	* Returns whether the specified date is the same date of this
	* <code>CalendarDate</code>. The time of the day fields are
	* ignored for the comparison.
	*/
	@:overload @:public public function isSameDate(date : sun.util.calendar.CalendarDate) : Bool;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a copy of this <code>CalendarDate</code>. The
	* <code>TimeZone</code> object, if any, is not cloned.
	*
	* @return a copy of this <code>CalendarDate</code>
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Converts calendar date values to a <code>String</code> in the
	* following format.
	* <pre>
	*     yyyy-MM-dd'T'HH:mm:ss.SSSz
	* </pre>
	*
	* @see java.text.SimpleDateFormat
	*/
	@:overload @:public public function toString() : String;
	
	@:overload @:protected private function setDayOfWeek(dayOfWeek : Int) : Void;
	
	@:overload @:protected private function setNormalized(normalized : Bool) : Void;
	
	@:overload @:public public function getZoneOffset() : Int;
	
	@:overload @:protected private function setZoneOffset(offset : Int) : Void;
	
	@:overload @:public public function getDaylightSaving() : Int;
	
	@:overload @:protected private function setDaylightSaving(daylightSaving : Int) : Void;
	
	
}
