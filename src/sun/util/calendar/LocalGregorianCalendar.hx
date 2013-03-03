package sun.util.calendar;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class LocalGregorianCalendar extends sun.util.calendar.BaseCalendar
{
	@:overload @:public override public function getName() : String;
	
	@:overload @:public override public function getCalendarDate() : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function getCalendarDate(millis : haxe.Int64) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function getCalendarDate(millis : haxe.Int64, zone : java.util.TimeZone) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function getCalendarDate(millis : haxe.Int64, date : sun.util.calendar.CalendarDate) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function newCalendarDate() : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function newCalendarDate(zone : java.util.TimeZone) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function validate(date : sun.util.calendar.CalendarDate) : Bool;
	
	@:overload @:public override public function normalize(date : sun.util.calendar.CalendarDate) : Bool;
	
	/**
	* Returns whether the specified Gregorian year is a leap year.
	* @see #isLeapYear(Era, int)
	*/
	@:overload @:public public function isLeapYear(gregorianYear : Int) : Bool;
	
	@:overload @:public public function isLeapYear(era : sun.util.calendar.Era, year : Int) : Bool;
	
	@:overload @:public override public function getCalendarDateFromFixedDate(date : sun.util.calendar.CalendarDate, fixedDate : haxe.Int64) : Void;
	
	
}
@:native('sun$util$calendar$LocalGregorianCalendar$Date') extern class LocalGregorianCalendar_Date extends sun.util.calendar.BaseCalendar.BaseCalendar_Date
{
	@:overload @:protected override private function new() : Void;
	
	@:overload @:protected override private function new(zone : java.util.TimeZone) : Void;
	
	@:overload @:public override public function setEra(era : sun.util.calendar.Era) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function addYear(localYear : Int) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function setYear(localYear : Int) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload @:public override public function getNormalizedYear() : Int;
	
	@:overload @:public override public function setNormalizedYear(normalizedYear : Int) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
