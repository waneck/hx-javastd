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
* $Id: FunctionOneArg.java,v 1.2.4.1 2005/09/14 20:18:45 jeffsuttor Exp $
*/
extern class FunctionOneArg extends com.sun.org.apache.xpath.internal.functions.Function implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* Return the first argument passed to the function (at index 0).
	*
	* @return An expression that represents the first argument passed to the
	*         function.
	*/
	@:overload public function getArg0() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Set an argument expression for a function.  This method is called by the
	* XPath compiler.
	*
	* @param arg non-null expression that represents the argument.
	* @param argNum The argument number index.
	*
	* @throws WrongNumberArgsException If the argNum parameter is greater than 0.
	*/
	@:overload override public function setArg(arg : com.sun.org.apache.xpath.internal.Expression, argNum : Int) : Void;
	
	/**
	* Check that the number of arguments passed to this function is correct.
	*
	*
	* @param argNum The number of arguments that is being passed to the function.
	*
	* @throws WrongNumberArgsException
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
	
	/**
	* This function is used to fixup variables from QNames to stack frame
	* indexes at stylesheet build time.
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	*/
	@:overload override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callArgVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
