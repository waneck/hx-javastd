package com.sun.org.apache.xpath.internal.operations;
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
* $Id: And.java,v 1.2.4.1 2005/09/14 21:31:42 jeffsuttor Exp $
*/
extern class And extends com.sun.org.apache.xpath.internal.operations.Operation
{
	/**
	* AND two expressions and return the boolean result. Override
	* superclass method for optimization purposes.
	*
	* @param xctxt The runtime execution context.
	*
	* @return {@link com.sun.org.apache.xpath.internal.objects.XBoolean#S_TRUE} or
	* {@link com.sun.org.apache.xpath.internal.objects.XBoolean#S_FALSE}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Evaluate this operation directly to a boolean.
	*
	* @param xctxt The runtime execution context.
	*
	* @return The result of the operation as a boolean.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function bool(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Bool;
	
	
}
