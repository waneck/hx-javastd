package sun.util.calendar;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ImmutableGregorianDate extends sun.util.calendar.BaseCalendar.BaseCalendar_Date
{
	@:overload override public function getEra() : sun.util.calendar.Era;
	
	@:overload override public function setEra(era : sun.util.calendar.Era) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getYear() : Int;
	
	@:overload override public function setYear(year : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addYear(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function isLeapYear() : Bool;
	
	@:overload override public function getMonth() : Int;
	
	@:overload override public function setMonth(month : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addMonth(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getDayOfMonth() : Int;
	
	@:overload override public function setDayOfMonth(date : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addDayOfMonth(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getDayOfWeek() : Int;
	
	@:overload override public function getHours() : Int;
	
	@:overload override public function setHours(hours : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addHours(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getMinutes() : Int;
	
	@:overload override public function setMinutes(minutes : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addMinutes(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getSeconds() : Int;
	
	@:overload override public function setSeconds(seconds : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addSeconds(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getMillis() : Int;
	
	@:overload override public function setMillis(millis : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addMillis(n : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function getTimeOfDay() : haxe.Int64;
	
	@:overload override public function setDate(year : Int, month : Int, dayOfMonth : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addDate(year : Int, month : Int, dayOfMonth : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function setTimeOfDay(hours : Int, minutes : Int, seconds : Int, millis : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override public function addTimeOfDay(hours : Int, minutes : Int, seconds : Int, millis : Int) : sun.util.calendar.CalendarDate;
	
	@:overload override private function setTimeOfDay(fraction : haxe.Int64) : Void;
	
	@:overload override public function isNormalized() : Bool;
	
	@:overload override public function isStandardTime() : Bool;
	
	@:overload override public function setStandardTime(standardTime : Bool) : Void;
	
	@:overload override public function isDaylightTime() : Bool;
	
	@:overload override private function setLocale(loc : java.util.Locale) : Void;
	
	@:overload override public function getZone() : java.util.TimeZone;
	
	@:overload override public function setZone(zoneinfo : java.util.TimeZone) : sun.util.calendar.CalendarDate;
	
	@:overload override public function isSameDate(date : sun.util.calendar.CalendarDate) : Bool;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload override public function clone() : Dynamic;
	
	@:overload override public function toString() : String;
	
	@:overload override private function setDayOfWeek(dayOfWeek : Int) : Void;
	
	@:overload override private function setNormalized(normalized : Bool) : Void;
	
	@:overload override public function getZoneOffset() : Int;
	
	@:overload override private function setZoneOffset(offset : Int) : Void;
	
	@:overload override public function getDaylightSaving() : Int;
	
	@:overload override private function setDaylightSaving(daylightSaving : Int) : Void;
	
	@:overload override public function getNormalizedYear() : Int;
	
	@:overload override public function setNormalizedYear(normalizedYear : Int) : Void;
	
	
}
