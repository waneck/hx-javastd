package com.sun.org.apache.xml.internal.security.c14n.helper;
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
extern class C14nHelper
{
	/**
	* Method namespaceIsRelative
	*
	* @param namespace
	* @return true if the given namespace is relative.
	*/
	@:overload @:public @:static public static function namespaceIsRelative(namespace : org.w3c.dom.Attr) : Bool;
	
	/**
	* Method namespaceIsRelative
	*
	* @param namespaceValue
	* @return true if the given namespace is relative.
	*/
	@:overload @:public @:static public static function namespaceIsRelative(namespaceValue : String) : Bool;
	
	/**
	* Method namespaceIsAbsolute
	*
	* @param namespace
	* @return true if the given namespace is absolute.
	*/
	@:overload @:public @:static public static function namespaceIsAbsolute(namespace : org.w3c.dom.Attr) : Bool;
	
	/**
	* Method namespaceIsAbsolute
	*
	* @param namespaceValue
	* @return true if the given namespace is absolute.
	*/
	@:overload @:public @:static public static function namespaceIsAbsolute(namespaceValue : String) : Bool;
	
	/**
	* This method throws an exception if the Attribute value contains
	* a relative URI.
	*
	* @param attr
	* @throws CanonicalizationException
	*/
	@:overload @:public @:static public static function assertNotRelativeNS(attr : org.w3c.dom.Attr) : Void;
	
	/**
	* This method throws a CanonicalizationException if the supplied Document
	* is not able to be traversed using a TreeWalker.
	*
	* @param document
	* @throws CanonicalizationException
	*/
	@:overload @:public @:static public static function checkTraversability(document : org.w3c.dom.Document) : Void;
	
	/**
	* This method throws a CanonicalizationException if the supplied Element
	* contains any relative namespaces.
	*
	* @param ctxNode
	* @throws CanonicalizationException
	* @see C14nHelper#assertNotRelativeNS(Attr)
	*/
	@:overload @:public @:static public static function checkForRelativeNamespace(ctxNode : org.w3c.dom.Element) : Void;
	
	
}
