package java.util;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class JapaneseImperialCalendar extends java.util.Calendar
{
	/**
	* The ERA constant designating the era before Meiji.
	*/
	public static var BEFORE_MEIJI(default, null) : Int;
	
	/**
	* The ERA constant designating the Meiji era.
	*/
	public static var MEIJI(default, null) : Int;
	
	/**
	* The ERA constant designating the Taisho era.
	*/
	public static var TAISHO(default, null) : Int;
	
	/**
	* The ERA constant designating the Showa era.
	*/
	public static var SHOWA(default, null) : Int;
	
	/**
	* The ERA constant designating the Heisei era.
	*/
	public static var HEISEI(default, null) : Int;
	
	/**
	* Constructs a <code>JapaneseImperialCalendar</code> based on the current time
	* in the given time zone with the given locale.
	*
	* @param zone the given time zone.
	* @param aLocale the given locale.
	*/
	@:overload public function new(zone : java.util.TimeZone, aLocale : java.util.Locale) : Void;
	
	/**
	* Compares this <code>JapaneseImperialCalendar</code> to the specified
	* <code>Object</code>. The result is <code>true</code> if and
	* only if the argument is a <code>JapaneseImperialCalendar</code> object
	* that represents the same time value (millisecond offset from
	* the <a href="Calendar.html#Epoch">Epoch</a>) under the same
	* <code>Calendar</code> parameters.
	*
	* @param obj the object to compare with.
	* @return <code>true</code> if this object is equal to <code>obj</code>;
	* <code>false</code> otherwise.
	* @see Calendar#compareTo(Calendar)
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Generates the hash code for this
	* <code>JapaneseImperialCalendar</code> object.
	*/
	@:overload override public function hashCode() : Int;
	
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
	@:overload override public function add(field : Int, amount : Int) : Void;
	
	@:overload override public function roll(field : Int, up : Bool) : Void;
	
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
	* @param field the calendar field.
	* @param amount the signed amount to add to <code>field</code>.
	* @exception IllegalArgumentException if <code>field</code> is
	* <code>ZONE_OFFSET</code>, <code>DST_OFFSET</code>, or unknown,
	* or if any calendar fields have out-of-range values in
	* non-lenient mode.
	* @see #roll(int,boolean)
	* @see #add(int,int)
	* @see #set(int,int)
	*/
	@:overload override public function roll(field : Int, amount : Int) : Void;
	
	@:overload override public function getDisplayName(field : Int, style : Int, locale : java.util.Locale) : String;
	
	@:overload override public function getDisplayNames(field : Int, style : Int, locale : java.util.Locale) : java.util.Map<String, Null<Int>>;
	
	/**
	* Returns the minimum value for the given calendar field of this
	* <code>Calendar</code> instance. The minimum value is
	* defined as the smallest value returned by the {@link
	* Calendar#get(int) get} method for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* and {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field.
	* @return the minimum value for the given calendar field.
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload override public function getMinimum(field : Int) : Int;
	
	/**
	* Returns the maximum value for the given calendar field of this
	* <code>GregorianCalendar</code> instance. The maximum value is
	* defined as the largest value returned by the {@link
	* Calendar#get(int) get} method for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* and {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field.
	* @return the maximum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload override public function getMaximum(field : Int) : Int;
	
	/**
	* Returns the highest minimum value for the given calendar field
	* of this <code>GregorianCalendar</code> instance. The highest
	* minimum value is defined as the largest value returned by
	* {@link #getActualMinimum(int)} for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* and {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field.
	* @return the highest minimum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload override public function getGreatestMinimum(field : Int) : Int;
	
	/**
	* Returns the lowest maximum value for the given calendar field
	* of this <code>GregorianCalendar</code> instance. The lowest
	* maximum value is defined as the smallest value returned by
	* {@link #getActualMaximum(int)} for any possible time value,
	* taking into consideration the current values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* and {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field
	* @return the lowest maximum value for the given calendar field.
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getActualMinimum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload override public function getLeastMaximum(field : Int) : Int;
	
	/**
	* Returns the minimum value that this calendar field could have,
	* taking into consideration the given time value and the current
	* values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* and {@link Calendar#getTimeZone() getTimeZone} methods.
	*
	* @param field the calendar field
	* @return the minimum of the given field for the time value of
	* this <code>JapaneseImperialCalendar</code>
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMaximum(int)
	*/
	@:overload override public function getActualMinimum(field : Int) : Int;
	
	/**
	* Returns the maximum value that this calendar field could have,
	* taking into consideration the given time value and the current
	* values of the
	* {@link Calendar#getFirstDayOfWeek() getFirstDayOfWeek},
	* {@link Calendar#getMinimalDaysInFirstWeek() getMinimalDaysInFirstWeek},
	* and
	* {@link Calendar#getTimeZone() getTimeZone} methods.
	* For example, if the date of this instance is Heisei 16February 1,
	* the actual maximum value of the <code>DAY_OF_MONTH</code> field
	* is 29 because Heisei 16 is a leap year, and if the date of this
	* instance is Heisei 17 February 1, it's 28.
	*
	* @param field the calendar field
	* @return the maximum of the given field for the time value of
	* this <code>JapaneseImperialCalendar</code>
	* @see #getMinimum(int)
	* @see #getMaximum(int)
	* @see #getGreatestMinimum(int)
	* @see #getLeastMaximum(int)
	* @see #getActualMinimum(int)
	*/
	@:overload override public function getActualMaximum(field : Int) : Int;
	
	@:overload override public function clone() : Dynamic;
	
	@:overload override public function getTimeZone() : java.util.TimeZone;
	
	@:overload override public function setTimeZone(zone : java.util.TimeZone) : Void;
	
	/**
	* Converts the time value (millisecond offset from the <a
	* href="Calendar.html#Epoch">Epoch</a>) to calendar field values.
	* The time is <em>not</em>
	* recomputed first; to recompute the time, then the fields, call the
	* <code>complete</code> method.
	*
	* @see Calendar#complete
	*/
	@:overload override private function computeFields() : Void;
	
	/**
	* Converts calendar field values to the time value (millisecond
	* offset from the <a href="Calendar.html#Epoch">Epoch</a>).
	*
	* @exception IllegalArgumentException if any calendar fields are invalid.
	*/
	@:overload override private function computeTime() : Void;
	
	
}
