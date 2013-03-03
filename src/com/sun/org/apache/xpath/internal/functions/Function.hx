package com.sun.org.apache.xpath.internal.functions;
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
* $Id: Function.java,v 1.2.4.1 2005/09/14 20:18:43 jeffsuttor Exp $
*/
extern class Function extends com.sun.org.apache.xpath.internal.Expression
{
	/**
	* Set an argument expression for a function.  This method is called by the
	* XPath compiler.
	*
	* @param arg non-null expression that represents the argument.
	* @param argNum The argument number index.
	*
	* @throws WrongNumberArgsException If the argNum parameter is beyond what
	* is specified for this function.
	*/
	@:overload @:public public function setArg(arg : com.sun.org.apache.xpath.internal.Expression, argNum : Int) : Void;
	
	/**
	* Check that the number of arguments passed to this function is correct.
	* This method is meant to be overloaded by derived classes, to check for
	* the number of arguments for a specific function type.  This method is
	* called by the compiler for static number of arguments checking.
	*
	* @param argNum The number of arguments that is being passed to the function.
	*
	* @throws WrongNumberArgsException
	*/
	@:overload @:public public function checkNumberArgs(argNum : Int) : Void;
	
	/**
	* Constructs and throws a WrongNumberArgException with the appropriate
	* message for this function object.  This method is meant to be overloaded
	* by derived classes so that the message will be as specific as possible.
	*
	* @throws WrongNumberArgsException
	*/
	@:overload @:protected private function reportWrongNumberArgs() : Void;
	
	/**
	* Execute an XPath function object.  The function must return
	* a valid object.
	* @param xctxt The execution current context.
	* @return A valid XObject.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Call the visitors for the function arguments.
	*/
	@:overload @:public public function callArgVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload @:public override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload @:public override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	/**
	* This function is currently only being used by Position()
	* and Last(). See respective functions for more detail.
	*/
	@:overload @:public public function postCompileStep(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler) : Void;
	
	
}
