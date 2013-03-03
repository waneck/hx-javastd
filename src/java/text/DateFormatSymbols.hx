package java.text;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DateFormatSymbols implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Construct a DateFormatSymbols object by loading format data from
	* resources for the default locale. This constructor can only
	* construct instances for the locales supported by the Java
	* runtime environment, not for those supported by installed
	* {@link java.text.spi.DateFormatSymbolsProvider DateFormatSymbolsProvider}
	* implementations. For full locale coverage, use the
	* {@link #getInstance(Locale) getInstance} method.
	*
	* @see #getInstance()
	* @exception  java.util.MissingResourceException
	*             if the resources for the default locale cannot be
	*             found or cannot be loaded.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a DateFormatSymbols object by loading format data from
	* resources for the given locale. This constructor can only
	* construct instances for the locales supported by the Java
	* runtime environment, not for those supported by installed
	* {@link java.text.spi.DateFormatSymbolsProvider DateFormatSymbolsProvider}
	* implementations. For full locale coverage, use the
	* {@link #getInstance(Locale) getInstance} method.
	*
	* @see #getInstance(Locale)
	* @exception  java.util.MissingResourceException
	*             if the resources for the specified locale cannot be
	*             found or cannot be loaded.
	*/
	@:overload @:public public function new(locale : java.util.Locale) : Void;
	
	/**
	* Returns an array of all locales for which the
	* <code>getInstance</code> methods of this class can return
	* localized instances.
	* The returned array represents the union of locales supported by the
	* Java runtime and by installed
	* {@link java.text.spi.DateFormatSymbolsProvider DateFormatSymbolsProvider}
	* implementations.  It must contain at least a <code>Locale</code>
	* instance equal to {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of locales for which localized
	*         <code>DateFormatSymbols</code> instances are available.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Gets the <code>DateFormatSymbols</code> instance for the default
	* locale.  This method provides access to <code>DateFormatSymbols</code>
	* instances for locales supported by the Java runtime itself as well
	* as for those supported by installed
	* {@link java.text.spi.DateFormatSymbolsProvider DateFormatSymbolsProvider}
	* implementations.
	* @return a <code>DateFormatSymbols</code> instance.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static @:final public static function getInstance() : java.text.DateFormatSymbols;
	
	/**
	* Gets the <code>DateFormatSymbols</code> instance for the specified
	* locale.  This method provides access to <code>DateFormatSymbols</code>
	* instances for locales supported by the Java runtime itself as well
	* as for those supported by installed
	* {@link java.text.spi.DateFormatSymbolsProvider DateFormatSymbolsProvider}
	* implementations.
	* @param locale the given locale.
	* @return a <code>DateFormatSymbols</code> instance.
	* @exception NullPointerException if <code>locale</code> is null
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static @:final public static function getInstance(locale : java.util.Locale) : java.text.DateFormatSymbols;
	
	/**
	* Gets era strings. For example: "AD" and "BC".
	* @return the era strings.
	*/
	@:overload @:public public function getEras() : java.NativeArray<String>;
	
	/**
	* Sets era strings. For example: "AD" and "BC".
	* @param newEras the new era strings.
	*/
	@:overload @:public public function setEras(newEras : java.NativeArray<String>) : Void;
	
	/**
	* Gets month strings. For example: "January", "February", etc.
	* @return the month strings.
	*/
	@:overload @:public public function getMonths() : java.NativeArray<String>;
	
	/**
	* Sets month strings. For example: "January", "February", etc.
	* @param newMonths the new month strings.
	*/
	@:overload @:public public function setMonths(newMonths : java.NativeArray<String>) : Void;
	
	/**
	* Gets short month strings. For example: "Jan", "Feb", etc.
	* @return the short month strings.
	*/
	@:overload @:public public function getShortMonths() : java.NativeArray<String>;
	
	/**
	* Sets short month strings. For example: "Jan", "Feb", etc.
	* @param newShortMonths the new short month strings.
	*/
	@:overload @:public public function setShortMonths(newShortMonths : java.NativeArray<String>) : Void;
	
	/**
	* Gets weekday strings. For example: "Sunday", "Monday", etc.
	* @return the weekday strings. Use <code>Calendar.SUNDAY</code>,
	* <code>Calendar.MONDAY</code>, etc. to index the result array.
	*/
	@:overload @:public public function getWeekdays() : java.NativeArray<String>;
	
	/**
	* Sets weekday strings. For example: "Sunday", "Monday", etc.
	* @param newWeekdays the new weekday strings. The array should
	* be indexed by <code>Calendar.SUNDAY</code>,
	* <code>Calendar.MONDAY</code>, etc.
	*/
	@:overload @:public public function setWeekdays(newWeekdays : java.NativeArray<String>) : Void;
	
	/**
	* Gets short weekday strings. For example: "Sun", "Mon", etc.
	* @return the short weekday strings. Use <code>Calendar.SUNDAY</code>,
	* <code>Calendar.MONDAY</code>, etc. to index the result array.
	*/
	@:overload @:public public function getShortWeekdays() : java.NativeArray<String>;
	
	/**
	* Sets short weekday strings. For example: "Sun", "Mon", etc.
	* @param newShortWeekdays the new short weekday strings. The array should
	* be indexed by <code>Calendar.SUNDAY</code>,
	* <code>Calendar.MONDAY</code>, etc.
	*/
	@:overload @:public public function setShortWeekdays(newShortWeekdays : java.NativeArray<String>) : Void;
	
	/**
	* Gets ampm strings. For example: "AM" and "PM".
	* @return the ampm strings.
	*/
	@:overload @:public public function getAmPmStrings() : java.NativeArray<String>;
	
	/**
	* Sets ampm strings. For example: "AM" and "PM".
	* @param newAmpms the new ampm strings.
	*/
	@:overload @:public public function setAmPmStrings(newAmpms : java.NativeArray<String>) : Void;
	
	/**
	* Gets time zone strings.  Use of this method is discouraged; use
	* {@link java.util.TimeZone#getDisplayName() TimeZone.getDisplayName()}
	* instead.
	* <p>
	* The value returned is a
	* two-dimensional array of strings of size <em>n</em> by <em>m</em>,
	* where <em>m</em> is at least 5.  Each of the <em>n</em> rows is an
	* entry containing the localized names for a single <code>TimeZone</code>.
	* Each such row contains (with <code>i</code> ranging from
	* 0..<em>n</em>-1):
	* <ul>
	* <li><code>zoneStrings[i][0]</code> - time zone ID</li>
	* <li><code>zoneStrings[i][1]</code> - long name of zone in standard
	* time</li>
	* <li><code>zoneStrings[i][2]</code> - short name of zone in
	* standard time</li>
	* <li><code>zoneStrings[i][3]</code> - long name of zone in daylight
	* saving time</li>
	* <li><code>zoneStrings[i][4]</code> - short name of zone in daylight
	* saving time</li>
	* </ul>
	* The zone ID is <em>not</em> localized; it's one of the valid IDs of
	* the {@link java.util.TimeZone TimeZone} class that are not
	* <a href="../util/TimeZone.html#CustomID">custom IDs</a>.
	* All other entries are localized names.  If a zone does not implement
	* daylight saving time, the daylight saving time names should not be used.
	* <p>
	* If {@link #setZoneStrings(String[][]) setZoneStrings} has been called
	* on this <code>DateFormatSymbols</code> instance, then the strings
	* provided by that call are returned. Otherwise, the returned array
	* contains names provided by the Java runtime and by installed
	* {@link java.util.spi.TimeZoneNameProvider TimeZoneNameProvider}
	* implementations.
	*
	* @return the time zone strings.
	* @see #setZoneStrings(String[][])
	*/
	@:overload @:public public function getZoneStrings() : java.NativeArray<java.NativeArray<String>>;
	
	/**
	* Sets time zone strings.  The argument must be a
	* two-dimensional array of strings of size <em>n</em> by <em>m</em>,
	* where <em>m</em> is at least 5.  Each of the <em>n</em> rows is an
	* entry containing the localized names for a single <code>TimeZone</code>.
	* Each such row contains (with <code>i</code> ranging from
	* 0..<em>n</em>-1):
	* <ul>
	* <li><code>zoneStrings[i][0]</code> - time zone ID</li>
	* <li><code>zoneStrings[i][1]</code> - long name of zone in standard
	* time</li>
	* <li><code>zoneStrings[i][2]</code> - short name of zone in
	* standard time</li>
	* <li><code>zoneStrings[i][3]</code> - long name of zone in daylight
	* saving time</li>
	* <li><code>zoneStrings[i][4]</code> - short name of zone in daylight
	* saving time</li>
	* </ul>
	* The zone ID is <em>not</em> localized; it's one of the valid IDs of
	* the {@link java.util.TimeZone TimeZone} class that are not
	* <a href="../util/TimeZone.html#CustomID">custom IDs</a>.
	* All other entries are localized names.
	*
	* @param newZoneStrings the new time zone strings.
	* @exception IllegalArgumentException if the length of any row in
	*    <code>newZoneStrings</code> is less than 5
	* @exception NullPointerException if <code>newZoneStrings</code> is null
	* @see #getZoneStrings()
	*/
	@:overload @:public public function setZoneStrings(newZoneStrings : java.NativeArray<java.NativeArray<String>>) : Void;
	
	/**
	* Gets localized date-time pattern characters. For example: 'u', 't', etc.
	* @return the localized date-time pattern characters.
	*/
	@:overload @:public public function getLocalPatternChars() : String;
	
	/**
	* Sets localized date-time pattern characters. For example: 'u', 't', etc.
	* @param newLocalPatternChars the new localized date-time
	* pattern characters.
	*/
	@:overload @:public public function setLocalPatternChars(newLocalPatternChars : String) : Void;
	
	/**
	* Overrides Cloneable
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Override hashCode.
	* Generates a hash code for the DateFormatSymbols object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Override equals
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* Obtains a DateFormatSymbols instance from a DateFormatSymbolsProvider
* implementation.
*/
@:native('java$text$DateFormatSymbols$DateFormatSymbolsGetter') @:internal extern class DateFormatSymbols_DateFormatSymbolsGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.text.spi.DateFormatSymbolsProvider, java.text.DateFormatSymbols>
{
	@:overload @:public public function getObject(dateFormatSymbolsProvider : java.text.spi.DateFormatSymbolsProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : java.text.DateFormatSymbols;
	
	
}
