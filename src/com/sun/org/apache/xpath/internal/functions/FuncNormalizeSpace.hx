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
* $Id: FuncNormalizeSpace.java,v 1.2.4.1 2005/09/14 20:18:46 jeffsuttor Exp $
*/
extern class FuncNormalizeSpace extends com.sun.org.apache.xpath.internal.functions.FunctionDef1Arg
{
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
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression.
	*
	*
	* @param xctxt The XPath runtime context.
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	*/
	@:overload override public function executeCharsToContentHandler(xctxt : com.sun.org.apache.xpath.internal.XPathContext, handler : org.xml.sax.ContentHandler) : Void;
	
	
}