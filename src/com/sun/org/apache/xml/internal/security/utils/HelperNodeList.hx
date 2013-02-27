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
extern class HelperNodeList implements org.w3c.dom.NodeList
{
	/**
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* @param allNodesMustHaveSameParent
	*/
	@:overload public function new(allNodesMustHaveSameParent : Bool) : Void;
	
	/**
	* Method item
	*
	* @param index
	* @return node with inde i
	*/
	@:overload public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* Method getLength
	*
	*  @return length of the list
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Method appendChild
	*
	* @param node
	* @throws IllegalArgumentException
	*/
	@:overload public function appendChild(node : org.w3c.dom.Node) : Void;
	
	/**
	* @return the document that contains this nodelist
	*/
	@:overload public function getOwnerDocument() : org.w3c.dom.Document;
	
	
}
