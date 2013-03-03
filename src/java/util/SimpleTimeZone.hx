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
* (C) Copyright Taligent, Inc. 1996 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class SimpleTimeZone extends java.util.TimeZone
{
	/**
	* Constructs a SimpleTimeZone with the given base time zone offset from GMT
	* and time zone ID with no daylight saving time schedule.
	*
	* @param rawOffset  The base time zone offset in milliseconds to GMT.
	* @param ID         The time zone name that is given to this instance.
	*/
	@:overload @:public public function new(rawOffset : Int, ID : String) : Void;
	
	/**
	* Constructs a SimpleTimeZone with the given base time zone offset from
	* GMT, time zone ID, and rules for starting and ending the daylight
	* time.
	* Both <code>startTime</code> and <code>endTime</code> are specified to be
	* represented in the wall clock time. The amount of daylight saving is
	* assumed to be 3600000 milliseconds (i.e., one hour). This constructor is
	* equivalent to:
	* <pre><code>
	*     SimpleTimeZone(rawOffset,
	*                    ID,
	*                    startMonth,
	*                    startDay,
	*                    startDayOfWeek,
	*                    startTime,
	*                    SimpleTimeZone.{@link #WALL_TIME},
	*                    endMonth,
	*                    endDay,
	*                    endDayOfWeek,
	*                    endTime,
	*                    SimpleTimeZone.{@link #WALL_TIME},
	*                    3600000)
	* </code></pre>
	*
	* @param rawOffset       The given base time zone offset from GMT.
	* @param ID              The time zone ID which is given to this object.
	* @param startMonth      The daylight saving time starting month. Month is
	*                        a {@link Calendar#MONTH MONTH} field value (0-based. e.g., 0
	*                        for January).
	* @param startDay        The day of the month on which the daylight saving time starts.
	*                        See the class description for the special cases of this parameter.
	* @param startDayOfWeek  The daylight saving time starting day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param startTime       The daylight saving time starting time in local wall clock
	*                        time (in milliseconds within the day), which is local
	*                        standard time in this case.
	* @param endMonth        The daylight saving time ending month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 9 for October).
	* @param endDay          The day of the month on which the daylight saving time ends.
	*                        See the class description for the special cases of this parameter.
	* @param endDayOfWeek    The daylight saving time ending day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param endTime         The daylight saving ending time in local wall clock time,
	*                        (in milliseconds within the day) which is local daylight
	*                        time in this case.
	* @exception IllegalArgumentException if the month, day, dayOfWeek, or time
	* parameters are out of range for the start or end rule
	*/
	@:overload @:public public function new(rawOffset : Int, ID : String, startMonth : Int, startDay : Int, startDayOfWeek : Int, startTime : Int, endMonth : Int, endDay : Int, endDayOfWeek : Int, endTime : Int) : Void;
	
	/**
	* Constructs a SimpleTimeZone with the given base time zone offset from
	* GMT, time zone ID, and rules for starting and ending the daylight
	* time.
	* Both <code>startTime</code> and <code>endTime</code> are assumed to be
	* represented in the wall clock time. This constructor is equivalent to:
	* <pre><code>
	*     SimpleTimeZone(rawOffset,
	*                    ID,
	*                    startMonth,
	*                    startDay,
	*                    startDayOfWeek,
	*                    startTime,
	*                    SimpleTimeZone.{@link #WALL_TIME},
	*                    endMonth,
	*                    endDay,
	*                    endDayOfWeek,
	*                    endTime,
	*                    SimpleTimeZone.{@link #WALL_TIME},
	*                    dstSavings)
	* </code></pre>
	*
	* @param rawOffset       The given base time zone offset from GMT.
	* @param ID              The time zone ID which is given to this object.
	* @param startMonth      The daylight saving time starting month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 0 for January).
	* @param startDay        The day of the month on which the daylight saving time starts.
	*                        See the class description for the special cases of this parameter.
	* @param startDayOfWeek  The daylight saving time starting day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param startTime       The daylight saving time starting time in local wall clock
	*                        time, which is local standard time in this case.
	* @param endMonth        The daylight saving time ending month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 9 for October).
	* @param endDay          The day of the month on which the daylight saving time ends.
	*                        See the class description for the special cases of this parameter.
	* @param endDayOfWeek    The daylight saving time ending day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param endTime         The daylight saving ending time in local wall clock time,
	*                        which is local daylight time in this case.
	* @param dstSavings      The amount of time in milliseconds saved during
	*                        daylight saving time.
	* @exception IllegalArgumentException if the month, day, dayOfWeek, or time
	* parameters are out of range for the start or end rule
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(rawOffset : Int, ID : String, startMonth : Int, startDay : Int, startDayOfWeek : Int, startTime : Int, endMonth : Int, endDay : Int, endDayOfWeek : Int, endTime : Int, dstSavings : Int) : Void;
	
	/**
	* Constructs a SimpleTimeZone with the given base time zone offset from
	* GMT, time zone ID, and rules for starting and ending the daylight
	* time.
	* This constructor takes the full set of the start and end rules
	* parameters, including modes of <code>startTime</code> and
	* <code>endTime</code>. The mode specifies either {@link #WALL_TIME wall
	* time} or {@link #STANDARD_TIME standard time} or {@link #UTC_TIME UTC
	* time}.
	*
	* @param rawOffset       The given base time zone offset from GMT.
	* @param ID              The time zone ID which is given to this object.
	* @param startMonth      The daylight saving time starting month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 0 for January).
	* @param startDay        The day of the month on which the daylight saving time starts.
	*                        See the class description for the special cases of this parameter.
	* @param startDayOfWeek  The daylight saving time starting day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param startTime       The daylight saving time starting time in the time mode
	*                        specified by <code>startTimeMode</code>.
	* @param startTimeMode   The mode of the start time specified by startTime.
	* @param endMonth        The daylight saving time ending month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 9 for October).
	* @param endDay          The day of the month on which the daylight saving time ends.
	*                        See the class description for the special cases of this parameter.
	* @param endDayOfWeek    The daylight saving time ending day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param endTime         The daylight saving ending time in time time mode
	*                        specified by <code>endTimeMode</code>.
	* @param endTimeMode     The mode of the end time specified by endTime
	* @param dstSavings      The amount of time in milliseconds saved during
	*                        daylight saving time.
	*
	* @exception IllegalArgumentException if the month, day, dayOfWeek, time more, or
	* time parameters are out of range for the start or end rule, or if a time mode
	* value is invalid.
	*
	* @see #WALL_TIME
	* @see #STANDARD_TIME
	* @see #UTC_TIME
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(rawOffset : Int, ID : String, startMonth : Int, startDay : Int, startDayOfWeek : Int, startTime : Int, startTimeMode : Int, endMonth : Int, endDay : Int, endDayOfWeek : Int, endTime : Int, endTimeMode : Int, dstSavings : Int) : Void;
	
	/**
	* Sets the daylight saving time starting year.
	*
	* @param year  The daylight saving starting year.
	*/
	@:overload @:public public function setStartYear(year : Int) : Void;
	
	/**
	* Sets the daylight saving time start rule. For example, if daylight saving
	* time starts on the first Sunday in April at 2 am in local wall clock
	* time, you can set the start rule by calling:
	* <pre><code>setStartRule(Calendar.APRIL, 1, Calendar.SUNDAY, 2*60*60*1000);</code></pre>
	*
	* @param startMonth      The daylight saving time starting month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 0 for January).
	* @param startDay        The day of the month on which the daylight saving time starts.
	*                        See the class description for the special cases of this parameter.
	* @param startDayOfWeek  The daylight saving time starting day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param startTime       The daylight saving time starting time in local wall clock
	*                        time, which is local standard time in this case.
	* @exception IllegalArgumentException if the <code>startMonth</code>, <code>startDay</code>,
	* <code>startDayOfWeek</code>, or <code>startTime</code> parameters are out of range
	*/
	@:overload @:public public function setStartRule(startMonth : Int, startDay : Int, startDayOfWeek : Int, startTime : Int) : Void;
	
	/**
	* Sets the daylight saving time start rule to a fixed date within a month.
	* This method is equivalent to:
	* <pre><code>setStartRule(startMonth, startDay, 0, startTime)</code></pre>
	*
	* @param startMonth      The daylight saving time starting month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 0 for January).
	* @param startDay        The day of the month on which the daylight saving time starts.
	* @param startTime       The daylight saving time starting time in local wall clock
	*                        time, which is local standard time in this case.
	*                        See the class description for the special cases of this parameter.
	* @exception IllegalArgumentException if the <code>startMonth</code>,
	* <code>startDayOfMonth</code>, or <code>startTime</code> parameters are out of range
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setStartRule(startMonth : Int, startDay : Int, startTime : Int) : Void;
	
	/**
	* Sets the daylight saving time start rule to a weekday before or after the given date within
	* a month, e.g., the first Monday on or after the 8th.
	*
	* @param startMonth      The daylight saving time starting month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 0 for January).
	* @param startDay        The day of the month on which the daylight saving time starts.
	* @param startDayOfWeek  The daylight saving time starting day-of-week.
	* @param startTime       The daylight saving time starting time in local wall clock
	*                        time, which is local standard time in this case.
	* @param after           If true, this rule selects the first <code>dayOfWeek</code> on or
	*                        <em>after</em> <code>dayOfMonth</code>.  If false, this rule
	*                        selects the last <code>dayOfWeek</code> on or <em>before</em>
	*                        <code>dayOfMonth</code>.
	* @exception IllegalArgumentException if the <code>startMonth</code>, <code>startDay</code>,
	* <code>startDayOfWeek</code>, or <code>startTime</code> parameters are out of range
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setStartRule(startMonth : Int, startDay : Int, startDayOfWeek : Int, startTime : Int, after : Bool) : Void;
	
	/**
	* Sets the daylight saving time end rule. For example, if daylight saving time
	* ends on the last Sunday in October at 2 am in wall clock time,
	* you can set the end rule by calling:
	* <code>setEndRule(Calendar.OCTOBER, -1, Calendar.SUNDAY, 2*60*60*1000);</code>
	*
	* @param endMonth        The daylight saving time ending month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 9 for October).
	* @param endDay          The day of the month on which the daylight saving time ends.
	*                        See the class description for the special cases of this parameter.
	* @param endDayOfWeek    The daylight saving time ending day-of-week.
	*                        See the class description for the special cases of this parameter.
	* @param endTime         The daylight saving ending time in local wall clock time,
	*                        (in milliseconds within the day) which is local daylight
	*                        time in this case.
	* @exception IllegalArgumentException if the <code>endMonth</code>, <code>endDay</code>,
	* <code>endDayOfWeek</code>, or <code>endTime</code> parameters are out of range
	*/
	@:overload @:public public function setEndRule(endMonth : Int, endDay : Int, endDayOfWeek : Int, endTime : Int) : Void;
	
	/**
	* Sets the daylight saving time end rule to a fixed date within a month.
	* This method is equivalent to:
	* <pre><code>setEndRule(endMonth, endDay, 0, endTime)</code></pre>
	*
	* @param endMonth        The daylight saving time ending month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 9 for October).
	* @param endDay          The day of the month on which the daylight saving time ends.
	* @param endTime         The daylight saving ending time in local wall clock time,
	*                        (in milliseconds within the day) which is local daylight
	*                        time in this case.
	* @exception IllegalArgumentException the <code>endMonth</code>, <code>endDay</code>,
	* or <code>endTime</code> parameters are out of range
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setEndRule(endMonth : Int, endDay : Int, endTime : Int) : Void;
	
	/**
	* Sets the daylight saving time end rule to a weekday before or after the given date within
	* a month, e.g., the first Monday on or after the 8th.
	*
	* @param endMonth        The daylight saving time ending month. Month is
	*                        a {@link Calendar#MONTH MONTH} field
	*                        value (0-based. e.g., 9 for October).
	* @param endDay          The day of the month on which the daylight saving time ends.
	* @param endDayOfWeek    The daylight saving time ending day-of-week.
	* @param endTime         The daylight saving ending time in local wall clock time,
	*                        (in milliseconds within the day) which is local daylight
	*                        time in this case.
	* @param after           If true, this rule selects the first <code>endDayOfWeek</code> on
	*                        or <em>after</em> <code>endDay</code>.  If false, this rule
	*                        selects the last <code>endDayOfWeek</code> on or before
	*                        <code>endDay</code> of the month.
	* @exception IllegalArgumentException the <code>endMonth</code>, <code>endDay</code>,
	* <code>endDayOfWeek</code>, or <code>endTime</code> parameters are out of range
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setEndRule(endMonth : Int, endDay : Int, endDayOfWeek : Int, endTime : Int, after : Bool) : Void;
	
	/**
	* Returns the offset of this time zone from UTC at the given
	* time. If daylight saving time is in effect at the given time,
	* the offset value is adjusted with the amount of daylight
	* saving.
	*
	* @param date the time at which the time zone offset is found
	* @return the amount of time in milliseconds to add to UTC to get
	* local time.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function getOffset(date : haxe.Int64) : Int;
	
	/**
	* Returns the difference in milliseconds between local time and
	* UTC, taking into account both the raw offset and the effect of
	* daylight saving, for the specified date and time.  This method
	* assumes that the start and end month are distinct.  It also
	* uses a default {@link GregorianCalendar} object as its
	* underlying calendar, such as for determining leap years.  Do
	* not use the result of this method with a calendar other than a
	* default <code>GregorianCalendar</code>.
	*
	* <p><em>Note:  In general, clients should use
	* <code>Calendar.get(ZONE_OFFSET) + Calendar.get(DST_OFFSET)</code>
	* instead of calling this method.</em>
	*
	* @param era       The era of the given date.
	* @param year      The year in the given date.
	* @param month     The month in the given date. Month is 0-based. e.g.,
	*                  0 for January.
	* @param day       The day-in-month of the given date.
	* @param dayOfWeek The day-of-week of the given date.
	* @param millis    The milliseconds in day in <em>standard</em> local time.
	* @return          The milliseconds to add to UTC to get local time.
	* @exception       IllegalArgumentException the <code>era</code>,
	*                  <code>month</code>, <code>day</code>, <code>dayOfWeek</code>,
	*                  or <code>millis</code> parameters are out of range
	*/
	@:overload @:public override public function getOffset(era : Int, year : Int, month : Int, day : Int, dayOfWeek : Int, millis : Int) : Int;
	
	/**
	* Gets the GMT offset for this time zone.
	* @return the GMT offset value in milliseconds
	* @see #setRawOffset
	*/
	@:overload @:public override public function getRawOffset() : Int;
	
	/**
	* Sets the base time zone offset to GMT.
	* This is the offset to add to UTC to get local time.
	* @see #getRawOffset
	*/
	@:overload @:public override public function setRawOffset(offsetMillis : Int) : Void;
	
	/**
	* Sets the amount of time in milliseconds that the clock is advanced
	* during daylight saving time.
	* @param millisSavedDuringDST the number of milliseconds the time is
	* advanced with respect to standard time when the daylight saving time rules
	* are in effect. A positive number, typically one hour (3600000).
	* @see #getDSTSavings
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setDSTSavings(millisSavedDuringDST : Int) : Void;
	
	/**
	* Returns the amount of time in milliseconds that the clock is
	* advanced during daylight saving time.
	*
	* @return the number of milliseconds the time is advanced with
	* respect to standard time when the daylight saving rules are in
	* effect, or 0 (zero) if this time zone doesn't observe daylight
	* saving time.
	*
	* @see #setDSTSavings
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getDSTSavings() : Int;
	
	/**
	* Queries if this time zone uses daylight saving time.
	* @return true if this time zone uses daylight saving time;
	* false otherwise.
	*/
	@:overload @:public override public function useDaylightTime() : Bool;
	
	/**
	* Returns {@code true} if this {@code SimpleTimeZone} observes
	* Daylight Saving Time. This method is equivalent to {@link
	* #useDaylightTime()}.
	*
	* @return {@code true} if this {@code SimpleTimeZone} observes
	* Daylight Saving Time; {@code false} otherwise.
	* @since 1.7
	*/
	@:require(java7) @:overload @:public override public function observesDaylightTime() : Bool;
	
	/**
	* Queries if the given date is in daylight saving time.
	* @return true if daylight saving time is in effective at the
	* given date; false otherwise.
	*/
	@:overload @:public override public function inDaylightTime(date : java.util.Date) : Bool;
	
	/**
	* Returns a clone of this <code>SimpleTimeZone</code> instance.
	* @return a clone of this instance.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Generates the hash code for the SimpleDateFormat object.
	* @return the hash code for this object
	*/
	@:overload @:public @:synchronized public function hashCode() : Int;
	
	/**
	* Compares the equality of two <code>SimpleTimeZone</code> objects.
	*
	* @param obj  The <code>SimpleTimeZone</code> object to be compared with.
	* @return     True if the given <code>obj</code> is the same as this
	*             <code>SimpleTimeZone</code> object; false otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns <code>true</code> if this zone has the same rules and offset as another zone.
	* @param other the TimeZone object to be compared with
	* @return <code>true</code> if the given zone is a SimpleTimeZone and has the
	* same rules and offset as this one
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function hasSameRules(other : java.util.TimeZone) : Bool;
	
	/**
	* Returns a string representation of this time zone.
	* @return a string representation of this time zone.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Constant for a mode of start or end time specified as wall clock
	* time.  Wall clock time is standard time for the onset rule, and
	* daylight time for the end rule.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var WALL_TIME(default, null) : Int;
	
	/**
	* Constant for a mode of start or end time specified as standard time.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var STANDARD_TIME(default, null) : Int;
	
	/**
	* Constant for a mode of start or end time specified as UTC. European
	* Union rules are specified as UTC time, for example.
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var UTC_TIME(default, null) : Int;
	
	
}
