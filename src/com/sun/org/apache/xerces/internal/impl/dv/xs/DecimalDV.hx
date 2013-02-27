package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001,2002,2004,2005 The Apache Software Foundation.
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
extern class DecimalDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	/**
	* Represent the schema type "decimal"
	*
	* @xerces.internal
	*
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	* @author Sandy Gao, IBM
	*
	*/
	@:overload @:final override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload @:final override public function compare(value1 : Dynamic, value2 : Dynamic) : Int;
	
	@:overload @:final override public function getTotalDigits(value : Dynamic) : Int;
	
	@:overload @:final override public function getFractionDigits(value : Dynamic) : Int;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$DecimalDV$XDecimal') @:internal extern class DecimalDV_XDecimal implements com.sun.org.apache.xerces.internal.xs.datatypes.XSDecimal
{
	@:overload public function equals(val : Dynamic) : Bool;
	
	@:overload public function compareTo(val : DecimalDV_XDecimal) : Int;
	
	@:overload @:synchronized public function toString() : String;
	
	@:overload public function getBigDecimal() : java.math.BigDecimal;
	
	@:overload public function getBigInteger() : java.math.BigInteger;
	
	@:overload public function getLong() : haxe.Int64;
	
	@:overload public function getInt() : Int;
	
	@:overload public function getShort() : java.StdTypes.Int16;
	
	@:overload public function getByte() : java.StdTypes.Int8;
	
	
}
