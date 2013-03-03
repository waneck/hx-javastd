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
extern class QNameDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	@:overload @:public override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload @:public override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload @:public override public function getDataLength(value : Dynamic) : Int;
	
	
}
/**
* represent QName data
*/
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$QNameDV$XQName') @:internal extern class QNameDV_XQName extends com.sun.org.apache.xerces.internal.xni.QName implements com.sun.org.apache.xerces.internal.xs.datatypes.XSQName
{
	/** Constructs a QName with the specified values. */
	@:overload @:public public function new(prefix : String, localpart : String, rawname : String, uri : String) : Void;
	
	/** Returns true if the two objects are equal. */
	@:overload @:public override public function equals(object : Dynamic) : Bool;
	
	@:overload @:public @:synchronized override public function toString() : String;
	
	@:overload @:public public function getJAXPQName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getXNIQName() : com.sun.org.apache.xerces.internal.xni.QName;
	
	
}
