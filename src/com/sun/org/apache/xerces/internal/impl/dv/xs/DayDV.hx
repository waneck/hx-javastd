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
extern class DayDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV
{
	@:overload override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	/**
	* Parses, validates and computes normalized version of gDay object
	*
	* @param str    The lexical representation of gDay object ---DD
	*               with possible time zone Z or (-),(+)hh:mm
	*               Pattern: ---(\\d\\d)(Z|(([-+])(\\d\\d)(:(\\d\\d))?
	* @return normalized date representation
	* @exception SchemaDateTimeException Invalid lexical representation
	*/
	@:overload private function parse(str : String) : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData;
	
	/**
	* Converts gDay object representation to String
	*
	* @param date   gDay object
	* @return lexical representation of gDay: ---DD with an optional time zone sign
	*/
	@:overload private function dateToString(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : String;
	
	@:overload private function getXMLGregorianCalendar(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : javax.xml.datatype.XMLGregorianCalendar;
	
	
}
