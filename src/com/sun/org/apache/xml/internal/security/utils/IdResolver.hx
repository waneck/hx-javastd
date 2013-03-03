package com.sun.org.apache.xml.internal.security.utils;
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
extern class IdResolver
{
	/**
	* Method registerElementById
	*
	* @param element the element to register
	* @param idValue the value of the ID attribute
	*/
	@:overload @:public @:static public static function registerElementById(element : org.w3c.dom.Element, idValue : String) : Void;
	
	/**
	* Method registerElementById
	*
	* @param element the element to register
	* @param id the ID attribute
	*/
	@:overload @:public @:static public static function registerElementById(element : org.w3c.dom.Element, id : org.w3c.dom.Attr) : Void;
	
	/**
	* Method getElementById
	*
	* @param doc the document
	* @param id the value of the ID
	* @return the element obtained by the id, or null if it is not found.
	*/
	@:overload @:public @:static public static function getElementById(doc : org.w3c.dom.Document, id : String) : org.w3c.dom.Element;
	
	@:overload @:public @:static public static function isElement(el : org.w3c.dom.Element, id : String, els : java.NativeArray<org.w3c.dom.Element>) : Int;
	
	
}
