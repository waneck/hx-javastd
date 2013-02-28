package sun.util.calendar;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class JulianCalendar extends sun.util.calendar.BaseCalendar
{
	@:overload override public function getName() : String;
	
	@:overload override public function getCalendarDate() : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload override public function getCalendarDate(millis : haxe.Int64) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload override public function getCalendarDate(millis : haxe.Int64, date : sun.util.calendar.CalendarDate) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload override public function getCalendarDate(millis : haxe.Int64, zone : java.util.TimeZone) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload override public function newCalendarDate() : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload override public function newCalendarDate(zone : java.util.TimeZone) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	/**
	* @param jyear normalized Julian year
	*/
	@:overload public function getFixedDate(jyear : Int, month : Int, dayOfMonth : Int, cache : sun.util.calendar.BaseCalendar.BaseCalendar_Date) : haxe.Int64;
	
	@:overload override public function getCalendarDateFromFixedDate(date : sun.util.calendar.CalendarDate, fixedDate : haxe.Int64) : Void;
	
	/**
	* Returns the normalized Julian year number of the given fixed date.
	*/
	@:overload override public function getYearFromFixedDate(fixedDate : haxe.Int64) : Int;
	
	@:overload override public function getDayOfWeek(date : sun.util.calendar.CalendarDate) : Int;
	
	
}
@:native('sun$util$calendar$JulianCalendar$Date') @:internal extern class JulianCalendar_Date extends sun.util.calendar.BaseCalendar.BaseCalendar_Date
{
	@:overload override private function new() : Void;
	
	@:overload override private function new(zone : java.util.TimeZone) : Void;
	
	@:overload override public function setEra(era : sun.util.calendar.Era) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload private function setKnownEra(era : sun.util.calendar.Era) : Void;
	
	@:overload override public function getNormalizedYear() : Int;
	
	@:overload override public function setNormalizedYear(year : Int) : Void;
	
	@:overload override public function toString() : String;
	
	
}
