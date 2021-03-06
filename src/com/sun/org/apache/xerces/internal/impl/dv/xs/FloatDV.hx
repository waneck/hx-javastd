package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
extern class FloatDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	/**
	* Represent the schema type "float"
	*
	* @xerces.internal
	*
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	* @author Sandy Gao, IBM
	*
	* @version $Id: FloatDV.java,v 1.7 2010-11-01 04:39:47 joehw Exp $
	*/
	@:overload @:public override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload @:public override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload @:public override public function compare(value1 : Dynamic, value2 : Dynamic) : Int;
	
	@:overload @:public override public function isIdentical(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$FloatDV$XFloat') @:internal extern class FloatDV_XFloat implements com.sun.org.apache.xerces.internal.xs.datatypes.XSFloat
{
	@:overload @:public public function new(s : String) : Void;
	
	@:overload @:public public function equals(val : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function isIdentical(val : com.sun.org.apache.xerces.internal.impl.dv.xs.FloatDV.FloatDV_XFloat) : Bool;
	
	@:overload @:public @:synchronized public function toString() : String;
	
	@:overload @:public public function getValue() : Single;
	
	
}
