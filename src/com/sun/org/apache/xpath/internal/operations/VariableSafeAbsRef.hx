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
* $Id: VariableSafeAbsRef.java,v 1.2.4.1 2005/09/14 21:31:45 jeffsuttor Exp $
*/
extern class VariableSafeAbsRef extends com.sun.org.apache.xpath.internal.operations.Variable
{
	/**
	* Dereference the variable, and return the reference value.  Note that lazy
	* evaluation will occur.  If a variable within scope is not found, a warning
	* will be sent to the error listener, and an empty nodeset will be returned.
	*
	*
	* @param xctxt The runtime execution context.
	*
	* @return The evaluated variable, or an empty nodeset if not found.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, destructiveOK : Bool) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	
}
