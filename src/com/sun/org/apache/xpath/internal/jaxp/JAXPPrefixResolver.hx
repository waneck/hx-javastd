package com.sun.org.apache.xpath.internal.jaxp;
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
//// $Id: JAXPPrefixResolver.java,v 1.1.2.1 2005/08/01 01:30:18 jeffsuttor Exp $
extern class JAXPPrefixResolver implements com.sun.org.apache.xml.internal.utils.PrefixResolver
{
	@:overload @:public public function new(nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:public public function getNamespaceForPrefix(prefix : String) : String;
	
	/**
	* Return the base identifier.
	*
	* @return null
	*/
	@:overload @:public public function getBaseIdentifier() : String;
	
	/**
	* @see PrefixResolver#handlesNullPrefixes()
	*/
	@:overload @:public public function handlesNullPrefixes() : Bool;
	
	/**
	* The URI for the XML namespace.
	* (Duplicate of that found in com.sun.org.apache.xpath.internal.XPathContext).
	*/
	@:public @:static @:final public static var S_XMLNAMESPACEURI(default, null) : String;
	
	/**
	* Given a prefix and a Context Node, get the corresponding namespace.
	* Warning: This will not work correctly if namespaceContext
	* is an attribute node.
	* @param prefix Prefix to resolve.
	* @param namespaceContext Node from which to start searching for a
	* xmlns attribute that binds a prefix to a namespace.
	* @return Namespace that prefix resolves to, or null if prefix
	* is not bound.
	*/
	@:overload @:public public function getNamespaceForPrefix(prefix : String, namespaceContext : org.w3c.dom.Node) : String;
	
	
}
