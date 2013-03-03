package com.sun.org.apache.xpath.internal.objects;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XNull.java,v 1.2.4.1 2005/09/14 20:34:46 jeffsuttor Exp $
*/
extern class XNull extends com.sun.org.apache.xpath.internal.objects.XNodeSet
{
	/**
	* Create an XObject.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Tell what kind of class this is.
	*
	* @return type CLASS_NULL
	*/
	@:overload @:public override public function getType() : Int;
	
	/**
	* Given a request type, return the equivalent string.
	* For diagnostic purposes.
	*
	* @return type string "#CLASS_NULL"
	*/
	@:overload @:public override public function getTypeString() : String;
	
	/**
	* Cast result object to a number.
	*
	* @return 0.0
	*/
	@:overload @:public override public function num() : Float;
	
	/**
	* Cast result object to a boolean.
	*
	* @return false
	*/
	@:overload @:public override public function bool() : Bool;
	
	/**
	* Cast result object to a string.
	*
	* @return empty string ""
	*/
	@:overload @:public override public function str() : String;
	
	/**
	* Cast result object to a result tree fragment.
	*
	* @param support XPath context to use for the conversion
	*
	* @return The object as a result tree fragment.
	*/
	@:overload @:public override public function rtf(support : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if the given object is of type CLASS_NULL
	*/
	@:overload @:public override public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	
}
