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
* $Id: FuncExtFunction.java,v 1.2.4.2 2005/09/14 20:18:43 jeffsuttor Exp $
*/
extern class FuncExtFunction extends com.sun.org.apache.xpath.internal.functions.Function
{
	/**
	* This function is used to fixup variables from QNames to stack frame
	* indexes at stylesheet build time.
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	* NEEDSDOC @param globalsSize
	*/
	@:overload override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Return the namespace of the extension function.
	*
	* @return The namespace of the extension function.
	*/
	@:overload public function getNamespace() : String;
	
	/**
	* Return the name of the extension function.
	*
	* @return The name of the extension function.
	*/
	@:overload public function getFunctionName() : String;
	
	/**
	* Return the method key of the extension function.
	*
	* @return The method key of the extension function.
	*/
	@:overload public function getMethodKey() : Dynamic;
	
	/**
	* Return the nth argument passed to the extension function.
	*
	* @param n The argument number index.
	* @return The Expression object at the given index.
	*/
	@:overload public function getArg(n : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Return the number of arguments that were passed
	* into this extension function.
	*
	* @return The number of arguments.
	*/
	@:overload public function getArgCount() : Int;
	
	/**
	* Create a new FuncExtFunction based on the qualified name of the extension,
	* and a unique method key.
	*
	* @param namespace The namespace for the extension function, which should
	*                  not normally be null or empty.
	* @param extensionName The local name of the extension.
	* @param methodKey Unique method key, which is passed to
	*                  ExtensionsTable#extFunction in order to allow caching
	*                  of the method.
	*/
	@:overload public function new(namespace : String, extensionName : String, methodKey : Dynamic) : Void;
	
	/**
	* Execute the function.  The function must return
	* a valid object.
	* @param xctxt The current execution context.
	* @return A valid XObject.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
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
	* Call the visitors for the function arguments.
	*/
	@:overload override public function callArgVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* Set the parent node.
	* For an extension function, we also need to set the parent
	* node for all argument expressions.
	*
	* @param n The parent node
	*/
	@:overload override public function exprSetParent(n : com.sun.org.apache.xpath.internal.ExpressionNode) : Void;
	
	/**
	* Constructs and throws a WrongNumberArgException with the appropriate
	* message for this function object.  This class supports an arbitrary
	* number of arguments, so this method must never be called.
	*
	* @throws WrongNumberArgsException
	*/
	@:overload override private function reportWrongNumberArgs() : Void;
	
	/**
	* Return the name of the extesion function in string format
	*/
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$org$apache$xpath$internal$functions$FuncExtFunction$ArgExtOwner') @:internal extern class FuncExtFunction_ArgExtOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	
}
