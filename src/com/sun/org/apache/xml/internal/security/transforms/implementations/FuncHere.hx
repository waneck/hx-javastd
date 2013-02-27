package com.sun.org.apache.xml.internal.security.transforms.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class FuncHere extends com.sun.org.apache.xpath.internal.functions.Function
{
	/**
	* The here function returns a node-set containing the attribute or
	* processing instruction node or the parent element of the text node
	* that directly bears the XPath expression.  This expression results
	* in an error if the containing XPath expression does not appear in the
	* same XML document against which the XPath expression is being evaluated.
	*
	* @param xctxt
	* @return the xobject
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* No arguments to process, so this does nothing.
	* @param vars
	* @param globalsSize
	*/
	@:overload override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	
}
