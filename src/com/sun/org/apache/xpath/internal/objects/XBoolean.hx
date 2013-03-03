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
* $Id: XBoolean.java,v 1.2.4.2 2005/09/14 20:34:45 jeffsuttor Exp $
*/
/**
* This class represents an XPath boolean object, and is capable of
* converting the boolean to other types, such as a string.
* @xsl.usage advanced
*/
extern class XBoolean extends com.sun.org.apache.xpath.internal.objects.XObject
{
	/**
	* A true boolean object so we don't have to keep creating them.
	* @xsl.usage internal
	*/
	@:public @:static @:final public static var S_TRUE(default, null) : com.sun.org.apache.xpath.internal.objects.XBoolean;
	
	/**
	* A true boolean object so we don't have to keep creating them.
	* @xsl.usage internal
	*/
	@:public @:static @:final public static var S_FALSE(default, null) : com.sun.org.apache.xpath.internal.objects.XBoolean;
	
	/**
	* Construct a XBoolean object.
	*
	* @param b Value of the boolean object
	*/
	@:overload @:public public function new(b : Bool) : Void;
	
	/**
	* Construct a XBoolean object.
	*
	* @param b Value of the boolean object
	*/
	@:overload @:public public function new(b : Null<Bool>) : Void;
	
	/**
	* Tell that this is a CLASS_BOOLEAN.
	*
	* @return type of CLASS_BOOLEAN
	*/
	@:overload @:public override public function getType() : Int;
	
	/**
	* Given a request type, return the equivalent string.
	* For diagnostic purposes.
	*
	* @return type string "#BOOLEAN"
	*/
	@:overload @:public override public function getTypeString() : String;
	
	/**
	* Cast result object to a number.
	*
	* @return numeric value of the object value
	*/
	@:overload @:public override public function num() : Float;
	
	/**
	* Cast result object to a boolean.
	*
	* @return The object value as a boolean
	*/
	@:overload @:public override public function bool() : Bool;
	
	/**
	* Cast result object to a string.
	*
	* @return The object's value as a string
	*/
	@:overload @:public override public function str() : String;
	
	/**
	* Return a java object that's closest to the representation
	* that should be handed to an extension.
	*
	* @return The object's value as a java object
	*/
	@:overload @:public override public function object() : Dynamic;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 Object to compare to this
	*
	* @return True if the two objects are equal
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	
}
