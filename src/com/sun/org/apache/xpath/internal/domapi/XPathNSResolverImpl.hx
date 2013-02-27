package com.sun.org.apache.xpath.internal.domapi;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2005 The Apache Software Foundation.
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
* $Id: XPathNSResolverImpl.java,v 1.2.4.1 2005/09/10 04:13:19 jeffsuttor Exp $
*/
@:internal extern class XPathNSResolverImpl extends com.sun.org.apache.xml.internal.utils.PrefixResolverDefault implements org.w3c.dom.xpath.XPathNSResolver
{
	/**
	* Constructor for XPathNSResolverImpl.
	* @param xpathExpressionContext
	*/
	@:overload public function new(xpathExpressionContext : org.w3c.dom.Node) : Void;
	
	/**
	* @see org.w3c.dom.xpath.XPathNSResolver#lookupNamespaceURI(String)
	*/
	@:overload public function lookupNamespaceURI(prefix : String) : String;
	
	
}
