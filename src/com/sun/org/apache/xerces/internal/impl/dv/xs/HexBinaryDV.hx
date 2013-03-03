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
extern class HexBinaryDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	/**
	* Represent the schema type "hexBinary"
	*
	* @xerces.internal
	*
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	* @author Sandy Gao, IBM
	*
	* @version $Id: HexBinaryDV.java,v 1.7 2010-11-01 04:39:47 joehw Exp $
	*/
	@:overload @:public override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload @:public override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload @:public override public function getDataLength(value : Dynamic) : Int;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$HexBinaryDV$XHex') @:internal extern class HexBinaryDV_XHex extends com.sun.org.apache.xerces.internal.impl.dv.util.ByteListImpl
{
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:synchronized override public function toString() : String;
	
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	
}
