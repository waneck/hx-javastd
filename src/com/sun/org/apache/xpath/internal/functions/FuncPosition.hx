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
* $Id: FuncPosition.java,v 1.2.4.1 2005/09/14 20:18:45 jeffsuttor Exp $
*/
extern class FuncPosition extends com.sun.org.apache.xpath.internal.functions.Function
{
	/**
	* Figure out if we're executing a toplevel expression.
	* If so, we can't be inside of a predicate.
	*/
	@:overload @:public override public function postCompileStep(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler) : Void;
	
	/**
	* Get the position in the current context node list.
	*
	* @param xctxt Runtime XPath context.
	*
	* @return The current position of the itteration in the context node list,
	*         or -1 if there is no active context node list.
	*/
	@:overload @:public public function getPositionInContextNodeList(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Execute the function.  The function must return
	* a valid object.
	* @param xctxt The current execution context.
	* @return A valid XObject.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* No arguments to process, so this does nothing.
	*/
	@:overload @:public override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	
}
