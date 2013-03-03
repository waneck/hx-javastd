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
	@:protected @:final @:static private static var YEAR(default, null) : Int;
	
	@:protected @:final @:static private static var MONTH(default, null) : Int;
	
	@:protected @:final @:static private static var DAY(default, null) : Int;
	
	@:protected @:static @:final private static var datatypeFactory(default, null) : javax.xml.datatype.DatatypeFactory;
	
	@:overload @:public override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload @:public override public function isIdentical(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	@:overload @:public override public function compare(value1 : Dynamic, value2 : Dynamic) : Int;
	
	/**
	* Compare algorithm described in dateDime (3.2.7).
	* Duration datatype overwrites this method
	*
	* @param date1  normalized date representation of the first value
	* @param date2  normalized date representation of the second value
	* @param strict
	* @return less, greater, less_equal, greater_equal, equal
	*/
	@:overload @:protected private function compareDates(date1 : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData, date2 : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData, strict : Bool) : java.StdTypes.Int16;
	
	/**
	* Given normalized values, determines order-relation
	* between give date/time objects.
	*
	* @param date1  date/time object
	* @param date2  date/time object
	* @return 0 if date1 and date2 are equal, a value less than 0 if date1 is less than date2, a value greater than 0 if date1 is greater than date2
	*/
	@:overload @:protected private function compareOrder(date1 : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData, date2 : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : java.StdTypes.Int16;
	
	/**
	* Parses time hh:mm:ss.sss and time zone if any
	*
	* @param start
	* @param end
	* @param data
	* @exception RuntimeException
	*/
	@:overload @:protected private function getTime(buffer : String, start : Int, end : Int, data : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Parses date CCYY-MM-DD
	*
	* @param buffer
	* @param start start position
	* @param end end position
	* @param date
	* @exception RuntimeException
	*/
	@:overload @:protected private function getDate(buffer : String, start : Int, end : Int, date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Int;
	
	/**
	* Parses date CCYY-MM
	*
	* @param buffer
	* @param start start position
	* @param end end position
	* @param date
	* @exception RuntimeException
	*/
	@:overload @:protected private function getYearMonth(buffer : String, start : Int, end : Int, date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Int;
	
	/**
	* Shared code from Date and YearMonth datatypes.
	* Finds if time zone sign is present
	*
	* @param end
	* @param date
	* @exception RuntimeException
	*/
	@:overload @:protected private function parseTimeZone(buffer : String, start : Int, end : Int, date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Parses time zone: 'Z' or {+,-} followed by  hh:mm
	*
	* @param data
	* @param sign
	* @exception RuntimeException
	*/
	@:overload @:protected private function getTimeZone(buffer : String, data : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData, sign : Int, end : Int) : Void;
	
	/**
	* Computes index of given char within StringBuffer
	*
	* @param start
	* @param end
	* @param ch     character to look for in StringBuffer
	* @return index of ch within StringBuffer
	*/
	@:overload @:protected private function indexOf(buffer : String, start : Int, end : Int, ch : java.StdTypes.Char16) : Int;
	
	/**
	* Validates given date/time object accoring to W3C PR Schema
	* [D.1 ISO 8601 Conventions]
	*
	* @param data
	*/
	@:overload @:protected private function validateDateTime(data : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Return index of UTC char: 'Z', '+', '-'
	*
	* @param start
	* @param end
	* @return index of the UTC character that was found
	*/
	@:overload @:protected private function findUTCSign(buffer : String, start : Int, end : Int) : Int;
	
	/**
	* Returns <code>true</code> if the character at start is 'Z', '+' or '-'.
	*/
	@:overload @:protected @:final private function isNextCharUTCSign(buffer : String, start : Int, end : Int) : Bool;
	
	/**
	* Given start and end position, parses string value
	*
	* @param buffer string to parse
	* @param start  start position
	* @param end    end position
	* @return  return integer representation of characters
	*/
	@:overload @:protected private function parseInt(buffer : String, start : Int, end : Int) : Int;
	
	@:overload @:protected private function parseIntYear(buffer : String, end : Int) : Int;
	
	/**
	* If timezone present - normalize dateTime  [E Adding durations to dateTimes]
	*
	* @param date   CCYY-MM-DDThh:mm:ss+03
	*/
	@:overload @:protected private function normalize(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* @param date
	*/
	@:overload @:protected private function saveUnnormalized(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Resets object representation of date/time
	*
	* @param data   date/time object
	*/
	@:overload @:protected private function resetDateObj(data : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : Void;
	
	/**
	* Given {year,month} computes maximum
	* number of days for given month
	*
	* @param year
	* @param month
	* @return integer containg the number of days in a given month
	*/
	@:overload @:protected private function maxDayInMonthFor(year : Int, month : Int) : Int;
	
	@:overload @:protected private function mod(a : Int, b : Int, quotient : Int) : Int;
	
	@:overload @:protected private function fQuotient(a : Int, b : Int) : Int;
	
	@:overload @:protected private function modulo(temp : Int, low : Int, high : Int) : Int;
	
	@:overload @:protected private function fQuotient(temp : Int, low : Int, high : Int) : Int;
	
	@:overload @:protected private function dateToString(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : String;
	
	@:overload @:protected @:final private function append(message : java.lang.StringBuffer, value : Int, nch : Int) : Void;
	
	@:overload @:protected @:final private function append(message : java.lang.StringBuffer, value : Float) : Void;
	
	@:overload @:protected @:final private function append2(message : java.lang.StringBuffer, value : Float) : Void;
	
	@:overload @:protected private function parseSecond(buffer : String, start : Int, end : Int) : Float;
	
	@:overload @:protected private function getXMLGregorianCalendar(data : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : javax.xml.datatype.XMLGregorianCalendar;
	
	@:overload @:protected private function getDuration(data : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : javax.xml.datatype.Duration;
	
	@:overload @:protected @:final private function getFractionalSecondsAsBigDecimal(data : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : java.math.BigDecimal;
	
	
}
/**
* Represents date time data
*/
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$AbstractDateTimeDV$DateTimeData') @:internal extern class AbstractDateTimeDV_DateTimeData implements com.sun.org.apache.xerces.internal.xs.datatypes.XSDateTime
{
	@:overload @:public public function new(originalValue : String, type : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV) : Void;
	
	@:overload @:public public function new(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Float, utc : Int, originalValue : String, normalized : Bool, type : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV) : Void;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public @:synchronized public function toString() : String;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getYear()
	*/
	@:overload @:public public function getYears() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getMonth()
	*/
	@:overload @:public public function getMonths() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getDay()
	*/
	@:overload @:public public function getDays() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getHour()
	*/
	@:overload @:public public function getHours() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getMinutes()
	*/
	@:overload @:public public function getMinutes() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getSeconds()
	*/
	@:overload @:public public function getSeconds() : Float;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#hasTimeZone()
	*/
	@:overload @:public public function hasTimeZone() : Bool;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getTimeZoneHours()
	*/
	@:overload @:public public function getTimeZoneHours() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getTimeZoneMinutes()
	*/
	@:overload @:public public function getTimeZoneMinutes() : Int;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getLexicalValue()
	*/
	@:overload @:public public function getLexicalValue() : String;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#normalize()
	*/
	@:overload @:public public function normalize() : com.sun.org.apache.xerces.internal.xs.datatypes.XSDateTime;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#isNormalized()
	*/
	@:overload @:public public function isNormalized() : Bool;
	
	@:overload @:public public function clone() : Dynamic;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getXMLGregorianCalendar()
	*/
	@:overload @:public public function getXMLGregorianCalendar() : javax.xml.datatype.XMLGregorianCalendar;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.datatypes.XSDateTime#getDuration()
	*/
	@:overload @:public public function getDuration() : javax.xml.datatype.Duration;
	
	
}
