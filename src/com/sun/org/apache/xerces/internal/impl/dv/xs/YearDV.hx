package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004,2005 The Apache Software Foundation.
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
extern class YearDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV
{
	/**
	* Convert a string to a compiled form
	*
	* @param  content The lexical representation of time
	* @return a valid and normalized time object
	*/
	@:overload override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	/**
	* Parses, validates and computes normalized version of gYear object
	*
	* @param str    The lexical representation of year object CCYY
	*               with possible time zone Z or (-),(+)hh:mm
	* @return normalized date representation
	* @exception SchemaDateTimeException Invalid lexical representation
	*/
	@:overload private function parse(str : String) : DateTimeData;
	
	/**
	* Converts year object representation to String
	*
	* @param date   year object
	* @return lexical representation of month: CCYY with optional time zone sign
	*/
	@:overload private function dateToString(date : DateTimeData) : String;
	
	@:overload private function getXMLGregorianCalendar(date : DateTimeData) : javax.xml.datatype.XMLGregorianCalendar;
	
	
}
