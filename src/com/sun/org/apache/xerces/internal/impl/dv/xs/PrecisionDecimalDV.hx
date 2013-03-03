package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
@:internal extern class PrecisionDecimalDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator#getAllowedFacets()
	*/
	@:overload @:public override public function getAllowedFacets() : java.StdTypes.Int16;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator#getActualValue(java.lang.String, com.sun.org.apache.xerces.internal.impl.dv.ValidationContext)
	*/
	@:overload @:public override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload @:public override public function compare(value1 : Dynamic, value2 : Dynamic) : Int;
	
	@:overload @:public override public function getFractionDigits(value : Dynamic) : Int;
	
	@:overload @:public override public function getTotalDigits(value : Dynamic) : Int;
	
	@:overload @:public override public function isIdentical(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	
}
/**
* Validator for <precisionDecimal> datatype (W3C Schema 1.1)
*
* @xerces.experimental
*
* @author Ankit Pasricha, IBM
*
*/
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$PrecisionDecimalDV$XPrecisionDecimal') @:internal extern class PrecisionDecimalDV_XPrecisionDecimal
{
	@:overload @:public public function equals(val : Dynamic) : Bool;
	
	@:overload @:public public function compareTo(val : com.sun.org.apache.xerces.internal.impl.dv.xs.PrecisionDecimalDV.PrecisionDecimalDV_XPrecisionDecimal) : Int;
	
	@:overload @:public @:synchronized public function toString() : String;
	
	/**
	* @param decimal
	* @return
	*/
	@:overload @:public public function isIdentical(decimal : com.sun.org.apache.xerces.internal.impl.dv.xs.PrecisionDecimalDV.PrecisionDecimalDV_XPrecisionDecimal) : Bool;
	
	
}
