package sun.util.calendar;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ZoneInfo extends java.util.TimeZone
{
	/**
	* A constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* A Constructor for CustomID.
	*/
	@:overload @:public public function new(ID : String, rawOffset : Int) : Void;
	
	/**
	* Returns the difference in milliseconds between local time and UTC
	* of given time, taking into account both the raw offset and the
	* effect of daylight savings.
	*
	* @param date the milliseconds in UTC
	* @return the milliseconds to add to UTC to get local wall time
	*/
	@:overload @:public override public function getOffset(date : haxe.Int64) : Int;
	
	@:overload @:public public function getOffsets(utc : haxe.Int64, offsets : java.NativeArray<Int>) : Int;
	
	@:overload @:public public function getOffsetsByStandard(standard : haxe.Int64, offsets : java.NativeArray<Int>) : Int;
	
	@:overload @:public public function getOffsetsByWall(wall : haxe.Int64, offsets : java.NativeArray<Int>) : Int;
	
	/**
	* Returns the difference in milliseconds between local time and
	* UTC, taking into account both the raw offset and the effect of
	* daylight savings, for the specified date and time.  This method
	* assumes that the start and end month are distinct.  This method
	* assumes a Gregorian calendar for calculations.
	* <p>
	* <em>Note: In general, clients should use
	* {@link Calendar#ZONE_OFFSET Calendar.get(ZONE_OFFSET)} +
	* {@link Calendar#DST_OFFSET Calendar.get(DST_OFFSET)}
	* instead of calling this method.</em>
	*
	* @param era       The era of the given date. The value must be either
	*                  GregorianCalendar.AD or GregorianCalendar.BC.
	* @param year      The year in the given date.
	* @param month     The month in the given date. Month is 0-based. e.g.,
	*                  0 for January.
	* @param day       The day-in-month of the given date.
	* @param dayOfWeek The day-of-week of the given date.
	* @param millis    The milliseconds in day in <em>standard</em> local time.
	* @return The milliseconds to add to UTC to get local time.
	*/
	@:overload @:public override public function getOffset(era : Int, year : Int, month : Int, day : Int, dayOfWeek : Int, milliseconds : Int) : Int;
	
	/**
	* Sets the base time zone offset from GMT. This operation
	* modifies all the transitions of this ZoneInfo object, including
	* historical ones, if applicable.
	*
	* @param offsetMillis the base time zone offset to GMT.
	* @see getRawOffset
	*/
	@:overload @:public @:synchronized override public function setRawOffset(offsetMillis : Int) : Void;
	
	/**
	* Returns the GMT offset of the current date. This GMT offset
	* value is not modified during Daylight Saving Time.
	*
	* @return the GMT offset value in milliseconds to add to UTC time
	* to get local standard time
	*/
	@:overload @:public override public function getRawOffset() : Int;
	
	@:overload @:public public function isDirty() : Bool;
	
	/**
	* Queries if this time zone uses Daylight Saving Time in the last known rule.
	*/
	@:overload @:public override public function useDaylightTime() : Bool;
	
	@:overload @:public override public function observesDaylightTime() : Bool;
	
	/**
	* Queries if the specified date is in Daylight Saving Time.
	*/
	@:overload @:public override public function inDaylightTime(date : java.util.Date) : Bool;
	
	/**
	* Returns the amount of time in milliseconds that the clock is advanced
	* during daylight saving time is in effect in its last daylight saving time rule.
	*
	* @return the number of milliseconds the time is advanced with respect to
	* standard time when daylight saving time is in effect.
	*/
	@:overload @:public override public function getDSTSavings() : Int;
	
	/**
	* Returns a string representation of this time zone.
	* @return the string
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Gets all available IDs supported in the Java run-time.
	*
	* @return an array of time zone IDs.
	*/
	@:overload @:public @:static public static function getAvailableIDs() : java.NativeArray<String>;
	
	/**
	* Gets all available IDs that have the same value as the
	* specified raw GMT offset.
	*
	* @param rawOffset the GMT offset in milliseconds. This
	* value should not include any daylight saving time.
	*
	* @return an array of time zone IDs.
	*/
	@:overload @:public @:static public static function getAvailableIDs(rawOffset : Int) : java.NativeArray<String>;
	
	/**
	* Gets the ZoneInfo for the given ID.
	*
	* @param ID the ID for a ZoneInfo. See TimeZone for detail.
	*
	* @return the specified ZoneInfo object, or null if there is no
	* time zone of the ID.
	*/
	@:overload @:public @:static public static function getTimeZone(ID : String) : java.util.TimeZone;
	
	/**
	* Returns a SimpleTimeZone object that represents the last
	* known daylight saving time rules.
	*
	* @return a SimpleTimeZone object or null if this time zone
	* doesn't observe DST.
	*/
	@:overload @:public public function getLastRuleInstance() : java.util.SimpleTimeZone;
	
	/**
	* Returns a copy of this <code>ZoneInfo</code>.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Returns a hash code value calculated from the GMT offset and
	* transitions.
	* @return a hash code of this time zone
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares the equity of two ZoneInfo objects.
	*
	* @param obj the object to be compared with
	* @return true if given object is same as this ZoneInfo object,
	* false otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns true if this zone has the same raw GMT offset value and
	* transition table as another zone info. If the specified
	* TimeZone object is not a ZoneInfo instance, this method returns
	* true if the specified TimeZone object has the same raw GMT
	* offset value with no daylight saving time.
	*
	* @param other the ZoneInfo object to be compared with
	* @return true if the given <code>TimeZone</code> has the same
	* GMT offset and transition information; false, otherwise.
	*/
	@:overload @:public override public function hasSameRules(other : java.util.TimeZone) : Bool;
	
	/**
	* Returns a Map from alias time zone IDs to their standard
	* time zone IDs.
	*
	* @return the Map that holds the mappings from alias time zone IDs
	*    to their standard time zone IDs, or null if
	*    <code>ZoneInfoMappings</code> file is not available.
	*/
	@:overload @:public @:synchronized @:static public static function getAliasTable() : java.util.Map<String, String>;
	
	
}
