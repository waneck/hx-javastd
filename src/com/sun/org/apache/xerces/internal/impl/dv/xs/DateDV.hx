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
extern class DateDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.DateTimeDV
{
	/**
	* Validator for <date> datatype (W3C Schema datatypes)
	*
	* @xerces.internal
	*
	* @author Elena Litani
	* @author Gopal Sharma, SUN Microsystems Inc.
	*
	* @version $Id: DateDV.java,v 1.7 2010-11-01 04:39:46 joehw Exp $
	*/
	@:overload override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	/**
	* Parses, validates and computes normalized version of dateTime object
	*
	* @param str    The lexical representation of dateTime object CCYY-MM-DD
	*               with possible time zone Z or (-),(+)hh:mm
	* @return normalized dateTime representation
	* @exception SchemaDateTimeException Invalid lexical representation
	*/
	@:overload override private function parse(str : String) : DateTimeData;
	
	@:overload private function dateToString(date : DateTimeData) : String;
	
	@:overload override private function getXMLGregorianCalendar(date : DateTimeData) : javax.xml.datatype.XMLGregorianCalendar;
	
	
}
