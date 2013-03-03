package com.sun.org.apache.xpath.internal.objects;
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
* $Id: XObjectFactory.java,v 1.1.2.1 2005/08/01 01:29:30 jeffsuttor Exp $
*/
extern class XObjectFactory
{
	/**
	* Create the right XObject based on the type of the object passed.  This
	* function can not make an XObject that exposes DOM Nodes, NodeLists, and
	* NodeIterators to the XSLT stylesheet as node-sets.
	*
	* @param val The java object which this object will wrap.
	*
	* @return the right XObject based on the type of the object passed.
	*/
	@:overload @:static @:public public static function create(val : Dynamic) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Create the right XObject based on the type of the object passed.
	* This function <emph>can</emph> make an XObject that exposes DOM Nodes, NodeLists, and
	* NodeIterators to the XSLT stylesheet as node-sets.
	*
	* @param val The java object which this object will wrap.
	* @param xctxt The XPath context.
	*
	* @return the right XObject based on the type of the object passed.
	*/
	@:overload @:static @:public public static function create(val : Dynamic, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	
}
