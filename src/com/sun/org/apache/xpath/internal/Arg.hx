package com.sun.org.apache.xpath.internal;
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
* $Id: Arg.java,v 1.1.2.1 2005/08/01 01:30:11 jeffsuttor Exp $
*/
extern class Arg
{
	/**
	* Get the qualified name for this argument.
	*
	* @return QName object containing the qualified name
	*/
	@:overload @:public @:final public function getQName() : com.sun.org.apache.xml.internal.utils.QName;
	
	/**
	* Set the qualified name for this argument.
	*
	* @param name QName object representing the new Qualified Name.
	*/
	@:overload @:public @:final public function setQName(name : com.sun.org.apache.xml.internal.utils.QName) : Void;
	
	/**
	* Get the value for this argument.
	*
	* @return the argument's stored XObject value.
	* @see #setVal(XObject)
	*/
	@:overload @:public @:final public function getVal() : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Set the value of this argument.
	*
	* @param val an XObject representing the arguments's value.
	* @see #getVal()
	*/
	@:overload @:public @:final public function setVal(val : com.sun.org.apache.xpath.internal.objects.XObject) : Void;
	
	/**
	* Have the object release it's resources.
	* Call only when the variable or argument is going out of scope.
	*/
	@:overload @:public public function detach() : Void;
	
	/**
	* Get the value expression for this argument.
	*
	* @return String containing the expression previously stored into this
	* argument
	* @see #setExpression
	*/
	@:overload @:public public function getExpression() : String;
	
	/**
	* Set the value expression for this argument.
	*
	* @param expr String containing the expression to be stored as this
	* argument's value.
	* @see #getExpression
	*/
	@:overload @:public public function setExpression(expr : String) : Void;
	
	/**
	* Tell if this variable is a parameter passed with a with-param or as
	* a top-level parameter.
	*/
	@:overload @:public public function isFromWithParam() : Bool;
	
	/**
	* Tell if this variable is currently visible.
	*/
	@:overload @:public public function isVisible() : Bool;
	
	/**
	* Update visibility status of this variable.
	*/
	@:overload @:public public function setIsVisible(b : Bool) : Void;
	
	/**
	* Construct a dummy parameter argument, with no QName and no
	* value (either expression string or value XObject). isVisible
	* defaults to true.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a parameter argument that contains an expression.
	*
	* @param qname Name of the argument, expressed as a QName object.
	* @param expression String to be stored as this argument's value expression.
	* @param isFromWithParam True if this is a parameter variable.
	*/
	@:overload @:public public function new(qname : com.sun.org.apache.xml.internal.utils.QName, expression : String, isFromWithParam : Bool) : Void;
	
	/**
	* Construct a parameter argument which has an XObject value.
	* isVisible defaults to true.
	*
	* @param qname Name of the argument, expressed as a QName object.
	* @param val Value of the argument, expressed as an XObject
	*/
	@:overload @:public public function new(qname : com.sun.org.apache.xml.internal.utils.QName, val : com.sun.org.apache.xpath.internal.objects.XObject) : Void;
	
	/**
	* Equality function specialized for the variable name.  If the argument
	* is not a qname, it will deligate to the super class.
	*
	* @param   obj   the reference object with which to compare.
	* @return  <code>true</code> if this object is the same as the obj
	*          argument; <code>false</code> otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Construct a parameter argument.
	*
	* @param qname Name of the argument, expressed as a QName object.
	* @param val Value of the argument, expressed as an XObject
	* @param isFromWithParam True if this is a parameter variable.
	*/
	@:overload @:public public function new(qname : com.sun.org.apache.xml.internal.utils.QName, val : com.sun.org.apache.xpath.internal.objects.XObject, isFromWithParam : Bool) : Void;
	
	
}
