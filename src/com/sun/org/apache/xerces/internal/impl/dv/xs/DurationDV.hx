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
extern class DurationDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV
{
	/**
	* Validator for &lt;duration&gt; datatype (W3C Schema Datatypes)
	*
	* @xerces.internal
	*
	* @author Elena Litani
	* @author Gopal Sharma, SUN Microsystem Inc.
	* @version $Id: DurationDV.java,v 1.7 2010-11-01 04:39:47 joehw Exp $
	*/
	public static var DURATION_TYPE(default, null) : Int;
	
	public static var YEARMONTHDURATION_TYPE(default, null) : Int;
	
	public static var DAYTIMEDURATION_TYPE(default, null) : Int;
	
	@:overload override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	/**
	* Parses, validates and computes normalized version of duration object
	*
	* @param str    The lexical representation of duration object PnYn MnDTnH nMnS
	* @param durationType
	* @return normalized date representation
	* @exception SchemaDateTimeException Invalid lexical representation
	*/
	@:overload private function parse(str : String, durationType : Int) : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData;
	
	/**
	* Compares 2 given durations. (refer to W3C Schema Datatypes "3.2.6 duration")
	*
	* @param date1  Unnormalized duration
	* @param date2  Unnormalized duration
	* @param strict (min/max)Exclusive strict == true ( LESS_THAN ) or ( GREATER_THAN )
	*               (min/max)Inclusive strict == false (LESS_EQUAL) or (GREATER_EQUAL)
	* @return INDETERMINATE if the order relationship between date1 and date2 is indeterminate.
	* EQUAL if the order relation between date1 and date2 is EQUAL.
	* If the strict parameter is true, return LESS_THAN if date1 is less than date2 and
	* return GREATER_THAN if date1 is greater than date2.
	* If the strict parameter is false, return LESS_THAN if date1 is less than OR equal to date2 and
	* return GREATER_THAN if date1 is greater than OR equal to date2
	*/
	@:overload override private function compareDates(date1 : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData, date2 : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData, strict : Bool) : java.StdTypes.Int16;
	
	@:overload override private function parseSecond(buffer : String, start : Int, end : Int) : Float;
	
	@:overload override private function dateToString(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : String;
	
	@:overload override private function getDuration(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : javax.xml.datatype.Duration;
	
	
}
