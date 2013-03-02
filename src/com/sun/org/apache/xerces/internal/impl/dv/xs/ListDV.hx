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
extern class ListDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	/**
	* Represent the schema list types
	*
	* @xerces.internal
	*
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	* @author Sandy Gao, IBM
	*
	* @version $Id: ListDV.java,v 1.7 2010-11-01 04:39:47 joehw Exp $
	*/
	@:overload override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload override public function getDataLength(value : Dynamic) : Int;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$ListDV$ListData') @:internal extern class ListDV_ListData extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList
{
	@:overload public function new(data : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:synchronized override public function toString() : String;
	
	@:overload public function getLength() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload override public function contains(item : Dynamic) : Bool;
	
	@:overload public function item(index : Int) : Dynamic;
	
	/*
	* List methods
	*/
	@:overload public function get(index : Int) : Dynamic;
	
	@:overload override public function size() : Int;
	
	
}
