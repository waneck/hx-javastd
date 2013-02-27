package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class AbstractDateTimeDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	private static var YEAR(default, null) : Int;
	
	private static var MONTH(default, null) : Int;
	
	private static var DAY(default, null) : Int;
	
	private static var datatypeFactory(default, null) : javax.xml.datatype.DatatypeFactory;
	
	@:overload override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload override public function isIdentical(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	@:overload override public function compare(value1 : Dynamic, value2 : Dynamic) : Int;
	
	/**
	* Compare algorithm described in dateDime (3.2.7).
	* Duration datatype overwrites this method
	*
	* @param date1  normalized date representation of the first value
	* @param date2  normalized date representation of the second value
	* @param strict
	* @return less, greater, less_equal, greater_equal, equal
	*/
	@:overload private function compareDates(date1 : AbstractDateTimeDV_DateTimeData, date2 : AbstractDateTimeDV_DateTimeData, strict : Bool) : java.StdTypes.Int16;
	
	/**
	* Given normalized values, determines order-relation
	* between give date/time objects.
	*
	* @param date1  date/time object
	* @param date2  date/time object
	* @return 0 if date1 and date2 are equal, a value less than 0 if date1 is less than date2, a value greater than 0 if date1 is greater than date2
	*/
	@:overload private function compareOrder(date1 : AbstractDateTimeDV_DateTimeData, date2 : AbstractDateTimeDV_DateTimeData) : java.StdTypes.Int16;
	
	/**
	* Parses time hh:mm:ss.sss and time zone if any
	*
	* @param start
	* @param end
	* @param data
	* @exception RuntimeException
	*/
	@:overload private function getTime(buffer : String, start : Int, end : Int, data : AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Parses date CCYY-MM-DD
	*
	* @param buffer
	* @param start start position
	* @param end end position
	* @param date
	* @exception RuntimeException
	*/
	@:overload private function getDate(buffer : String, start : Int, end : Int, date : AbstractDateTimeDV_DateTimeData) : Int;
	
	/**
	* Parses date CCYY-MM
	*
	* @param buffer
	* @param start start position
	* @param end end position
	* @param date
	* @exception RuntimeException
	*/
	@:overload private function getYearMonth(buffer : String, start : Int, end : Int, date : AbstractDateTimeDV_DateTimeData) : Int;
	
	/**
	* Shared code from Date and YearMonth datatypes.
	* Finds if time zone sign is present
	*
	* @param end
	* @param date
	* @exception RuntimeException
	*/
	@:overload private function parseTimeZone(buffer : String, start : Int, end : Int, date : AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Parses time zone: 'Z' or {+,-} followed by  hh:mm
	*
	* @param data
	* @param sign
	* @exception RuntimeException
	*/
	@:overload private function getTimeZone(buffer : String, data : AbstractDateTimeDV_DateTimeData, sign : Int, end : Int) : Void;
	
	/**
	* Computes index of given char within StringBuffer
	*
	* @param start
	* @param end
	* @param ch     character to look for in StringBuffer
	* @return index of ch within StringBuffer
	*/
	@:overload private function indexOf(buffer : String, start : Int, end : Int, ch : java.StdTypes.Char16) : Int;
	
	/**
	* Validates given date/time object accoring to W3C PR Schema
	* [D.1 ISO 8601 Conventions]
	*
	* @param data
	*/
	@:overload private function validateDateTime(data : AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Return index of UTC char: 'Z', '+', '-'
	*
	* @param start
	* @param end
	* @return index of the UTC character that was found
	*/
	@:overload private function findUTCSign(buffer : String, start : Int, end : Int) : Int;
	
	/**
	* Returns <code>true</code> if the character at start is 'Z', '+' or '-'.
	*/
	@:overload @:final private function isNextCharUTCSign(buffer : String, start : Int, end : Int) : Bool;
	
	/**
	* Given start and end position, parses string value
	*
	* @param buffer string to parse
	* @param start  start position
	* @param end    end position
	* @return  return integer representation of characters
	*/
	@:overload private function parseInt(buffer : String, start : Int, end : Int) : Int;
	
	@:overload private function parseIntYear(buffer : String, end : Int) : Int;
	
	/**
	* If timezone present - normalize dateTime  [E Adding durations to dateTimes]
	*
	* @param date   CCYY-MM-DDThh:mm:ss+03
	*/
	@:overload private function normalize(date : AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* @param date
	*/
	@:overload private function saveUnnormalized(date : AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Resets object representation of date/time
	*
	* @param data   date/time object
	*/
	@:overload private function resetDateObj(data : AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Given {year,month} computes maximum
	* number of days for given month
	*
	* @param year
	* @param month
	* @return integer containg the number of days in a given month
	*/
	@:overload private function maxDayInMonthFor(year : Int, month : Int) : Int;
	
	@:overload private function mod(a : Int, b : Int, quotient : Int) : Int;
	
	@:overload private function fQuotient(a : Int, b : Int) : Int;
	
	@:overload private function modulo(temp : Int, low : Int, high : Int) : Int;
	
	@:overload private function fQuotient(temp : Int, low : Int, high : Int) : Int;
	
	@:overload private function dateToString(date : AbstractDateTimeDV_DateTimeData) : String;
	
	@:overload @:final private function append(message : java.lang.StringBuffer, value : Int, nch : Int) : Void;
	
	@:overload @:final private function append(message : java.lang.StringBuffer, value : Float) : Void;
	
	@:overload @:final private function append2(message : java.lang.StringBuffer, value : Float) : Void;
	
	@:overload private function parseSecond(buffer : String, start : Int, end : Int) : Float;
	
	@:overload private function getXMLGregorianCalendar(data : AbstractDateTimeDV_DateTimeData) : javax.xml.datatype.XMLGregorianCalendar;
	
	@:overload private function getDuration(data : AbstractDateTimeDV_DateTimeData) : javax.xml.datatype.Duration;
	
	@:overload @:final private function getFractionalSecondsAsBigDecimal(data : AbstractDateTimeDV_DateTimeData) : java.math.BigDecimal;
	
	
}
/**
* Represents date time data
*/
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$AbstractDateTimeDV$DateTimeData') @:internal extern class AbstractDateTimeDV_DateTimeData implements com.sun.org.apache.xerces.internal.xs.datatypes.XSDateTime
{
	@:overload public function new(originalValue : String, type : AbstractDateTimeDV) : Void;
	
	@:overload public function new(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Float, utc : Int, originalValue : String, normalized : Bool, type : AbstractDateTimeDV) : Void;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload @:synchronized public function toString() : String;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getYear()
	*/
	@:overload public function getYears() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getMonth()
	*/
	@:overload public function getMonths() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getDay()
	*/
	@:overload public function getDays() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getHour()
	*/
	@:overload public function getHours() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getMinutes()
	*/
	@:overload public function getMinutes() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getSeconds()
	*/
	@:overload public function getSeconds() : Float;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#hasTimeZone()
	*/
	@:overload public function hasTimeZone() : Bool;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getTimeZoneHours()
	*/
	@:overload public function getTimeZoneHours() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getTimeZoneMinutes()
	*/
	@:overload public function getTimeZoneMinutes() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getLexicalValue()
	*/
	@:overload public function getLexicalValue() : String;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#normalize()
	*/
	@:overload public function normalize() : com.sun.org.apache.xerces.internal.xs.datatypes.XSDateTime;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#isNormalized()
	*/
	@:overload public function isNormalized() : Bool;
	
	@:overload public function clone() : Dynamic;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getXMLGregorianCalendar()
	*/
	@:overload public function getXMLGregorianCalendar() : javax.xml.datatype.XMLGregorianCalendar;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getDuration()
	*/
	@:overload public function getDuration() : javax.xml.datatype.Duration;
	
	
}
