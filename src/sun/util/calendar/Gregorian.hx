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
extern class Gregorian extends sun.util.calendar.BaseCalendar
{
	@:overload public function getName() : String;
	
	@:overload public function getCalendarDate() : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload public function getCalendarDate(millis : haxe.Int64) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload public function getCalendarDate(millis : haxe.Int64, date : sun.util.calendar.CalendarDate) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload public function getCalendarDate(millis : haxe.Int64, zone : java.util.TimeZone) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload public function newCalendarDate() : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	@:overload public function newCalendarDate(zone : java.util.TimeZone) : sun.util.calendar.BaseCalendar.BaseCalendar_Date;
	
	
}
/**
* Gregorian calendar implementation.
*
* @author Masayoshi Okutsu
* @since 1.5
*/
@:require(java5) @:native('sun$util$calendar$Gregorian$Date') @:internal extern class Gregorian_Date extends sun.util.calendar.BaseCalendar.BaseCalendar_Date
{
	@:overload private function new() : Void;
	
	@:overload private function new(zone : java.util.TimeZone) : Void;
	
	@:overload public function getNormalizedYear() : Int;
	
	@:overload public function setNormalizedYear(normalizedYear : Int) : Void;
	
	
}
