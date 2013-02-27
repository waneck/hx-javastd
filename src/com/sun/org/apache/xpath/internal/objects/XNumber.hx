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
* $Id: XNumber.java,v 1.2.4.2 2005/09/14 20:34:46 jeffsuttor Exp $
*/
extern class XNumber extends com.sun.org.apache.xpath.internal.objects.XObject
{
	/**
	* Construct a XNodeSet object.
	*
	* @param d Value of the object
	*/
	@:overload public function new(d : Float) : Void;
	
	/**
	* Construct a XNodeSet object.
	*
	* @param num Value of the object
	*/
	@:overload public function new(num : java.lang.Number) : Void;
	
	/**
	* Tell that this is a CLASS_NUMBER.
	*
	* @return node type CLASS_NUMBER
	*/
	@:overload override public function getType() : Int;
	
	/**
	* Given a request type, return the equivalent string.
	* For diagnostic purposes.
	*
	* @return type string "#NUMBER"
	*/
	@:overload override public function getTypeString() : String;
	
	/**
	* Cast result object to a number.
	*
	* @return the value of the XNumber object
	*/
	@:overload override public function num() : Float;
	
	/**
	* Evaluate expression to a number.
	*
	* @return 0.0
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function num(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Float;
	
	/**
	* Cast result object to a boolean.
	*
	* @return false if the value is NaN or equal to 0.0
	*/
	@:overload override public function bool() : Bool;
	
	/**
	* Cast result object to a string.
	*
	* @return "NaN" if the number is NaN, Infinity or -Infinity if
	* the number is infinite or the string value of the number.
	*/
	@:overload override public function str() : String;
	
	/**
	* Return a java object that's closest to the representation
	* that should be handed to an extension.
	*
	* @return The value of this XNumber as a Double object
	*/
	@:overload override public function object() : Dynamic;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 Object to compare this to
	*
	* @return true if the two objects are equal
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if this expression returns a stable number that will not change during
	* iterations within the expression.  This is used to determine if a proximity
	* position predicate can indicate that no more searching has to occur.
	*
	*
	* @return true if the expression represents a stable number.
	*/
	@:overload override public function isStableNumber() : Bool;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	
}
