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
extern class AbstractCalendar extends sun.util.calendar.CalendarSystem
{
	@:overload private function new() : Void;
	
	@:overload override public function getEra(eraName : String) : sun.util.calendar.Era;
	
	@:overload override public function getEras() : java.NativeArray<sun.util.calendar.Era>;
	
	@:overload override public function setEra(date : sun.util.calendar.CalendarDate, eraName : String) : Void;
	
	@:overload private function setEras(eras : java.NativeArray<sun.util.calendar.Era>) : Void;
	
	@:overload override public function getCalendarDate() : sun.util.calendar.CalendarDate;
	
	@:overload override public function getCalendarDate(millis : haxe.Int64) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getCalendarDate(millis : haxe.Int64, zone : java.util.TimeZone) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getCalendarDate(millis : haxe.Int64, date : sun.util.calendar.CalendarDate) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getTime(date : sun.util.calendar.CalendarDate) : haxe.Int64;
	
	@:overload private function getTimeOfDay(date : sun.util.calendar.CalendarDate) : haxe.Int64;
	
	@:overload public function getTimeOfDayValue(date : sun.util.calendar.CalendarDate) : haxe.Int64;
	
	@:overload override public function setTimeOfDay(cdate : sun.util.calendar.CalendarDate, fraction : Int) : sun.util.calendar.CalendarDate;
	
	/**
	* Returns 7 in this default implementation.
	*
	* @return 7
	*/
	@:overload override public function getWeekLength() : Int;
	
	@:overload @:abstract private function isLeapYear(date : sun.util.calendar.CalendarDate) : Bool;
	
	@:overload override public function getNthDayOfWeek(nth : Int, dayOfWeek : Int, date : sun.util.calendar.CalendarDate) : sun.util.calendar.CalendarDate;
	
	/**
	* Returns a date of the given day of week on or before the given fixed
	* date.
	*
	* @param fixedDate the fixed date
	* @param dayOfWeek the day of week
	* @return the calculated date
	*/
	@:overload public static function getDayOfWeekDateOnOrBefore(fixedDate : haxe.Int64, dayOfWeek : Int) : haxe.Int64;
	
	/**
	* Returns the fixed date calculated with the specified calendar
	* date. If the specified date is not normalized, its date fields
	* are normalized.
	*
	* @param date a <code>CalendarDate</code> with which the fixed
	* date is calculated
	* @return the calculated fixed date
	* @see AbstractCalendar.html#fixed_date
	*/
	@:overload @:abstract private function getFixedDate(date : sun.util.calendar.CalendarDate) : haxe.Int64;
	
	/**
	* Calculates calendar fields from the specified fixed date. This
	* method stores the calculated calendar field values in the specified
	* <code>CalendarDate</code>.
	*
	* @param date a <code>CalendarDate</code> to stored the
	* calculated calendar fields.
	* @param fixedDate a fixed date to calculate calendar fields
	* @see AbstractCalendar.html#fixed_date
	*/
	@:overload @:abstract private function getCalendarDateFromFixedDate(date : sun.util.calendar.CalendarDate, fixedDate : haxe.Int64) : Void;
	
	@:overload public function validateTime(date : sun.util.calendar.CalendarDate) : Bool;
	
	
}
