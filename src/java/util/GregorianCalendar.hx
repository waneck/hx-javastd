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
* (C) Copyright Taligent, Inc. 1996-1998 - All Rights Reserved
* (C) Copyright IBM Corp. 1996-1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class GregorianCalendar extends java.util.Calendar
{
	/**
	* Value of the <code>ERA</code> field indicating
	* the period before the common era (before Christ), also known as BCE.
	* The sequence of years at the transition from <code>BC</code> to <code>AD</code> is
	* ..., 2 BC, 1 BC, 1 AD, 2 AD,...
	*
	* @see #ERA
	*/
	@:public @:static @:final public static var BC(default, null) : Int;
	
	/**
	* Value of the <code>ERA</code> field indicating
	* the common era (Anno Domini), also known as CE.
	* The sequence of years at the transition from <code>BC</code> to <code>AD</code> is
	* ..., 2 BC, 1 BC, 1 AD, 2 AD,...
	*
	* @see #ERA
	*/
	@:public @:static @:final public static var AD(default, null) : Int;
	
	/**
	* Constructs a default <code>GregorianCalendar</code> using the current time
	* in the default time zone with the default locale.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a <code>GregorianCalendar</code> based on the current time
	* in the given time zone with the default locale.
	*
	* @param zone the given time zone.
	*/
	@:overload @:public public function new(zone : java.util.TimeZone) : Void;
	
	/**
	* Constructs a <code>GregorianCalendar</code> based on the current time
	* in the default time zone with the given locale.
	*
	* @param aLocale the given locale.
	*/
	@:overload @:public public function new(aLocale : java.util.Locale) : Void;
	
	/**
	* Constructs a <code>GregorianCalendar</code> based on the current time
	* in the given time zone with the given locale.
	*
	* @param zone the given time zone.
	* @param aLocale the given locale.
	*/
	@:overload @:public public function new(zone : java.util.TimeZone, aLocale : java.util.Locale) : Void;
	
	/**
	* Constructs a <code>GregorianCalendar</code> with the given date set
	* in the default time zone with the default locale.
	*
	* @param year the value used to set the <code>YEAR</code> calendar field in the calendar.
	* @param month the value used to set the <code>MONTH</code> calendar field in the calendar.
	* Month value is 0-based. e.g., 0 for January.
	* @param dayOfMonth the value used to set the <code>DAY_OF_MONTH</code> calendar field in the calendar.
	*/
	@:overload @:public public function new(year : Int, month : Int, dayOfMonth : Int) : Void;
	
	/**
	* Constructs a <code>GregorianCalendar</code> with the given date
	* and time set for the default time zone with the default locale.
	*
	* @param year the value used to set the <code>YEAR</code> calendar field in the calendar.
	* @param month the value used to set the <code>MONTH</code> calendar field in the calendar.
	* Month value is 0-based. e.g., 0 for January.
	* @param dayOfMonth the value used to set the <code>DAY_OF_MONTH</code> calendar field in the calendar.
	* @param hourOfDay the value used to set the <code>HOUR_OF_DAY</code> calendar field
	* in the calendar.
	* @param minute the value used to set the <code>MINUTE</code> calendar field
	* in the calendar.
	*/
	@:overload @:public public function new(year : Int, month : Int, dayOfMonth : Int, hourOfDay : Int, minute : Int) : Void;
	
	/**
	* Constructs a GregorianCalendar with the given date
	* and time set for the default time zone with the default locale.
	*
	* @param year the value used to set the <code>YEAR</code> calendar field in the calendar.
	* @param month the value used to set the <code>MONTH</code> calendar field in the calendar.
	* Month value is 0-based. e.g., 0 for January.
	* @param dayOfMonth the value used to set the <code>DAY_OF_MONTH</code> calendar field in the calendar.
	* @param hourOfDay the value used to set the <code>HOUR_OF_DAY</code> calendar field
	* in the calendar.
	* @param minute the value used to set the <code>MINUTE</code> calendar field
	* in the calendar.
	* @param second the value used to set the <code>SECOND</code> calendar field
	* in the calendar.
	*/
	@:overload @:public public function new(year : Int, month : Int, dayOfMonth : Int, hourOfDay : Int, minute : Int, second : Int) : Void;
	
	/**
	* Sets the <code>GregorianCalendar</code> change date. This is the point when the switch
	* from Julian dates to Gregorian dates occurred. Default is October 15,
	* 1582 (Gregorian). Previous to this, dates will be in the Julian calendar.
	* <p>
	* To obtain a pure Julian calendar, set the change date to
	* <code>Date(Long.MAX_VALUE)</code>.  To obtain a pure Gregorian calendar,
	* set the change date to <code>Date(Long.MIN_VALUE)</code>.
	*
	* @param date the given Gregorian cutover date.
	*/
	@:overload @:public public function setGregorianChange(date : java.util.Date) : Void;
	
	/**
	* Gets the Gregorian Calendar change date.  This is the point when the
	* switch from Julian dates to Gregorian dates occurred. Default is
	* October 15, 1582 (Gregorian). Previous to this, dates will be in the Julian
	* calendar.
	*
	* @return the Gregorian cutover date for this <code>GregorianCalendar</code> object.
	*/
	@:overload @:public @:final public function getGregorianChange() : java.util.Date;
	
	/**
	* Determines if the given year is a leap year. Returns <code>true</code> if
	* the given year is a leap year. To specify BC year numbers,
	* <code>1 - year number</code> must be given. For example, year BC 4 is
	* specified as -3.
	*
	* @param year the given year.
	* @return <code>true</code> if the given year is a leap year; <code>false</code> otherwise.
	*/
	@:overload @:public public function isLeapYear(year : Int) : Bool;
	
	/**
	* Compares this <code>GregorianCalendar</code> to the specified
	* <code>Object</code>. The result is <code>true</code> if and
	* only if the argument is a <code>GregorianCalendar</code> object
	* that represents the same time value (millisecond offset from
	* the <a href="Calendar.html#Epoch">Epoch</a>) under the same
	* <code>Calendar</code> parameters and Gregorian change date as
	* this object.
	*
	* @param obj the object to compare with.
	* @return <code>true</code> if this object is equal to <code>obj</code>;
	* <code>false</code> otherwise.
	* @see Calendar#compareTo(Calendar)
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Generates the hash code for this <code>GregorianCalendar</code> object.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Adds the specified (signed) amount of time to the given calendar field,
	* based on the calendar's rules.
	*
	* <p><em>Add rule 1</em>. The value of <code>field</code>
	* after the call minus the value of <code>field</code> before the
	* call is <code>amount</code>, modulo any overflow that has occurred in
	* <code>field</code>. Overflow occurs when a field value exceeds its
	* range and, as a result, the next larger field is incremented or
	* decremented and the field value is adjusted back into its range.</p>
	*
	* <p><em>Add rule 2</em>. If a smaller field is expected to be
	* invariant, but it is impossible for it to be equal to its
	* prior value because of changes in its minimum or maximum after
	* <code>field</code> is changed, then its value is adjusted to be as close
	* as possible to its expected value. A smaller field represents a
	* smaller unit of time. <code>HOUR</code> is a smaller field than
	* <code>DAY_OF_MONTH</code>. No adjustment is made to smaller fields
	* that are not expected to be invariant. The calendar system
	* determines what fields are expected to be invariant.</p>
	*
	* @param field the calendar field.
	* @param amount the amount of date or time to be added to the field.
	* @exception IllegalArgumentException if <code>field</code> is
	* <code>ZONE_OFFSET</code>, <code>DST_OFFSET</code>, or unknown,
	* or if any calendar fields have out-of-range values in
	* non-lenient mode.
	*/
	@:overload @:public override public function add(field : Int, amount : Int) : Void;
	
	/**
	* Adds or subtracts (up/down) a single unit of time on the given time
	* field without changing larger fields.
	* <p>
	* <em>Example</em>: Consider a <code>GregorianCalendar</code>
	* originally set to December 31, 1999. Calling {@link #roll(int,boolean) roll(Calendar.MONTH, true)}
	* sets the calendar to January 31, 1999.  The <code>YEAR</code> field is unchanged
	* because it is a larger field than <code>MONTH</code>.</p>
	*
	* @param up indicates if the value of the specified calendar field is to be
	* rolled up or rolled down. Use <code>true</code> if rolling up, <code>false</code> otherwise.
	* @exception IllegalArgumentException if <code>field</code> is
	* <code>ZONE_OFFSET</code>, <code>DST_OFFSET</code>, or unknown,
	* or if any calendar fields have out-of-range values in
	* non-lenient mode.
	* @see #add(int,int)
	* @see #set(int,int)
	*/
	@:overload @:public override public function roll(field : Int, up : Bool) : Void;
	
	/**
	* Adds a signed amount to the specified calendar field without changing larger fields.
	* A negative roll amount means to subtract from field without changing
	* larger fields. If the specified amount is 0, this method performs nothing.
	*
	* <p>This method calls {@link #complete()} before adding the
	* amount so that all the calendar fields are normalized. If there
	* is any calendar field having an out-of-range value in non-lenient mode, then an
	* <code>IllegalArgumentException</code> is thrown.
	*
	* <p>
	* <em>Example</em>: Consider a <code>GregorianCalendar</code>
	* originally set to August 31, 1999. Calling <code>roll(Calendar.MONTH,
	* 8)</code> sets the calendar to April 30, <strong>1999</strong>. Using a
	* <code>GregorianCalendar</code>, the <code>DAY_OF_MONTH</code> field cannot
	* be 31 in the month April. <code>DAY_OF_MONTH</code> is set to the closest possible
	* value, 30. The <code>YEAR</code> field maintains the value of 1999 because it
	* is a larger field than <code>MONTH</code>.
	* <p>
	* <em>Example</em>: Consider a <code>GregorianCalendar</code>
	* originally set to Sunday June 6, 1999. Calling
	* <code>roll(Calendar.WEEK_OF_MONTH, -1)</code> sets the calendar to
	* Tuesday June 1, 1999, whereas calling
	* <code>add(Calendar.WEEK_OF_MONTH, -1)</code> sets the calendar to
	* Sunday May 30, 1999. This is because the roll rule imposes an
	* additional constraint: The <code>MONTH</code> must not change when the
	* <code>WEEK_OF_MONTH</code> is rolled. Taken together with add rule 1,
	* the resultant date must be between Tuesday June 1 and Saturday June
	* 5. According to add rule 2, the <code>DAY_OF_WEEK</code>, an invariant
	* when changing the <code>WEEK_OF_MONTH</code>, is set to Tuesday, the
	* closest possible value to Sunday (where Sunday is the first day of the
	* week).</p>
	*
	* @param field the calendar field.
	* @param amount the signed amount to add to <code>field</code>.
	* @exception IllegalArgumentException if <code>field</code> is
	* <code>ZONE_OFFSET</code>, <code>DST_OFFSET</code>, or unknown,
	* or if any calendar fields have out-of-range values in
	* non-lenient mode.
	* @see #roll(int,boolean)
	* @see #add(int,int)
	* @see #set(int,int)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function roll(field : Int, amount : Int) : Void;
	
	/**
	* Returns the minimum value for the given calendar field of this
	* <code>GregorianCalendar</code> instance. The minimum value is
	* defined as the smallest value returned by the {@link
	* Calendar#get(int) get} method for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* {@link #getGregorianChange() getGregorianChange} and
	* {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field.
	* @return the minimum value for the given calendar field.
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:public override public function getMinimum(field : Int) : Int;
	
	/**
	* Returns the maximum value for the given calendar field of this
	* <code>GregorianCalendar</code> instance. The maximum value is
	* defined as the largest value returned by the {@link
	* Calendar#get(int) get} method for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* {@link #getGregorianChange() getGregorianChange} and
	* {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field.
	* @return the maximum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:public override public function getMaximum(field : Int) : Int;
	
	/**
	* Returns the highest minimum value for the given calendar field
	* of this <code>GregorianCalendar</code> instance. The highest
	* minimum value is defined as the largest value returned by
	* {@link #getActualMinimum(int)} for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* {@link #getGregorianChange() getGregorianChange} and
	* {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field.
	* @return the highest minimum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:public override public function getGreatestMinimum(field : Int) : Int;
	
	/**
	* Returns the lowest maximum value for the given calendar field
	* of this <code>GregorianCalendar</code> instance. The lowest
	* maximum value is defined as the smallest value returned by
	* {@link #getActualMaximum(int)} for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* {@link #getGregorianChange() getGregorianChange} and
	* {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field
	* @return the lowest maximum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload @:public override public function getLeastMaximum(field : Int) : Int;
	
	/**
	* Returns the minimum value that this calendar field could have,
	* taking into consideration the given time value and the current
	* values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* {@link #getGregorianChange() getGregorianChange} and
	* {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* <p>For example, if the Gregorian change date is January 10,
	* 1970 and the date of this <code>GregorianCalendar</code> is
	* January 20, 1970, the actual minimum value of the
	* <code>DAY_OF_MONTH</code> field is 10 because the previous date
	* of January 10, 1970 is December 27, 1996 (in the Julian
	* calendar). Therefore, December 28, 1969 to January 9, 1970
	* don't exist.
	*
	* @param field the calendar field
	* @return the minimum of the given field for the time value of
	* this <code>GregorianCalendar</code>
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMaximum(int)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getActualMinimum(field : Int) : Int;
	
	/**
	* Returns the maximum value that this calendar field could have,
	* taking into consideration the given time value and the current
	* values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* {@link #getGregorianChange() getGregorianChange} and
	* {@link Calendar#getTimeZone() getTimeZone} methods.
	* For example, if the date of this instance is February 1, 2004,
	* the actual maximum value of the <code>DAY_OF_MONTH</code> field
	* is 29 because 2004 is a leap year, and if the date of this
	* instance is February 1, 2005, it's 28.
	*
	* <p>This method calculates the maximum value of {@link
	* Calendar#WEEK_OF_YEAR WEEK_OF_YEAR} based on the {@link
	* Calendar#YEAR YEAR} (calendar year) value, not the <a
	* href="#week_year">week year</a>. Call {@link
	* #getWeeksInWeekYear()} to get the maximum value of {@code
	* WEEK_OF_YEAR} in the week year of this {@code GregorianCalendar}.
	*
	* @param field the calendar field
	* @return the maximum of the given field for the time value of
	* this <code>GregorianCalendar</code>
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @since 1.2
	*/
	@:require(java2) @:overload @:public override public function getActualMaximum(field : Int) : Int;
	
	@:overload @:public override public function clone() : Dynamic;
	
	@:overload @:public override public function getTimeZone() : java.util.TimeZone;
	
	@:overload @:public override public function setTimeZone(zone : java.util.TimeZone) : Void;
	
	/**
	* Returns {@code true} indicating this {@code GregorianCalendar}
	* supports week dates.
	*
	* @return {@code true} (always)
	* @see #getWeekYear()
	* @see #setWeekDate(int,int,int)
	* @see #getWeeksInWeekYear()
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:final override public function isWeekDateSupported() : Bool;
	
	/**
	* Returns the <a href="#week_year">week year</a> represented by this
	* {@code GregorianCalendar}. The dates in the weeks between 1 and the
	* maximum week number of the week year have the same week year value
	* that may be one year before or after the {@link Calendar#YEAR YEAR}
	* (calendar year) value.
	*
	* <p>This method calls {@link Calendar#complete()} before
	* calculating the week year.
	*
	* @return the week year represented by this {@code GregorianCalendar}.
	*         If the {@link Calendar#ERA ERA} value is {@link #BC}, the year is
	*         represented by 0 or a negative number: BC 1 is 0, BC 2
	*         is -1, BC 3 is -2, and so on.
	* @throws IllegalArgumentException
	*         if any of the calendar fields is invalid in non-lenient mode.
	* @see #isWeekDateSupported()
	* @see #getWeeksInWeekYear()
	* @see Calendar#getFirstDayOfWeek()
	* @see Calendar#getMinimalDaysInFirstWeek()
	* @since 1.7
	*/
	@:require(java7) @:overload @:public override public function getWeekYear() : Int;
	
	/**
	* Sets this {@code GregorianCalendar} to the date given by the
	* date specifiers - <a href="#week_year">{@code weekYear}</a>,
	* {@code weekOfYear}, and {@code dayOfWeek}. {@code weekOfYear}
	* follows the <a href="#week_and_year">{@code WEEK_OF_YEAR}
	* numbering</a>.  The {@code dayOfWeek} value must be one of the
	* {@link Calendar#DAY_OF_WEEK DAY_OF_WEEK} values: {@link
	* Calendar#SUNDAY SUNDAY} to {@link Calendar#SATURDAY SATURDAY}.
	*
	* <p>Note that the numeric day-of-week representation differs from
	* the ISO 8601 standard, and that the {@code weekOfYear}
	* numbering is compatible with the standard when {@code
	* getFirstDayOfWeek()} is {@code MONDAY} and {@code
	* getMinimalDaysInFirstWeek()} is 4.
	*
	* <p>Unlike the {@code set} method, all of the calendar fields
	* and the instant of time value are calculated upon return.
	*
	* <p>If {@code weekOfYear} is out of the valid week-of-year
	* range in {@code weekYear}, the {@code weekYear}
	* and {@code weekOfYear} values are adjusted in lenient
	* mode, or an {@code IllegalArgumentException} is thrown in
	* non-lenient mode.
	*
	* @param weekYear    the week year
	* @param weekOfYear  the week number based on {@code weekYear}
	* @param dayOfWeek   the day of week value: one of the constants
	*                    for the {@link #DAY_OF_WEEK DAY_OF_WEEK} field:
	*                    {@link Calendar#SUNDAY SUNDAY}, ...,
	*                    {@link Calendar#SATURDAY SATURDAY}.
	* @exception IllegalArgumentException
	*            if any of the given date specifiers is invalid,
	*            or if any of the calendar fields are inconsistent
	*            with the given date specifiers in non-lenient mode
	* @see GregorianCalendar#isWeekDateSupported()
	* @see Calendar#getFirstDayOfWeek()
	* @see Calendar#getMinimalDaysInFirstWeek()
	* @since 1.7
	*/
	@:require(java7) @:overload @:public override public function setWeekDate(weekYear : Int, weekOfYear : Int, dayOfWeek : Int) : Void;
	
	/**
	* Returns the number of weeks in the <a href="#week_year">week year</a>
	* represented by this {@code GregorianCalendar}.
	*
	* <p>For example, if this {@code GregorianCalendar}'s date is
	* December 31, 2008 with <a href="#iso8601_compatible_setting">the ISO
	* 8601 compatible setting</a>, this method will return 53 for the
	* period: December 29, 2008 to January 3, 2010 while {@link
	* #getActualMaximum(int) getActualMaximum(WEEK_OF_YEAR)} will return
	* 52 for the period: December 31, 2007 to December 28, 2008.
	*
	* @return the number of weeks in the week year.
	* @see Calendar#WEEK_OF_YEAR
	* @see #getWeekYear()
	* @see #getActualMaximum(int)
	* @since 1.7
	*/
	@:require(java7) @:overload @:public override public function getWeeksInWeekYear() : Int;
	
	/**
	* Converts the time value (millisecond offset from the <a
	* href="Calendar.html#Epoch">Epoch</a>) to calendar field values.
	* The time is <em>not</em>
	* recomputed first; to recompute the time, then the fields, call the
	* <code>complete</code> method.
	*
	* @see Calendar#complete
	*/
	@:overload @:protected override private function computeFields() : Void;
	
	/**
	* Converts calendar field values to the time value (millisecond
	* offset from the <a href="Calendar.html#Epoch">Epoch</a>).
	*
	* @exception IllegalArgumentException if any calendar fields are invalid.
	*/
	@:overload @:protected override private function computeTime() : Void;
	
	
}
