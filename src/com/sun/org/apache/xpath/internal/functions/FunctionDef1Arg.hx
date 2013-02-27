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
* $Id: FunctionDef1Arg.java,v 1.2.4.1 2005/09/14 20:18:42 jeffsuttor Exp $
*/
extern class FunctionDef1Arg extends com.sun.org.apache.xpath.internal.functions.FunctionOneArg
{
	/**
	* Execute the first argument expression that is expected to return a
	* nodeset.  If the argument is null, then return the current context node.
	*
	* @param xctxt Runtime XPath context.
	*
	* @return The first node of the executed nodeset, or the current context
	*         node if the first argument is null.
	*
	* @throws javax.xml.transform.TransformerException if an error occurs while
	*                                   executing the argument expression.
	*/
	@:overload private function getArg0AsNode(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Tell if the expression is a nodeset expression.
	* @return true if the expression can be represented as a nodeset.
	*/
	@:overload public function Arg0IsNodesetExpr() : Bool;
	
	/**
	* Execute the first argument expression that is expected to return a
	* string.  If the argument is null, then get the string value from the
	* current context node.
	*
	* @param xctxt Runtime XPath context.
	*
	* @return The string value of the first argument, or the string value of the
	*         current context node if the first argument is null.
	*
	* @throws javax.xml.transform.TransformerException if an error occurs while
	*                                   executing the argument expression.
	*/
	@:overload private function getArg0AsString(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Execute the first argument expression that is expected to return a
	* number.  If the argument is null, then get the number value from the
	* current context node.
	*
	* @param xctxt Runtime XPath context.
	*
	* @return The number value of the first argument, or the number value of the
	*         current context node if the first argument is null.
	*
	* @throws javax.xml.transform.TransformerException if an error occurs while
	*                                   executing the argument expression.
	*/
	@:overload private function getArg0AsNumber(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Float;
	
	/**
	* Check that the number of arguments passed to this function is correct.
	*
	* @param argNum The number of arguments that is being passed to the function.
	*
	* @throws WrongNumberArgsException if the number of arguments is not 0 or 1.
	*/
	@:overload override public function checkNumberArgs(argNum : Int) : Void;
	
	/**
	* Constructs and throws a WrongNumberArgException with the appropriate
	* message for this function object.
	*
	* @throws WrongNumberArgsException
	*/
	@:overload override private function reportWrongNumberArgs() : Void;
	
	/**
	* Tell if this expression or it's subexpressions can traverse outside
	* the current subtree.
	*
	* @return true if traversal outside the context node's subtree can occur.
	*/
	@:overload override public function canTraverseOutsideSubtree() : Bool;
	
	
}
