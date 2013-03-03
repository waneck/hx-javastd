package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class DOMImplementationListImpl implements org.w3c.dom.DOMImplementationList
{
	/**
	* Construct an empty list of DOMImplementations
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct an empty list of DOMImplementations
	*/
	@:overload @:public public function new(params : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Returns the indexth item in the collection.
	*
	* @param index The index of the DOMImplemetation from the list to return.
	*/
	@:overload @:public public function item(index : Int) : org.w3c.dom.DOMImplementation;
	
	/**
	* Returns the number of DOMImplementations in the list.
	*
	* @return An integer indicating the number of DOMImplementations.
	*/
	@:overload @:public public function getLength() : Int;
	
	
}
