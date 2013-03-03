package java.util;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class TimeZone implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* A style specifier for <code>getDisplayName()</code> indicating
	* a short name, such as "PST."
	* @see #LONG
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var SHORT(default, null) : Int;
	
	/**
	* A style specifier for <code>getDisplayName()</code> indicating
	* a long name, such as "Pacific Standard Time."
	* @see #SHORT
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var LONG(default, null) : Int;
	
	/**
	* Gets the time zone offset, for current date, modified in case of
	* daylight savings. This is the offset to add to UTC to get local time.
	* <p>
	* This method returns a historically correct offset if an
	* underlying <code>TimeZone</code> implementation subclass
	* supports historical Daylight Saving Time schedule and GMT
	* offset changes.
	*
	* @param era the era of the given date.
	* @param year the year in the given date.
	* @param month the month in the given date.
	* Month is 0-based. e.g., 0 for January.
	* @param day the day-in-month of the given date.
	* @param dayOfWeek the day-of-week of the given date.
	* @param milliseconds the milliseconds in day in <em>standard</em>
	* local time.
	*
	* @return the offset in milliseconds to add to GMT to get local time.
	*
	* @see Calendar#ZONE_OFFSET
	* @see Calendar#DST_OFFSET
	*/
	@:overload @:public @:abstract public function getOffset(era : Int, year : Int, month : Int, day : Int, dayOfWeek : Int, milliseconds : Int) : Int;
	
	/**
	* Returns the offset of this time zone from UTC at the specified
	* date. If Daylight Saving Time is in effect at the specified
	* date, the offset value is adjusted with the amount of daylight
	* saving.
	* <p>
	* This method returns a historically correct offset value if an
	* underlying TimeZone implementation subclass supports historical
	* Daylight Saving Time schedule and GMT offset changes.
	*
	* @param date the date represented in milliseconds since January 1, 1970 00:00:00 GMT
	* @return the amount of time in milliseconds to add to UTC to get local time.
	*
	* @see Calendar#ZONE_OFFSET
	* @see Calendar#DST_OFFSET
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getOffset(date : haxe.Int64) : Int;
	
	/**
	* Sets the base time zone offset to GMT.
	* This is the offset to add to UTC to get local time.
	* <p>
	* If an underlying <code>TimeZone</code> implementation subclass
	* supports historical GMT offset changes, the specified GMT
	* offset is set as the latest GMT offset and the difference from
	* the known latest GMT offset value is used to adjust all
	* historical GMT offset values.
	*
	* @param offsetMillis the given base time zone offset to GMT.
	*/
	@:overload @:abstract @:public public function setRawOffset(offsetMillis : Int) : Void;
	
	/**
	* Returns the amount of time in milliseconds to add to UTC to get
	* standard time in this time zone. Because this value is not
	* affected by daylight saving time, it is called <I>raw
	* offset</I>.
	* <p>
	* If an underlying <code>TimeZone</code> implementation subclass
	* supports historical GMT offset changes, the method returns the
	* raw offset value of the current date. In Honolulu, for example,
	* its raw offset changed from GMT-10:30 to GMT-10:00 in 1947, and
	* this method always returns -36000000 milliseconds (i.e., -10
	* hours).
	*
	* @return the amount of raw offset time in milliseconds to add to UTC.
	* @see Calendar#ZONE_OFFSET
	*/
	@:overload @:public @:abstract public function getRawOffset() : Int;
	
	/**
	* Gets the ID of this time zone.
	* @return the ID of this time zone.
	*/
	@:overload @:public public function getID() : String;
	
	/**
	* Sets the time zone ID. This does not change any other data in
	* the time zone object.
	* @param ID the new time zone ID.
	*/
	@:overload @:public public function setID(ID : String) : Void;
	
	/**
	* Returns a long standard time name of this {@code TimeZone} suitable for
	* presentation to the user in the default locale.
	*
	* <p>This method is equivalent to:
	* <pre><blockquote>
	* getDisplayName(false, {@link #LONG},
	*                Locale.getDefault({@link Locale.Category#DISPLAY}))
	* </blockquote></pre>
	*
	* @return the human-readable name of this time zone in the default locale.
	* @since 1.2
	* @see #getDisplayName(boolean, int, Locale)
	* @see Locale#getDefault(Locale.Category)
	* @see Locale.Category
	*/
	@:require(java2) @:overload @:public @:final public function getDisplayName() : String;
	
	/**
	* Returns a long standard time name of this {@code TimeZone} suitable for
	* presentation to the user in the specified {@code locale}.
	*
	* <p>This method is equivalent to:
	* <pre><blockquote>
	* getDisplayName(false, {@link #LONG}, locale)
	* </blockquote></pre>
	*
	* @param locale the locale in which to supply the display name.
	* @return the human-readable name of this time zone in the given locale.
	* @exception NullPointerException if {@code locale} is {@code null}.
	* @since 1.2
	* @see #getDisplayName(boolean, int, Locale)
	*/
	@:require(java2) @:overload @:public @:final public function getDisplayName(locale : java.util.Locale) : String;
	
	/**
	* Returns a name in the specified {@code style} of this {@code TimeZone}
	* suitable for presentation to the user in the default locale. If the
	* specified {@code daylight} is {@code true}, a Daylight Saving Time name
	* is returned (even if this {@code TimeZone} doesn't observe Daylight Saving
	* Time). Otherwise, a Standard Time name is returned.
	*
	* <p>This method is equivalent to:
	* <pre><blockquote>
	* getDisplayName(daylight, style,
	*                Locale.getDefault({@link Locale.Category#DISPLAY}))
	* </blockquote></pre>
	*
	* @param daylight {@code true} specifying a Daylight Saving Time name, or
	*                 {@code false} specifying a Standard Time name
	* @param style either {@link #LONG} or {@link #SHORT}
	* @return the human-readable name of this time zone in the default locale.
	* @exception IllegalArgumentException if {@code style} is invalid.
	* @since 1.2
	* @see #getDisplayName(boolean, int, Locale)
	* @see Locale#getDefault(Locale.Category)
	* @see Locale.Category
	* @see java.text.DateFormatSymbols#getZoneStrings()
	*/
	@:require(java2) @:overload @:public @:final public function getDisplayName(daylight : Bool, style : Int) : String;
	
	/**
	* Returns a name in the specified {@code style} of this {@code TimeZone}
	* suitable for presentation to the user in the specified {@code
	* locale}. If the specified {@code daylight} is {@code true}, a Daylight
	* Saving Time name is returned (even if this {@code TimeZone} doesn't
	* observe Daylight Saving Time). Otherwise, a Standard Time name is
	* returned.
	*
	* <p>When looking up a time zone name, the {@linkplain
	* ResourceBundle.Control#getCandidateLocales(String,Locale) default
	* <code>Locale</code> search path of <code>ResourceBundle</code>} derived
	* from the specified {@code locale} is used. (No {@linkplain
	* ResourceBundle.Control#getFallbackLocale(String,Locale) fallback
	* <code>Locale</code>} search is performed.) If a time zone name in any
	* {@code Locale} of the search path, including {@link Locale#ROOT}, is
	* found, the name is returned. Otherwise, a string in the
	* <a href="#NormalizedCustomID">normalized custom ID format</a> is returned.
	*
	* @param daylight {@code true} specifying a Daylight Saving Time name, or
	*                 {@code false} specifying a Standard Time name
	* @param style either {@link #LONG} or {@link #SHORT}
	* @param locale   the locale in which to supply the display name.
	* @return the human-readable name of this time zone in the given locale.
	* @exception IllegalArgumentException if {@code style} is invalid.
	* @exception NullPointerException if {@code locale} is {@code null}.
	* @since 1.2
	* @see java.text.DateFormatSymbols#getZoneStrings()
	*/
	@:require(java2) @:overload @:public public function getDisplayName(daylight : Bool, style : Int, locale : java.util.Locale) : String;
	
	/**
	* Returns the amount of time to be added to local standard time
	* to get local wall clock time.
	*
	* <p>The default implementation returns 3600000 milliseconds
	* (i.e., one hour) if a call to {@link #useDaylightTime()}
	* returns {@code true}. Otherwise, 0 (zero) is returned.
	*
	* <p>If an underlying {@code TimeZone} implementation subclass
	* supports historical and future Daylight Saving Time schedule
	* changes, this method returns the amount of saving time of the
	* last known Daylight Saving Time rule that can be a future
	* prediction.
	*
	* <p>If the amount of saving time at any given time stamp is
	* required, construct a {@link Calendar} with this {@code
	* TimeZone} and the time stamp, and call {@link Calendar#get(int)
	* Calendar.get}{@code (}{@link Calendar#DST_OFFSET}{@code )}.
	*
	* @return the amount of saving time in milliseconds
	* @since 1.4
	* @see #inDaylightTime(Date)
	* @see #getOffset(long)
	* @see #getOffset(int,int,int,int,int,int)
	* @see Calendar#ZONE_OFFSET
	*/
	@:require(java4) @:overload @:public public function getDSTSavings() : Int;
	
	/**
	* Queries if this {@code TimeZone} uses Daylight Saving Time.
	*
	* <p>If an underlying {@code TimeZone} implementation subclass
	* supports historical and future Daylight Saving Time schedule
	* changes, this method refers to the last known Daylight Saving Time
	* rule that can be a future prediction and may not be the same as
	* the current rule. Consider calling {@link #observesDaylightTime()}
	* if the current rule should also be taken into account.
	*
	* @return {@code true} if this {@code TimeZone} uses Daylight Saving Time,
	*         {@code false}, otherwise.
	* @see #inDaylightTime(Date)
	* @see Calendar#DST_OFFSET
	*/
	@:overload @:public @:abstract public function useDaylightTime() : Bool;
	
	/**
	* Returns {@code true} if this {@code TimeZone} is currently in
	* Daylight Saving Time, or if a transition from Standard Time to
	* Daylight Saving Time occurs at any future time.
	*
	* <p>The default implementation returns {@code true} if
	* {@code useDaylightTime()} or {@code inDaylightTime(new Date())}
	* returns {@code true}.
	*
	* @return {@code true} if this {@code TimeZone} is currently in
	* Daylight Saving Time, or if a transition from Standard Time to
	* Daylight Saving Time occurs at any future time; {@code false}
	* otherwise.
	* @since 1.7
	* @see #useDaylightTime()
	* @see #inDaylightTime(Date)
	* @see Calendar#DST_OFFSET
	*/
	@:require(java7) @:overload @:public public function observesDaylightTime() : Bool;
	
	/**
	* Queries if the given {@code date} is in Daylight Saving Time in
	* this time zone.
	*
	* @param date the given Date.
	* @return {@code true} if the given date is in Daylight Saving Time,
	*         {@code false}, otherwise.
	*/
	@:overload @:abstract @:public public function inDaylightTime(date : java.util.Date) : Bool;
	
	/**
	* Gets the <code>TimeZone</code> for the given ID.
	*
	* @param ID the ID for a <code>TimeZone</code>, either an abbreviation
	* such as "PST", a full name such as "America/Los_Angeles", or a custom
	* ID such as "GMT-8:00". Note that the support of abbreviations is
	* for JDK 1.1.x compatibility only and full names should be used.
	*
	* @return the specified <code>TimeZone</code>, or the GMT zone if the given ID
	* cannot be understood.
	*/
	@:overload @:public @:static @:synchronized public static function getTimeZone(ID : String) : java.util.TimeZone;
	
	/**
	* Gets the available IDs according to the given time zone offset in milliseconds.
	*
	* @param rawOffset the given time zone GMT offset in milliseconds.
	* @return an array of IDs, where the time zone for that ID has
	* the specified GMT offset. For example, "America/Phoenix" and "America/Denver"
	* both have GMT-07:00, but differ in daylight saving behavior.
	* @see #getRawOffset()
	*/
	@:overload @:public @:static @:synchronized public static function getAvailableIDs(rawOffset : Int) : java.NativeArray<String>;
	
	/**
	* Gets all the available IDs supported.
	* @return an array of IDs.
	*/
	@:overload @:public @:static @:synchronized public static function getAvailableIDs() : java.NativeArray<String>;
	
	/**
	* Gets the default <code>TimeZone</code> for this host.
	* The source of the default <code>TimeZone</code>
	* may vary with implementation.
	* @return a default <code>TimeZone</code>.
	* @see #setDefault
	*/
	@:overload @:public @:static public static function getDefault() : java.util.TimeZone;
	
	/**
	* Sets the <code>TimeZone</code> that is
	* returned by the <code>getDefault</code> method.  If <code>zone</code>
	* is null, reset the default to the value it had originally when the
	* VM first started.
	* @param zone the new default time zone
	* @see #getDefault
	*/
	@:overload @:public @:static public static function setDefault(zone : java.util.TimeZone) : Void;
	
	/**
	* Returns true if this zone has the same rule and offset as another zone.
	* That is, if this zone differs only in ID, if at all.  Returns false
	* if the other zone is null.
	* @param other the <code>TimeZone</code> object to be compared with
	* @return true if the other zone is not null and is the same as this one,
	* with the possible exception of the ID
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function hasSameRules(other : java.util.TimeZone) : Bool;
	
	/**
	* Creates a copy of this <code>TimeZone</code>.
	*
	* @return a clone of this <code>TimeZone</code>
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
@:native('java$util$TimeZone$DisplayNames') @:internal extern class TimeZone_DisplayNames
{
	
}
