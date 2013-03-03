package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class ElementState
{
	/**
	* The element's raw tag name (local or prefix:local).
	*/
	@:public public var rawName : String;
	
	/**
	* The element's local tag name.
	*/
	@:public public var localName : String;
	
	/**
	* The element's namespace URI.
	*/
	@:public public var namespaceURI : String;
	
	/**
	* True if element is space preserving.
	*/
	@:public public var preserveSpace : Bool;
	
	/**
	* True if element is empty. Turns false immediately
	* after serializing the first contents of the element.
	*/
	@:public public var empty : Bool;
	
	/**
	* True if the last serialized node was an element node.
	*/
	@:public public var afterElement : Bool;
	
	/**
	* True if the last serialized node was a comment node.
	*/
	@:public public var afterComment : Bool;
	
	/**
	* True if textual content of current element should be
	* serialized as CDATA section.
	*/
	@:public public var doCData : Bool;
	
	/**
	* True if textual content of current element should be
	* serialized as raw characters (unescaped).
	*/
	@:public public var unescaped : Bool;
	
	/**
	* True while inside CData and printing text as CData.
	*/
	@:public public var inCData : Bool;
	
	/**
	* Association between namespace URIs (keys) and prefixes (values).
	*/
	@:public public var prefixes : java.util.Hashtable<Dynamic, Dynamic>;
	
	
}
