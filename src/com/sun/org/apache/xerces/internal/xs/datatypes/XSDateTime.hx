package com.sun.org.apache.xerces.internal.xs.datatypes;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004,2005 The Apache Software Foundation.
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
extern interface XSDateTime
{
	/**
	* @return years - can be negative for date-time related types;
	*
	*/
	@:overload public function getYears() : Int;
	
	/**
	* @return months - can be negative only for duration types;
	*                  For duration types, it returns years*12 + months
	*/
	@:overload public function getMonths() : Int;
	
	/**
	* @return days - cannot be negative;
	*
	*/
	@:overload public function getDays() : Int;
	
	/**
	* @return hours - cannot be negative;
	*
	*/
	@:overload public function getHours() : Int;
	
	/**
	* @return minutes - cannot be negative;
	*
	*/
	@:overload public function getMinutes() : Int;
	
	/**
	* @return seconds - can be negative only for durations;
	*                   For duration types, it returns days*24*3600 + hours*3600
	*                                                  + minutes*60 + seconds
	*/
	@:overload public function getSeconds() : Float;
	
	/**
	* @return boolean (true when timezone is specified in the original lexical value)
	*
	*/
	@:overload public function hasTimeZone() : Bool;
	
	/**
	* @return timezone hours (for GMT-xx:xx this will be negative),
	*
	*/
	@:overload public function getTimeZoneHours() : Int;
	
	/**
	* @return timezone minutes (for GMT-xx:xx this will be negative),
	*
	*/
	@:overload public function getTimeZoneMinutes() : Int;
	
	/**
	* @return the original lexical value
	*/
	@:overload public function getLexicalValue() : String;
	
	/**
	* @return a new date-time related object with normalized values
	*         (has no effect on objects already
	*          normalized)
	*/
	@:overload public function normalize() : com.sun.org.apache.xerces.internal.xs.datatypes.XSDateTime;
	
	/**
	* @return whether a date-time related object is normalized or not
	*         (value is not useful for types where timezone is not specified)
	*/
	@:overload public function isNormalized() : Bool;
	
	/**
	* @return an un-normalized XMLGregorianCalendar (if applicable otherwise null)
	*/
	@:overload public function getXMLGregorianCalendar() : javax.xml.datatype.XMLGregorianCalendar;
	
	/**
	* @return a Duration (if applicable otherwise null)
	*/
	@:overload public function getDuration() : javax.xml.datatype.Duration;
	
	
}
