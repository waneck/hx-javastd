package com.sun.org.apache.xml.internal.utils;
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
* $Id: PrefixResolverDefault.java,v 1.2.4.1 2005/09/15 08:15:51 suresh_emailid Exp $
*/
extern class PrefixResolverDefault implements com.sun.org.apache.xml.internal.utils.PrefixResolver
{
	/**
	* Construct a PrefixResolverDefault object.
	* @param xpathExpressionContext The context from
	* which XPath expression prefixes will be resolved.
	* Warning: This will not work correctly if xpathExpressionContext
	* is an attribute node.
	*/
	@:overload public function new(xpathExpressionContext : org.w3c.dom.Node) : Void;
	
	/**
	* Given a namespace, get the corrisponding prefix.  This assumes that
	* the PrevixResolver hold's it's own namespace context, or is a namespace
	* context itself.
	* @param prefix Prefix to resolve.
	* @return Namespace that prefix resolves to, or null if prefix
	* is not bound.
	*/
	@:overload public function getNamespaceForPrefix(prefix : String) : String;
	
	/**
	* Given a namespace, get the corrisponding prefix.
	* Warning: This will not work correctly if namespaceContext
	* is an attribute node.
	* @param prefix Prefix to resolve.
	* @param namespaceContext Node from which to start searching for a
	* xmlns attribute that binds a prefix to a namespace.
	* @return Namespace that prefix resolves to, or null if prefix
	* is not bound.
	*/
	@:overload public function getNamespaceForPrefix(prefix : String, namespaceContext : org.w3c.dom.Node) : String;
	
	/**
	* Return the base identifier.
	*
	* @return null
	*/
	@:overload public function getBaseIdentifier() : String;
	
	/**
	* @see PrefixResolver#handlesNullPrefixes()
	*/
	@:overload public function handlesNullPrefixes() : Bool;
	
	
}
