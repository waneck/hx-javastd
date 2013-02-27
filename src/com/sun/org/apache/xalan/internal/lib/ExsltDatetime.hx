package com.sun.org.apache.xalan.internal.lib;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: ExsltDatetime.java,v 1.2.4.1 2005/09/10 18:50:49 jeffsuttor Exp $
*/
extern class ExsltDatetime
{
	/**
	* The date:date-time function returns the current date and time as a date/time string.
	* The date/time string that's returned must be a string in the format defined as the
	* lexical representation of xs:dateTime in
	* <a href="http://www.w3.org/TR/xmlschema-2/#dateTime">[3.2.7 dateTime]</a> of
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The date/time format is basically CCYY-MM-DDThh:mm:ss, although implementers should consult
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a> and
	* <a href="http://www.iso.ch/markete/8601.pdf">[ISO 8601]</a> for details.
	* The date/time string format must include a time zone, either a Z to indicate Coordinated
	* Universal Time or a + or - followed by the difference between the difference from UTC
	* represented as hh:mm.
	*/
	@:overload public static function dateTime() : String;
	
	/**
	* The date:date function returns the date specified in the date/time string given
	* as the argument. If no argument is given, then the current local date/time, as
	* returned by date:date-time is used as a default argument.
	* The date/time string that's returned must be a string in the format defined as the
	* lexical representation of xs:dateTime in
	* <a href="http://www.w3.org/TR/xmlschema-2/#dateTime">[3.2.7 dateTime]</a> of
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* If the argument is not in either of these formats, date:date returns an empty string ('').
	* The date/time format is basically CCYY-MM-DDThh:mm:ss, although implementers should consult
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a> and
	* <a href="http://www.iso.ch/markete/8601.pdf">[ISO 8601]</a> for details.
	* The date is returned as a string with a lexical representation as defined for xs:date in
	* [3.2.9 date] of [XML Schema Part 2: Datatypes]. The date format is basically CCYY-MM-DD,
	* although implementers should consult [XML Schema Part 2: Datatypes] and [ISO 8601] for details.
	* If no argument is given or the argument date/time specifies a time zone, then the date string
	* format must include a time zone, either a Z to indicate Coordinated Universal Time or a + or -
	* followed by the difference between the difference from UTC represented as hh:mm. If an argument
	* is specified and it does not specify a time zone, then the date string format must not include
	* a time zone.
	*/
	@:overload public static function date(datetimeIn : String) : String;
	
	/**
	* See above.
	*/
	@:overload public static function date() : String;
	
	/**
	* The date:time function returns the time specified in the date/time string given
	* as the argument. If no argument is given, then the current local date/time, as
	* returned by date:date-time is used as a default argument.
	* The date/time string that's returned must be a string in the format defined as the
	* lexical representation of xs:dateTime in
	* <a href="http://www.w3.org/TR/xmlschema-2/#dateTime">[3.2.7 dateTime]</a> of
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* If the argument string is not in this format, date:time returns an empty string ('').
	* The date/time format is basically CCYY-MM-DDThh:mm:ss, although implementers should consult
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a> and
	* <a href="http://www.iso.ch/markete/8601.pdf">[ISO 8601]</a> for details.
	* The date is returned as a string with a lexical representation as defined for xs:time in
	* <a href="http://www.w3.org/TR/xmlschema-2/#time">[3.2.8 time]</a> of [XML Schema Part 2: Datatypes].
	* The time format is basically hh:mm:ss, although implementers should consult [XML Schema Part 2:
	* Datatypes] and [ISO 8601] for details.
	* If no argument is given or the argument date/time specifies a time zone, then the time string
	* format must include a time zone, either a Z to indicate Coordinated Universal Time or a + or -
	* followed by the difference between the difference from UTC represented as hh:mm. If an argument
	* is specified and it does not specify a time zone, then the time string format must not include
	* a time zone.
	*/
	@:overload public static function time(timeIn : String) : String;
	
	/**
	* See above.
	*/
	@:overload public static function time() : String;
	
	/**
	* The date:year function returns the year of a date as a number. If no
	* argument is given, then the current local date/time, as returned by
	* date:date-time is used as a default argument.
	* The date/time string specified as the first argument must be a right-truncated
	* string in the format defined as the lexical representation of xs:dateTime in one
	* of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*   xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*   xs:date (CCYY-MM-DD)
	*   xs:gYearMonth (CCYY-MM)
	*   xs:gYear (CCYY)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function year(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function year() : Float;
	
	/**
	* The date:month-in-year function returns the month of a date as a number. If no argument
	* is given, then the current local date/time, as returned by date:date-time is used
	* as a default argument.
	* The date/time string specified as the first argument is a left or right-truncated
	* string in the format defined as the lexical representation of xs:dateTime in one of
	* the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*    xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*    xs:date (CCYY-MM-DD)
	*    xs:gYearMonth (CCYY-MM)
	*    xs:gMonth (--MM--)
	*    xs:gMonthDay (--MM-DD)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function monthInYear(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function monthInYear() : Float;
	
	/**
	* The date:week-in-year function returns the week of the year as a number. If no argument
	* is given, then the current local date/time, as returned by date:date-time is used as the
	* default argument. For the purposes of numbering, counting follows ISO 8601: week 1 in a year
	* is the week containing the first Thursday of the year, with new weeks beginning on a Monday.
	* The date/time string specified as the argument is a right-truncated string in the format
	* defined as the lexical representation of xs:dateTime in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>. The
	* permitted formats are as follows:
	*    xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*    xs:date (CCYY-MM-DD)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function weekInYear(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function weekInYear() : Float;
	
	/**
	* The date:day-in-year function returns the day of a date in a year
	* as a number. If no argument is given, then the current local
	* date/time, as returned by date:date-time is used the default argument.
	* The date/time string specified as the argument is a right-truncated
	* string in the format defined as the lexical representation of xs:dateTime
	* in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*     xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*     xs:date (CCYY-MM-DD)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function dayInYear(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function dayInYear() : Float;
	
	/**
	* The date:day-in-month function returns the day of a date as a number.
	* If no argument is given, then the current local date/time, as returned
	* by date:date-time is used the default argument.
	* The date/time string specified as the argument is a left or right-truncated
	* string in the format defined as the lexical representation of xs:dateTime
	* in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*      xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*      xs:date (CCYY-MM-DD)
	*      xs:gMonthDay (--MM-DD)
	*      xs:gDay (---DD)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function dayInMonth(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function dayInMonth() : Float;
	
	/**
	* The date:day-of-week-in-month function returns the day-of-the-week
	* in a month of a date as a number (e.g. 3 for the 3rd Tuesday in May).
	* If no argument is given, then the current local date/time, as returned
	* by date:date-time is used the default argument.
	* The date/time string specified as the argument is a right-truncated string
	* in the format defined as the lexical representation of xs:dateTime in one
	* of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*      xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*      xs:date (CCYY-MM-DD)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function dayOfWeekInMonth(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function dayOfWeekInMonth() : Float;
	
	/**
	* The date:day-in-week function returns the day of the week given in a
	* date as a number. If no argument is given, then the current local date/time,
	* as returned by date:date-time is used the default argument.
	* The date/time string specified as the argument is a right-truncated string
	* in the format defined as the lexical representation of xs:dateTime in one
	* of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*      xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*      xs:date (CCYY-MM-DD)
	* If the date/time string is not in one of these formats, then NaN is returned.
	The numbering of days of the week starts at 1 for Sunday, 2 for Monday and so on up to 7 for Saturday.
	*/
	@:overload public static function dayInWeek(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function dayInWeek() : Float;
	
	/**
	* The date:hour-in-day function returns the hour of the day as a number.
	* If no argument is given, then the current local date/time, as returned
	* by date:date-time is used the default argument.
	* The date/time string specified as the argument is a right-truncated
	* string  in the format defined as the lexical representation of xs:dateTime
	* in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*     xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*     xs:time (hh:mm:ss)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function hourInDay(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function hourInDay() : Float;
	
	/**
	* The date:minute-in-hour function returns the minute of the hour
	* as a number. If no argument is given, then the current local
	* date/time, as returned by date:date-time is used the default argument.
	* The date/time string specified as the argument is a right-truncated
	* string in the format defined as the lexical representation of xs:dateTime
	* in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*      xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*      xs:time (hh:mm:ss)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function minuteInHour(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function minuteInHour() : Float;
	
	/**
	* The date:second-in-minute function returns the second of the minute
	* as a number. If no argument is given, then the current local
	* date/time, as returned by date:date-time is used the default argument.
	* The date/time string specified as the argument is a right-truncated
	* string in the format defined as the lexical representation of xs:dateTime
	* in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*      xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*      xs:time (hh:mm:ss)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function secondInMinute(datetimeIn : String) : Float;
	
	/**
	* See above.
	*/
	@:overload public static function secondInMinute() : Float;
	
	/**
	* The date:leap-year function returns true if the year given in a date
	* is a leap year. If no argument is given, then the current local
	* date/time, as returned by date:date-time is used as a default argument.
	* The date/time string specified as the first argument must be a
	* right-truncated string in the format defined as the lexical representation
	* of xs:dateTime in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*    xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*    xs:date (CCYY-MM-DD)
	*    xs:gYearMonth (CCYY-MM)
	*    xs:gYear (CCYY)
	* If the date/time string is not in one of these formats, then NaN is returned.
	*/
	@:overload public static function leapYear(datetimeIn : String) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* See above.
	*/
	@:overload public static function leapYear() : Bool;
	
	/**
	* The date:month-name function returns the full name of the month of a date.
	* If no argument is given, then the current local date/time, as returned by
	* date:date-time is used the default argument.
	* The date/time string specified as the argument is a left or right-truncated
	* string in the format defined as the lexical representation of xs:dateTime in
	*  one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*    xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*    xs:date (CCYY-MM-DD)
	*    xs:gYearMonth (CCYY-MM)
	*    xs:gMonth (--MM--)
	* If the date/time string is not in one of these formats, then an empty string ('')
	* is returned.
	* The result is an English month name: one of 'January', 'February', 'March',
	* 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November'
	* or 'December'.
	*/
	@:overload public static function monthName(datetimeIn : String) : String;
	
	/**
	* See above.
	*/
	@:overload public static function monthName() : String;
	
	/**
	* The date:month-abbreviation function returns the abbreviation of the month of
	* a date. If no argument is given, then the current local date/time, as returned
	* by date:date-time is used the default argument.
	* The date/time string specified as the argument is a left or right-truncated
	* string in the format defined as the lexical representation of xs:dateTime in
	* one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*    xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*    xs:date (CCYY-MM-DD)
	*    xs:gYearMonth (CCYY-MM)
	*    xs:gMonth (--MM--)
	* If the date/time string is not in one of these formats, then an empty string ('')
	* is returned.
	* The result is a three-letter English month abbreviation: one of 'Jan', 'Feb', 'Mar',
	* 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov' or 'Dec'.
	* An implementation of this extension function in the EXSLT date namespace must conform
	* to the behaviour described in this document.
	*/
	@:overload public static function monthAbbreviation(datetimeIn : String) : String;
	
	/**
	* See above.
	*/
	@:overload public static function monthAbbreviation() : String;
	
	/**
	* The date:day-name function returns the full name of the day of the week
	* of a date.  If no argument is given, then the current local date/time,
	* as returned by date:date-time is used the default argument.
	* The date/time string specified as the argument is a left or right-truncated
	* string in the format defined as the lexical representation of xs:dateTime
	* in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*     xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*     xs:date (CCYY-MM-DD)
	* If the date/time string is not in one of these formats, then the empty string ('')
	* is returned.
	* The result is an English day name: one of 'Sunday', 'Monday', 'Tuesday', 'Wednesday',
	* 'Thursday' or 'Friday'.
	* An implementation of this extension function in the EXSLT date namespace must conform
	* to the behaviour described in this document.
	*/
	@:overload public static function dayName(datetimeIn : String) : String;
	
	/**
	* See above.
	*/
	@:overload public static function dayName() : String;
	
	/**
	* The date:day-abbreviation function returns the abbreviation of the day
	* of the week of a date. If no argument is given, then the current local
	* date/time, as returned  by date:date-time is used the default argument.
	* The date/time string specified as the argument is a left or right-truncated
	* string in the format defined as the lexical representation of xs:dateTime
	* in one of the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	*     xs:dateTime (CCYY-MM-DDThh:mm:ss)
	*     xs:date (CCYY-MM-DD)
	* If the date/time string is not in one of these formats, then the empty string
	* ('') is returned.
	* The result is a three-letter English day abbreviation: one of 'Sun', 'Mon', 'Tue',
	* 'Wed', 'Thu' or 'Fri'.
	* An implementation of this extension function in the EXSLT date namespace must conform
	* to the behaviour described in this document.
	*/
	@:overload public static function dayAbbreviation(datetimeIn : String) : String;
	
	/**
	* See above.
	*/
	@:overload public static function dayAbbreviation() : String;
	
	/**
	* The date:format-date function formats a date/time according to a pattern.
	* <p>
	* The first argument to date:format-date specifies the date/time to be
	* formatted. It must be right or left-truncated date/time strings in one of
	* the formats defined in
	* <a href="http://www.w3.org/TR/xmlschema-2/">[XML Schema Part 2: Datatypes]</a>.
	* The permitted formats are as follows:
	* <ul>
	* <li>xs:dateTime (CCYY-MM-DDThh:mm:ss)
	* <li>xs:date (CCYY-MM-DD)
	* <li>xs:time (hh:mm:ss)
	* <li>xs:gYearMonth (CCYY-MM)
	* <li>xs:gYear (CCYY)
	* <li>xs:gMonthDay (--MM-DD)
	* <li>xs:gMonth (--MM--)
	* <li>xs:gDay (---DD)
	* </ul>
	* The second argument is a string that gives the format pattern used to
	* format the date. The format pattern must be in the syntax specified by
	* the JDK 1.1 SimpleDateFormat class. The format pattern string is
	* interpreted as described for the JDK 1.1 SimpleDateFormat class.
	* <p>
	* If the date/time format is right-truncated (i.e. in a format other than
	* xs:time, or xs:dateTime) then any missing components are assumed to be as
	* follows: if no month is specified, it is given a month of 01; if no day
	* is specified, it is given a day of 01; if no time is specified, it is
	* given a time of 00:00:00.
	* <p>
	* If the date/time format is left-truncated (i.e. xs:time, xs:gMonthDay,
	* xs:gMonth or xs:gDay) and the format pattern has a token that uses a
	* component that is missing from the date/time format used, then that token
	* is replaced with an empty string ('') within the result.
	*
	* The author is Helg Bredow (helg.bredow@kalido.com)
	*/
	@:overload public static function formatDate(dateTime : String, pattern : String) : String;
	
	
}
