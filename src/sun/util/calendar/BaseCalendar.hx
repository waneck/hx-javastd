package sun.util.calendar;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class BaseCalendar extends sun.util.calendar.AbstractCalendar
{
	/**
	* The <code>BaseCalendar</code> provides basic calendar calculation
	* functions to support the Julian, Gregorian, and Gregorian-based
	* calendar systems.
	*
	* @author Masayoshi Okutsu
	* @since 1.5
	*/
	@:require(java5) public static var JANUARY(default, null) : Int;
	
	public static var FEBRUARY(default, null) : Int;
	
	public static var MARCH(default, null) : Int;
	
	public static var APRIL(default, null) : Int;
	
	public static var MAY(default, null) : Int;
	
	public static var JUNE(default, null) : Int;
	
	public static var JULY(default, null) : Int;
	
	public static var AUGUST(default, null) : Int;
	
	public static var SEPTEMBER(default, null) : Int;
	
	public static var OCTOBER(default, null) : Int;
	
	public static var NOVEMBER(default, null) : Int;
	
	public static var DECEMBER(default, null) : Int;
	
	public static var SUNDAY(default, null) : Int;
	
	public static var MONDAY(default, null) : Int;
	
	public static var TUESDAY(default, null) : Int;
	
	public static var WEDNESDAY(default, null) : Int;
	
	public static var THURSDAY(default, null) : Int;
	
	public static var FRIDAY(default, null) : Int;
	
	public static var SATURDAY(default, null) : Int;
	
	@:overload override public function validate(date : sun.util.calendar.CalendarDate) : Bool;
	
	@:overload override public function normalize(date : sun.util.calendar.CalendarDate) : Bool;
	
	/**
	* Returns 366 if the specified date is in a leap year, or 365
	* otherwise This method does not perform the normalization with
	* the specified <code>CalendarDate</code>. The
	* <code>CalendarDate</code> must be normalized to get a correct
	* value.
	*
	* @param a <code>CalendarDate</code>
	* @return a year length in days
	* @throws ClassCastException if the specified date is not a
	* {@link BaseCalendar.Date}
	*/
	@:overload override public function getYearLength(date : sun.util.calendar.CalendarDate) : Int;
	
	@:overload override public function getYearLengthInMonths(date : sun.util.calendar.CalendarDate) : Int;
	
	@:overload override public function getMonthLength(date : sun.util.calendar.CalendarDate) : Int;
	
	@:overload public function getDayOfYear(date : sun.util.calendar.CalendarDate) : haxe.Int64;
	
	@:overload override public function getFixedDate(date : sun.util.calendar.CalendarDate) : haxe.Int64;
	
	@:overload public function getFixedDate(year : Int, month : Int, dayOfMonth : Int, cache : sun.util.calendar.BaseCalendar.BaseCalendar_Date) : haxe.Int64;
	
	/**
	* Calculates calendar fields and store them in the specified
	* <code>CalendarDate</code>.
	*/
	@:overload override public function getCalendarDateFromFixedDate(date : sun.util.calendar.CalendarDate, fixedDate : haxe.Int64) : Void;
	
	/**
	* Returns the day of week of the given Gregorian date.
	*/
	@:overload public function getDayOfWeek(date : sun.util.calendar.CalendarDate) : Int;
	
	@:overload @:final public static function getDayOfWeekFromFixedDate(fixedDate : haxe.Int64) : Int;
	
	@:overload public function getYearFromFixedDate(fixedDate : haxe.Int64) : Int;
	
	/**
	* @return true if the specified year is a Gregorian leap year, or
	* false otherwise.
	* @see BaseCalendar#isGregorianLeapYear
	*/
	@:overload override private function isLeapYear(date : sun.util.calendar.CalendarDate) : Bool;
	
	
}
@:native('sun$util$calendar$BaseCalendar$Date') extern class BaseCalendar_Date extends sun.util.calendar.CalendarDate
{
	@:overload private function new() : Void;
	
	@:overload private function new(zone : java.util.TimeZone) : Void;
	
	@:overload public function setNormalizedDate(normalizedYear : Int, month : Int, dayOfMonth : Int) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:abstract public function getNormalizedYear() : Int;
	
	@:overload @:abstract public function setNormalizedYear(normalizedYear : Int) : Void;
	
	@:overload @:final private function hit(year : Int) : Bool;
	
	@:overload @:final private function hit(fixedDate : haxe.Int64) : Bool;
	
	@:overload private function getCachedYear() : Int;
	
	@:overload private function getCachedJan1() : haxe.Int64;
	
	@:overload private function setCache(year : Int, jan1 : haxe.Int64, len : Int) : Void;
	
	
}
