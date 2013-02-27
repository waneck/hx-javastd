package com.sun.org.apache.xml.internal.resolver.helpers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// Namespaces.java - Analyze namespace nodes in a DOM tree
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* Static Namespace query methods.
*
* <p>This class defines a set of static methods that can be called
* to analyze the namespace properties of DOM nodes.</p>
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*
*/
extern class Namespaces
{
	/**
	* Returns the "prefix" part of a QName or the empty string (not
	* null) if the name has no prefix.
	*
	* @param element The QName of an element.
	* @return The prefix part of the element name.
	*/
	@:overload public static function getPrefix(element : org.w3c.dom.Element) : String;
	
	/**
	* Returns the "localname" part of a QName, which is the whole
	* name if it has no prefix.
	*
	* @param element The QName of an element.
	* @return The local part of a QName.
	*/
	@:overload public static function getLocalName(element : org.w3c.dom.Element) : String;
	
	/**
	* Returns the namespace URI for the specified prefix at the
	* specified context node.
	*
	* @param node The context node.
	* @param prefix The prefix.
	* @return The namespace URI associated with the prefix, or
	* null if no namespace declaration exists for the prefix.
	*/
	@:overload public static function getNamespaceURI(node : org.w3c.dom.Node, prefix : String) : String;
	
	/**
	* Returns the namespace URI for the namespace to which the
	* element belongs.
	*
	* @param element The element.
	* @return The namespace URI associated with the namespace of the
	* element, or null if no namespace declaration exists for it.
	*/
	@:overload public static function getNamespaceURI(element : org.w3c.dom.Element) : String;
	
	
}
