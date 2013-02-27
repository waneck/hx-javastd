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
* $Id: XPathFactory.java,v 1.1.2.1 2005/08/01 01:30:14 jeffsuttor Exp $
*/
extern interface XPathFactory
{
	/**
	* Create an XPath.
	*
	* @param exprString The XPath expression string.
	* @param locator The location of the expression string, mainly for diagnostic
	*                purposes.
	* @param prefixResolver This will be called in order to resolve prefixes
	*        to namespace URIs.
	* @param type One of {@link com.sun.org.apache.xpath.internal.XPath#SELECT} or
	*             {@link com.sun.org.apache.xpath.internal.XPath#MATCH}.
	*
	* @return an XPath ready for execution.
	*/
	@:overload public function create(exprString : String, locator : javax.xml.transform.SourceLocator, prefixResolver : com.sun.org.apache.xml.internal.utils.PrefixResolver, type : Int) : com.sun.org.apache.xpath.internal.XPath;
	
	
}
