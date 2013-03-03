package com.sun.org.apache.xerces.internal.impl.dv.xs;
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
@:internal extern class YearMonthDurationDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.DurationDV
{
	/**
	* Used to validate the <yearMonthDuration> type
	*
	* @xerces.internal
	*
	* @author Ankit Pasricha, IBM
	*
	* @version $Id: YearMonthDurationDV.java,v 1.6 2010-11-01 04:39:47 joehw Exp $
	*/
	@:overload @:public override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload @:protected override private function getDuration(date : com.sun.org.apache.xerces.internal.impl.dv.xs.AbstractDateTimeDV.AbstractDateTimeDV_DateTimeData) : javax.xml.datatype.Duration;
	
	
}
