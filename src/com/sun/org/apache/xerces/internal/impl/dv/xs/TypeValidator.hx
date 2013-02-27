package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class TypeValidator
{
	/**
	* All primitive types plus ID/IDREF/ENTITY/INTEGER are derived from this abstract
	* class. It provides extra information XSSimpleTypeDecl requires from each
	* type: allowed facets, converting String to actual value, check equality,
	* comparison, etc.
	*
	* @xerces.internal
	*
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	* @author Sandy Gao, IBM
	*
	*/
	@:overload @:abstract public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload @:abstract public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload public function checkExtraRules(value : Dynamic, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Void;
	
	public static var LESS_THAN(default, null) : java.StdTypes.Int16;
	
	public static var EQUAL(default, null) : java.StdTypes.Int16;
	
	public static var GREATER_THAN(default, null) : java.StdTypes.Int16;
	
	public static var INDETERMINATE(default, null) : java.StdTypes.Int16;
	
	@:overload public function isIdentical(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	@:overload public function compare(value1 : Dynamic, value2 : Dynamic) : Int;
	
	@:overload public function getDataLength(value : Dynamic) : Int;
	
	@:overload public function getTotalDigits(value : Dynamic) : Int;
	
	@:overload public function getFractionDigits(value : Dynamic) : Int;
	
	@:overload @:final public static function isDigit(ch : java.StdTypes.Char16) : Bool;
	
	@:overload @:final public static function getDigit(ch : java.StdTypes.Char16) : Int;
	
	
}
