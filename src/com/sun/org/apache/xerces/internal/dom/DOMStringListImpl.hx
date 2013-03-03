package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class DOMStringListImpl implements org.w3c.dom.DOMStringList
{
	/**
	* Construct an empty list of DOMStringListImpl
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct an empty list of DOMStringListImpl
	*/
	@:overload @:public public function new(params : java.util.Vector<Dynamic>) : Void;
	
	/**
	* @see org.w3c.dom.DOMStringList#item(int)
	*/
	@:overload @:public public function item(index : Int) : String;
	
	/**
	* @see org.w3c.dom.DOMStringList#getLength()
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* @see org.w3c.dom.DOMStringList#contains(String)
	*/
	@:overload @:public public function contains(param : String) : Bool;
	
	/**
	* DOM Internal:
	* Add a <code>DOMString</code> to the list.
	*
	* @param domString A string to add to the list
	*/
	@:overload @:public public function add(param : String) : Void;
	
	
}
